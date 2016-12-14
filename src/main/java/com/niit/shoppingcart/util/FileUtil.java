/*package com.niit.shoppingcart.util;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

import org.springframework.web.multipart.MultipartFile;

public class FileUtil {

	//private static Logger log = LoggerFactory.getLogger(UserController.class);
	
	public static void upload (String path, MultipartFile file, String fileName)
	{
	//	log.debug("starting of the method upload");
	//	log.debug("path: = " + path);
	//	log.debug("file name: = "+fileName);
		
		if(!file.isEmpty())
		{
			try
			{
				byte[] bytes = file.getBytes();
				
				File dir = new File(path);
				if(!dir.exists())
					dir.mkdirs();
				
				File serverFile = new File(dir.getAbsolutePath()+File.separator+fileName);
				BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile));
				stream.write(bytes);
				stream.close();
				
	//	log.info("Server File Location" + serverFile.getAbsolutePath());
								
			}catch (Exception e)
			{
				
			}
		}
		
		
	}
}
*/