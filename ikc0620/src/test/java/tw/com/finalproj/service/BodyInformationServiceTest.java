package tw.com.finalproj.service;

import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.transaction.annotation.Transactional;

import tw.com.finalproj.dao.BodyInformationRepository;
import tw.com.finalproj.service.domain.BodyInformationBean;

@SpringBootTest
public class BodyInformationServiceTest {

	@Test
	public void contextLoads() {
	}
	
	@Autowired
	private  BodyInformationRepository bodyInformationRepository;
	@Autowired
	private  BodyInformationRepositoryService bodyInformationRepositoryService;
	
//	@Test
	@Transactional
	public void tetselect() {
		List<BodyInformationBean> beans = bodyInformationRepository.findByUseraccountOrderByBodyidDesc("qq@qq");
		if(beans!=null) {
			BodyInformationBean bean =  beans.get(0);
			System.out.println(bean);
		}
	}
	
//	@Test
	public void testinsert() {
		BodyInformationBean bean = new BodyInformationBean();
		bean.setUseraccount("qq@qq");
		bean.setMemberheight((float)180);
		bean.setMemberweight((float)55);
		BodyInformationBean bean2 = bodyInformationRepositoryService.insert(bean);
		System.out.println(bean2);
	}
	
}
