package com.std.account.bo.impl;

import com.std.account.bo.IBalanceBO;
import com.std.account.bo.base.Paginable;
import com.std.account.domain.Balance;

public class BalanceBOImpl implements IBalanceBO{

	@Override
	public long getTotalCount(Balance condition) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Paginable<Balance> getPaginable(int start, Balance condition) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Paginable<Balance> getPaginable(int start, int pageSize, Balance condition) {
		// TODO Auto-generated method stub
		return null;
	}

}
