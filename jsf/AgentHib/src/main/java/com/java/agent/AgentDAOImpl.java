package com.java.agent;

import java.util.List;
import java.util.Map;

import javax.faces.context.FacesContext;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;


public class AgentDAOImpl implements AgentDAO{
	SessionFactory sf;
	Session session;
	
	public Agent searchAgentAr(int agentId) {
		sf = SessionHelper.getConnection();
		session = sf.openSession();
		Criteria cr = session.createCriteria(Agent.class);
		cr.add(Restrictions.eq("agentId", agentId));
		Agent agent = (Agent)cr.uniqueResult();
		return agent;
	}

	@Override
	public List<Agent> showAgent() {
		sf=SessionHelper.getConnection();
		session=sf.openSession();
		Criteria cr=session.createCriteria(Agent.class);
		List<Agent> agentList=cr.list();
		return agentList;
	}
	
	
	

	@Override
	public String searchAgent(int agentId) {
		Map<String, Object> sessionMap = FacesContext.getCurrentInstance().getExternalContext().getSessionMap();
		sf = SessionHelper.getConnection();
		session =sf.openSession();
		Query query = session.createQuery("from Agent where agentId="+agentId);
		List<Agent> agentList = query.list();
		Agent agent = agentList.get(0);
		sessionMap.put("editAgent", agent);
		return "UpdateAgent.xhtml?faces-redirect=true";
	}

	@Override
	public String addAgent(Agent agent) {
		sf=SessionHelper.getConnection();
		session=sf.openSession();
		Transaction transaction = session.beginTransaction();
		session.save(agent);
		transaction.commit();
		return"Employ Record Inserted....";
	}

	@Override
	public String deleteAgent(int agentId) {
		Agent agentFound = searchAgentAr(agentId);
		sf = SessionHelper.getConnection();
		session = sf.openSession();
		Transaction trans = session.beginTransaction();
		session.delete(agentFound);
		trans.commit();
		return "ShowAgent.xhtml?faces-redirection=true";
	}

	@Override
	public String updateAgent(Agent	 agentUpdate) {
		sf = SessionHelper.getConnection();
		session = sf.openSession();
		Transaction trans = session.beginTransaction();
		session.update(agentUpdate);
		trans.commit();
		return "ShowAgent.xhtml?faces-redirect=true";
	}

}
