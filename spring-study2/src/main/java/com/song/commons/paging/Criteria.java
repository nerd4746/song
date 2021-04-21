package com.song.commons.paging;

//Criteria클래스를 만들어서 페이징 처리의 기준이 되는 변수들을 하나의 객체로 처리
public class Criteria {
	private int page;
	private int perPageNum;

	public Criteria() {
		this.page = 1;
		this.perPageNum = 10;
	}

	public void setPage(int page) {
		if (page <= 0) {
			this.page = 1;
			return;
		}
		this.page = page;
	}

	public int getPage() {
		return page;
	}

	public void setPerPageNum(int perPageNum) {
		if (perPageNum <= 0 || perPageNum > 100) {
			this.perPageNum = 10;
			return;
		}
		this.perPageNum = perPageNum;
	}

	public int getPerPageNum() {
		return this.perPageNum;
	}

	public int getPageStart() {
		return (this.page - 1) * perPageNum;
	}
	
	@Override
	public String toString() {
		return "Criteria [page=" + page + ", perPageNum=" + perPageNum + "]";
	}
	
}
