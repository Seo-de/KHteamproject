const signUpFrm = document.getElementById("signUpFrm");

if(signUpFrm != null){
    signUpFrm.addEventListener("submit", function(event){
        const memberEmail = document.getElementById("memberEmail");
        const memberPw = document.getElementById("memberPw");
        const memberPwConfirm = document.getElementById("memberPwConfirm");
        const memberName = document.getElementById("memberName");
        const memberBirth = document.getElementById("memberBirth");
        const memberTel = document.getElementById("memberTel");

        if(memberEmail.value.trim().length == 0){
            alertAndFocus(memberEmail, "이메일을 입력해주세요.");
            event.preventDefault();
            return;
        }
        if(memberPw.value.trim().length == 0){
            alertAndFocus(memberPw, "비밀번호를 입력해주세요.");
            event.preventDefault();
            return;
        }
        if(memberPwConfirm.value.trim().length == 0){
            alertAndFocus(memberPwConfirm, "새 비밀번호를 입력해주세요.");
            event.preventDefault();
            return;
        }
        if(memberPw != memberPwConfirm){
            alert("비밀번호가 일치하지 않습니다.")
            memberPwConfirm.value="";
            memberPwConfirm.focus();
            event.preventDefault();
            return;
        }
        if(memberName.value.trim().length == 0){
            alertAndFocus(memberName, "이름을 입력해주세요.");
            event.preventDefault();
            return;
        }
        if(memberBirth.value.trim().length == 0){
            alertAndFocus(memberBirth, "생일을 입력해주세요.");
            event.preventDefault();
            return;
        }
        if(memberTel.value.trim().length == 0){
            alertAndFocus(memberTel, "전화번호를 입력해주세요.");
            event.preventDefault();
            return;
        }
    });
}
function alertAndFocus(input, src){
    alert(srt);
    input.focus();
    input.value="";
}

document.getElementById("memberEmail").addEventListener("keyup", function(){

    const regEx = /^[a-zA-Z0-9]{1,15}$/;

    const emailConfirm = document.getElementById("emailConfirm");

    if(regEx.test(this.value)){
        emailConfirm.innerText="유효한 이메일 형식입니다.";
        emailConfirm.classList.add("confirm");
        emailConfirm.classList.remove("error");
    }else{
        emailConfirm.innerText="잘못된 이메일 형식입니다.";
        emailConfirm.classList.add("error");
        emailConfirm.classList.remove("confirm");
    }

})



// 영어, 숫자, 특수문자(! @ ~ ? `)를 포함해 최소 8자리이상 사용해주세요. 