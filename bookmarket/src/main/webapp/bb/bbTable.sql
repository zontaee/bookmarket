create table bb(
num int primary key,         -- 글 번호
writer varchar(30) not null,   -- 작성자
subject varchar(100) not null, -- 제목
content varchar(2048) not null,-- 내용
readcount int default 0,     -- 조회수
password varchar(20) not null, -- 비밀번호
reg_date varchar(45) DEFAULT NULL,  -- 등록일자
ip varchar(30) not null,       -- ip주소
ref int not null,            -- 답변글 그룹
re_step int not null,        -- ref내의 순서
re_level int not null        -- 들여쓰기
);
