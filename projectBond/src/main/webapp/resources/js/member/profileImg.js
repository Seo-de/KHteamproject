const myProfileImg = document.getElementById("myProfileImg");
const inputImage = document.getElementById("inputImage");

const originalImg = myProfileImg.getAttribute("src");

if(inputImage != null){

    inputImage.addEventListener("change", (e)=>{
        // 선택된 파일이 있을 경우
        if(e.target.files[0] != undefined){
            const reader = new FileReader();
            reader.readAsDataURL(e.target.files[0]);
    
            reader.onload = event => {
                myProfileImg.setAttribute("src", event.target.result);
            }
        }else{ // 취소 눌린 경우
            myProfileImg.setAttribute("src", originalImg);
        }

    });
}

