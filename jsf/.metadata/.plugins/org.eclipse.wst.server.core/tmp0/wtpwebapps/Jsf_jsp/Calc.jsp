<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<f:view>
	<body>
		<h:form>
	  Please Enter Numbers :<br>
	  First Number
	  <h:inputText id="num1" value="#{calculation.firstNo}" />
	  Second Number
	  <h:inputText id="num2" value="#{calculation.secondNo}" />
      Result is:
      <h:outputText value="#{calculation.result}" />
      <h:commandButton actionListener="#{calculation.addition}" value="Sum" />
      <h:commandButton actionListener="#{calculation.substraction}" value="Sub" />
      <h:commandButton actionListener="#{calculation.divi}" value="Division" />
      
		</h:form>
	</body>
</f:view>