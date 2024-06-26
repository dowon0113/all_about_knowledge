<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">

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
    <!-- https://fullcalendar.io/ -->
     <link rel="stylesheet" href="http://localhost/all_about_knowledge/front/admin/css/family.css">
    <!-- https://fonts.google.com/specimen/Open+Sans -->
    <link rel="stylesheet" href="http://localhost/all_about_knowledge/front/admin/css/fontawesome.min.css">
    <!-- https://fontawesome.com/ -->
    <link rel="stylesheet" href="http://localhost/all_about_knowledge/front/admin/css/bootstrap.min.css">
    <!-- https://getbootstrap.com/ -->
    <link rel="stylesheet" href="http://localhost/all_about_knowledge/front/admin/css/tooplate.css">


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
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
                                        aria-expanded="false">
                                        회원 관리
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="manage_memberlist.do">회원 리스트</a>
                                    </div>
                                </li>
                                <li class="nav-item active" >
                                    <a class="nav-link" href="manage_instructor.do">강사 관리
                                        </a>
                                </li>

                                <li class="nav-item dropdown ">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
                                        aria-expanded="false">문의 관리</a>
                                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="manage_qna.do">문의 리스트</a>
                                    </div>
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
                <div class="bg-white tm-block col-12" style="width: 20vw;border: 2px solid skyblue;position: fixed;height: 85%;padding-bottom: 20px;padding-top: 20px;" ></div>
                <div class="bg-white tm-block col-12" style="overflow:scroll;margin-left: 21vw;width: 62vw;position: fixed;height: 85%">
                     <form id ="frm" action ="inst_add_process.do" method="post" enctype="multipart/form-data" >
                    <div class="col-12">
                        <div class="col-12">
                        <div class="col-sm-6 p-md-0 justify-content-sm-end mt-2 mt-sm-0 d-flex" style=" margin-left :65% ;height:  40px; text-align: right; width: 100%;" > 
             <ol class="breadcrumb"style="width: 95%;background-color: transparent ; padding-top: 0px; " >
             <li class="breadcrumb-item">
             강사 관리
             </li>
             <li class="breadcrumb-item active">
             강사 추가 완료</li></ol>
             </div>
              <div style="text-align: center; margin-top: 50px;" >
                         <h2 class="tm-block-title d-inline-block">강사 추가 완료</h2>
                            </div>
                            <div style="text-align: center;"  class="mb-3" >
                            <table class="table table-hover" style=" width:95%; text-align: center;">
                            <tr>
  							<td style="vertical-align: middle;">강사 이미지</td>
  				<td><input class="form-control" type="file" id="image" name ="image"></td>
                            </tr>
                            <tr>
                            <td style="vertical-align: middle;">강사 아이디</td>
                <td><input type="email" readonly="readonly" class="form-control" id="inst_id" value ="${requestScope.inst_id }" name ="inst_id"/></td>
                            </tr>
                            <tr>
                            <td style="vertical-align: middle;">이름</td>
                 <td><input type="email" class="form-control" id="name" name ="name"/></td>
                            </tr>
                            <tr>
                            <td style="vertical-align: middle;">연락처</td>
                    <td><input type="email" class="form-control" id="phone" name ="phone" maxlength="11"/></td>
                            </tr>
                            <tr>
                            <td style="vertical-align: middle;">이메일</td>
                   <td><input type="email" class="form-control" id="email" name ="email"></td>
                             </tr>
                            <tr>
                            <td style="vertical-align: middle;">강사 학력사항</td>
                <td><input type="email" class="form-control" id="education" name ="education"></td>
                            </tr>
                            <tr>
                            <td style="vertical-align: middle;">주력 과목</td>
                   <td><input type="email" class="form-control" id="major_subject" name ="major_subject"></td>
                            </tr>
                            <tr>
                            <td style="vertical-align: middle;">자기소개</td>
                   <td><input type="email" class="form-control" id="introduction" name ="introduction"></td>
                            </tr>
                            
                            </table>
                            </div>
                            <div style="text-align: center;">
                            <input type="button" id ="btnSubmit" value="강사추가" class="btn btn-info btn-sm ">
                            </div>
                            <div>
	<input type="button" class="btn btn-link" value="&lt; 뒤로" id="btnback"/>
	</div>
	</div>
	</div>
                            </form>
                            </div>
                        </div>
                    </div>
 <script type="text/javascript" src="<c:url value ="/resources/js/jquery-3.3.1.min.js"/>"></script>
  <!-- https://jquery.com/download/ -->
   <script type="text/javascript" src="<c:url value ="/resources/js/bootstrap.min.js"/>"></script>
  <script type="text/javascript">
  $(function() {
    function checknull() {
        let isValid = true;
        $('#frm input[type="email"], #frm input[type="file"]').each(function() {
            if ($(this).val().trim() === '') {
                isValid = false;
                alert($(this).attr('name') + ' 입력값이 비어 있습니다.');
                $(this).focus();
                return false;
            }
        });
        return isValid;
    }

    $("#btnback").click(function() {
        history.back();
    });

    $("#btnSubmit").click(function() {
        var file = $("#image").val();
        var selectedExt = file.substring(file.lastIndexOf(".") + 1).toLowerCase();

        var extArr = ["png", "jpg", "gif", "jpeg", "bmp"];
        var flag = false;

        for (var i = 0; i < extArr.length; i++) {
            if (selectedExt === extArr[i]) {
                flag = true;
                break;
            }
        }

        if (!flag) {
            alert(selectedExt + "는 업로드 가능한 파일의 확장자가 아닙니다.");
            return;
        }

        if (checknull()) {
            $("#frm").submit();
        }
    });

    $('#frm input').on('keydown', function(event) {
        if (event.key === 'Enter') {
            event.preventDefault();
            let inputs = $('#frm input[type="email"], #frm input[type="file"]');
            let idx = inputs.index(this);
            if (idx < inputs.length - 1) {
                inputs[idx + 1].focus();
            } else {
                inputs[0].focus();
            }
        }
    });
  });
</script>

    <!-- https://getbootstrap.com/ -->
</body>

</html>