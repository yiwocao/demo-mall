package com.std.account.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.std.account.dao.IBalanceDAO;
import com.std.account.dao.base.support.AMybatisTemplate;
import com.std.account.domain.Account;

@Repository("balanceDAOImpl")
public class BalanceDAOImpl extends AMybatisTemplate implements IBalanceDAO{

	@Override
	public int insert(Account data) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(Account data) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Account select(Account condition) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public long selectTotalCount(Account condition) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Account> selectList(Account condition) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Account> selectList(Account condition, int start, int count) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateAmount(Account data) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateFrozenAmount(Account data) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateRealName(Account data) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateStatus(Account data) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int frozenAmount(Account data) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int unfrozenAmount(Account data) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int cutFrozenAmount(Account data) {
		// TODO Auto-generated method stub
		return 0;
	}

}
