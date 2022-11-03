const saveId = document.getElementById("saveId");

saveId.addEventListener("change",function(event){
    if(this.checked){
        const str = "개인 정보 보호를 위해 개인 PC에서의 사용을 권장합니다."
                    +"개인 PC가 아닌 경우 취소를 눌러주세요."

        if(!confirm(str)){
            this.checked = flase;
        }
    }
});

const loginFrm = document.getElementById("loginFrm");

if(loginFrm != null){
    loginFrm.addEventListener("submit", function(event){
        const memberEmail = document.getElementById("memberEmail");
        const memberPw = document.getElementById("memberPw");

        if(memberEmail.value.trim().length == 0){
            alert("이메일을 입력해주세요.");
            memberEmail.value="";
            memberEmail.focus();
            event.preventDefault();
            return;
        }
        if(memberPw.value.trim().length == 0){
            alert("비밀번호를 입력해주세요.");
            memberPw.value="";
            memberPw.focus();
            event.preventDefault();
            return;
        }
    });
}