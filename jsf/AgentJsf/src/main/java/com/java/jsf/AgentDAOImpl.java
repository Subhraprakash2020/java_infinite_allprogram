package com.java.jsf;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

public class AgentDAOImpl {
	
	SessionFactory sf;
	Session session;
	
	public List<Agent> showAgentDao(){
		SessionFactory sf = SessionHelper.getConnection();
		Session session = sf.openSession();
		Criteria cr = session.createCriteria(Agent.class);
		return cr.list();
	}
}
