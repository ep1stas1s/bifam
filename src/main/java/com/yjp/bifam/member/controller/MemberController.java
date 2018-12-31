package com.yjp.bifam.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yjp.bifam.member.model.service.MemberSerivce;
import com.yjp.bifam.member.model.vo.Member;

@Controller
public class MemberController {
	
	@Autowired
	private MemberSerivce memberService;
	
//	LOG IN
	@RequestMapping(value = "login.bf", method = RequestMethod.POST)
	public String loginCheck(Member m, HttpSession session){
		Member member = memberService.loginMember(m);
		if(member != null)
			session.setAttribute("member", member);
		return "home";
	}
	
//	LOG OUT
	@RequestMapping(value = "logout.bf", method = RequestMethod.GET)
	public String logoutMember(HttpSession session){
		if(session.getAttribute("member") != null)
			session.invalidate();
		return "home";
	}
	
//	SIGN UP
	@RequestMapping(value = "memberSignUp.bf")
	public String memberSignUp(){
		return "member/signUp";
	}
	
//	REGISTER
	@RequestMapping(value = "memberRegister.bf", method = RequestMethod.POST)
	public String memberRegister(Member m, HttpServletRequest request) {
		String result = "main/404";
		System.out.println("request : " + m);
//		request.getParameter("");
		int registerResult = memberService.registerMember(m);
		System.out.println("test");
		if(registerResult > 0) {
			// TODO 다시 로그인 하십쇼
			// TODO ID, E-MAIL CHECK
			result = "home";
		}
		return result;
	}
	
//	404
	@RequestMapping(value ="/404")
	public String error404(){
		return "main/404";
	}
}
