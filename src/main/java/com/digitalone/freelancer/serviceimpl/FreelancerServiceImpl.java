package com.digitalone.freelancer.serviceimpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.digitalone.freelancer.dto.FreelancerVO;
import com.digitalone.freelancer.service.FreelancerService;

@Repository
public class FreelancerServiceImpl implements FreelancerService {
	
	@Autowired
	SqlSession sqlSession;

	@Override
	public List<FreelancerVO> get_school_list() {
		return sqlSession.selectList("freelancer.get_school_list");
	}

	@Override
	public List<FreelancerVO> get_handicap_list() {
		return sqlSession.selectList("freelancer.get_handicap_list");
	}

	@Override
	public List<FreelancerVO> get_job_list() {
		return sqlSession.selectList("freelancer.get_job_list");
	}

	@Override
	public List<FreelancerVO> get_own_skill_list() {
		return sqlSession.selectList("freelancer.get_own_skill_list");
	}

	@Override
	public List<FreelancerVO> get_role_list() {
		return sqlSession.selectList("freelancer.get_role_list");
	}

	@Override
	public List<FreelancerVO> get_certi_list() {
		return sqlSession.selectList("freelancer.get_certi_list");
	}

	@Override
	public List<FreelancerVO> get_able_area_list() {
		return sqlSession.selectList("freelancer.get_able_area_list");
	}

	@Override
	public List<FreelancerVO> get_favorite_list() {
		return sqlSession.selectList("freelancer.get_favorite_list");
	}

	@Override
	public List<FreelancerVO> get_area_list() {
		return sqlSession.selectList("freelancer.get_area_list");
	}

	@Override
	public void insertFreelancer(FreelancerVO fv) {
		sqlSession.insert("freelancer.insertFreelancer",fv);
	}

	@Override
	public FreelancerVO getFl_noByEmail(FreelancerVO fv) {
		return sqlSession.selectOne("freelancer.getFl_noByEmail",fv);
	}

	@Override
	public void insertFlCarreer(FreelancerVO fv) {
		sqlSession.insert("freelancer.insertFlCarreer",fv);
	}

	@Override
	public void insertFlOwnskill(FreelancerVO fv) {
		sqlSession.insert("freelancer.insertFlOwnskill",fv);
		
	}

	@Override
	public void insertFlRole(FreelancerVO fv) {
		sqlSession.insert("freelancer.insertFlRole",fv);
		
	}

	@Override
	public void insertFlDevelopPrice(FreelancerVO fv) {
		sqlSession.insert("freelancer.insertFlDevelopPrice",fv);
		
	}

	@Override
	public void insertFlOpPrice(FreelancerVO fv) {
		sqlSession.insert("freelancer.insertFlOpPrice",fv);
		
	}

	@Override
	public void insertFlAbleArea(FreelancerVO fv) {
		sqlSession.insert("freelancer.insertFlAbleArea",fv);
		
	}

	@Override
	public void insertFlFavorite(FreelancerVO fv) {
		sqlSession.insert("freelancer.insertFlFavorite",fv);
		
	}

	@Override
	public void insertFlNoti(FreelancerVO fv) {
		sqlSession.insert("freelancer.insertFlNoti",fv);
		
	}

	@Override
	public void insertFlCerti(FreelancerVO fv) {
		sqlSession.insert("freelancer.insertFlCerti",fv);
		
	}

	@Override
	public void insertFlHandicap(FreelancerVO fv) {
		sqlSession.insert("freelancer.insertFlHandicap",fv);
	}

	@Override
	public FreelancerVO getHandicapInfoBtFl_no(FreelancerVO fv) {
		return sqlSession.selectOne("freelancer.getHandicapInfoBtFl_no",fv);
	}

	@Override
	public FreelancerVO getFreelancerByFl_no(FreelancerVO fv) {
		return sqlSession.selectOne("freelancer.getFreelancerByFl_no",fv);
	}

	@Override
	public List<FreelancerVO> getSearchList(FreelancerVO fv) {
		return sqlSession.selectList("freelancer.getSearchList",fv);
	}

}
