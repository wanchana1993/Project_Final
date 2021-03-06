<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="context" value="${pageContext.request.contextPath}"/>
<script>
    var context = '${context}';
</script>
<script>
    if ('${status}' == '' || '${status}' == 'staff') {
        window.location.href = context + "/TDCS/index.html";
    }
</script>
<script type="text/javascript" src="<c:url value="/resources/js/callutaeAge.js" />"></script>
<script src="<c:url value="/resources/js/callculatetime.js" />"></script>
<script src="<c:url value="/resources/js/callculatetime.js" />"></script>
<script src="<c:url value="/resources/js/callutaeAge.js" />"></script>
<script src="<c:url value="/resources/js/checkKeybord.js" />"></script>
<script src="<c:url value="/resources/js/setInputUserdata.js" />"></script>

<div class="container row">
    <h3 class="h3">ข้อมูลผู้ใช้</h3>
    <hr/>
</div>
<div class="row">
    <%--<div class="col-md-offset-1 col-md-2">--%>
    <%--<input type="hidden" id="userId" value="${currentUser.userId}" />--%>
    <%--<input type="hidden" id="piority" value="${currentUser.piority}" />--%>
    <%--<div class="form-group">--%>
    <%--<div class="row">--%>
    <%--<div class="col-md-12 text-center">--%>
    <%--&lt;%&ndash;<iframe id="profile" src="/TDCS/picture" width="100%">&ndash;%&gt;--%>
    <%--&lt;%&ndash;&lt;%&ndash;<img class="img-circle" src="../../resources/images/Untitled.png" width="120px" />&ndash;%&gt;--%>
    <%--&lt;%&ndash;</iframe>&ndash;%&gt;--%>
    <%--<input type='file' id="image" name="image" style="display: none" autocomplete="off"/>--%>
    <%--&lt;%&ndash;<div id="divImg" style="width: 100%;height: 200px;background-image: url(<c:url value="/resources/images/blank.jpg" />);">&ndash;%&gt;--%>
    <%--&lt;%&ndash;<object  />&ndash;%&gt;--%>
    <%--<c:choose>--%>
    <%--<c:when test="${currentUser.imange == null}">--%>
    <%--<img id="myImg" src="<c:url value="/resources/images/blank.jpg" />" alt="your image" width="100%" height="190px"/>--%>
    <%--</c:when>--%>
    <%--<c:otherwise>--%>
    <%--<img id="myImg" src="<c:url value="/resources/pictureUpload/${currentUser.imange}" />" alt="your image" width="100%" height="190px"/>--%>
    <%--</c:otherwise>--%>
    <%--</c:choose>--%>
    <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
    <%--<label for="image">แก้ไข</label>--%>
    <%--</div>--%>

    <%--</div>--%>
    <%--</div>--%>
    <%--</div>--%>
    <div class="col-md-10 col-md-offset-1">
        <div class="form-horizontal">

            <div class="form-group">
                <div class="row col-md-12">
                    <label for="stuid" class="col-md-2 control-label" style="padding-right: 0px">
                        <small>รหัสพนักงาน</small>
                    </label>

                    <div class="col-md-4">
                        <input id="stuid" class="form-control" value="${currentUser.empId}"
                               onkeypress="return numberAndEnglist(event)" maxlength="6" disabled/>
                    </div>
                    <label for="username" class="col-md-1 control-label" style="padding-left: 0px;padding-right: 0px;">
                        <small>ชื่อผู้ใช้</small>
                    </label>

                    <div class="col-md-4">
                        <input id="username" class="form-control" value="${currentUser.userName}" readonly="true"/>
                    </div>
                </div>
            </div>

            <div class="form-group">
                <div class="row col-md-12">
                    <label for="fname" class="col-md-2 control-label" style="padding-left: 0px;padding-right: 0px">
                        <small>ชื่อ(ไทย)</small>
                    </label>

                    <div class="col-md-4">
                        <input id="fname" class="form-control" value="${currentUser.thFname}"
                               onkeypress="return isThai(event)"/>
                    </div>

                    <label for="lname" class="col-md-1 control-label" style="padding: 7px 0px 7px 0px;">
                        <small>นามสกุล</small>
                    </label>

                    <div class="col-md-4">
                        <input id="lname" class="form-control" value="${currentUser.thLname}"
                               onkeypress="return isThai(event)"/>
                    </div>
                </div>
            </div>

            <div class="form-group">
                <div class="row col-md-12">
                    <label for="engfname" class="col-md-2 control-label" style="padding-left: 0px;padding-right: 0px">
                        <small>ชื่อ(อังกฤษ)</small>
                    </label>

                    <div class="col-md-4">
                        <input id="engfname" class="form-control" value="${currentUser.enFname}"
                               onkeypress="return isEnglish(event)"/>
                    </div>

                    <label for="englname" class="col-md-1 control-label" style="padding: 7px 0px 7px 0px;">
                        <small>นามสกุล</small>
                    </label>

                    <div class="col-md-4">
                        <input id="englname" class="form-control" value="${currentUser.enLname}"
                               onkeypress="return isEnglish(event)"/>
                    </div>
                </div>
            </div>

            <%--<div class="form-group">--%>
            <%--<div class="row col-md-12">--%>
            <%--<label for="nickName" class="col-md-2 control-label" style="padding-left: 0px;padding-right: 0px">--%>
            <%--<small>ชื่อเล่น</small>--%>
            <%--</label>--%>
            <%--<div class="col-md-4">--%>
            <%--<input id="nickname" class="form-control" value="${currentUser.nickName}" onkeypress="return isThai(event)" />--%>
            <%--</div>--%>
            <%--</div>--%>
            <%--</div>--%>

            <%--<div class="form-group">--%>
            <%--<div class="row col-md-12">--%>
            <%--&lt;%&ndash;<label for="nickName" class="col-md-2 control-label" style="padding-left: 0px;padding-right: 0px">&ndash;%&gt;--%>
            <%--&lt;%&ndash;<small>ชื่อเล่น</small>&ndash;%&gt;--%>
            <%--&lt;%&ndash;</label>&ndash;%&gt;--%>
            <%--<label for="birthDay" class="col-md-2 control-label" style="padding-left: 0px;padding-right: 0px">--%>
            <%--<small>วันเกิด</small>--%>
            <%--</label>--%>
            <%--<div class="col-md-4">--%>
            <%--&lt;%&ndash;<input id="birthDay" class="form-control" value="${user.birthDate}"  />&ndash;%&gt;--%>
            <%--&lt;%&ndash;<div class="col-md-5" style="padding: 0px;">&ndash;%&gt;--%>
            <%--<div class='input-group date' id='sBirthday'>--%>
            <%--<input id="birthday" type='text' class="form-control" readonly="true" style="cursor:pointer;background-color: white"--%>
            <%--value="${currentUser.birthDate}"/>--%>
            <%--<span class="input-group-addon">--%>
            <%--<span class="glyphicon glyphicon-calendar"></span>--%>
            <%--</span>--%>
            <%--</div>--%>
            <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
            <%--</div>--%>

            <%--<label for="age" class="col-md-1 control-label" style="padding: 7px 0px 7px 0px;">--%>
            <%--<small>อายุ</small>--%>
            <%--</label>--%>
            <%--<div class="col-md-2">--%>
            <%--<input id="age" class="form-control" value=""  readonly="true"/>--%>
            <%--</div>--%>
            <%--<div class="col-md-1">--%>
            <%--<label class="control-label">ปี</label>--%>
            <%--</div>--%>
            <%--</div>--%>
            <%--</div>--%>

            <%--<div class="form-group">--%>
            <%--<div class="row col-md-12">--%>
            <%--<label for="univerName" class="col-md-2 control-label" style="padding-right: 0px">--%>
            <%--<small>สถาบันการศึกษา</small>--%>
            <%--</label>--%>
            <%--<div class="col-md-9">--%>
            <%--&lt;%&ndash;<input id="university" class="form-control" value="${user.universityFacultyMajor.universityFaculty.university.university_name}"  />&ndash;%&gt;--%>
            <%--<input type="hidden" id="universityId" name="universityId" value="${currentUser.universityFacultyMajor.universityFaculty.uniId}"/>--%>
            <%--<div class="input-group">--%>
            <%--<input id="univerName" name="universityName" type="text" class="form-control" onchange="listuni()"--%>
            <%--value="${currentUser.universityFacultyMajor.universityFaculty.university.university_name}"/>--%>
            <%--<span class="input-group-addon">--%>
            <%--<i class="glyphicon glyphicon-search" onclick="listuni()" style="cursor: pointer"></i>--%>
            <%--</span>--%>
            <%--</div>--%>
            <%--</div>--%>
            <%--</div>--%>
            <%--</div>--%>

            <%--<div class="form-group">--%>
            <%--<div class="row col-md-12">--%>
            <%--<label for="comboFac" class="col-md-2 control-label" style="padding-left: 0px;padding-right: 0px">--%>
            <%--<small>คณะ</small>--%>
            <%--</label>--%>
            <%--<div class="col-md-9">--%>
            <%--&lt;%&ndash;<input id="faculty" class="form-control" value="${user.universityFacultyMajor.universityFaculty.faculty.facName}"  />&ndash;%&gt;--%>
            <%--<div class="input-group">--%>
            <%--&lt;%&ndash;<form:input path="uniFacId" type="hidden" id="facid" name="facid" value="0" />&ndash;%&gt;--%>
            <%--<input id="comboFac" name="facName" type="text" class="form-control" onchange="showFacuty()"--%>
            <%--value="${currentUser.universityFacultyMajor.universityFaculty.faculty.facName}"  />--%>
            <%--<span class="input-group-addon">--%>
            <%--<i class="glyphicon glyphicon-search" onclick="showFacuty()" style="cursor: pointer"></i>--%>
            <%--</span>--%>
            <%--</div>--%>
            <%--</div>--%>
            <%--</div>--%>
            <%--</div>--%>

            <%--<div class="form-group">--%>
            <%--<div class="row col-md-12">--%>
            <%--<label for="comboDep" class="col-md-2 control-label" style="padding-left: 0px;padding-right: 0px">--%>
            <%--<small>สาขา</small>--%>
            <%--</label>--%>
            <%--<div class="col-md-9">--%>
            <%--&lt;%&ndash;<input id="major" class="form-control" value="${user.universityFacultyMajor.major.majName}"  />&ndash;%&gt;--%>
            <%--<input type="hidden" id="depid" name="depid" value="${currentUser.universityFacultyMajor.uniFacMajId}" />--%>
            <%--<div class="input-group">--%>
            <%--<input id="comboDep" name="depaName" type="text" class="form-control" onchange="shoeDepartMent()"--%>
            <%--value="${currentUser.universityFacultyMajor.major.majName}" />--%>
            <%--<span class="input-group-addon">--%>
            <%--<i class="glyphicon glyphicon-search" onclick="shoeDepartMent()" style="cursor: pointer"></i>--%>
            <%--</span>--%>
            <%--</div>--%>
            <%--</div>--%>
            <%--</div>--%>
            <%--</div>--%>

            <%--<div class="form-group">--%>
            <%--<div class="row col-md-12">--%>
            <%--<label class="col-md-2 control-label" style="padding-left: 0px;padding-right: 0px"><small>ชั้นปี</small><small style="color: red">*</small></label>--%>
            <%--<div class="col-md-9">--%>
            <%--<div class="col-md-2" style="padding-left: 0px;">--%>
            <%--<select id="level" class="form-control">--%>
            <%--<option value="">เลือกชั้นปี</option>--%>
            <%--<c:set var="level" scope="session" value="${currentUser.levelStu}"/>--%>
            <%--<c:forEach var="i" begin="1" end="8">--%>
            <%--<option value="${i}" <c:if test="${i == level}"> selected="selected" </c:if> ><c:out value="${i}"/></option>--%>
            <%--</c:forEach>--%>
            <%--&lt;%&ndash;<option value="hh" selected="selected">kcpe</option>&ndash;%&gt;--%>
            <%--</select>--%>
            <%--</div>--%>
            <%--<div class="col-md-9" style="padding-right: 0px;">--%>
            <%--<label class="col-md-5 control-label" style="padding: 7px 0px;"><small>เกรดเฉลี่ยสะสม</small><small style="color: red">*</small></label>--%>
            <%--<div class="col-md-7" style="padding-right: 0px;">--%>
            <%--<input id="inputGrade" class="form-control" maxlength="4" onkeypress="return isNumberPoint(event)"--%>
            <%--onchange="fullfulegrade()" value="${currentUser.grade}"/>--%>
            <%--</div>--%>
            <%--</div>--%>
            <%--</div>--%>
            <%--</div>--%>
            <%--</div>--%>

            <%--<div class="form-group">--%>
            <%--<div class="row col-md-12">--%>
            <%--<label for="address" class="col-md-2 control-label" style="padding-left: 0px;padding-right: 0px">--%>
            <%--<small>ที่อยู่</small>--%>
            <%--</label>--%>
            <%--<div class="col-md-9">--%>
            <%--<textarea class="form-control" id="address" >${currentUser.address}</textarea>--%>
            <%--</div>--%>
            <%--</div>--%>
            <%--</div>--%>

            <%--<div class="form-group">--%>
            <%--<div class="row col-md-12">--%>
            <%--<label for="tel1" class="col-md-2 control-label" style="padding-left: 0px;padding-right: 0px">--%>
            <%--<small>มือถือ</small>--%>
            <%--</label>--%>
            <%--<div class="col-md-4">--%>
            <%--<input id="tel2" class="form-control" value="${currentUser.tell2}" maxlength="10" onkeypress="return isNumber(event)" />--%>

            <%--</div>--%>

            <%--<label for="tel2" class="col-md-1 control-label" style="padding: 7px 0px 7px 0px;">--%>
            <%--<small>โทร</small>--%>
            <%--</label>--%>
            <%--<div class="col-md-4">--%>
            <%--<input id="tel1" class="form-control" value="${currentUser.tell1}" maxlength="10" onkeypress="return isNumber(event)" />--%>
            <%--</div>--%>
            <%--</div>--%>
            <%--</div>--%>

            <%--<div class="form-group">--%>
            <%--<div class="row col-md-12">--%>
            <%--<label class="col-md-2 control-label" style="padding-right: 0px">--%>
            <%--<small>อีเมล</small>--%>
            <%--</label>--%>
            <%--<div class="col-md-9">--%>
            <%--<div class="col-md-5" style="padding-left: 0px;padding-right: 0px;">--%>
            <%--<input id="ssgMail" class="form-control"  value="${currentUser.eMail1}" readonly="true"/>--%>
            <%--</div>--%>
            <%--<label class="col-md-2 control-label" style="text-align: left;"><small>@internal.ssg</small></label>--%>
            <%--</div>--%>
            <%--</div>--%>
            <%--</div>--%>

            <div class="form-group">
                <div class="row col-md-12">
                    <label class="col-md-2 control-label" style="padding-right: 0px">
                        <small>อีเมล</small>
                    </label>

                    <div class="col-md-4">
                        <%--<div class="col-md-5" style="padding-left: 0px;">--%>
                        <input id="mail" class="form-control" value="${currentUser.eMail2}"
                               onkeypress="return checkEmail(event)"/>
                        <%--</div>--%>
                    </div>
                    <label class="col-md-1 control-label" style="padding-right: 0px">
                        <small>ตำแหน่ง</small>
                    </label>

                    <div class="col-md-4">
                        <%--<div class="col-md-8" style="padding-left: 0px;">--%>
                        <%--<input id="position" class="form-control"  value="${user.position.posiName}"/>--%>
                        <%--</div>--%>
                        <c:set var="posiId" scope="session" value="${currentUser.posiId}"/>
                        <select id="position" name="position" class="form-control" required="true">
                            <option value="">เลือกตำแหน่ง</option>
                            <c:forEach var="positionList" items="${listPosition}">
                                <option value="${positionList.posiId}" <c:if
                                        test="${positionList.posiId == posiId}"> selected="selected" </c:if> > ${positionList.posiName}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>

            </div>

            <%--<div class="form-group">--%>
            <%--<div class="row col-md-12">--%>
            <%--<label class="col-md-2 control-label" style="padding-right: 0px">--%>
            <%--<small>Skype Account</small>--%>
            <%--</label>--%>
            <%--<div class="col-md-9">--%>
            <%--&lt;%&ndash;<div class="col-md-8" style="padding-left: 0px;">&ndash;%&gt;--%>
            <%--<input id="skype" class="form-control"  value="${currentUser.skype}" onkeypress="return numberEnglishEmegency(event)" />--%>
            <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
            <%--</div>--%>
            <%--</div>--%>
            <%--</div>--%>

            <%--<div class="form-group">--%>
            <%--<div class="row col-md-12">--%>
            <%--<label for="sStartTime" class="col-md-2 control-label" style="padding-left: 0px;padding-right: 0px">--%>
            <%--<small>เริ่มฝึกงาน</small>--%>
            <%--</label>--%>
            <%--<div class="col-md-4">--%>
            <%--&lt;%&ndash;<input id="stime" class="form-control" value="${user.startWork}"  />&ndash;%&gt;--%>
            <%--<div class='input-group date' id='sStartTime'>--%>
            <%--<input id="startTime" type='text' value="${currentUser.startWork}" style="background-color: white;cursor: pointer"--%>
            <%--class="form-control" onchange="getTimeWork()" readonly="true"--%>
            <%--style="margin-top:0px;cursor:pointer" />--%>
            <%--<span class="input-group-addon">--%>
            <%--<span class="glyphicon glyphicon-calendar"></span>--%>
            <%--</span>--%>
            <%--</div>--%>

            <%--</div>--%>

            <%--<label for="sEndTime" class="col-md-1 control-label" style="padding: 7px 0px 7px 0px;">--%>
            <%--<small>ถึง</small>--%>
            <%--</label>--%>
            <%--<div class="col-md-4">--%>
            <%--&lt;%&ndash;<input id="etime" class="form-control" value="${user.endWork}"  />&ndash;%&gt;--%>
            <%--<div class='input-group date' id='sEndTime'>--%>
            <%--<input id="endTime" type='text' value="${currentUser.endWork}" style="background-color: white;cursor: pointer"--%>
            <%--class="form-control" onchange="getTimeWork()" readonly="true" required="true"--%>
            <%--style="margin-top:0px;cursor:pointer"/>--%>
            <%--<span class="input-group-addon">--%>
            <%--<span class="glyphicon glyphicon-calendar"></span>--%>
            <%--</span>--%>
            <%--</div>--%>

            <%--</div>--%>
            <%--</div>--%>
            <%--</div>--%>

            <%--<div class="form-group">--%>
            <%--<div class="row col-md-12">--%>
            <%--<label for="sumDate" class="col-md-2 control-label" style="padding-left: 0px;padding-right: 0px">--%>
            <%--<small>รวม</small>--%>
            <%--</label>--%>
            <%--<div class="col-md-2">--%>
            <%--<input id="sumDate" class="form-control" value=""  readonly="true"/>--%>
            <%--</div>--%>
            <%--</div>--%>
            <%--</div>--%>

            <%--<div class="form-group">--%>
            <%--<div class="row col-md-12">--%>
            <%--<label for="type" class="col-md-2 control-label" style="padding-left: 0px;padding-right: 0px">--%>
            <%--<small>ประเภทการฝึก</small>--%>
            <%--</label>--%>
            <%--<div class="col-md-9">--%>
            <%--&lt;%&ndash;<input id="type" class="form-control" value="${user.apprentice.aptName}"/>&ndash;%&gt;--%>
            <%--<select id="type" class="form-control" required="true">--%>
            <%--<c:set var="appId" scope="session" value="${currentUser.aptId}"/>--%>
            <%--<option value="">เลือกประเภทการฝึก</option>--%>
            <%--<c:forEach var="getApp" items="${listApp}">--%>
            <%--<option value="${getApp.aptId}" <c:if test="${getApp.aptId == appId}"> selected="selected" </c:if> > ${getApp.aptName} </option>--%>
            <%--</c:forEach>--%>
            <%--</select>--%>
            <%--</div>--%>
            <%--</div>--%>
            <%--</div>--%>
            <%--<c:out value="${listApp}" />--%>

            <%--<div class="form-group">--%>
            <%--<div class="row col-md-12">--%>
            <%--<label class="col-md-2 control-label" style="padding-right: 0px">--%>
            <%--<small>พนักงานที่ปรึกษา</small>--%>
            <%--</label>--%>
            <%--<div class="col-md-9">--%>
            <%--&lt;%&ndash;<div class="col-md-8" style="padding-left: 0px;">&ndash;%&gt;--%>
            <%--&lt;%&ndash;<input id="advisor" class="form-control"  value="${user.staffId}"/>&ndash;%&gt;--%>
            <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
            <%--<c:set var="staffid" scope="session" value="${currentUser.staffId}"/>--%>
            <%--<select id="advisor" name="advisor" class="form-control" required="true">--%>
            <%--<option value="">เลือกพนักงานที่ปรึกษา</option>--%>
            <%--<c:forEach var="getStaff" items="${listUser}">--%>
            <%--<option value="${getStaff.userId}" <c:if test="${getStaff.userId == staffid}"> selected="selected" </c:if> > ${getStaff.thFname} ${getStaff.thLname} (${getStaff.nickName})</option>--%>
            <%--</c:forEach>--%>
            <%--</select>--%>
            <%--</div>--%>
            <%--</div>--%>
            <%--</div>--%>
            <%--<br/>--%>
            <div class="form-group">
                <div class="row">
                    <div class="col-md-2 col-md-offset-4">
                        <input class="btn btn-primary" type="button" value="บันทึกการแก้ไข" onclick="checkEmpty()"/>
                    </div>
                    <div class="col-md-2 col-md-offset-0" style="margin-left: 5px">
                        <input id="changePassword" type="button" class="btn btn-primary" value="เปลี่ยนรหัสผ่าน"/>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<%--<div id="listUniver" class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">--%>
<%--<div class="modal-dialog">--%>
<%--<div class="modal-content">--%>
<%--<div class="modal-header">--%>
<%--&lt;%&ndash;<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>&ndash;%&gt;--%>
<%--<div class="input-group">--%>
<%--<span class="input-group-addon">ชื่อสถาบันการศึกษา</span>--%>
<%--<input id="filter" type="text" class="form-control" placeholder="ชื่อสถาบันการศึกษา">--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="modal-body">--%>
<%--<table class="table table-striped table-hover">--%>
<%--<tbody class="searchable" id="trUniversity">--%>
<%--</tbody>--%>
<%--</table>--%>
<%--</div>--%>
<%--<div class="modal-footer">--%>
<%--<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>--%>
<%--&lt;%&ndash;<button type="button" class="btn btn-primary">Save changes</button>&ndash;%&gt;--%>
<%--</div>--%>
<%--</div><!-- /.modal-content -->--%>
<%--</div><!-- /.modal-dialog -->--%>
<%--</div><!-- /.modal -->--%>

<%--<div id="listFac" class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">--%>
<%--<div class="modal-dialog">--%>
<%--<div class="modal-content">--%>
<%--<div class="modal-header">--%>
<%--&lt;%&ndash;<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>&ndash;%&gt;--%>
<%--<div class="input-group">--%>
<%--<span class="input-group-addon">ชื่อคณะ</span>--%>
<%--<input id="filterFac" type="text" class="form-control" placeholder="ชื่อคณะ">--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="modal-body">--%>
<%--<table class="table table-striped table-hover">--%>
<%--<tbody class="searchable" id="trFacuty">--%>
<%--</tbody>--%>
<%--</table>--%>
<%--</div>--%>
<%--<div class="modal-footer">--%>
<%--<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>--%>
<%--&lt;%&ndash;<button type="button" class="btn btn-primary">Save changes</button>&ndash;%&gt;--%>
<%--</div>--%>
<%--</div><!-- /.modal-content -->--%>
<%--</div><!-- /.modal-dialog -->--%>
<%--</div><!-- /.modal -->--%>

<%--<div id="listDep" class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">--%>
<%--<div class="modal-dialog">--%>
<%--<div class="modal-content">--%>
<%--<div class="modal-header">--%>
<%--&lt;%&ndash;<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>&ndash;%&gt;--%>
<%--<div class="input-group">--%>
<%--<span class="input-group-addon">ชื่อสาขา</span>--%>
<%--<input id="filterDep" type="text" class="form-control" placeholder="ชื่อสาขา">--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="modal-body">--%>
<%--<table class="table table-striped table-hover">--%>
<%--<tbody class="searchable" id="trDepartment">--%>
<%--</tbody>--%>
<%--</table>--%>
<%--</div>--%>
<%--<div class="modal-footer">--%>
<%--<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>--%>
<%--&lt;%&ndash;<button type="button" class="btn btn-primary">Save changes</button>&ndash;%&gt;--%>
<%--</div>--%>
<%--</div><!-- /.modal-content -->--%>
<%--</div><!-- /.modal-dialog -->--%>
<%--</div><!-- /.modal -->--%>

<div id="changePasswordModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <div class="input-group">
                    เปลี่ยนรหัสผ่าน
                </div>
            </div>
            <div class="modal-body">
                <form id="changPasswordForm" method="post" action="">
                    <div class="form-horizontal">
                        <div class="form-group">
                            <div class="row">
                                <label for="oldPassword" class="col-md-2 control-label">รหัสผ่านเดิม*</label>

                                <div class="col-md-7">
                                    <input id="oldPassword" type="password" class="form-control"
                                           onkeypress="return numberAndEnglist(event)" autocomplete="off"
                                           required="true"/>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <label for="password" class="col-md-2 control-label">รหัสผ่านใหม่*</label>

                                <div class="col-md-7">
                                    <div id="passdiv" class="col-md-12" style="padding-right: 0px;padding-left: 0px">
                                        <input type="password" class="form-control" id="password" maxlength="8"
                                               onkeypress="return numberAndEnglist(event)"
                                               autocomplete="off" autocomplete="off" cssClass="form-control error"
                                               required="true"/>
                                        <span id="passspan" aria-hidden="true"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <label for="cpassword" class="col-md-2 control-label">ยืนยันรหัสผ่านใหม่*</label>

                                <div class="col-md-7">
                                    <%--<input id="confirmNewPassword" type="text" class="form-control" />--%>
                                    <div id="cpassdiv" class="col-md-12" style="padding-right: 0px;padding-left: 0px">
                                        <input type="password" class="form-control" id="cpassword"
                                               aria-describedby="inputSuccess2Status"
                                               autocomplete="off" onkeypress="return numberAndEnglist(event)"
                                               maxlength="8" required="true"/>
                                        <span id="cpassspan" aria-hidden="true"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <input type="submit" id="submitcahngePass" style="display: none"/>

                <div class="row text-center">
                    <input id="btnChangePass" type="button" class="btn btn-primary" value="ตกลง"/>
                    <button type="button" class="btn btn-primary" data-dismiss="modal" aria-hidden="true">ยกเลิก
                    </button>
                </div>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->

<script>
    <%--alert('${currentUser.address}');--%>
    var gradeUser;
    var elementStart;
    var facutyforFixid, facutyforfixName, universityId;
    $(document).ready(function () {
        <%--facutyforFixid = '${currentUser.universityFacultyMajor.uniFacId}';--%>
        <%--facutyforfixName = '${currentUser.universityFacultyMajor.universityFaculty.faculty.facName}';--%>
        <%--universityId = '${currentUser.universityFacultyMajor.universityFaculty.uniId}';--%>
        <%--gradeUser = '${currentUser.grade}';--%>
//        for (var i = gradeUser.length; i < 4; i++) {
//            gradeUser += "0";
//        }

        elementStart = ['${currentUser.empId}', '${currentUser.userName}', '${currentUser.thFname}', '${currentUser.thLname}', '${currentUser.enFname}', '${currentUser.enLname}',
            '${currentUser.nickName}', '${currentUser.birthDate}', '${currentUser.universityFacultyMajor.uniFacMajId}', '${currentUser.levelStu}', gradeUser, '${currentUser.address}',
            '${currentUser.tell1}', '${currentUser.tell2}', '${currentUser.eMail1}', '${currentUser.eMail2}', '${currentUser.skype}', '${currentUser.startWork}', '${currentUser.endWork}',
            '${currentUser.aptId}', '${currentUser.posiId}', '${currentUser.staffId}' + ""];

    });

    //    (function($) {
    //        $('#stuid').bind('blur', function(e) {
    //            var $this = $(this)
    //            if ($this.val().length < 6 && $this.val().length != 0) {
    //                alert('คุณกรอกรหัสนักศึกษาฝึกงานไม่ครบ');
    ////                $("#Amount").focus();
    //                setTimeout(function(){$this.focus()}, 1);
    //            }
    //        });
    //    })(jQuery);
    //
    //    (function($) {
    //        $('#tel2').bind('blur', function(e) {
    //            var $this = $(this)
    //            if ($this.val().length < 10 && $this.val().length != 0) {
    //                alert('คุณกรอกเบอร์โทรศัพท์ไม่ครบ');
    ////                $("#Amount").focus();
    //                setTimeout(function(){$this.focus()}, 1);
    //            }
    //        });
    //    })(jQuery);
</script>
<script src="<c:url value="/resources/js/pageScript/home.js" />"></script>

<style>
    .validate-fail {
        border: solid 1px red;
    }
</style>