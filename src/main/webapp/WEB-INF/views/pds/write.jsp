<%@ page pageEncoding="UTF-8"%>

<div id="main">
<script src="https://www.google.com/recaptcha/api.js"></script>
                <div>
                    <i class="fas fa-save fa-2x">자료실</i>
                    <hr>
                </div> <!-- 페이지 타이틀 -->
            <div class="row">
                <div class="col-5 offset-1">
                 <i class="fas fa-plus-circle fa-2x"> 새글쓰기 </i>
                </div>

                <div class="col-5 text-right">
                    <button type="button" class="btn btn-light">
                        <i class="fas fa-list"></i>목록으로</button></div>
            </div>

                <div class="card card-body bg-light col-10 offset-1">
                    <form id="boardfrm" name="boardfrm">


                            <div class="form-group row">
                                <label class="col-2 col-form-label text-danger
                                              text-right" for="title">제목</label>
                                <input type="text" name="title" id="title"
                                       class="border-danger form-control col-9">
                            </div>

                            <div class="form-group row">
                                <label class="col-2 col-form-label text-danger
                                              text-right" for="userid">작성자</label>
                                <input type="text" name="userid" id="userid"
                                       class="border-danger form-control col-9" readonly>
                            </div>

                            <div class="form-group row">
                                <label class="col-2 col-form-label text-danger
                                              text-right" for="contents">본문내용</label>
                                <textarea id="contents" name="contents" class="border-danger form-control col-9" rows="15"></textarea>
                            </div>

                            <div class="form-group row">
                            <label class="col-2 col-form-label text-danger
                                              text-right" for="file1">파일첨부</label>
                                <div class="custom-file col-9">
                                    <input type="file" name="file" id="file1"
                                           class="custom-file-input">
                                    <label class="custom-file-label">첨부할 파일을 선택 하세요</label>
                                </div>
                                <div class="custom-file col-9 offset-2">
                                    <input type="file" name="file" id="file2"
                                           class="custom-file-input">
                                    <label class="custom-file-label">첨부할 파일을 선택 하세요</label>
                                </div>
                                <div class="custom-file col-9 offset-2">
                                    <input type="file" name="file" id="file3"
                                           class="custom-file-input">
                                    <label class="custom-file-label">첨부할 파일을 선택 하세요</label>
                                </div>


                            </div>



                            <div class="form-group row">
                                <label class="col-2 col-form-label text-danger
                                              text-right">자동입력방지</label>
                                <div class="g-recaptcha"
   									data-sitekey="6LdwIwgbAAAAADTTDIJUsgs3xT5Th88IzbYCx8Sx"></div>
   								<input type="hidden" id="g-recaptcha" name="g-recaptcha" />
                            </div>
                            <div class="form-group row">
                            <input type="text" name="auto" id="auto"
                                       class="border-danger form-control col-3 offset-2"> &nbsp;&nbsp;
                                <button type="button" class="btn btn-dark">
                                <i class="fas fa-question-circle"></i>
                                다른 capcha보기</button>
                            </div>


                         <div class="form-group row">
                             <hr class="col-10">
                            <div class="col-12 text-center">
                            <button type="button" class="btn btn-primary"
                                    id="joinbtn"><i class="fas fa-check"></i>입력완료</button>
                            <button type="button" class="btn btn-danger"
                                    id="cancelbtn"><i class="fas fa-times"></i>취소하기</button>
                         </div>
                        </div> <!-- 버튼들 -->
                    </form>
                </div>
            </div>