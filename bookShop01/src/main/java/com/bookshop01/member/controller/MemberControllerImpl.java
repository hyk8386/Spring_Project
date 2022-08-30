package com.bookshop01.member.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bookshop01.common.base.BaseController;
import com.bookshop01.member.service.MemberService;
import com.bookshop01.member.vo.MemberVO;

@Controller("memberController")
@RequestMapping(value="/member")
public class MemberControllerImpl extends BaseController implements MemberController{
	@Autowired
	MemberService memberService;
	@Autowired
	MemberVO memberVO;
	
	@Override
	@RequestMapping(value="/login.do" ,method = RequestMethod.POST)
	public ModelAndView login(@RequestParam Map<String, String> loginMap,
			                  HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		 memberVO=memberService.login(loginMap);
		if(memberVO!= null && memberVO.getMember_id()!=null){
			HttpSession session=request.getSession();
			session=request.getSession();
			session.setAttribute("isLogOn", true);
			session.setAttribute("memberInfo",memberVO);
			
			String action=(String)session.getAttribute("action");
			if(action!=null && action.equals("/order/orderEachGoods.do")){
				mav.setViewName("forward:"+action);
			}else{
				mav.setViewName("redirect:/main/main.do");	
			}
			
			
			
		}else{
<<<<<<< .merge_file_a01332
			String message="æ∆¿Ãµ≥™  ∫Òπ–π¯»£∞° ∆≤∏≥¥œ¥Ÿ. ¥ŸΩ√ ∑Œ±◊¿Œ«ÿ¡÷ººø‰";
=======
			String message="ÔøΩÔøΩÔøΩÃµÔøΩ  ÔøΩÔøΩ–πÔøΩ»£ÔøΩÔøΩ ∆≤ÔøΩÔøΩÔøΩœ¥ÔøΩ. ÔøΩŸΩÔøΩ ÔøΩŒ±ÔøΩÔøΩÔøΩÔøΩÔøΩÔøΩ÷ºÔøΩÔøΩÔøΩ";
>>>>>>> .merge_file_a02864
			mav.addObject("message", message);
			mav.setViewName("/member/loginForm");
		}
		return mav;
	}
	
	@Override
	@RequestMapping(value="/logout.do" ,method = RequestMethod.GET)
	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		HttpSession session=request.getSession();
		session.setAttribute("isLogOn", false);
		session.removeAttribute("memberInfo");
		mav.setViewName("redirect:/main/main.do");
		return mav;
	}
	
	@Override
	@RequestMapping(value="/addMember.do" ,method = RequestMethod.POST)
	public ResponseEntity addMember(@ModelAttribute("memberVO") MemberVO _memberVO,
			                HttpServletRequest request, HttpServletResponse response) throws Exception {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		String message = null;
		ResponseEntity resEntity = null;
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/html; charset=utf-8");
		try {
		    memberService.addMember(_memberVO);
		    message  = "<script>";
<<<<<<< .merge_file_a01332
		    message +=" alert('»∏ø¯ ∞°¿‘¿ª ∏∂√∆Ω¿¥œ¥Ÿ.∑Œ±◊¿Œ√¢¿∏∑Œ ¿Ãµø«’¥œ¥Ÿ.');";
=======
		    message +=" alert('»∏ÔøΩÔøΩ ÔøΩÔøΩÔøΩÔøΩÔøΩÔøΩ ÔøΩÔøΩÔøΩ∆ΩÔøΩÔøΩœ¥ÔøΩ.ÔøΩŒ±ÔøΩÔøΩÔøΩ√¢ÔøΩÔøΩÔøΩÔøΩ ÔøΩÃµÔøΩÔøΩ’¥œ¥ÔøΩ.');";
>>>>>>> .merge_file_a02864
		    message += " location.href='"+request.getContextPath()+"/member/loginForm.do';";
		    message += " </script>";
		    
		}catch(Exception e) {
			message  = "<script>";
<<<<<<< .merge_file_a01332
		    message +=" alert('¿€æ˜ ¡ﬂ ø¿∑˘∞° πﬂª˝«ﬂΩ¿¥œ¥Ÿ. ¥ŸΩ√ Ω√µµ«ÿ ¡÷ººø‰');";
=======
		    message +=" alert('ÔøΩ€æÔøΩ ÔøΩÔøΩ ÔøΩÔøΩÔøΩÔøΩÔøΩÔøΩ ÔøΩﬂªÔøΩÔøΩﬂΩÔøΩÔøΩœ¥ÔøΩ. ÔøΩŸΩÔøΩ ÔøΩ√µÔøΩÔøΩÔøΩ ÔøΩ÷ºÔøΩÔøΩÔøΩ');";
>>>>>>> .merge_file_a02864
		    message += " location.href='"+request.getContextPath()+"/member/memberForm.do';";
		    message += " </script>";
			e.printStackTrace();
		}
		resEntity =new ResponseEntity(message, responseHeaders, HttpStatus.OK);
		return resEntity;
	}
	
	@Override
	@RequestMapping(value="/overlapped.do" ,method = RequestMethod.POST)
	public ResponseEntity overlapped(@RequestParam("id") String id,HttpServletRequest request, HttpServletResponse response) throws Exception{
		ResponseEntity resEntity = null;
		String result = memberService.overlapped(id);
		resEntity =new ResponseEntity(result, HttpStatus.OK);
		return resEntity;
	}
	
	@RequestMapping(value="/deleteView", method=RequestMethod.GET)
	public String deleteView() throws Exception{
		return "/member/deleteView";
	}
	
	@RequestMapping(value="/delete", method=RequestMethod.POST)
	public String delete(RedirectAttributes rttr,HttpSession session)throws Exception{
		MemberVO memberVO = (MemberVO)session.getAttribute("memberInfo");
		memberService.delete(memberVO.getMember_id());
		session.invalidate();
		rttr.addFlashAttribute("msg", "Ïù¥Ïö©Ìï¥Ï£ºÏÖîÏÑú Í∞êÏÇ¨Ìï©ÎãàÎã§.");
		return "redirect:/member/loginForm.do";
	}
	
    
    //@RequestMapping(value="/pwCheck" , method=RequestMethod.POST)
	@RequestMapping(value="/pwCheck", method=RequestMethod.POST)
	@ResponseBody
	public String pwCheck(String member_pw, HttpServletRequest request, HttpServletResponse response) throws Exception{
		HttpSession session=request.getSession();
		MemberVO memberVO = (MemberVO)session.getAttribute("memberInfo");
		System.out.println("„ÖÅ„Ñ¥ÏùÄÎß§„ÖèÎ®∏„Öú„ÑπÌûà„Öè„ÖÅ„Ñ¥„Öá„Ñ¥ÏïÑ„ÖúÎ¶¨ÎàôÎ£®");
		String memberPw = memberService.pwCheck(memberVO.getMember_id());
		
		if(memberVO == null || !(member_pw.equals(memberPw)) ) {
			return "0";
		}
		
		return "1";
	}
}
