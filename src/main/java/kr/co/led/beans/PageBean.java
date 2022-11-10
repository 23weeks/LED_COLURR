package kr.co.led.beans;

import lombok.Getter;

@Getter
public class PageBean {

		// 최소 페이지 번호
		private int min;
		// 최대 페이지 번호
		private int max;
		// 이전 버튼의 페이지 번호
		private int prevPage;
		// 다음 버튼의 페이지 번호
		private int nextPage;
		// 전체 페이지 개수
		private int pageCnt;
		// 현재 페이지 번호
		private int currentPage;
		
		//contentCnt(table), currentPage(param) : 현재 글번호, contentPageCnt(properties) : 페이지당 글의 갯수, paginationCnt(properties)
		public PageBean(int contentCnt, int currentPage, int contentPageCnt, int paginationCnt) {
			
			//현재 페이지 번호
			this.currentPage=currentPage;
			
			//전체 페이지 갯수
			pageCnt= contentCnt / contentPageCnt;
			if(contentCnt / contentPageCnt > 0 ) {
				pageCnt++;
			}
			
			//이전 이후 비활성화
			//오라클의 index번호와 코드에서의 값을 일치 시키키
			min =((currentPage -1 ) / contentPageCnt) * contentPageCnt+1;
			max = min + paginationCnt -1;
			//마지막 페이지 예외처리
			if(max > pageCnt) {
				max=pageCnt;
			}
			
			
			prevPage = min - 1;
			nextPage = max + 1;
			//마지막페이지 예외 처리
			if(nextPage > pageCnt) {
				nextPage=pageCnt;
			}
			
		}
		
	
}
