/**
 * 
 */
package com.union.portal.common;

/**
 * @author family
 *
 */
public class PageNavigation {

	/**
	 * 이전페이지 존재유무
	 */
	private boolean isPrevPage;
	/**
	 * 다음 페이지 존재유무
	 */
	private boolean isNextPage;
	/**
	 * 현재 페이지
	 */
	protected int nowPage;
	/**
	 * 전체 열수
	 */
	protected long rowTotal;
	/**
	 * 페이지블럭리스트
	 */
	protected int blockList;
	/**
	 * 블럭당 페이지
	 */
	protected int blockPage;
	/**
	 * 전체페이지수
	 */
	private int totalPage;
	/**
	 * 시작페이지
	 */
	private int startPage;
	/**
	 * 종료페이지
	 */
	private int endPage;
	/**
	 * 시작 row
	 */
	private int startRow;
	/**
	 * 종료 row
	 */
	private int endRow;

	// 페이지를 계산하는 생성자
	/**
	 * <pre>
	 * 페이지를 계산하는 생성자
	 * </pre>
	 * @param nowPage 현재페이지
	 * @param rowTotal 전체 row수
	 * @param blockList 블럭리스트
	 * @param blockPage 블럭페이지수
	 */
	public PageNavigation(int nowPage, long rowTotal, int blockList, int blockPage) {
		super();

		// 각종 플래그를 초기화
		isPrevPage = false; 
		isNextPage = false;

		// 입력된 전체 열의 수를 통해 전체 페이지 수를 계산한다
		this.totalPage = (int) Math
				.ceil((double) rowTotal / (double) blockList);

		// 현재 페이지가 전체 페이지수보다 클경우 전체 페이지수로 강제로 조정한다
		if (nowPage > this.totalPage) {
			nowPage = (int)this.totalPage;
		}

		// DB입력을 위한 시작과 종료값을 구한다
		this.startRow = (int) (nowPage - 1) * blockList;
		this.endRow = (int) this.startRow + blockList - 1;

		// 시작페이지와 종료페이지의 값을 구한다
		this.startPage = (int) ((nowPage - 1) / blockPage) * blockPage + 1;
		this.endPage = (int) this.startPage + blockPage - 1;

		// 마지막 페이지값이 전체 페이지값보다 클 경우 강제 조정
		if (this.endPage > this.totalPage) {
			this.endPage = totalPage;
		}

		// 시작 페이지가 1보다 클 경우 이전 페이징이 가능한것으로 간주한다
		if (this.startPage > 1) {
			this.isPrevPage = true;
		}

		// 종료페이지가 전체페이지보다 작을경우 다음 페이징이 가능한것으로 간주한다
		if (this.endPage < this.totalPage) {
			this.isNextPage = true;
		}

		// 기타 값을 저장한다
		this.nowPage = nowPage;
		this.rowTotal = rowTotal;
		this.blockList = blockList;
		this.blockPage = blockPage;
	}

	/**
	 * <pre>
	 * 해당 class대한 debugging을 처리 
	 * </pre>
	 */
	public void Debug() {
		System.out.println("Total Page : " + this.totalPage
				+ " / Start Page : " + this.startPage + " / End Page : "
				+ this.endPage);
		System.out.println("Total Row : " + this.rowTotal + " / Start Row : "
				+ this.startRow + " / End Row : " + this.endRow);
	}

	// 전체 페이지 수를 알아온다
	/**
	 * <pre>
	 * 전체 페이지 수를 알아온다
	 * </pre>
	 * @return int totalPage
	 */
	public int getTotalPage() {
		return totalPage;
	}

	// 시작 Row값을 가져온다
	/**
	 * <pre>
	 * 시작 Row값을 가져온다
	 * </pre>
	 * @return int startRow
	 */
	public int getStartRow() {
		return startRow;
	}

	// 마지막 Row값을 가져온다
	/**
	 * <pre>
	 * 마지막 Row값을 가져온다
	 * </pre>
	 * @return int endRow
	 */
	public int getEndRow() {
		return endRow;
	}

	// Block Row 크기를 가져온다
	/**
	 * <pre>
	 *  Block Row 크기를 가져온다
	 * </pre>
	 * @return int blockPage 
	 */
	public int getBlockPage() {
		return blockPage;
	}

	// 시작페이지값을 가져온다
	/**
	 * <pre>
	 * 시작페이지값을 가져온다
	 * </pre>
	 * @return int 시작페이지
	 */
	public int getStartPage() {
		return startPage;
	}

	// 마지막 페이지값을 가져온다
	/**
	 * <pre>
	 * 마지막 페이지값을 가져온다
	 * </pre>
	 * @return int 마지막페이지
	 */
	public int getEndPage() {
		return endPage;
	}

	// 이전페이지의 존재유무를 가져온다
	/**
	 * <pre>
	 * 이전페이지의 존재유무를 가져온다
	 * </pre>
	 * @return boolean 존재하면 true 그렇지않으면 false
	 */
	public boolean isPrevPage() {
		return isPrevPage;
	}

	// 다음페이지의 존재유무를 가져온다
	/**
	 * <pre>
	 * 다음페이지의 존재유무를 가져온다
	 * </pre>
	 * @return boolean 존재하면 true 그렇지않으면 false
	 */
	public boolean isNextPage() {
		return isNextPage;
	}
}
