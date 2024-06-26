<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<style>
th,td,tr{font-size: 12px; text-align: center;}
</style>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>All_About_Knowledge</title>
    <!--

    Template 2108 Dashboard

	http://www.tooplate.com/view/2108-dashboard

    -->
     <link rel="stylesheet" href="http://localhost/all_about_knowledge/front/admin/css/fullcalendar.min.css">
     <link rel="stylesheet" href="http://localhost/all_about_knowledge/front/admin/css/index-DO6cl02t.css"> 
    
    <!-- https://fullcalendar.io/ -->
     <link rel="stylesheet" href="http://localhost/all_about_knowledge/front/admin/css/family.css">
    <!-- https://fonts.google.com/specimen/Open+Sans -->
    <link rel="stylesheet" href="http://localhost/all_about_knowledge/front/admin/css/fontawesome.min.css">
    <!-- https://fontawesome.com/ -->
    <link rel="stylesheet" href="http://localhost/all_about_knowledge/front/admin/css/bootstrap.min.css">
    <!-- https://getbootstrap.com/ -->
    <link rel="stylesheet" href="http://localhost/all_about_knowledge/front/admin/css/tooplate.css">
	<link rel="stylesheet" href="http://localhost/all_about_knowledge/front/admin/css/datatables.min.css">
    
</head>

<body id="reportsPage">
    <div class="" id="home">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav class="navbar navbar-expand-xl navbar-light bg-light">
                        <a class="navbar-brand" href="adminindex.do">
                            <h3 class="tm-site-title mb-0">All About Knowledge</h3>
                        </a>
                        <button class="navbar-toggler ml-auto mr-0" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>

                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav mx-auto">
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#void" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
                                        aria-expanded="false">교육과목관리
                                        
                                    </a>
                                     <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="manage_edu_cat.do">교육카테고리리스트</a>
                                        <a class="dropdown-item" href="manage_lecture.do">강의신청리스트</a>
                                    </div>
                                </li>
                                <li class="nav-item ">
                                    <a class="nav-link" href="manage_memberlist.do">
                                        회원 관리
                                    </a>
                                </li>
                                <li class="nav-item   active" >
                                    <a class="nav-link " href="manage_instructor.do">강사 관리
                                        </a>
                                </li>

                                <li class="nav-item ">
                                    <a class="nav-link " href="manage_qna.do">문의 관리</a>
                                </li>
                                <li class="nav-item ">
                                    <a class="nav-link " href="manage_notification.do">
                                        공지사항 관리
                                    </a>
                                </li>
                            </ul>
                            <ul class="navbar-nav">
                                <li class="nav-item">
                                    <a class="nav-link d-flex" href="admin_index.do">
                                        <i class="far fa-user mr-2 tm-logout-icon"></i>
                                        <span>Logout</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
            </div>
             <!-- row -->
             <div class="container" style="padding: 1rem">
             
             <div class="bg-white tm-block col-12" style="width: 20vw;border: 2px solid skyblue;position: fixed;height: 85%;padding-bottom: 20px;padding-top: 20px;" >
                <!-- 아이디 정보 -->
                <div></div>
                <!-- 아이디 권한 정보  -->
                <div></div>
                
                
             </div>
              <div class="bg-white tm-block col-12" style="overflow:scroll;margin-left: 21vw;width: 62vw;position: fixed;height: 85%">
                    <div class="col-12">
                        <div class="col-12">
                          <div class="col-sm-6 p-md-0 justify-content-sm-end mt-2 mt-sm-0 d-flex" style=" margin-left :65% ;height:  40px; text-align: right; width: 100%;" > 
             <ol class="breadcrumb"style="width: 95%;background-color: transparent ; padding-top: 0px; " >
             <li class="breadcrumb-item">
             강사 관리
             </li>
             <li class="breadcrumb-item active">
             강사 리스트</li></ol>
             </div>
              <div style="text-align: center; margin-top: 50px;" >
                            <h2 class="tm-block-title d-inline-block">강사 리스트</h2>
              </div>
                            	<div class="d-grid gap-2 d-md-flex justify-content-md-end">
  	<a href="manage_instructor_addform.do">
  	<button class="btn btn-light btn-sm me-md-2" type="button" id ="addInst">강사 추가</button>
  	</a>
</div>	
                    <div>
                    <!-- <select class="form-select" aria-label="Default select example">
                    <option selected>정렬조건</option>
                    <option>강사명 오름차 순</option>
                    <option>강사명 내림차 순</option>
                    <option>진행중인 강의가 많은 순</option>
                    <option>진행중인 강의가 적은 순</option>
                    </select> -->
                    </div>
                    <div>
                    <form action="manage_instructor.do" id ="YorN" method="get">
	<label><input type="radio" name="status" value="N" checked> 재직중</label>

	<label><input type="radio" name="status" value="Y"> 퇴사</label>
                    </form>
                    
                    <table id="instructor" class="table table-hover"  style="width: 100%;margin: auto;text-align: center; padding-left: 10px;padding-right: 10px;">
                    <thead>
                    <tr>
                    <th>NO</th>
                    <th style="width: 60%;text-align: center; " >강사명</th>
                    <th style="text-align: center;">진행중인 강의 수</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="list" items="${requestScope.instList }" varStatus="i">
                    <tr>
                    
                    <td><c:out value="${i.count }"/> </td>
                    <td><a href="manage_instructor_details.do?inst_id=${list.inst_id }">${list.name}</a></td>
                    <td  style="text-align: center;"><c:out value="${list.subject_count }"/></td>
                    </tr>
                    </c:forEach>
                    </tbody>
                    </table>
                    </div>
</div>
                        </div>
                    </div>
                </div>
            </div>
    

 <script type="text/javascript" src="<c:url value ="/resources/js/jquery-3.3.1.min.js"/>"></script>
 <script type="text/javascript" src="<c:url value ="/resources/js/bootstrap.min.js"/>"></script>
   <script type="text/javascript" src="<c:url value ="/resources/js/datatables.min.js"/>"></script>
 <script type="text/javascript">
 $(function(){
	 var selectedValue = localStorage.getItem('selectedStatus');
	    if (selectedValue) {
	        $("input[name='status'][value='" + selectedValue + "']").prop('checked', true);
	    }
	 
	 $("input[name='status']").change(function() {
		 var selectedValue = $(this).val();
	        localStorage.setItem('selectedStatus', selectedValue);  
		 $("#YorN").submit(); 
	    });
	 $("#instructor").DataTable({
		 
	 })
 })
 </script>
</body>

</html>