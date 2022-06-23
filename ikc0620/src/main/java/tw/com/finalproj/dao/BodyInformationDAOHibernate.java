package tw.com.finalproj.dao;

import java.util.List;

import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import tw.com.finalproj.service.domain.BodyInformationBean;


@Repository
public class BodyInformationDAOHibernate implements BodyInformationDAO {
	@PersistenceContext
	private Session session;

	public Session getSession() {
		return session;
	}

	@Override
	public BodyInformationBean select(String useraccount) {
		System.out.println("test7");
		if (useraccount != null) {
			System.out.println("test8");
			System.out.println(useraccount);
			System.err.println(this.getSession().get(BodyInformationBean.class, useraccount));
			System.out.println("test9");
			return this.getSession().get(BodyInformationBean.class, useraccount);
			
		}
		return null;
	}

	@Override
	public BodyInformationBean insert(BodyInformationBean bean) {
		if (bean != null && bean.getUseraccount() != null) {
			BodyInformationBean temp = this.getSession().get(BodyInformationBean.class, bean.getUseraccount());
			if (temp == null) {
				this.getSession().save(bean);
				return bean;
			}
		}
		return null;
	}

	@Override
	public List<BodyInformationBean> select() {
		System.out.println("test6");
		CriteriaBuilder criteriaBuilder = this.getSession().getCriteriaBuilder();
		CriteriaQuery<BodyInformationBean> criteriaQuery = criteriaBuilder.createQuery(BodyInformationBean.class);

		Root<BodyInformationBean> root = criteriaQuery.from(BodyInformationBean.class);

		TypedQuery<BodyInformationBean> typedQuery = this.getSession().createQuery(criteriaQuery);
		List<BodyInformationBean> result = typedQuery.getResultList();
		if (result != null && !result.isEmpty()) {
			return result;
		}
		return null;
	}


	@Override
	public boolean delete(String useraccount) {
		// TODO Auto-generated method stub
		return false;
	}
}
