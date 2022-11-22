package com.korea.cyworld;


import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import dao.MainDAO;
import util.Common;
import vo.MainVO;

@Controller
public class MainController {
	
	@Autowired	
	ServletContext app; // 현재 프로젝트의 기본정보들을 저장하고 있는 클래스 
	HttpServletRequest request;
	
	
	MainDAO main_dao;
	public MainController(MainDAO main_dao) {
		this.main_dao = main_dao;
	}
	
	//일촌평 전체목록 조회
	@RequestMapping( value = {"/", "/main.do"})
	public String main(Model model) {
		List<MainVO> list = main_dao.selectList();
		model.addAttribute("list", list);
		return Common.PATH + "main.jsp";
	}
	
	//일촌평  쓰기 
	@RequestMapping("/insert.do")
	public String insert( MainVO vo ) { 
		// servlet-context에서 @Autowired 설정 해서 위에 파라미터 안에  HttpServletRequest request 안써도 됨!
		
		
//		DB에 새 글을 추가하기 위해 DAO에게 vo를 전달 
		main_dao.insert(vo);
		
		return "redirect:main.do";
//		redirect: view로 이동하는 것이 아닌 Controller의 url 매핑을 호출하기 위한 키워드 
		
	}

}
