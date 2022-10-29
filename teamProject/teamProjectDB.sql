ALTER SESSION SET "_ORACLE_SCRIPT" = TRUE;

-- 수업용 프로젝트 계정 생성
CREATE USER teamproject IDENTIFIED BY project1234;


-- 권한 부여
GRANT CONNECT, RESOURCE, CREATE VIEW TO teamproject;


-- 객체 생성 공간 할당
ALTER USER teamproject DEFAULT TABLESPACE SYSTEM
QUOTA UNLIMITED ON SYSTEM;


--------------------------------------------------------------------------

-- ERD에서 만든거 복붙해준거

CREATE TABLE "MEMBER" (
	"MEMBER_NO"	NUMBER		NOT NULL,
	"MEMBER_EMAIL"	VARCHAR2(50)		NOT NULL,
	"MEMBER_PW"	VARCHAR2(100)		NOT NULL,
	"MEMBER_NAME"	VARCHAR2(30)		NOT NULL,
	"MEMBER_BIRTH"	DATE		NOT NULL,
	"MEMBER_TEL"	CHAR(11)		NULL,
	"PROFILE_IMG"	VARCHAR2(300)		NULL,
	"ENROLL_DATE"	DATE	DEFAULT SYSDATE	NOT NULL,
	"MEMBER_DEL_FL"	CHAR(1)	DEFAULT 'N'	NOT NULL,
	"AUTHORITY"	NUMBER	DEFAULT 1	NOT NULL
);

COMMENT ON COLUMN "MEMBER"."MEMBER_NO" IS '회원번호(SEQ_MEMBER_NO)';

COMMENT ON COLUMN "MEMBER"."MEMBER_EMAIL" IS '회원 이메일(아이디로 사용)';

COMMENT ON COLUMN "MEMBER"."MEMBER_PW" IS '회원 비밀번호(암호화 진행';

COMMENT ON COLUMN "MEMBER"."MEMBER_NAME" IS '회원 닉네임(중복 X)';

COMMENT ON COLUMN "MEMBER"."MEMBER_BIRTH" IS '회원 생일';

COMMENT ON COLUMN "MEMBER"."MEMBER_TEL" IS '휴대폰 번호(- 없음)';

COMMENT ON COLUMN "MEMBER"."PROFILE_IMG" IS '프로필 이미지 경로';

COMMENT ON COLUMN "MEMBER"."ENROLL_DATE" IS '회원 가입일';

COMMENT ON COLUMN "MEMBER"."MEMBER_DEL_FL" IS '탈퇴여부(N : 탈퇴X, Y : 탈퇴O)';

COMMENT ON COLUMN "MEMBER"."AUTHORITY" IS '회원 권환(1 : 일반, 2: 관리자)';


-- 시퀀스 생성
CREATE SEQUENCE SEQ_MEMBER_NO NOCACHE; -- 회원 번호

COMMIT;

-- 게시판 종류 조회
SELECT * FROM post_TYPE BT ORDER BY 1;


-- 회원 샘플데이터 삽입
INSERT INTO "MEMBER"
VALUES(SEQ_MEMBER_NO.NEXTVAL, 'user01@email.com', 'pass01!', '유저일', '19950501',
		DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT);
	
INSERT INTO "MEMBER"
VALUES(SEQ_MEMBER_NO.NEXTVAL, 'user02@email.com', 'pass02!', '유저이', '19990909',
		DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT);

	/* 주소를 보통 컬럼을 나눠서 하는데 이번엔 null 값이 많아서 ,,로 반정규화 시켜준거래 */

COMMIT;


-- 로그인 SQL
SELECT MEMBER_NO, MEMBER_EMAIL, MEMBER_NAME, MEMBER_BIRTH,
	MEMBER_TEL, PROFILE_IMG, AUTHORITY, 
	TO_CHAR(ENROLL_DATE, 'YYYY"년" MM"월" DD"일" HH24"시" MI"분" SS"초" ') AS ENROLL_DATE 
FROM "MEMBER"
WHERE MEMBER_DEL_FL = 'N'
AND MEMBER_EMAIL = 'user01@email.com'
AND MEMBER_PW = 'pass01!';

SELECT * FROM "MEMBER";


-- 로그인한 회원의 번호