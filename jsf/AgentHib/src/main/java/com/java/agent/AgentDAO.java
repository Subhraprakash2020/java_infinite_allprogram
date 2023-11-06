package com.java.agent;

import java.util.List;

public interface AgentDAO {
	List<Agent> showAgent();
	String searchAgent(int agentId);
	String addAgent(Agent agent);
	String deleteAgent(int agentId);
	String updateAgent(Agent agentUpdate);
}
