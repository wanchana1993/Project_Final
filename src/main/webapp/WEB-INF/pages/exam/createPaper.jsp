<%--
  Created by IntelliJ IDEA.
  User: PeeMz
  Date: 13/7/2558
  Time: 13:53
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<c:set var="context" value="${pageContext.request.contextPath}"/>
<script type="text/javascript" src="<c:url value="/resources/js/pageScript/exam/copyPaper.js" />"></script>
<script>
    var context = '${context}';
</script>

<style>
    #questionNotFound {
        background-color: #b2e0ff;
        height: 100px;
        display: none;
        top: 40px;
        vertical-align: middle;
        border-radius: 5px;
        margin-top: -15px;
    }

    #tbSelectedQuestionToPaper td, #tbSelectedQuestionToPaper input, #tbPaperInfo td {
        font-size: 13px;
    }

    #tbSelectedQuestionToPaper, #tbPaperInfo {
        margin-top: 5px;
    }

    #tbodySelectedQuestionToPaper input[type=number] {
        width: 75px;;
    }

    .well {
        margin-right: 0;
        margin-left: 0;
    }

    label {
        font-weight: normal;
    }

    @media (max-width: 767px) {
        .text-right {
            text-align: left;
            padding-left: 0;
        }
    }

    #copyPaperLov + ul li {
        font-size: 13px;
    }

</style>

<ul id="create-paper-tabs" class="nav nav-tabs">
    <li id="maintabs" class="active">
        <a id="maintabs-link" href="#create-paper-form-content" data-toggle="tab">
            แบบฟอร์มสร้างชุดข้อสอบ
        </a>
    </li>

    <li id="selecttabs" class="">
        <a href="#select-questions-content" data-toggle="tab">
            เลือกข้อสอบ
        </a>
    </li>

    <%--<li id="randomtabs" class="">--%>
        <%--<a href="#random-questions-content" data-toggle="tab">--%>
            <%--เลือกข้อสอบจากการสุ่ม--%>
        <%--</a>--%>
    <%--</li>--%>

</ul>

<div id="create-paper-content" class="tab-content">

    <div class="container tab-pane fade in active" id="create-paper-form-content">
        <br/>
        <br/>

        <div class="row">
            <%--<div class="well">--%>
            <form class="form-horizontal" role="form">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="label-paper-type col-sm-4 col-sm-offset-1 text-right">
                            <span style="color:red;">*</span><label for="newPaperId" class="label-control"><h5
                                style="margin-top: 5px">ประเภทชุดข้อสอบ</h5></label>
                        </div>
                        <div class="col-sm-7" style="padding: 0;">
                            <select id="select-paper-type" class="form-control input-sm">
                                <option active="" value="static">กำหนดเอง</option>
                                <option value="random">สุ่ม</option>
                            </select>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-6">
                        <div class="label-create-paper col-sm-4 col-sm-offset-1 text-right">
                            <span style="color:red;">*</span><label for="newPaperId" class="label-control"><h5
                                style="margin-top: 5px">รหัสชุดข้อสอบ</h5></label>
                        </div>
                        <div class="col-sm-7" style="padding: 0;">
                            <input id="newPaperId" class="form-control input-sm" type="search" maxlength="5"
                                   placeholder="โปรดกรอกรหัสชุดข้อสอบ"
                                   required/>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="label-create-paper label-create-paper col-sm-4 text-right">
                            <label for="newPaperName" class="label-control"><h5 style="margin-top: 5px">
                                ชื่อชุดข้อสอบ</h5>
                            </label>
                        </div>
                        <div class="col-sm-7" style="padding: 0;">
                            <input id="newPaperName" class="form-control input-sm" type="text"
                                   placeholder="โปรดกรอกชื่อชุดข้อสอบ"/>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6">
                        <div class="label-create-paper col-sm-4 col-sm-offset-1 text-right">
                            <span style="color:red;">*</span><label for="newPaperScore" class="label-control"><h5
                                style="margin-top: 5px">คะแนน</h5></label>
                        </div>
                        <div class="col-sm-7" style="padding: 0;">
                            <input id="newPaperScore" class="form-control input-sm" type="number" min="0"
                                   oninput="validity.valid||(value='');" placeholder="โปรดกรอกคะแนน" required/>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="label-create-paper col-sm-4 text-right">
                            <span style="color:red;">*</span><label for="newPaperForPosition" class="label-control">
                            <h5
                                    style="margin-top: 5px">ประเภทผู้สอบ</h5></label>
                        </div>
                        <div class="label-create-paper col-sm-7" style="padding: 0;">
                            <select id="newPaperForPosition" class="form-control input-sm">
                                <option active>โปรดเลือก</option>
                                <option value="0">ทั้งหมด</option>
                                <option value="1">Software Developer Trainee</option>
                                <option value="2">Assistant Business Analyst</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6">
                        <div class="label-create-paper col-sm-4 col-sm-offset-1 text-right">
                            <span style="color:red;">*</span><label class="label-control"><h5
                                style="margin-top: 5px">
                            เวลา</h5></label>
                        </div>
                        <div class="col-sm-7" style="padding: 0;">
                            <div class="form-inline">
                                <input id="hours" class="form-control input-sm" type="number" style="width: 35%;"
                                       max="60" min="0" placeholder="ชม." oninput="validity.valid||(value='');"
                                       required/>
                                <label style="width: 15%;">ชั่วโมง</label>
                                <input id="minutes" class="form-control input-sm" type="number" style="width: 35%;"
                                       max="60" min="0" placeholder="น." oninput="validity.valid||(value='');"
                                       required/>
                                <label style="width: 10%;">นาที</label>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row" id="copyPaperField">
                    <div class="col-sm-6">
                        <div class="label-create-paper col-sm-4 col-sm-offset-1 text-right">
                            <label class="label-control"><h5 style="margin-top: 5px">คัดลอกชุดข้อสอบ</h5></label>
                        </div>

                        <div class="col-sm-7" style="padding: 0;">
                            <div class="input-group">
                                <input id="copyPaperLov" class="form-control input-sm" type="text"
                                                           placeholder="รหัสชุดข้อสอบ : ชื่อชุดข้อสอบ" autocomplete="off"/>
                                    <span id="selectPaper" class="input-group-addon input-sm">
                                        <i onclick="listPaperToLov()" style="cursor: pointer;">
                                            <span class="glyphicon glyphicon-search"></span>
                                        </i>
                                    </span>
                            </div>
                        </div>
                    </div>
                </div>

                <div id="div-save-create-paper" class="text-right">
                    <button id="createPaperBtn" class="btn btn-primary btn-sm" type="button">
                        <span class="glyphicon glyphicon-saved"></span>&nbsp;
                        บันทึก
                    </button>

                    <%--<button class="btn btn-primary btn-sm createQuestionBtn" data-target="#createQuest" data-toggle="modal">--%>
                        <%--<span class="glyphicon glyphicon-plus"></span>&nbsp;--%>
                        <%--สร้างข้อสอบใหม่--%>
                    <%--</button>--%>

                    <%--<a href="${context}/TDCS/exam/managePapers">--%>
                    <%--<button id="cancelCreatePaperBtn" class="btn btn-gray btn-sm" type="button">--%>
                    <%--<span class="glyphicon glyphicon-circle-arrow-left"></span> &nbsp;--%>
                    <%--ย้อนกลับ--%>
                    <%--</button>--%>
                    <%--</a>--%>
                </div>
            </form><br/>
            <%--</div>--%>
            <div id="div-random-questions" hidden>
                <div class="row">
                    <div class="col-sm-6">
                        <div class="label-create-paper col-sm-4 col-sm-offset-1 text-right">
                            <strong>สุ่มข้อสอบอัตโนมัติ</strong>
                        </div>
                    </div>
                </div><br/>

                <div class="row">
                    <div class="col-sm-6">
                        <div class="col-sm-4 col-sm-offset-1 text-right">
                            <spna class="label label-primary">กำหนดจำนวนข้อ</spna>
                        </div>
                    </div>
                </div><br/>

                <div id="random-by-question">
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="col-sm-4 col-sm-offset-1 text-right" style="top: 3px;">
                                ระดับง่าย
                            </div>

                            <div class="col-sm-4" style="padding: 0;">
                                <input id="questionEasyCount" type="number" class="form-control input-sm" min="0" step="1"
                                       oninput="validity.valid||(value='');" placeholder="จำนวนข้อ"/>
                            </div>

                            &nbsp;<span id="not-enough-easy-exam" class="label label-danger" style="display: none;">ข้อสอบไม่เพียงพอ</span>
                        </div>
                    </div>

                    <div class="row" style="margin-top: 6px;">
                        <div class="col-sm-6">
                            <div class="col-sm-4 col-sm-offset-1 text-right" style="top: 3px;">
                                ระดับปานกลาง
                            </div>

                            <div class="col-sm-4" style="padding: 0;">
                                <input id="questionNormalCount" type="number" class="form-control input-sm" min="0" step="1"
                                       oninput="validity.valid||(value='');" placeholder="จำนวนข้อ"/>
                            </div>

                            &nbsp;<span id="not-enough-normal-exam" class="label label-danger" style="display: none;">ข้อสอบไม่เพียงพอ</span>
                        </div>
                    </div>

                    <div class="row" style="margin-top: 6px;">
                        <div class="col-sm-6">
                            <div class="col-sm-4 col-sm-offset-1 text-right" style="top: 3px;">
                                ระดับยาก
                            </div>

                            <div class="col-sm-4" style="padding: 0;">
                                <input id="questionHardCount" type="number" class="form-control input-sm" min="0" step="1"
                                       oninput="validity.valid||(value='');" placeholder="จำนวนข้อ"/>
                            </div>

                            &nbsp;<span id="not-enough-hard-exam" class="label label-danger" style="display: none;">ข้อสอบไม่เพียงพอ</span>
                        </div>
                    </div>
                </div>

                <div class="text-right">
                    <button id="createPaperRandomQuestionBtn" class="btn btn-primary btn-sm" type="button">
                        <span class="glyphicon glyphicon-saved"></span>&nbsp;
                        บันทึก
                    </button>
                </div>
            </div>
        </div><hr/>

        <div class="row">
            <div class="col-sm-6" style="padding-left: 0;">
                <button id="removeRowQuestionSelect" class="btn btn-gray btn-sm" type="button"
                        style="height: 30px; display: none;">
                    <span class="glyphicon glyphicon-remove-sign"></span>
                    &nbsp;เอาออก
                </button>
            </div>

            <div class="col-sm-6" style="padding-right: 0;">
                <div class="text-right label-difficulty-level" style="display: none;">
                    <span class="label label-primary">ระดับง่าย&nbsp;<label id="esy">0</label>&nbsp;ข้อ</span>
                    <span class="label label-primary">ระดับปานกลาง&nbsp;<label id="nrm">0</label>&nbsp;ข้อ</span>
                    <span class="label label-primary">ระดับยาก&nbsp;<label id="hrd">0</label>&nbsp;ข้อ</span>
                </div>
            </div>

            <table id="tbSelectedQuestionToPaper" class="table table-bordered table-hover" style="display: none;">
                <thead class="bg-default small">
                <tr>
                    <th style="text-align: center ;">
                        <input class="checkAllQuestionFromCreatePaperPage" type="checkbox">
                    </th>
                    <th style="text-align: center ;" width="20%">
                        <label value="category"><strong>หมวดหมู่</strong></label>
                    </th>
                    <th style="text-align: center ;" width="20%">
                        <label value="subcategory"><strong>หัวข้อเรื่อง</strong></label>
                    </th>
                    <th style="text-align: center ;" width="35%">
                        <label value="description"><strong>คำถาม</strong></label>
                    </th>
                    <th style="text-align: center ;">
                        <label value="type"><strong>ประเภท</strong></label>
                    </th>
                    <th style="text-align: center ;">
                        <label value="level"><strong>ระดับ</strong></label>
                    </th>
                    <th style="text-align: center ;">
                        <label value="score"><strong>คะแนน</strong></label>
                    </th>
                </tr>
                </thead>
                <tbody id="tbodySelectedQuestionToPaper">

                </tbody>
            </table>

            <%--<div class="text-right label-difficulty-level" style="display: none;">--%>
                <%--<span class="label label-primary">ระดับง่าย&nbsp;<label id="esy">0</label>&nbsp;ข้อ</span>--%>
                <%--<span class="label label-primary">ระดับปานกลาง&nbsp;<label id="nrm">0</label>&nbsp;ข้อ</span>--%>
                <%--<span class="label label-primary">ระดับยาก&nbsp;<label id="hrd">0</label>&nbsp;ข้อ</span>--%>
            <%--</div>--%>

            <div id="questionNotFoundDesc" class="alert alert-info text-center">
                <strong>ยังไม่มีข้อสอบในชุดข้อสอบ</strong>
            </div>
        </div>
        <br/>

        <div id="sum-score" class="form-inline text-right" hidden>
            <div class="form-group">
                <label>คะแนน </label>
                <input class="form-control input-sm" readonly="true" size="4" name="score" id="score"
                       style="text-align: center">
            </div>
            &nbsp;

            <div class="form-group">
                <label>เต็ม </label>
                <input class="form-control input-sm" readonly="true" size="4" name="score" id="maxScore"
                       style="text-align: center">
            </div>
        </div>
    </div>

    <div class="container-fluid tab-pane fade" id="select-questions-content">
        <br/><br/>
        <%@include file="selectQuestionPage.jsp" %>
    </div>

    <div class="container-fluid tab-pane fade" id="random-questions-content">
        <br/><br/>
        <%@include file="randomQuestions.jsp" %>
    </div>

</div>

<%@include file="modal/createQuestionModal.jsp" %>
<script src="${context}/resources/js/pageScript/exam/selectCategoryInput.js" charset="utf-8"></script>
<script src="${context}/resources/js/pageScript/exam/radomQuestions.js" charset="utf-8"></script>
<script>
    if ('${status}' != 'staff') {
        window.location.href = context + "/TDCS/index.html";
    }

</script>
