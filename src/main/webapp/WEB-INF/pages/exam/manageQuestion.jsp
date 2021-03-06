<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%--
  Created by IntelliJ IDEA.
  User: wanchana
  Date: 15/7/2558
  Time: 17:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set var="context" value="${pageContext.request.contextPath}"/>
<script>
    var context = '${context}';

    if ('${status}' == 'user' || '${status}' == '') {
        window.location.href = context + "/TDCS/index.html";
    }
</script>

<%--<%@include file="modal/createQuestionModal.jsp" %>--%>
<tiles:insertTemplate template="/WEB-INF/pages/exam/modal/createQuestionModal.jsp"/>
<%--<%@include file="modal/questionDetailModal.jsp" %>--%>
<tiles:insertTemplate template="/WEB-INF/pages/exam/modal/questionDetailModal.jsp"/>

<script>
    if ('${status}' == 'user' || '${status}' == '') {
        window.location.href = context + "/TDCS/index.html";
    }
</script>

<div class="container-fluid noselect">
    <h3 class="h3">จัดการข้อสอบ</h3>
    <hr/>

    <%--<%@include file="template/searchQuestionTemplateNew.jsp" %>--%>
    <tiles:insertTemplate template="/WEB-INF/pages/exam/template/searchQuestionTemplateNew.jsp"/>

    <!-- Example table information, it will remove soon ^^ -->
    <%--<div class="col-lg-12">--%>
    <div class="row" style="margin-bottom: 5px;">
        <div class="col-md-4">
            <button class="btn btn-primary btn-sm createQuestionBtn"
                    data-toggle="modal" data-target="#createQuest" align="center">
                <span class="glyphicon glyphicon-plus"><label>&nbsp;<strong>สร้างข้อสอบ</strong></label></span>
            </button>
            <button class="btn btn-gray btn-sm deleteSelectedBtn"><span
                    class="glyphicon glyphicon-minus"><label>
                &nbsp;<strong>ลบออก</strong></label></span>
            </button>
        </div>
        <div class="col-md-offset-2 col-md-2 text-right">
            <h6>เรียงตาม :</h6>
        </div>
        <div class="col-md-2">
            <select id="selectOrderBy" class="form-control input-sm">
                <option value="id" selected>ลำดับการสร้าง</option>
                <option value="category">หมวดหมู่</option>
                <option value="subCategory">หัวข้อเรื่อง</option>
                <option value="createBy">ชื่อผู้สร้าง</option>
                <option value="date">วันที่</option>
                <option value="qType">ประเภทข้อสอบ</option>
                <%--<option value="qDesc">คำถาม</option>--%>
                <%--<option value="score">คะแแนน</option>--%>
            </select>
        </div>
        <div class="col-md-2">
            <select id="selectOrderType" class="form-control input-sm">
                <option value="desc">จากมากไปน้อย</option>
                <option value="asc">จากน้อยไปมาก</option>
            </select>
        </div>
    </div>
    <div class="table-responsive table-container hidden">
        <table class="table table-bordered table-hovered">
            <thead class="table-header small">
            <tr>
                <%--<th style="text-align: center">หมายเลขข้อสอบ</th>--%>
                <th width="3%" style="vertical-align: middle;"><input type="checkbox" id="selectAllItem"/></th>
                <th width="7%" style="vertical-align: middle;">ประเภทข้อสอบ</th>
                <th width="10%" style="vertical-align: middle;">หมวดหมู่</th>
                <th width="10%" style="vertical-align: middle;">หัวข้อเรื่อง</th>
                <th width="35%" style="vertical-align: middle;">คำถาม</th>
                <%--<th style="text-align: center">ระดับความยาก</th>--%>
                <%--<th width="5%" style="vertical-align: middle;">คะแนน</th>--%>
                <th width="13%" style="vertical-align: middle;">ผู้สร้าง</th>
                <th width="10%" style="vertical-align: middle;">วันที่สร้าง</th>
                <th width="4%" style="vertical-align: middle;">แก้ไข</th>
                <%--<th style="text-align: center">Action</th>--%>
            </tr>
            </thead>
            <tbody align="center" id="tableBody">

            </tbody>
        </table>
    </div>

    <div class="row">
        <div class="bg-info" id="searchCatNotFound" hidden>
            <%--<p class="bg-info">--%>
            <h3 id="searchCatDescNotFound" style="text-align: center;">ไม่พบข้อมูลที่ค้นหา</h3>
            <%--</p>--%>
        </div>
    </div>

    <%--<div class="row">--%>
    <%--<div class="col-md-12 clearfix">--%>
    <%--<div id="pagination" class="pagination light-theme simple-pagination" style="float:right"></div>--%>
    <%--</div>--%>
    <%--</div>--%>
    <div id="init-message-show" class="col-md-12 alert alert-info text-center">
        <strong>กรุณาค้นหาชุดข้อสอบที่ต้องการ</strong>
    </div>

    <%@include file="template/paginationTemplate.jsp" %>


    <%--</div>--%>

</div>
</div>

<%--<script type="text/javascript" src="${context}/resources/js/jquery.simplePagination.js"></script>--%>
<script type="text/javascript" src="<c:url value="/resources/js/pageScript/exam/utils.js" />"></script>
<%--<link type="text/css" rel="stylesheet" href="${context}/resources/css/simplePagination.css"/>--%>
<script src="${context}/resources/js/pageScript/exam/manageQuestion.js" charset="UTF-8"></script>

<style>
    th {
        border: solid 1px white;
        text-align: center;
        padding: 0px 0px 0px 50px;
        vertical-align: middle;
    }

    td {
        vertical-align: middle;
    }

    #tableBody td {
        font-size: 13px;
    }

    #searchCatNotFound {
        background-color: #b2e0ff;
        height: 100px;
        /*display: none;*/
        top: 40px;
        vertical-align: middle;
        border-radius: 5px;
        margin-top: -15px;
    }

    #searchCatDescNotFound {
        text-align: center;
        vertical-align: middle;
        line-height: 100px;
        color: #00647f;
    }

</style>

