package com.servlet;

import java.io.File;
import java.io.IOException;
import java.sql.SQLException;
import java.util.regex.Pattern;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.tomcat.util.http.fileupload.impl.FileSizeLimitExceededException;

import com.bean.ApplicationDetails;
import com.dao.ApplicationDao;


/**
 * Servlet implementation class ApplicationServlet
 */
@WebServlet("/ApplicationServlet")
@MultipartConfig(fileSizeThreshold = 1024 * 1024,   // 1 MB
maxFileSize = 1024 * 1024 * 10,   // 10 MB
maxRequestSize = 1024 * 1024 * 20) // 20 MB
public class ApplicationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ApplicationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		ApplicationDetails ad = new ApplicationDetails();

		ad.setApp_id(UniqueRandomGenerator.generateUniqueRandom());
		ad.setCon_type(request.getParameter("con"));
		ad.setLtht_supp(request.getParameter("ltht"));
		ad.setMob_no(request.getParameter("pno"));
		ad.setEmail_id(request.getParameter("email"));
		ad.setHouse_no(request.getParameter("hno"));
		ad.setStreet(request.getParameter("street"));
		ad.setAddress1(request.getParameter("addr1"));
		ad.setAddress2(request.getParameter("addr2"));
		ad.setAddress3(request.getParameter("addr3"));
		ad.setCity(request.getParameter("city"));
		ad.setPin(request.getParameter("pin"));
		ad.setDistrict(request.getParameter("district"));
		ad.setBlock(request.getParameter("block"));
		ad.setPanchayat(request.getParameter("panchayat"));
		ad.setVillage(request.getParameter("village"));
		ad.setDivision(request.getParameter("div"));
		ad.setSub_div(request.getParameter("subdiv"));
		ad.setSection(request.getParameter("section"));
		ad.setTariff(request.getParameter("tariff"));
		ad.setPhase_val(request.getParameter("phase"));
		ad.setLoad_val(request.getParameter("load"));
		ad.setGender(request.getParameter("gen"));
		ad.setAppl_name(request.getParameter("appname"));
		ad.setFh_name(request.getParameter("hfname"));
		ad.setId_proof_type(request.getParameter("idproof"));
//		ad.setId_proof_file(request.getParameter("idfile"));
		ad.setAddr_proof_type(request.getParameter("addrproof"));
//		ad.setAddr_proof1(request.getParameter("faddrfile"));
//		ad.setAddr_proof2(request.getParameter("laddrfile"));
//		ad.setAppl_photo(request.getParameter("appphoto"));
//		ad.setOwnship_photo1(request.getParameter("ownphoto1"));
//		ad.setOwnship_photo2(request.getParameter("ownphoto2"));
		ad.setStatus("Not Verified");
	

		try {
			
		response.setContentType("text/html;charset=UTF-8");

        // Get the file part from the request
        Part filePart1 = request.getPart("idfile");
        Part filePart2 = request.getPart("faddrfile");
        Part filePart3 = request.getPart("laddrfile");
        Part filePart4 = request.getPart("appphoto");
        Part filePart5 = request.getPart("ownphoto1");
        Part filePart6 = request.getPart("ownphoto2");
         
        String extension1 = getFileExtension(filePart1);
        String extension2 = getFileExtension(filePart2);
        String extension3 = getFileExtension(filePart3);
        String extension4 = getFileExtension(filePart4);
        String extension5 = getFileExtension(filePart5);
        String extension6 = getFileExtension(filePart6);
        
        // Retrieve a value from the database (e.g., user's name)
        String ApplicantId = String.valueOf(ad.getApp_id()); // Replace with the actual database query

        // Combine the database value with the filenames
        String fileName1 = ApplicantId + "_" + "id_proof" + extension1;  //String fileName1 = ApplicantId + "_" + getFileName(filePart1);
        String fileName2 = ApplicantId + "_" + "address_proof_front" + extension2;  //String fileName2 = ApplicantId + "_" + getFileName(filePart2);
        String fileName3 = ApplicantId + "_" + "address_proof_last" + extension3;  //String fileName3 = ApplicantId + "_" + getFileName(filePart3);
        String fileName4 = ApplicantId + "_" + "photo_of_applicant" + extension4;  //String fileName4 = ApplicantId + "_" + getFileName(filePart4);
        String fileName5 = ApplicantId + "_" + "ownership_front" + extension5;  //String fileName5 = ApplicantId + "_" + getFileName(filePart5);
        String fileName6 = ApplicantId + "_" + "ownership_last" + extension6;  //String fileName6 = ApplicantId + "_" + getFileName(filePart6);

        // Specify the directories where you want to save the uploaded files
        String savePath1 = "D:\\applicant_files\\ID Proof";          // Folder for the first file
        String savePath2 = "D:\\applicant_files\\Address Proof Front";         // Folder for the second file
        String savePath3 = "D:\\applicant_files\\Address Proof Last";         // Folder for the second file
        String savePath4 = "D:\\applicant_files\\Photo of Applicant";         // Folder for the second file
        String savePath5 = "D:\\applicant_files\\OwnerShip Front";         // Folder for the second file
        String savePath6 = "D:\\applicant_files\\OwnerShip Last";         // Folder for the second file

        // Create the save directories if they don't exist
        File saveDir1 = new File(savePath1);
        if (!saveDir1.exists()) {
            saveDir1.mkdir();
        }

        File saveDir2 = new File(savePath2);
        if (!saveDir2.exists()) {
            saveDir2.mkdir();
        }
        
        File saveDir3 = new File(savePath3);
        if (!saveDir3.exists()) {
            saveDir3.mkdir();
        }
        
        File saveDir4 = new File(savePath4);
        if (!saveDir4.exists()) {
            saveDir4.mkdir();
        }
        
        File saveDir5 = new File(savePath5);
        if (!saveDir5.exists()) {
            saveDir5.mkdir();
        }
        
        File saveDir6 = new File(savePath6);
        if (!saveDir6.exists()) {
            saveDir6.mkdir();
        }

        // Specify the complete paths for saving the files with custom names
        String filePath1 = savePath1 + File.separator + fileName1;
        String filePath2 = savePath2 + File.separator + fileName2;
        String filePath3 = savePath3 + File.separator + fileName3;
        String filePath4 = savePath4 + File.separator + fileName4;
        String filePath5 = savePath5 + File.separator + fileName5;
        String filePath6 = savePath6 + File.separator + fileName6;
        
        ad.setId_proof_file(fileName1);
        ad.setAddr_proof1(fileName2);
		ad.setAddr_proof2(fileName3);
		ad.setAppl_photo(fileName4);
		ad.setOwnship_photo1(fileName5);
		ad.setOwnship_photo2(fileName6);
		
		try {
			ApplicationDao.appForm(ad);
		} catch (SQLException e) {
			e.printStackTrace();
		}

        // Save the files to the specified directories
        filePart1.write(filePath1);
        filePart2.write(filePath2);
        filePart3.write(filePath3);
        filePart4.write(filePath4);
        filePart5.write(filePath5);
        filePart6.write(filePath6);

//        System.out.println("File " + fileName1 + " has been uploaded to " + savePath1);
//        System.out.println("File " + fileName2 + " has been uploaded to " + savePath2);
//        System.out.println("File " + fileName3 + " has been uploaded to " + savePath3);
//        System.out.println("File " + fileName4 + " has been uploaded to " + savePath4);
//        System.out.println("File " + fileName5 + " has been uploaded to " + savePath5);
//        System.out.println("File " + fileName6 + " has been uploaded to " + savePath6);
        
		}catch(FileSizeLimitExceededException| IllegalStateException ex) {
			 // Set an error message attribute
            request.setAttribute("fileSizeError", "File Size Larger Than 500 KB.");

            // Forward the request to your JSP page
            request.getRequestDispatcher("application_form.jsp").forward(request, response);
            return;
		}
		
		int applicationId = ad.getApp_id();
		request.setAttribute("applicationId", applicationId);
		request.getRequestDispatcher("formsubmit.jsp").forward(request, response);

	}
	public static String getFileExtension(Part part) {
	    String header = part.getHeader("content-disposition");
	    if (header == null) {
	        return null;
	    }

	    // Use a regular expression to extract the file name from the Content-Disposition header
	    Pattern pattern = Pattern.compile("filename=\"(.+?)\"");
	    java.util.regex.Matcher matcher = pattern.matcher(header);

	    if (matcher.find()) {
	        String fileName = matcher.group(1);
	        int lastDotIndex = fileName.lastIndexOf('.');
	        if (lastDotIndex != -1) {
	            // Extract the file extension with a dot
	            return fileName.substring(lastDotIndex);
	        }
	    }

	    // No file extension found
	    return null;
	}

	private String getFileName(Part part) {
        String contentDisposition = part.getHeader("content-disposition");
        String[] tokens = contentDisposition.split(";");
        for (String token : tokens) {
            if (token.trim().startsWith("filename")) {
                return token.substring(token.indexOf('=') + 1).trim().replace("\"", "");
            }
        }
        return "";
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
