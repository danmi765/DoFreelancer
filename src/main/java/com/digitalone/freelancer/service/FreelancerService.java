package com.digitalone.freelancer.service;

import java.util.List;

import com.digitalone.freelancer.dto.FreelancerVO;

public interface FreelancerService {

	public List<FreelancerVO> get_school_list();
	public List<FreelancerVO> get_handicap_list();
	public List<FreelancerVO> get_job_list();
	public List<FreelancerVO> get_own_skill_list();
	public List<FreelancerVO> get_role_list();
	public List<FreelancerVO> get_certi_list();
	public List<FreelancerVO> get_able_area_list();
	public List<FreelancerVO> get_favorite_list();
	public List<FreelancerVO> get_area_list();
	
	
	
	public void insertFreelancer(FreelancerVO fv);
	public void insertFlCarreer(FreelancerVO fv);
	public void insertFlOwnskill(FreelancerVO fv);
	public void insertFlRole(FreelancerVO fv);
	public void insertFlDevelopPrice(FreelancerVO fv);
	public void insertFlOpPrice(FreelancerVO fv);
	public void insertFlAbleArea(FreelancerVO fv);
	public void insertFlFavorite(FreelancerVO fv);
	public void insertFlNoti(FreelancerVO fv);
	public void insertFlCerti(FreelancerVO fv);
	public void insertFlHandicap(FreelancerVO fv);
	
	public FreelancerVO getFl_noByEmail(FreelancerVO fv);
	public FreelancerVO getHandicapInfoBtFl_no(FreelancerVO fv);
	public FreelancerVO getFreelancerByFl_no(FreelancerVO fv);
	
	public List<FreelancerVO> getSearchList(FreelancerVO fv);
	
}
