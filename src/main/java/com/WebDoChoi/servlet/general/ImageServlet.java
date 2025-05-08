package com.WebDoChoi.servlet.general;

import com.WebDoChoi.utils.ConstantUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.URLDecoder;

@WebServlet(name = "ImageServlet", value = "/image/*")
public class ImageServlet extends HttpServlet {

    private String s3Prefix;

    public void init() throws ServletException {
        s3Prefix = ConstantUtils.S3_URL_PREFIX;
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String requestedImage = request.getPathInfo();

        if (requestedImage == null || requestedImage.equals("/")) {
            response.sendError(HttpServletResponse.SC_NOT_FOUND);
            return;
        }

        String decodedName = URLDecoder.decode(requestedImage, "UTF-8");
        response.sendRedirect(s3Prefix + decodedName);
    }
}
