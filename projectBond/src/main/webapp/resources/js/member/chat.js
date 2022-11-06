function submitChatMessageFrm(form){
    form.writer.value = form.writer.value.trim();
    

    if(form.writer.value.length == 0){
        alert("이름을 입력해주세요");
        form.writer.focus();
        return;
    }
    form.body.value = form.body.value.trim();


    if(form.body.value.length == 0){
        alert("내용을 입력해주세요");
        form.body.focus();
        return;
    }

    var writer = form.writer.value;
    var body = form.body.value;

    var content = writer + " : " + body;

    form.body.value = "";
    form.body.focus();

    console.log(content);

    var html = '<div class="chat-message">123</div>';
    $('.chat-messages').append(html);

}