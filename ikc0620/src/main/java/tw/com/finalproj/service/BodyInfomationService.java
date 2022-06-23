package tw.com.finalproj.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tw.com.finalproj.dao.BodyInformationDAO;
import tw.com.finalproj.service.domain.BodyInformationBean;

@Service
@Transactional
public class BodyInfomationService {
	@Autowired
	private BodyInformationDAO bodyInformationDAO;
	
	public List<BodyInformationBean> select(BodyInformationBean bean) {
		List<BodyInformationBean> result = null;
		System.out.println("test1");
		if (bean != null && bean.getUseraccount() != null ) {
			System.out.println("test2");
			BodyInformationBean temp = bodyInformationDAO.select(bean.getUseraccount());
			System.out.println("test4");
			if (temp != null) {
				result = new ArrayList<BodyInformationBean>();
				result.add(temp);
			}
		} else {
			System.out.println("test3");
			result = bodyInformationDAO.select();
		}
		return result;
	}
	
}
