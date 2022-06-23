package tw.com.finalproj.dao;

import java.util.Date;
import java.util.List;

import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.hibernate.Session;
import org.springframework.stereotype.Repository;


import tw.com.finalproj.service.domain.MemberSportBean;


@Repository
public class MemberSportHibernate implements MemberSportDAO {
	@PersistenceContext
	private Session session;

	public Session getSession() {
		return session;
	}
	@Override
	public List<MemberSportBean> select() {
		CriteriaBuilder criteriaBuilder = this.getSession().getCriteriaBuilder();
		CriteriaQuery<MemberSportBean> criteriaQuery = criteriaBuilder.createQuery(MemberSportBean.class);

		Root<MemberSportBean> root = criteriaQuery.from(MemberSportBean.class);

		TypedQuery<MemberSportBean> typedQuery = this.getSession().createQuery(criteriaQuery);
		List<MemberSportBean> result = typedQuery.getResultList();
		if (result != null && !result.isEmpty()) {
			return result;
		}
		return null;
	}

	@Override
	public MemberSportBean select(Integer sprotid) {
		if (sprotid != null) {
			return this.getSession().get(MemberSportBean.class, sprotid);
		}
		return null;
	}

	@Override
	public MemberSportBean update(Integer sprotid, String useraccount, Date sprotdate, Integer sportclass,
			Float sporthour) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean delete(Integer sprotID) {
		// TODO Auto-generated method stub
		return false;
	}
	@Override
	public MemberSportBean insert(MemberSportBean bean) {
		if (bean != null ) {
				this.getSession().save(bean);
				return bean;
		}
		return null;
	}
}
