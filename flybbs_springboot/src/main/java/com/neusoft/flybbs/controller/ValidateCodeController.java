package com.neusoft.flybbs.controller;

import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.neusoft.flybbs.util.ValidateCodeUtil;

@Controller
@RequestMapping("validateCode")
public class ValidateCodeController {

	@RequestMapping("getCode")
	@ResponseBody
	public String getCode(HttpServletResponse response ,HttpSession session) {
		OutputStream out = null;
		String validatecode = null ;
		try {
			out = response.getOutputStream();
			validatecode = ValidateCodeUtil.getNewCode(out);
			session.setAttribute("validatecode", validatecode);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return validatecode;
	}
}
