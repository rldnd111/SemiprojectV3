<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="main">

<script src="https://www.google.com/recaptcha/api.js"></script>

    <div><div>
        <i class="fas fa-users fa-2x">회원가입</i>
        <hr>
    </div> <!-- 페이지 타이틀 -->

    <nav>
      <ul class="breadcrumb">
            <li class="breadcrumb-item active">
                <button type="button" disabled
                class="btn btn-success">이용약관</button></li>
          <li class="breadcrumb-item active">
                <button type="button" disabled
                class="btn btn-success">가입인증</button></li>
          <li class="breadcrumb-item">
                <button type="button" disabled
                class="btn btn-success">정보입력</button></li>
          <li class="breadcrumb-item">
                <button type="button" disabled
                class="btn btn-light">가입완료</button></li>
      </ul>
    </nav><!-- 브레드크럼--></div>

    <div>
        <h2>회원정보 입력</h2>
        <small class="text=muted">
        회원정보는 개인정보 취급방침에 따라 안전하게 보호되며, 회원님의 명백한 동의없이 공개 또는 제3자에게 제공되지 않습니다.
        </small>
        <hr>
    </div><!-- 섹션 타이틀 -->

    <div class="card card-body bg-light">
        <h3>일반회원</h3>

        <form id="joinfrm" name="joinfrm">
        <div class="row">
            <div class="col-11 offset-1">
                <div class="form-group row">
                <label class="col-2 col-form-label
                        text-danger text-right"for="name">이름</label>
                        <input type="text" name="name" id="name"
                               class="border-danger form-control col-2"
                               readonly value="${param.name}">
            </div><!-- 이름 -->

            <div class="form-group row">
                <label class="col-2 col-form-label
                              text-danger text-right"for="jumin1">주민등록번호</label>
                <input type="text" name="jumin1" id="jumin1"
                       class="border-danger form-control col-1" readonly value="${param.jumin1}">
                <span class="col-form-label">
                        &nbsp; &mdash; &nbsp;</span>
                <input type="text" name="jumin2" id="jumin2"
                       class="border-danger form-control col-1" readonly value="${param.jumin2}">
            </div><!-- 주민번호 -->

            <div class ="form-group row">
                <label class="col-2 col-form-label
                              text-danger text-right"for="userid">아이디</label>
                <input type="text" name="userid" id="userid"
                       class="border-danger form-control col-3">
                <span id="uidmsg" class="col-form-label">&nbsp;8~16 자의 영문 소문자, 숫자와 특수기호(_) 만 사용할 수 있습니다. </span>
            </div> <!-- 아이디 -->

            <div class = "form-group row">
                <label class="col-2 col-form-label
                              text-danger text-right"for="passwd">비밀번호</label>
                <input type="password" name="passwd" id="passwd"
                       class="border-danger form-control col-2">
                <span id="pwdmsg" class="col-form-label">&nbsp;8~16 자의 영문 소문자, 숫자와 특수기호(_) 만 사용할 수 있습니다. </span>
                </div> <!-- 비번 -->

            <div class = "form-group row">
                <label class="col-2 col-form-label
                              text-danger text-right"for="repasswd">비밀번호 확인</label>
                <input type="password" name="repasswd" id="repasswd"
                       class="border-danger form-control col-2">
                <span class="col-form-label">&nbsp;이전 항목에서 입력했던 비밀번호를 한번 더 입력하세요. </span>
                </div> <!-- 비번확인 -->

            <div class="form-group row">
                <label class="col-2 col-form-laberl
                              text-danger text-right"for="zip1">우편번호</label>
                <input type="text" name="zip1" id="zip1"
                       class="border-danger form-control col-1" readonly>
                <span class="col-form-label">
                        &nbsp; &mdash; &nbsp;</span>
                <input type="text" name="zip2" id="zip2"
                       class="border-danger form-control col-1"
                       readonly>
                        &nbsp;
                <button type="button" class="btn btn-dark"
                        data-toggle="modal" data-target="#zipmodal">
                <i class="fas fa-question-circle"></i>우편번호 찾기</button>
                </div>   <!-- 우편번호 -->

                <div class="form-group row">
                <label class="col-2 col-form-label
                              text-danger text-right"for="addr1">주소</label>
                    <input type="text" name="addr1" id="addr1"
                           class="border-danger form-control col-4">
                    &nbsp;&nbsp;
                    <input type="text" name="addr2" id="addr2"
                           class="border-danger form-control col-4">
                </div> <!-- 주소 -->

                <div class="form-group row">
                    <label class="col-2 col-form-label
                                  text-danger text-right"for="email1">전자우편 주소</label>
                    <input type="text" name="email1" id="email1"
                           class="form-control border-danger col-3">
                    <div class="input-group-append">
                        <span class="input-group-text">@</span>
                    </div>
                    <input type="text" name="email2" id="email2"
                           class="form-control border-danger col-2" readonly>
                    &nbsp;&nbsp;
                    <select class="form-control border-danger col-2" id="email3">
                        <option>- 선택하세요- </option>
                        <option>직접입력하기</option>
                        <option>naver.com</option>
                        <option>gmail.com</option>
                        <option>hotmail.com</option>
                    </select>
                </div> <!-- 이메일 -->

                <div class="form-group row">
                    <label class="col-2 col-form-label
                                  text-danger text-right"for="tel1">전화번호</label>
                    <select class="form-control border-danger col-2"
                            name="tel1" id="tel1">
                        <option>국번</option>
                        <option>010</option>
                        <option>011</option>
                    </select>
                    <span class="col-form-label">&nbsp; &mdash; &nbsp;</span>
                    <input type="text" name="tel2" id="tel2"
                           class="form-control border-danger col-2">
                    <span class="col-form-label">&nbsp; &mdash; &nbsp;</span>
                    <input type="text" name="tel3" id="tel3"
                           class="form-control border-danger col-2">
                </div> <!-- 전화번호 -->

                <div class="form-group row">
                    <label class="col-2 col-form-label text-danger text-right">자동가입방지</label>
                    <div class="g-recaptcha"
                        data-sitekey="6LdwIwgbAAAAADTTDIJUsgs3xT5Th88IzbYCx8Sx"></div>
                    <input type="hidden" id="g-recaptcha" name="g-recaptcha" />

                </div> <!-- 캡차 -->
            </div>
            </div><!-- 정보입력 -->


            <div class="row">
                <div class="col-12 text-center">
                <hr>
                <button type="button" class="btn btn-primary"
                        id="joinbtn"><i class="fas fa-check"></i>입력완료</button>
                <button type="button" class="btn btn-danger"
                        id="cancelbtn"><i class="fas fa-times"></i>입력취소</button>
             </div>
            </div> <!-- 버튼들 -->

            <input type="hidden" name="jumin" id="jumin">
            <input type="hidden" name="zipcode" id="zipcode">
            <input type="hidden" name="email" id="email">
            <input type="hidden" name="phone" id="phone">


        </form>

    </div> <!-- 회원정보 입력 -->

    <!-- 우편 폼 모달 -->
    <div id="zipmodal" class="modal" role="dialog">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h3 class="modal-title">우편번호 찾기</h3>
                    <button type="button" data-dismiss="modal"
                            class="close">&times;</button>
                </div>
                <div class="modal-body">
                    <form name="zipfrm" id="zipfrm">
                        <div class="form-inline row
                                    justify-content-center">
                            <label class="col-form-label
                                          text-danger text-right" for="dong">검색하실 주소의<br> 동 이름을 입력하세요</label>
                            &nbsp;&nbsp;
                    <input type="text" name="dong" id="dong"
                           class="form-control border-danger col-4">
                            &nbsp;&nbsp;
                            <button type="button" class="btn btn-primary" id="findzipbtn">
                                <i class="fas fa-search">
                                검색하기</i></button>
                        </div>
                        <div class="form-group row">
                            <hr class="col-9">
                            <p class="col-12 text danger text-center">지역의 읍/면/동의 이름을 공백없이 입력하신 후 [검색하기] 버튼을 클릭하세요</p>
                            <select class="col-8 offset-2 form-control" size="10" accesskey="addrlist" name="addrlist" id="addrlist">
                            <option>123-456 서울 종로구 창신동</option>
                            <option>123-456 서울 종로구 창신동</option>
                            <option>123-456 서울 종로구 창신동</option>
                            <option>123-456 서울 종로구 창신동</option>
                            <option>123-456 서울 종로구 창신동</option>
                            <option>123-456 서울 종로구 창신동</option>
                            <option>123-456 서울 종로구 창신동</option>
                            <option>123-456 서울 종로구 창신동</option>
                            <option>123-456 서울 종로구 창신동</option>
                            <option>123-456 서울 종로구 창신동</option>
                            <option>123-456 서울 종로구 창신동</option>
                            <option>123-456 서울 종로구 창신동</option>
                            <option>123-456 서울 종로구 창신동</option>
                            <option>123-456 서울 종로구 창신동</option>
                            <option>123-456 서울 종로구 창신동</option>
                            <option>123-456 서울 종로구 창신동</option>
                            <option>123-456 서울 종로구 창신동</option>
                            <option>123-456 서울 종로구 창신동</option>
                            <option>123-456 서울 종로구 창신동</option>
                            <option>123-456 서울 종로구 창신동</option>
                            <option>123-456 서울 종로구 창신동</option>
                            <option>123-456 서울 종로구 창신동</option>
                            <option>123-456 서울 종로구 창신동</option>
                            <option>123-456 서울 종로구 창신동</option>
                            <option>123-456 서울 종로구 창신동</option>
                            <option>123-456 서울 종로구 창신동</option>
                            <option>123-456 서울 종로구 창신동</option>
                            </select>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" id="sendzip">
                        <i class="fas fa-check-square"></i>선택하고 닫기</button>
                </div>
            </div>
        </div>
    </div>

</div>