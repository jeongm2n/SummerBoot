package com.spring.summerboot.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@Controller	
@RequestMapping("/member")
public class MemberController {
	/*
	 * @RequestMapping("/join") public String index(){ return "member/join"; }
	 */
	
	/*
	 * @RequestMapping(value="/overlapped.do" ,method = RequestMethod.POST) public
	 * boolean overlapped(@RequestParam("id") String id, HttpServletRequest request,
	 * HttpServletResponse response) throws Exception{
	 * 
	 * 
	 * return true; }
	 */
	@RequestMapping("join")
	public ModelAndView joinPage(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		request.setCharacterEncoding("utf-8");
		mav.setViewName("member/join");
		
		return mav;
	}
	
	@RequestMapping(value="/addMem" ,method = RequestMethod.POST)
	public void join(HttpServletRequest request, HttpServletResponse response) throws Exception{
		System.err.println("controller입장>>>");
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		System.err.println("!!!!!!!!!!!!!!");
		
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String name = request.getParameter("name");
		String tel = request.getParameter("tel1") + "-" + request.getParameter("tel2") + "-" + request.getParameter("tel3");
		
		System.out.println("id : " + id);
		System.out.println("pwd : " + pwd);
		System.out.println("name : " + name);
		System.out.println("tel : " + tel);
		MemberVO vo = new MemberVO(id, pwd, name, tel);
		
	}
	
	@RequestMapping("login")
	public ModelAndView loginPage(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		request.setCharacterEncoding("utf-8");
		mav.setViewName("member/login");
		
		return mav;
	}
	
	@RequestMapping(value="/selectLogin" ,method = RequestMethod.POST)
	public ModelAndView login(HttpServletRequest request, HttpServletResponse response) throws Exception{
		System.err.println("controller입장!!!!");

		ModelAndView mav = new ModelAndView();
		request.setCharacterEncoding("utf-8");
		
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		
		boolean login = false;
		if(!login) {
			mav.setViewName("member/login");
			return mav;
		} else {
			mav.setViewName("member/join");
			return mav;
		}
	}
}
