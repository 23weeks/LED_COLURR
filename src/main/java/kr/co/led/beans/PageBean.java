package kr.co.led.beans;

import lombok.Getter;

@Getter
public class PageBean {

		// �ּ� ������ ��ȣ
		private int min;
		// �ִ� ������ ��ȣ
		private int max;
		// ���� ��ư�� ������ ��ȣ
		private int prevPage;
		// ���� ��ư�� ������ ��ȣ
		private int nextPage;
		// ��ü ������ ����
		private int pageCnt;
		// ���� ������ ��ȣ
		private int currentPage;
		
		//contentCnt(table), currentPage(param) : ���� �۹�ȣ, contentPageCnt(properties) : �������� ���� ����, paginationCnt(properties)
		public PageBean(int contentCnt, int currentPage, int contentPageCnt, int paginationCnt) {
			
			//���� ������ ��ȣ
			this.currentPage=currentPage;
			
			//��ü ������ ����
			pageCnt= contentCnt / contentPageCnt;
			if(contentCnt / contentPageCnt > 0 ) {
				pageCnt++;
			}
			
			//���� ���� ��Ȱ��ȭ
			//����Ŭ�� index��ȣ�� �ڵ忡���� ���� ��ġ ��ŰŰ
			min =((currentPage -1 ) / contentPageCnt) * contentPageCnt+1;
			max = min + paginationCnt -1;
			//������ ������ ����ó��
			if(max > pageCnt) {
				max=pageCnt;
			}
			
			
			prevPage = min - 1;
			nextPage = max + 1;
			//������������ ���� ó��
			if(nextPage > pageCnt) {
				nextPage=pageCnt;
			}
			
		}
		
	
}
