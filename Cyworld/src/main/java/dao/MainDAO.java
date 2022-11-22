package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import vo.MainVO;

public class MainDAO {

SqlSession sqlSession;
	
	public MainDAO(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	//일촌평 전체목록 조회
	public List<MainVO> selectList(){
		List<MainVO> list = sqlSession.selectList("m.ilchon_list");
		return list;
	}
	//새 글 추가
		public int insert(MainVO vo) {
			//mapper로 딱 한개의 객체만 넘겨줄 수 있다. 
			int res = sqlSession.insert("m.main_insert", vo);
			return res; 
		}
		
}
