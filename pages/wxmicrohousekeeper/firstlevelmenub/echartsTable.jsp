<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE >
<html>
	<head>
		<script src="<%=path%>/resouces/js/report/superTables_compressed.js" type="text/javascript"></script>
		<link href="<%=path%>/resouces/js/report/superTables_compressed.css" rel="stylesheet" type="text/css" />
		<style>
		  .fakeContainer
		  {
		   
		    margin: 20px;
		    padding: 0px;
		    border: none;
		    width: 100%; 
		    height: 100%;
		    overflow: hidden; 
		  }
		 
	
		</style>
	</head>
	<body>
		<div class="fakeContainer">
		<table>
			<thead>
			  	<tr>
			  		<th align="center">
			  			合同回款考核表
			  		</th>
			  	</tr>
			  </thead>
			  <tbody>
				<table id="demoTable" style="margin-top: -23px; margin-left: -99px;" class=" sDefault sDefault-Main">
			  
			  <tbody>
			    <tr>
			    	<th >项目组</th>
			      	<th >回款任务</th>			      	
			      	<th >一季度完成金额</th>		      	
			      	<th >一季度完成占比</th>		      	
			      	<th >二季度完成金额</th>		      	
			      	<th >二季度完成占比</th>	
			      	<th >三季度完成金额</th>		      	
			      	<th >三季度完成占比</th>	
			      	<th >四季度完成金额</th>		      	
			      	<th >四季度完成占比</th>		      	
			    </tr>
			   
			    <tr>
			     	<td>合计1</td>
			      	<td>230000000</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	
			    </tr>	
			     <tr>
			     	<td>合计2</td>
			      	<td>230000000</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	
			    </tr>		   
			    
			     <tr>
			     	<td>合计3</td>
			      	<td>230000000</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	
			    </tr>		   
			     <tr>
			     	<td>合计4</td>
			      	<td>230000000</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	
			    </tr>		   
			     <tr>
			     	<td>合计5</td>
			      	<td>230000000</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	
			    </tr>		   
			     <tr>
			     	<td>合计6</td>
			      	<td>230000000</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	
			    </tr>		   
			     <tr>
			     	<td>合计7</td>
			      	<td>230000000</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	
			    </tr>		   
			     <tr>
			     	<td>合计8</td>
			      	<td>230000000</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	
			    </tr>		   
			     <tr>
			     	<td>合计9</td>
			      	<td>230000000</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	
			    </tr>		   
			     
			     <tr>
			     	<td>合计10</td>
			      	<td>230000000</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	
			    </tr>	
			     <tr>
			     	<td>合计11</td>
			      	<td>230000000</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	
			    </tr>		  
			     <tr>
			     	<td>合计12</td>
			      	<td>230000000</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	
			    </tr>		  
			     <tr>
			     	<td>合计13</td>
			      	<td>230000000</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	
			    </tr>		  
			     <tr>
			     	<td>合计14</td>
			      	<td>230000000</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	
			    </tr>		  
			     <tr>
			     	<td>合计15</td>
			      	<td>230000000</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	
			    </tr>		  
			     <tr>
			     	<td>合计16</td>
			      	<td>230000000</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	
			    </tr>		  
			     <tr>
			     	<td>合计17</td>
			      	<td>230000000</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	
			    </tr>		  
			     <tr>
			     	<td>合计18</td>
			      	<td>230000000</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	
			    </tr>		  
			     <tr>
			     	<td>合计19</td>
			      	<td>230000000</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	
			    </tr>		  
			     <tr>
			     	<td>合计20</td>
			      	<td>230000000</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	
			    </tr>		  
			     <tr>
			     	<td>合计21</td>
			      	<td>230000000</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	
			    </tr>		  
			     <tr>
			     	<td>合计22</td>
			      	<td>230000000</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	
			    </tr>		  
			     <tr>
			     	<td>合计23</td>
			      	<td>230000000</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	
			    </tr>	
			    <tr>
			     	<td>合计24</td>
			      	<td>230000000</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	
			    </tr>		  
			    <tr>
			     	<td>合计25</td>
			      	<td>230000000</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	
			    </tr>		  
			    <tr>
			     	<td>合计26</td>
			      	<td>230000000</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	
			    </tr>		  
			    <tr>
			     	<td>合计27</td>
			      	<td>230000000</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	
			    </tr>		  
			    <tr>
			     	<td>合计28</td>
			      	<td>230000000</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	
			    </tr>		  
			    <tr>
			     	<td>合计29</td>
			      	<td>230000000</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	
			    </tr>		  
			    <tr>
			     	<td>合计30</td>
			      	<td>230000000</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	
			    </tr>		  
			    <tr>
			     	<td>合计31</td>
			      	<td>230000000</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	
			    </tr>		  
			    <tr>
			     	<td>合计32</td>
			      	<td>230000000</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	<td>4580000</td>
			      	<td>21</td>
			      	
			    </tr>		  	  
			    	   	   	   
			  </tbody>
			</table>
			</tbody>
			</table>
		</div>
	</body>
</html>
	<script>	
		(function() {
		  new superTable("demoTable", {
		    cssSkin: "sSky",
		    fixedCols: 2
		  });
		})();		
	</script>
