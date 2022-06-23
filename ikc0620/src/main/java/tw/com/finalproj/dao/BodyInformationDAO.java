package tw.com.finalproj.dao;

import java.util.List;

import tw.com.finalproj.service.domain.BodyInformationBean;


public interface BodyInformationDAO {
	public abstract BodyInformationBean select(String useraccount);

	public abstract List<BodyInformationBean> select();

	public abstract BodyInformationBean insert(BodyInformationBean bean);


	public abstract boolean delete(String useraccount);

}