package com.digitalone.utill;

public class PagingUtill {

	private int pagesize; //한 페이지당 게시물 수
	
	private int page; // 페이지번호
	private int startno; //게시물시작번호
	private int endno; //게시물끝번호
	private int lastpage; // 마지막페이지
	private int firstpage; // 첫 페이지
	private int prevpage; //이전페이지
	private int nextpage; //다음페이지
	private String url; //이동할 url
	
	private int rowStartno; //해당페이지 첫게시물번호
	private int rowEndno; //해당페이지 끝게시물번호
	
	private int totalcount; // 총게시물 수
	

	public int getPagesize() {
		return pagesize;
	}

	public void setPagesize(int pagesize) {
		this.pagesize = pagesize;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public int getStartno() {
		return startno;
	}

	public void setStartno(int startno) {
		this.startno = startno;
	}

	public int getEndno() {
		return endno;
	}

	public void setEndno(int endno) {
		this.endno = endno;
	}

	public int getLastpage() {
		return lastpage;
	}

	public void setLastpage(int lastpage) {
		this.lastpage = lastpage;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public int getRowStartno() {
		return rowStartno;
	}

	public void setRowStartno(int rowStartno) {
		this.rowStartno = rowStartno;
	}

	public int getRowEndno() {
		return rowEndno;
	}

	public void setRowEndno(int rowEndno) {
		this.rowEndno = rowEndno;
	}

	public int getTotalcount() {
		return totalcount;
	}

	public void setTotalcount(int totalcount) {
		this.totalcount = totalcount;
		this.makePage();
	}
	
	public int getFirstpage() {
		return firstpage;
	}

	public void setFirstpage(int firstpage) {
		this.firstpage = firstpage;
	}
	
	public int getPrevpage() {
		return prevpage;
	}

	public void setPrevpage(int prevpage) {
		this.prevpage = prevpage;
	}

	public int getNextpage() {
		return nextpage;
	}

	public void setNextpage(int nextpage) {
		this.nextpage = nextpage;
	}

	public void makePage(){
		if (this.startno == 0) {this.setStartno(1);}
		if (this.pagesize == 0) {this.setPagesize(10);}
		
		
		int start = (this.page -1) * pagesize ;
		int end = startno + pagesize -1;
		int lastpageno = (totalcount + (pagesize - 1)) / pagesize;
		int prev = this.page -1;
		int next = this.page +1;
		
		this.setEndno(end);
		this.setStartno(start);
		this.setLastpage(lastpageno);
		this.setFirstpage(1);
		this.setPrevpage(prev);
		this.setNextpage(next);
		
		if (this.page == 1) {
			
//			this.setStartno(startno -1);
			this.setEndno(endno -1); 
			this.setPrevpage(1);
			
		}
		
		if(this.page == lastpageno){
			
			this.setNextpage(lastpageno);
			
		}
		
	}
	
}
