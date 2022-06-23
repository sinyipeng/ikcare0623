package tw.com.finalproj.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tw.com.finalproj.dao.BodyInformationRepository;
import tw.com.finalproj.dao.MembersDAO;
import tw.com.finalproj.service.domain.BodyInformationBean;
import tw.com.finalproj.service.domain.MembersBean;

@Service
@Transactional
public class BodyInformationRepositoryService {
	@Autowired
	private BodyInformationRepository bodyInformationRepository;
	@Autowired
	private MembersDAO membersDAO;
	
	@Transactional(readOnly = true)
	public BodyInformationBean selectNewest(String useraccount) {
		List<BodyInformationBean> beans = bodyInformationRepository.findByUseraccountOrderByBodyidDesc(useraccount);
		if(beans!=null) {
			BodyInformationBean bean =  beans.get(0);
			return bean;
		}
		return null;
	}
	
	public BodyInformationBean insert(BodyInformationBean bean) {
		BodyInformationBean result = null;
		if(bean!= null && bean.getUseraccount().length()!=0) {
			MembersBean member = membersDAO.select(bean.getUseraccount());
			if(member!=null && bean.getMemberheight()!=0 &&bean.getMemberweight()!=0) {
				result = bodyInformationRepository.save(bean);
				return result;
			}
		}
		return result;
	}
	
}
