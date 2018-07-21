package com.digitalone.freelancer;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.digitalone.freelancer.dto.FreelancerVO;
import com.digitalone.freelancer.serviceimpl.FreelancerServiceImpl;
import com.digitalone.utill.PagingUtill;

@Controller
public class HomeController {
	
	@Autowired
	FreelancerServiceImpl freelancerServiceImpl;
	
	@RequestMapping(value = "index.do", method = RequestMethod.GET)
	public String home( Model model) {
		
		return "index";
	}
	
	@RequestMapping(value = "freelancer_insert_form.do", method = RequestMethod.GET)
	public String GoFreelancerInsertPage( Model model,
						@RequestParam(value="existFreelancer", required=false, defaultValue="n") String existFreelancer) {
		
		/* 목록리스트 */
		model.addAttribute("school", freelancerServiceImpl.get_school_list());
		model.addAttribute("handicap", freelancerServiceImpl.get_handicap_list());
		model.addAttribute("job", freelancerServiceImpl.get_job_list());
		model.addAttribute("skill", freelancerServiceImpl.get_own_skill_list());
		model.addAttribute("role", freelancerServiceImpl.get_role_list());
		model.addAttribute("certi", freelancerServiceImpl.get_certi_list());
		model.addAttribute("able_area", freelancerServiceImpl.get_able_area_list());
		model.addAttribute("favorite", freelancerServiceImpl.get_favorite_list());
		model.addAttribute("area", freelancerServiceImpl.get_area_list());
		
		// 존재하는 사원 등록 시 
		if(existFreelancer.equals("y")){
			model.addAttribute("existFreelancer", "y");
		}
		
		return "freelancer/freelancer_insert_form";
	}

	@RequestMapping(value = "freelancer_insert_form.do", method = RequestMethod.POST)
	public String GoFreelancerInsert( Model model, FreelancerVO fv, RedirectAttributes rttr) {
		
		// 공백, null처리
		if(fv.getFl_phone_check() == null || fv.getFl_phone_check() == "" ){fv.setFl_phone_check("n");}
		if(fv.getFl_send_day_check() == null || fv.getFl_send_day_check() == ""){fv.setFl_send_day_check("n");}
		if(fv.getD_fixed() == null || fv.getD_fixed() == ""){fv.setD_fixed("n");}
		if(fv.getD_nego() == null || fv.getD_nego() == ""){fv.setD_nego("n");}
		if(fv.getO_fixed() == null || fv.getO_fixed() == ""){fv.setO_fixed("n");}
		if(fv.getO_nego() == null || fv.getO_nego() == ""){fv.setO_nego("n");}
		if(fv.getFl_notebook() == null || fv.getFl_notebook() == ""){fv.setFl_notebook("n");}
		if(fv.getHandicap_code() == null || fv.getHandicap_code() == ""){fv.setFl_kind("w");}else{fv.setFl_kind("b");}
		
		//중복체크
		if(freelancerServiceImpl.getFl_noByEmail(fv) != null){
			rttr.addAttribute("existFreelancer", "y");
		}else{
			
			//freelancer 입력
			freelancerServiceImpl.insertFreelancer(fv);
			
			//사원번호 출력
			String freelancer_no = freelancerServiceImpl.getFl_noByEmail(fv).getFl_no();
			fv.setFl_no(freelancer_no);
			
			//기타자료입력
			freelancerServiceImpl.insertFlCarreer(fv);
			freelancerServiceImpl.insertFlDevelopPrice(fv);
			freelancerServiceImpl.insertFlOpPrice(fv);
			freelancerServiceImpl.insertFlNoti(fv);
			
			String own_skill_arr [] = fv.getOwn_skill_code().split(",");
			for(int i=0; i<own_skill_arr.length;i++){
				fv.setOwn_skill_code(own_skill_arr[i]);
				freelancerServiceImpl.insertFlOwnskill(fv);
			}
			
			String role_arr [] = fv.getRole_code().split(",");
			for(int i=0; i<role_arr.length;i++){
				fv.setRole_code(role_arr[i]);
				freelancerServiceImpl.insertFlRole(fv);
			}
			
			String able_area_arr [] = fv.getAble_area_code().split(",");
			for(int i=0; i<able_area_arr.length;i++){
				fv.setAble_area_code(able_area_arr[i]);
				freelancerServiceImpl.insertFlAbleArea(fv);
			}
			
			String favorite_arr [] = fv.getFavorite_code().split(",");
			for(int i=0; i<favorite_arr.length;i++){
				fv.setFavorite_code(favorite_arr[i]);
				freelancerServiceImpl.insertFlFavorite(fv);
			}
			
			if(fv.getCerti_code() != null){
				String certi_arr [] = fv.getCerti_code().split(",");
				for(int i=0; i<certi_arr.length;i++){
					fv.setCerti_code(certi_arr[i]);
					freelancerServiceImpl.insertFlCerti(fv);
				}
			}
			
			// 블랙개발자일경우
			if(fv.getFl_kind().equals("b")){
				String handicap_arr [] = fv.getHandicap_code().split(",");
				for(int i=0; i<handicap_arr.length;i++){
					fv.setHandicap_code(handicap_arr[i]);
					freelancerServiceImpl.insertFlHandicap(fv);
				}
			}
			
		}
		
		return "redirect:freelancer_insert_form.do";
	}
	
	
	@RequestMapping(value = "freelancer_update_form.do", method = RequestMethod.GET)
	public String goUpdatePage(Model model, FreelancerVO fv){
		
		// 블랙 또는 화이트 개발자 여부 확인
		String kind = freelancerServiceImpl.getHandicapInfoBtFl_no(fv).getFl_kind();
		
		if(kind.equals("b")){
			fv.setFl_kind(kind);
		}else{
			fv.setFl_kind(null);
		}
		
		// 해당 사원의 정보 출력
		model.addAttribute("freelancer", freelancerServiceImpl.getFreelancerByFl_no(fv));
		
		/* 목록리스트 */
		model.addAttribute("school", freelancerServiceImpl.get_school_list());
		model.addAttribute("handicap", freelancerServiceImpl.get_handicap_list());
		model.addAttribute("job", freelancerServiceImpl.get_job_list());
		model.addAttribute("skill", freelancerServiceImpl.get_own_skill_list());
		model.addAttribute("role", freelancerServiceImpl.get_role_list());
		model.addAttribute("certi", freelancerServiceImpl.get_certi_list());
		model.addAttribute("able_area", freelancerServiceImpl.get_able_area_list());
		model.addAttribute("favorite", freelancerServiceImpl.get_favorite_list());
		model.addAttribute("area", freelancerServiceImpl.get_area_list());
		
		return "freelancer/freelancer_update_form";
	}
	
	@RequestMapping(value = "freelancer_search_form.do", method = RequestMethod.GET)
	public String goSearchPage(Model model, FreelancerVO fv,
						@RequestParam(value="page",  required=false, defaultValue="1") String page,
						@RequestParam(value="pagesize",  required=false, defaultValue="10") int pagesize,
						@RequestParam(value="allList",  required=false, defaultValue="n") String allList){
		
		/* 목록리스트 */
		model.addAttribute("school", freelancerServiceImpl.get_school_list());
		model.addAttribute("job", freelancerServiceImpl.get_job_list());
		model.addAttribute("skill", freelancerServiceImpl.get_own_skill_list());
		model.addAttribute("role", freelancerServiceImpl.get_role_list());
		model.addAttribute("certi", freelancerServiceImpl.get_certi_list());
		model.addAttribute("favorite", freelancerServiceImpl.get_favorite_list());

		if(fv.getOrderby() != null && fv.getOrderby().equals("")){fv.setOrderby(null);}
		
		if(allList.equals("n")){
			// 리스트를 검색하지 않은 검색페이지 
			
		}else{
			
			List<FreelancerVO> freelancer_list = (ArrayList<FreelancerVO>)  freelancerServiceImpl.getSearchList(fv);
			
			//날짜포맷
			Calendar getDate = Calendar.getInstance();
		    int year = getDate.get(Calendar.YEAR);
		    
			for(int n=0;n<freelancer_list.size();n++){
				int birth = Integer.parseInt(freelancer_list.get(n).getFl_birth());
				int age = (year - birth) + 1;
				freelancer_list.get(n).setAge(age);
			}
			
			//경력포맷
			for(int n=0;n<freelancer_list.size();n++){
				String all_carreer = freelancer_list.get(n).getCarreer();
				String[] carreer_arr = all_carreer.split("-");
				String format_carreer = carreer_arr[0] + "년 " + carreer_arr[1] + "개월";
				freelancer_list.get(n).setCarreer(format_carreer);
			}
			
			// 폰번호 포맷
			for(int n=0;n<freelancer_list.size();n++){
				String all_phone = freelancer_list.get(n).getFl_phone();
				String phone = new String(all_phone);
				String phone_1 = phone.substring(0,3);
				String phone_2 = phone.substring(3,7);
				String phone_3 = phone.substring(7,11);
				String format_phone = phone_1 + "-" + phone_2 + "-" + phone_3;
				freelancer_list.get(n).setFl_phone(format_phone);
			}
			
			// 검색리스트 출력
			model.addAttribute("searchList", freelancer_list);
			
			//페이징 클래스 참조
			PagingUtill paging = new PagingUtill();
			
			// 목록이 있는 경우
			if(freelancer_list.size() != 0){
				
				// Paging
				paging.setPagesize(pagesize);
				paging.setPage(Integer.parseInt(page));
				//paging.setStartno( (Integer.parseInt(page)-1)*paging.getPagesize());
				paging.setUrl("freelancer_search_form.do");
				paging.setTotalcount(Integer.parseInt(freelancer_list.get(0).getTotcount()));
				
				model.addAttribute("paging",paging);
				model.addAttribute("totcount", paging.getTotalcount());
				model.addAttribute("allList", "y");
				model.addAttribute("pagesize", pagesize);
				
				
			// 목록이 없는 경우
			}else{
				model.addAttribute("totcount", 0);
			}

		} // allList = y E
			
			
			return "freelancer/freelancer_search_form";
		}
		
	
	
		
		@RequestMapping(value = "freelancer_search_form.do", method = RequestMethod.POST)
		public String goSearch(Model model, FreelancerVO fv, RedirectAttributes rttr,
						@RequestParam(value="page",  required=false, defaultValue="1") String page,
						@RequestParam(value="pagesize",  required=false, defaultValue="10") int pagesize,
						@RequestParam(value="allList",  required=false, defaultValue="n") String allList){
			
		// 전체검색 페이징처리		
		if(allList.equals("y")){
			
			rttr.addAttribute("page", page);
			rttr.addAttribute("allList", allList);
			
			return "redirect:freelancer_search_form.do";
			
		}else{
				
			/* 목록리스트 */
			model.addAttribute("school", freelancerServiceImpl.get_school_list());
			model.addAttribute("job", freelancerServiceImpl.get_job_list());
			model.addAttribute("skill", freelancerServiceImpl.get_own_skill_list());
			model.addAttribute("role", freelancerServiceImpl.get_role_list());
			model.addAttribute("certi", freelancerServiceImpl.get_certi_list());
			model.addAttribute("favorite", freelancerServiceImpl.get_favorite_list());

			/* 공백처리 */
			if(fv.getE_carreer().equals("")){fv.setE_carreer(null);}
			if(fv.getS_carreer().equals("")){fv.setS_carreer(null);}
			if(fv.getS_year().equals("")){fv.setS_year(null);}
			if(fv.getE_year().equals("")){fv.setE_year(null);}
			if(fv.getFl_consult_day().equals("")){fv.setFl_consult_day(null);}
			if(fv.getFl_e_consult_day().equals("")){fv.setFl_e_consult_day(null);}
			if(fv.getFl_birth().equals("")){fv.setFl_birth(null);}
			if(fv.getFl_e_birth().equals("")){fv.setFl_e_birth(null);}
			if(fv.getKeyword1().equals("")){fv.setKeyword1(null);}
			if(fv.getKeyword2().equals("")){fv.setKeyword2(null);}
			if(fv.getChecked_day().equals("")){fv.setChecked_day(null);}
			if(fv.getE_checked_day().equals("")){fv.setE_checked_day(null);}
			if(fv.getFl_send_day().equals("")){fv.setFl_send_day(null);}
			if(fv.getFl_e_send_day().equals("")){fv.setFl_e_send_day(null);}
			if(fv.getOrderby() != null && fv.getOrderby() == ""){fv.setOrderby(null);}
			
			/* 다중선택처리*/
			if(fv.getFl_kind() != null){
				String [] kinds = fv.getFl_kind().split(",");
				if(kinds.length > 1){ 
					fv.setKind1(kinds[0]);
					fv.setKind2(kinds[1]);
					fv.setFl_kind(null);
				}
			}
			
			if(fv.getFl_gender() != null){
				String [] genders = fv.getFl_gender().split(",");
				if(genders.length >1){
					fv.setGender1(genders[0]);
					fv.setGender2(genders[1]);
					fv.setFl_gender(null);
				}
			}
	
			
			List<FreelancerVO> freelancer_list = (ArrayList<FreelancerVO>)  freelancerServiceImpl.getSearchList(fv);
			
			//날짜포맷
			Calendar getDate = Calendar.getInstance();
		    int year = getDate.get(Calendar.YEAR);
		    
			for(int n=0;n<freelancer_list.size();n++){
				int birth = Integer.parseInt(freelancer_list.get(n).getFl_birth());
				int age = (year - birth) + 1;
				freelancer_list.get(n).setAge(age);
			}
			
			//경력포맷
			for(int n=0;n<freelancer_list.size();n++){
				String all_carreer = freelancer_list.get(n).getCarreer();
				String[] carreer_arr = all_carreer.split("-");
				String format_carreer = carreer_arr[0] + "년" + carreer_arr[1] + "개월";
				freelancer_list.get(n).setCarreer(format_carreer);
			}
			
			// 폰번호포맷
			for(int n=0;n<freelancer_list.size();n++){
				String all_phone = freelancer_list.get(n).getFl_phone();
				String phone = new String(all_phone);
				String phone_1 = phone.substring(0,3);
				String phone_2 = phone.substring(3,7);
				String phone_3 = phone.substring(7,11);
				String format_phone = phone_1 + "-" + phone_2 + "-" + phone_3;
				freelancer_list.get(n).setFl_phone(format_phone);
			}
			
			//검색리스트 출력
			model.addAttribute("searchList", freelancer_list);
			
			//페이징
			PagingUtill paging = new PagingUtill();
			
			// 목록이 있는 경우
			if(freelancer_list.size() != 0){
				
				// Paging
				paging.setPagesize(pagesize);
				paging.setPage(Integer.parseInt(page));
				paging.setStartno( (Integer.parseInt(page)-1)*paging.getPagesize());
				paging.setUrl("freelancer_search_form.do");
				paging.setTotalcount(Integer.parseInt(freelancer_list.get(0).getTotcount()));
				
				model.addAttribute("paging",paging);
				model.addAttribute("totcount", paging.getTotalcount());
				model.addAttribute("allList", "n");
				model.addAttribute("pagesize", pagesize);
				
				
			// 목록이 없는 경우
			}else{
				model.addAttribute("totcount", 0);
			}
			
			// 조건유지
			model.addAttribute("condition", fv);
			
			System.out.println("fl_birth : " + fv.getFl_birth());
			System.out.println("fl_e_birth : " + fv.getFl_e_birth());
			System.out.println("1orderby : " + fv.getOrderby());
			System.out.println("s_year : " + fv.getS_year());
			System.out.println("e_year : " + fv.getE_year());
			System.out.println("kind1 : " + fv.getKind1());
			System.out.println("keyword1 : " + fv.getKeyword1());
			System.out.println("keyword2 : " + fv.getKeyword2());
			System.out.println("operators : " + fv.getOperators());
			System.out.println("s_carreer : " + fv.getS_carreer());
			System.out.println("e_carreer : " + fv.getE_carreer());
			System.out.println("ckeched_day : " + fv.getChecked_day());
			System.out.println("e_checked_day : " + fv.getE_checked_day());
			System.out.println("fl_e_send_day : " + fv.getFl_e_send_day());
			System.out.println("fl_send_day : " + fv.getFl_send_day());
			System.out.println("s_carreer : " + fv.getS_carreer());
			System.out.println("e_carreer : " + fv.getE_carreer());
			System.out.println("s_year : " + fv.getS_year());
			System.out.println("e_year : " + fv.getE_year());
			System.out.println("fl_consult_day : " + fv.getFl_consult_day());
			System.out.println("fl_e_consult_day : " + fv.getFl_e_consult_day());
			System.out.println("fl_birth : " + fv.getFl_birth());
			System.out.println("fl_e_birth : " + fv.getFl_e_birth());
			System.out.println("fl_kind : " + fv.getFl_kind());
			System.out.println("ls_gender : " + fv.getFl_gender());
			System.out.println("school_code : " + fv.getSchool_code());
			System.out.println("certi_code : " + fv.getCerti_code());
			System.out.println("job_code : " + fv.getJob_code());
			System.out.println("fl_send_day_check : " + fv.getFl_send_day_check());
			System.out.println("handicap_code : " + fv.getHandicap_code());
			System.out.println("own_skill_code : " + fv.getOwn_skill_code());
			System.out.println("role_code : " + fv.getRole_code());
			System.out.println("favorite_code : " + fv.getFavorite_code());
			System.out.println("handicap_code : " + fv.getHandicap_code());
			System.out.println("orderby : " + fv.getOrderby());
			System.out.println("----------------------------------");
			System.out.println("----------------------------------");
			
			
			return "freelancer/freelancer_search_form";
		}	
		
	}
		
	
	
}
