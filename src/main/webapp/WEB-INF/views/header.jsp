<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set var="context" value="${pageContext.request.contextPath}"/>

<style>
    .navbar-inverse{
        color: whitesmoke;
        /*background-color: green;*/
        background-color: #337ab7;
    }

    /*.navbar-inverse li:hover a{*/
        /*background-color: #005065;*/
        /*color: whitesmoke;*/
    /*}*/

    /*.navbar-inverse li:active{*/
        /*background-color: #005065;*/
        /*color: whitesmoke;*/
    /*}*/

    .navbar-inverse .navbar-nav li a:not(#signOut):not(.managePaper){
        color: whitesmoke;
    }

    .navbar-inverse .navbar-brand {
        color: whitesmoke;
    }
    /*.navbar-default {*/
        /*background-color: #F8F8F8;*/
        /*border-color: #E7E7E7;*/
    /*}*/
    /*.navbar-default .navbar-nav > li > a {*/
        /*color: #777777;*/
    /*}*/
    /*.navbar-default .navbar-nav > .active > a, .navbar-default .navbar-nav > .active > a:hover, .navbar-default .navbar-nav > .active > a:focus {*/
        /*background-color: #E7E7E7;*/
        /*color: #555555;*/
    /*}*/

    .admin-menu{
        color: black;
    }

</style>

<script>
    var context = '${context}';
    if ('${status}' == '') {
        window.location.href = context + "/TDCS/index.html";
    }

</script>
<!-- Brand and toggle get grouped for better mobile display -->
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar" ></span>
                <span class="icon-bar" ></span>
            </button>
            <a class="navbar-brand">ระบบทำข้อสอบออนไลน์&nbsp;<span class="glyphicon glyphicon-education"></span></a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse navbar-inverse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li id="userData"><a id="linkhome" href="${context}/TDCS/home.html">จัดการบัญชีผู้ใช้</a></li>
                <c:if test="${status == 'admin' || status == 'staff'}">
                    <c:if test="${status == 'admin'}">
                        <li id="addData" class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                               aria-expanded="false">จัดการบัญชีผู้ใช้ <span class="caret"></span></a>
                            <ul class="dropdown-menu" role="menu">
                                <%--<li><a href="${context}/TDCS/addStudent.html"><label class="admin-menu" style="font-weight: normal;">เพิ่มข้อมูลนักศึกษา</label></a></li>--%>
                                <%--<li><a href="${context}/TDCS/addStaff.html"><label class="admin-menu" style="font-weight: normal;">เพิ่มข้อมูลพนักงาน</label></a></li>--%>
                                <li><a href="${context}/TDCS/addUser.html"><label class="admin-menu" style="font-weight: normal;">เพิ่มบัญชีผู้ใช</label>้</a></li>
                                <li><a href="${context}/TDCS/manageUser.html"><label class="admin-menu" style="font-weight: normal;">จัดการบัญชีผู้ใช้</label>้</a></li>
                            </ul>
                        </li>
                    </c:if>
                    <%--<c:if test="${status == 'staff'}">--%>
                        <%--<li id="validate">--%>
                            <%--<a href="${context}/TDCS/validate.html">อนุมัตินักศึกษา--%>
                                <%--<c:if test="${countUserValidate != 0}">--%>
                                    <%--<span class="badge">--%>
                                            <%--${countUserValidate}--%>
                                    <%--</span>--%>
                                <%--</c:if>--%>
                            <%--</a>--%>
                        <%--</li>--%>
                    <%--</c:if>--%>
                    <c:if test="${status == 'admin'}">
                        <%--<li id="addSearch" class="dropdown">--%>
                            <%--<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"--%>
                               <%--aria-expanded="false">ค้นหาข้อมูล <span class="caret"></span></a>--%>
                            <%--<ul class="dropdown-menu" role="menu">--%>
                                <%--&lt;%&ndash;<li><a href="${context}/TDCS/searchStudent.html">ค้นหาข้อมูลนักศึกษา</a></li>&ndash;%&gt;--%>
                                <%--<li><a href="${context}/TDCS/searchStaff.html">ค้นหาข้อมูลพนักงาน</a></li>--%>
                            <%--</ul>--%>
                        <%--</li>--%>
                    </c:if>
                    <%--<c:if test="${status == 'staff'}">--%>
                        <%--<li id="addSearch"><a href="${context}/TDCS/searchStudent.html">ค้นหาข้อมูลนักศึกษา</a></li>--%>
                    <%--</c:if>--%>
                </c:if>
                <c:if test="${status == 'admin'}">
                    <%--<li id="evaluation"><a href="${context}/TDCS/evaluation.html">เพิ่มแบบประเมิน</a></li>--%>
                </c:if>
                <c:if test="${status == 'user' || status == 'staff'}">
                    <li id="evaluation" class="dropdown">
                        <%--<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">--%>
                            <%--การประเมิน--%>
                            <%--<c:if test="${viewEva != 0 && status == 'user'}">--%>
                                    <%--<span class="badge">--%>
                                            <%--${viewEva}--%>
                                    <%--</span>--%>
                            <%--</c:if>--%>
                        <%--</a>--%>
                        <ul class="dropdown-menu" role="menu">
                            <li>
                                <a href="${context}/TDCS/evaluation.html">
                                    <c:if test="${status == 'staff'}">ประเมินนักศึกษา</c:if>
                                    <c:if test="${status == 'user'}">ประเมินผล</c:if>
                                </a>
                            </li>
                            <li>
                                <a href="${context}/TDCS/viewevaluate.html">
                                    ดูผลการประเมิน
                                    <c:if test="${viewEva != 0 && status == 'user'}">
                                    <span class="badge">
                                            ${viewEva}
                                    </span>
                                    </c:if>
                                </a>
                            </li>
                        </ul>
                    </li>
                </c:if>


                <%---------------------------------------------------------------%>

                <c:if test="${status == 'user' || status == 'staff'}">
                <%--<li id="exam2" class="dropdown">--%>


                <%-----------------------------------------------------------------------%>

                <%--Exam Student main page BY JOKIZZ--%>

                <c:if test="${ status == 'staff'}">
                    <li>
                        <a href="${context}/TDCS/exam/manageCategory">
                            <c:if test="${status == 'staff'}">จัดการหมวดหมู่</c:if>
                        </a>
                    </li>

                    <li>
                        <a href="${context}/TDCS/exam/manageQuestion">
                            <c:if test="${status == 'staff'}">จัดการข้อสอบ</c:if>
                        </a>
                    </li>

                    <li>
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">จัดการชุดข้อสอบ
                            <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a class="managePaper" href="${context}/TDCS/exam/managePapers"><c:if test="${status == 'staff'}">รายการชุดข้อสอบทั้งหมด</c:if></a></li>
                            <li><a class="managePaper" href="${context}/TDCS/exam/createPaper">สร้างชุดข้อสอบ</a></li>
                            <%--<li><a class="managePaper" href="${context}/TDCS/exam/createPaperByRandomQuestions">สร้างชุดข้อสอบแบบสุ่ม</a></li>--%>
                        </ul>
                    </li>

                    <li>
                        <a href="${context}/TDCS/exam/examRecordSearch">
                            <c:if test="${status == 'staff'}">ตรวจข้อสอบ</c:if>
                        </a>
                    </li>

                    <%--<li id="dropdownExamEmp" class="dropdown">--%>
                        <%--<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">--%>
                            <%--ข้อสอบ--%>

                        <%--</a>--%>
                        <%--<ul class="dropdown-menu" role="menu">--%>
                            <%--<li class="dropdown-header">จัดการ</li>--%>
                            <%--<li>--%>
                                <%--<a href="${context}/TDCS/exam/manageCategory">--%>
                                    <%--<c:if test="${status == 'staff'}">จัดการหมวดหมู่</c:if>--%>
                                        <%--<c:if test="${status == 'user'}">ประเมินผล</c:if>--%>
                                <%--</a>--%>
                            <%--</li>--%>
                            <%--<li>--%>
                                <%--<a href="${context}/TDCS/exam/manageSubCategory">--%>
                                    <%--<c:if test="${status == 'staff'}">จัดการหัวข้อเรื่อง</c:if>--%>
                                <%--</a>--%>
                            <%--</li>--%>
                            <%--<li>--%>
                                <%--<a href="${context}/TDCS/exam/manageQuestion">--%>
                                    <%--<c:if test="${status == 'staff'}">จัดการข้อสอบ</c:if>--%>
                                <%--</a>--%>
                            <%--</li>--%>
                            <%--<li>--%>
                                <%--<a href="${context}/TDCS/exam/managePapers">--%>
                                    <%--<c:if test="${status == 'staff'}">จัดการชุดข้อสอบ</c:if>--%>
                                <%--</a>--%>
                            <%--</li>--%>
                            <%--<li class="divider"></li>--%>
                            <%--<li class="dropdown-header">ตรวจ</li>--%>
                            <%--<li>--%>
                                <%--<a href="${context}/TDCS/exam/examRecordSearch">--%>
                                    <%--<c:if test="${status == 'staff'}">ตรวจข้อสอบ</c:if>--%>
                                <%--</a>--%>
                            <%--</li>--%>

                        <%--</ul>--%>
                    <%--</li>--%>
                </c:if>
                <%----%>


                <c:if test="${ status == 'user'}">
                    <li id="dropdownExamStudent">
                        <a href="${context}/TDCS/exam/mainPageStudent" class="dropdown-toggle" role="button" aria-expanded="false">
                            <%--ทำข้อสอบ--%>
                            เข้าสอบ
                        </a>
                        <%--<ul class="dropdown-menu" role="menu">--%>
                            <%--<li>--%>
                                <%--<a href="${context}/TDCS/exam/mainPageStudent">ทำข้อสอบ</a>--%>
                            <%--</li>--%>
                            <%--<li>--%>
                                <%--<a href="${context}/TDCS/exam/checkScore">ผลคะแนนการสอบ</a>--%>
                            <%--</li>--%>
                        <%--</ul>--%>
                    </li>

                    <li>
                        <a href="${context}/TDCS/exam/checkScore" class="dropdown-toggle" role="button" aria-expanded="false">
                            <%--ผลคะแนนการสอบ--%>
                            ดูผลสอบ
                        </a>
                    </li>
                </c:if>
                <%--<li>--%>
                <%--<c:if test="${status == 'user'}">--%>
                <%--<a href="/TDCS/exam/checkScore">ตรวจคะแนน</a>--%>
                <%--</c:if>--%>

                <%--</li>--%>

            </ul>


            <%--end exam student--%>
            </c:if>

            </ul>

            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <span class="glyphicon glyphicon-user"></span>
                        <label id="label-user"></label>
                        <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a id="signOut" href="javascript:void(0);">ออกจากระบบ <span class="glyphicon glyphicon-log-out"></span></a></li>
                    </ul>
                </li>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
</nav>

<script>
    $(document).ready(function () {
        $("#signOut").click(function () {
            if (confirm("คุณต้องการออกจากระบบใช่หรือไม่")) {
                window.location.href = context+"/TDCS/logout.html";
            }
        });
    });

</script>



