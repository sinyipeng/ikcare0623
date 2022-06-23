package tw.com.finalproj.dao;

import java.util.List;

import tw.com.finalproj.service.domain.MemberSportBean;

public interface MemberSportDAO {
	public abstract MemberSportBean select(Integer sportid);
	
	public abstract List<MemberSportBean> select();
	
	public abstract MemberSportBean insert(MemberSportBean bean);
	
	public abstract MemberSportBean update(Integer sportid,String useraccount,java.util.Date sportdate,Integer sportclass,Float sporthour);
	
	public abstract boolean delete(Integer sportid);
}
