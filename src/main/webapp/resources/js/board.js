
// new board
$('#newbdbtn').on('click', function() {
    location.href = '/board/write';
});

// goto list
$('#listbdbtn').on('click', function() {
    location.href = '/board/list';
});

// save board
$('#savebdbtn').on('click', function() {
    if ($('#title').val() == '') alert('제목을 입력하세요');
    else if ($('#contents').val() == '') alert('본문을 입력하세요');
    else if (grecaptcha.getResponse() == '')
        alert('자동가입 방지 확인 필요!!');
    else {
        const frm = $('#boardfrm');
        frm.attr('method','post');
        frm.attr('action','/board/write');
        frm.submit();
    }
});

// search board
$('#findbtn').on('click', function() {
    if ($('#findkey').val() == '') alert('검색할 내용을 작성하세요!');
    else {
        let qry = '?findtype=' + $('#findtype').val();
        qry += "&findkey=" + $('#findkey').val() + "&cp=1";
        let url = '/board/find' + qry;
        location.href = url;
    }
});

// findtype select tag
// $('#findtype').val('${param.findtype}')
// .prop('selected', 'true');

// new board reply
$('#newbrbtn').on('click', function () {
   if($('#reply').val() == '') alert('댓글을 작성하세요');
   else {
       const frm = $('#replyfrm');
       frm.attr('method', 'post');
       frm.attr('action', '/reply/write');
       frm.submit();
   }
});

// show reply
function addReply(rno) {
    $('#replyModal').modal('show');
    $('#rpno').val(rno); // 대댓글 작성시 부모댓글 번호를 넘겨줌
}

// new reply
$('#newrrpbtn').on('click', function (){
   if($('#rreply').val() == '') alert('대댓글을 작성하세요!!');
   else {
       const frm = $('#rpfrm');
       frm.attr('method', 'post');
       frm.attr('action', '/rreply/write');
       frm.submit();
   }

});

