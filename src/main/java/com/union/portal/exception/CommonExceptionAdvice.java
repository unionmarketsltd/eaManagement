package com.union.portal.exception;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

import lombok.extern.slf4j.Slf4j;

@ControllerAdvice
@Slf4j
public class CommonExceptionAdvice {
	@ExceptionHandler
	public String except(Exception ex, Model model) {
		ex.printStackTrace();
		log.error("Exception......." + ex.getMessage());
		model.addAttribute("exception", ex);
		log.error(model.toString());
		return "/home/errorPage";
	}
}
