package com.hhpc.utils;

/**
 * Created with IntelliJ IDEA.
 * User: Administrator
 * Date: 13-1-18
 * Time: 上午9:31
 * To change this template use File | Settings | File Templates.
 */
import java.awt.image.BufferedImage;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.imageio.ImageIO;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
public class FileUploadUtil {

//    public static void writeScaledImage(UFile ufile, ServletContext servletContext,
//                                        int width, int height) throws Exception {
//        BufferedImage scaledImage = ImageUtils.scaleImage(ufile.file, width,
//                height);
//        File des = new File(servletContext.getRealPath(ufile.path.substring(0,
//                ufile.path.lastIndexOf("/"))), ufile.file.getName() + "_" + width + "x"
//                + height + ".jpg");
//        ImageIO.write(scaledImage, "jpeg", des);
//    }
//
//    public static void writeScaledImage(UFile ufile, ServletContext servletContext,
//                                        int[] width, int[] height) throws Exception {
//        if (width == null || height == null) {
//            return;
//        }
//        int length = width.length > height.length ? height.length
//                : width.length;
//        for (int i = 0; i < length; i++) {
//            writeScaledImage(ufile, servletContext, width[i], height[i]);
//        }
//    }
//
//    /**
//     * @param request
//     * @param location
//     * @param name
//     * @return
//     * @throws Exception
//     */
//    public static UFile upload(HttpServletRequest request, String location,
//                               String name) throws Exception {
//        return upload(request, name, location, null, 100 * 1024 * 1024);
//    }
//
//    /**
//     * ${contextPath}/upload/location
//     *
//     * @param request
//     * @param location
//     * @param name
//     * @return
//     * @throws Exception
//     */
//    public static UFile uploadImages(HttpServletRequest request,
//                                     String location, String name) throws Exception {
//        String limitedExt = "jpg,jpeg,png,gif,bmp,JPG,JPEG,GIF,PNG,BMP,Jpg,Jpeg,Png,Gif,Bmp";
//        List<String> allowedExtensions = new ArrayList<String>();
//        if (!"".equals(limitedExt)) {
//            String[] extensions = limitedExt.split(",");
//            for (String ext : extensions) {
//                allowedExtensions.add(ext);
//            }
//        }
//        return upload(request, name, location, allowedExtensions, 4 * 1024);
//    }
//
//    /**
//     * ${contextPath}/upload
//     *
//     * @param request
//     * @param name
//     * @return
//     * @throws Exception
//     */
//    public static UFile upload(HttpServletRequest request, String name)
//            throws Exception {
//        return upload(request, name, null, null, 100 * 1024 * 1024);
//    }
//
//    /**
//     *
//     * @param request
//     * @param name
//     * @return
//     * @throws Exception
//     */
//    public static UFile uploadHeadPhoto(HttpServletRequest request,
//                                        String location, String name) throws Exception {
//        String limitedExt = Configuration
//                .getProperty("image.allowed.extension");
//        List<String> allowedExtensions = new ArrayList<String>();
//        if (!"".equals(limitedExt)) {
//            String[] extensions = limitedExt.split(",");
//            for (String ext : extensions) {
//                allowedExtensions.add(ext);
//            }
//        }
//        long maxSize = Configuration.getLongProperty("image.maxsize", 2048);
//        return upload(request, name, location, allowedExtensions, maxSize);
//    }
//
//    public static UFile[] upload(HttpServletRequest request, String[] names,
//                                 String[] dirs, List<List<String>> allowedExtensions, long[] maxSizes)
//            throws Exception {
//        UFile[] ufiles = new UFile[names.length];
//        for (int i = 0; i < ufiles.length; i++) {
//            ufiles[i] = upload(request, names[i], dirs[i],
//                    allowedExtensions.get(i), maxSizes[i]);
//        }
//        return ufiles;
//    }
//
//    /**
//     * @param request
//     * @param name
//     *            name
//     * @param location
//     *
//     * @param allowedExtensions
//     *
//     * @param maxSize
//     *            maxSize
//     * @return
//     * @throws Exception
//     */
//    public static UFile upload(HttpServletRequest request, String name,
//                               String location, List<String> allowedExtensions, long maxSize)
//            throws Exception {
//        UFile ufile = new UFile();
//        ufile.state = false;
//        if (request instanceof MultipartHttpServletRequest) {
//            MultipartHttpServletRequest req = (MultipartHttpServletRequest) request;
//            MultipartFile file = req.getFile(name);
//            String fileExtension = null;
//            if (!file.isEmpty()) {
//                fileExtension = file
//                        .getOriginalFilename()
//                        .substring(
//                                file.getOriginalFilename().lastIndexOf('.') + 1)
//                        .toLowerCase();
//                if (allowedExtensions != null && !allowedExtensions.isEmpty()
//                        && !allowedExtensions.contains("*")) {
//                    if (file.getOriginalFilename().lastIndexOf(".") < 0) {
//                        ufile.msg = "文件格式错误";
//                        return ufile;
//                    }
//                    if (!allowedExtensions.contains(fileExtension)) {
//                        ufile.msg = "文件格式错误 [" + fileExtension + "],请上传 "
//                                + allowedExtensions + " 格式的文件";
//                        return ufile;
//                    }
//                }
//                if (file.getSize() > maxSize * 1024 || file.getSize() == 0) {
//                    ufile.msg = "请上传小于 [" + maxSize + "] KB 的文件";
//                    return ufile;
//                }
//
//                String dirStr = "/upload";
//
//                location = location == null ? "" : location.trim();
//                if (!"".equals(location)) {
//                    dirStr = location.startsWith("/") ? location : "/"
//                            + location;
//                }
//
//                String dir = request.getSession().getServletContext()
//                        .getRealPath(dirStr);
//
//                if (!new File(dir).exists()) {
//                    if (!new File(dir).mkdirs()) {
//                        ufile.msg = "创建目录失败！";
//                        return ufile;
//                    }
//                }
//                File des = new File(dir, StringUtils.randomString() + "."
//                        + fileExtension);
//
//                file.transferTo(des);
//                ufile.state = true;
//                ufile.name = file.getOriginalFilename();
//                ufile.path = dirStr + "/" + des.getName();
//                ufile.msg = "文件上传成功";
//                ufile.file = des;
//
//                return ufile;
//            } else {
//                ufile.msg = "文件不能为空，请重新选择文件上传";
//                return ufile;
//            }
//        } else {
//            ufile.msg = "the form'enctype is not multipart/form-data !!!";
//            return ufile;
//        }
//    }
}
