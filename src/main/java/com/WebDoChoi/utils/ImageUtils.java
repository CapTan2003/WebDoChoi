package com.WebDoChoi.utils;

import org.jetbrains.annotations.NotNull;
import software.amazon.awssdk.auth.credentials.AwsBasicCredentials;
import software.amazon.awssdk.auth.credentials.StaticCredentialsProvider;
import software.amazon.awssdk.core.sync.RequestBody;
import software.amazon.awssdk.regions.Region;
import software.amazon.awssdk.services.s3.S3Client;
import software.amazon.awssdk.services.s3.model.DeleteObjectRequest;
import software.amazon.awssdk.services.s3.model.PutObjectRequest;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.Part;
import java.io.InputStream;
import java.util.Optional;
import java.util.UUID;

public class ImageUtils {

    private static final S3Client s3 = S3Client.builder()
            .region(Region.of(ConstantUtils.S3_REGION))
            .credentialsProvider(
                    StaticCredentialsProvider.create(
                            AwsBasicCredentials.create(
                                    System.getenv("AWS_ACCESS_KEY_ID"),
                                    System.getenv("AWS_SECRET_ACCESS_KEY")
                            )
                    )
            )
            .build();

    public static Optional<String> upload(HttpServletRequest request) {
        Optional<String> imageName = Optional.empty();
        try {
            Part filePart = request.getPart("image");
            if (filePart.getSize() != 0 && filePart.getContentType().startsWith("image")) {
                String extension = getExtension(filePart.getSubmittedFileName());
                String uniqueName = "img-" + UUID.randomUUID() + extension;
                String s3Key = ConstantUtils.S3_FOLDER + uniqueName;

                PutObjectRequest putObjectRequest = PutObjectRequest.builder()
                        .bucket(ConstantUtils.S3_BUCKET_NAME)
                        .key(s3Key)
                        .acl("public-read")
                        .contentType(filePart.getContentType())
                        .build();

                try (InputStream inputStream = filePart.getInputStream()) {
                    s3.putObject(putObjectRequest, RequestBody.fromInputStream(inputStream, filePart.getSize()));
                }

                imageName = Optional.of(uniqueName);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return imageName;
    }

    public static void delete(@NotNull String imageName) {
        String s3Key = ConstantUtils.S3_FOLDER + imageName;
        DeleteObjectRequest deleteRequest = DeleteObjectRequest.builder()
                .bucket(ConstantUtils.S3_BUCKET_NAME)
                .key(s3Key)
                .build();
        s3.deleteObject(deleteRequest);
    }

    private static String getExtension(String fileName) {
        int lastDot = fileName.lastIndexOf('.');
        return (lastDot != -1) ? fileName.substring(lastDot) : ".jpg";
    }
}
