package com.WebDoChoi.utils;

public interface ConstantUtils {
    int DB_PORT = 3306;
    String SERVER_NAME = "db";
    String DB_NAME = "web";
    String DB_USERNAME = "root";
    String DB_PASSWORD = "root";
    String S3_BUCKET_NAME = "s3webdochoinhom10demo";
    String S3_REGION = "ap-southeast-1"; // tuỳ region bạn dùng
    String S3_FOLDER = "images/";
    String S3_URL_PREFIX = "https://" + S3_BUCKET_NAME + ".s3." + S3_REGION + ".amazonaws.com/" + S3_FOLDER;
}
