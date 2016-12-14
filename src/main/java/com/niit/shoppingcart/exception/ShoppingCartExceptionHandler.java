package com.niit.shoppingcart.exception;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.http.HttpStatus;
import org.springframework.transaction.CannotCreateTransactionException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.NoHandlerFoundException;

public class ShoppingCartExceptionHandler {
	
	//private static Logger log = LoggerFactory.getLogger(ShoppingCartExceptionHandler.class);

	@ExceptionHandler(SQLException.class)
	public ModelAndView sqlException(HttpServletRequest request, Exception e)
	{
	//	log.error("SQL Exception Occured @ URL:" + request.getRequestURI() );
	//	log.error("SQL Exception Occured :: Exception = " + e.getMessage() );
		ModelAndView mv = new ModelAndView("error"); /// redirects to error.jsp page
		mv.addObject("message", "Tables or fields doesnot exits in DB. Please check log file");
		mv.addObject("errorMessage", e.getMessage());
		
		return mv;
		
	}

	@ExceptionHandler(CannotCreateTransactionException.class)
	public ModelAndView dbServerNotStarted(HttpServletRequest request, Exception e)
	{
	//	log.error("SQL Exception Occured @ URL:" + request.getRequestURI() );
	//	log.error("SQL Exception Occured :: Exception = " + e.getMessage() );
		ModelAndView mv = new ModelAndView("error"); /// redirects to error.jsp page
		mv.addObject("message", "Database Server not Started or not working");
		mv.addObject("errorMessage", e.getMessage());
		
		return mv;
		
	}

	/*@ExceptionHandler(QuerySyntaxException.class)
	public ModelAndView querySyntaxException(HttpServletRequest request, Exception e)
	{
	//	log.error("SQL Exception Occured @ URL:" + request.getRequestURI() );
	//	log.error("SQL Exception Occured :: Exception = " + e.getMessage() );
		ModelAndView mv = new ModelAndView("error"); /// redirects to error.jsp page
		mv.addObject("message", "Query not properly defined. Check log file");
		mv.addObject("errorMessage", e.getMessage());
		
		return mv;
		
	}*/
	
	@ExceptionHandler(NoHandlerFoundException.class)
	public ModelAndView NoHandlerFoundException(HttpServletRequest request, Exception e)
	{
	//	log.error("SQL Exception Occured @ URL:" + request.getRequestURI() );
	//	log.error("SQL Exception Occured :: Exception = " + e.getMessage() );
		ModelAndView mv = new ModelAndView("error"); /// redirects to error.jsp page
		mv.addObject("message", "No Handle found. Check log for further info");
		mv.addObject("errorMessage", e.getMessage());
		
		return mv;
		
	}
	@ResponseStatus(value=HttpStatus.NOT_FOUND, reason="IOException occured")
	@ExceptionHandler(IOException.class)
	public ModelAndView IOException(HttpServletRequest request, Exception e)
	{
	//	log.error("SQL Exception Occured @ URL:" + request.getRequestURI() );
	//	log.error("SQL Exception Occured :: Exception = " + e.getMessage() );
		ModelAndView mv = new ModelAndView("error"); /// redirects to error.jsp page
		mv.addObject("message", "Cannot connect to server. Contact admin");
		mv.addObject("errorMessage", e.getMessage());
		
		return mv;
		
	}
}
