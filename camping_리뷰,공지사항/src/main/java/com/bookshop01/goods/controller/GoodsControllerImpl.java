package com.bookshop01.goods.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.bookshop01.common.base.BaseController;
import com.bookshop01.goods.service.GoodsService;
import com.bookshop01.goods.vo.GoodsVO;
import com.bookshop01.goods.vo.ReviewVO;
import com.bookshop01.member.vo.MemberVO;

import net.sf.json.JSONObject;


@Controller("goodsController")
@RequestMapping(value="/goods")
public class GoodsControllerImpl extends BaseController   implements GoodsController {
	@Autowired
	GoodsService goodsService;
	
	// 상품 상세페이지 
	@RequestMapping(value="/goodsDetail.do" ,method = RequestMethod.GET)
	public ModelAndView goodsDetail(@RequestParam("goods_id") String goods_id, // 조회할 상품 번호를 전달받음
			                       HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName=(String)request.getAttribute("viewName");
		HttpSession session=request.getSession();
		Map goodsMap=goodsService.goodsDetail(goods_id); // 상품 정보를 조회한 후 Map으로 반환
		ModelAndView mav = new ModelAndView(viewName);
		mav.addObject("goodsMap", goodsMap);
		GoodsVO goodsVO=(GoodsVO)goodsMap.get("goodsVO"); // 조회한 상품 정보를 퀵 메뉴에 표시하기 위해 전달
		addGoodsInQuick(goods_id,goodsVO,session);
		return mav;
	}
	
	@RequestMapping(value="/keywordSearch.do",method = RequestMethod.GET,produces = "application/text; charset=utf8")
	public @ResponseBody String  keywordSearch(@RequestParam("keyword") String keyword,
			                                  HttpServletRequest request, HttpServletResponse response) throws Exception{
		response.setContentType("text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		//System.out.println(keyword);
		if(keyword == null || keyword.equals(""))
		   return null ;
	
		keyword = keyword.toUpperCase();
	    List<String> keywordList =goodsService.keywordSearch(keyword);
	    
	    // 최종 완성될 JSONObject 선언(전체)
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("keyword", keywordList);
		 		
	    String jsonInfo = jsonObject.toString();
	   // System.out.println(jsonInfo);
	    return jsonInfo ;
	}
	
	@RequestMapping(value="/searchGoods.do" ,method = RequestMethod.GET)
	public ModelAndView searchGoods(@RequestParam("searchWord") String searchWord,
			                       HttpServletRequest request, HttpServletResponse response) throws Exception{
		String viewName=(String)request.getAttribute("viewName");
		List<GoodsVO> goodsList=goodsService.searchGoods(searchWord);
		ModelAndView mav = new ModelAndView(viewName);
		mav.addObject("goodsList", goodsList);
		return mav;
		
	}
	
	// 상품 상세페이지 - 상품 구매 리뷰
	@RequestMapping(value="/addReview.do" ,method = RequestMethod.POST)
	public @ResponseBody String addReview(ReviewVO reviewVO ,HttpServletRequest request, 
										  HttpServletResponse response) throws Exception{	
		HttpSession session=request.getSession();
		MemberVO memberVO=(MemberVO)session.getAttribute("memberInfo");
		String member_id=memberVO.getMember_id();

		reviewVO.setId(member_id);
		String message = "";
		if(goodsService.insertReview(reviewVO)==1) {
			message = "add_success";
		}
		return message;
	}
	
	// 퀵 메뉴
	private void addGoodsInQuick(String goods_id,GoodsVO goodsVO,HttpSession session){
		boolean already_existed=false;
		List<GoodsVO> quickGoodsList;  // 최근 본 상품 저장 ArrayList
		quickGoodsList=(ArrayList<GoodsVO>)session.getAttribute("quickGoodsList");
		// 세션에 저장된 최근 본 상품 목록을 가져옴
		
		if(quickGoodsList!=null){	// 최근 본 상품 목록이 있는 경우
			if(quickGoodsList.size() < 4){ // 미리본 상품 리스트에 상품 갯수가 세 개 이하인 경우
				for(int i=0; i<quickGoodsList.size();i++){ // 상품 목록을 불러와서 이미 존재하는 상품인지 비교
					GoodsVO _goodsBean=(GoodsVO)quickGoodsList.get(i);
					if(goods_id.equals(Integer.toString(_goodsBean.getGoods_id()))){
						already_existed=true;	// 이미 존재하는 경우 already_existed를 true로 설정
						//break;
						return;
					} 
				}
				if(already_existed==false){	
					quickGoodsList.add(goodsVO);
				}
			}		
		}else{
			quickGoodsList =new ArrayList<GoodsVO>(); // 최근 본 상품 목록이 없으면 ArrayList를 생성해서 상품 정보를 저장
			quickGoodsList.add(goodsVO);	
		}
		session.setAttribute("quickGoodsList",quickGoodsList); // 최근 본 상품 목록을 세션에 저장
		session.setAttribute("quickGoodsListNum", quickGoodsList.size()); // 최근 본 상품 목록에 저장된 상품 개수를 세션에 저장
	}
}




