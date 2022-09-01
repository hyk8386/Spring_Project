package com.bookshop01.admin.board.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Criteria {

	private int pageNum;
	private int amount;
	
	public Criteria() {
<<<<<<< HEAD
		this(1,10);
=======
		this(1,5);
>>>>>>> jiho
	}

	public Criteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}
}
