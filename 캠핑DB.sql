drop table t_shopping_member;
drop table t_shopping_goods;
drop table t_goods_detail_image;
drop table t_shopping_order;
drop table t_shopping_cart;

--------------------------------------------------------
--  DDL for Table T_GOODS_DETAIL_IMAGE
--------------------------------------------------------

 CREATE TABLE "T_GOODS_DETAIL_IMAGE" 
   (   "IMAGE_ID" NUMBER(20,0) primary key, 
   "GOODS_ID" NUMBER(20,0), 
   "FILENAME" VARCHAR2(50 BYTE), 
   "REG_ID" VARCHAR2(20 BYTE), 
   "FILETYPE" VARCHAR2(40 BYTE), 
   "CREDATE" DATE DEFAULT sysdate
   ) ;
--------------------------------------------------------
--  DDL for Table T_SHOPPING_GOODS
--------------------------------------------------------

  CREATE TABLE "T_SHOPPING_GOODS" 
   (   "GOODS_ID" NUMBER(20,0) primary key, 
   "GOODS_SORT" VARCHAR2(50 BYTE),              --카테고리
   "GOODS_TITLE" VARCHAR2(100 BYTE),            --상품명
   "GOODS_WRITER" VARCHAR2(50 BYTE),            --글쓴이
   "GOODS_PUBLISHER" VARCHAR2(50 BYTE),         --출판사
   "GOODS_PRICE" NUMBER(10,0),                  --가격
   "GOODS_SALES_PRICE" NUMBER(10,0),            --할인가
   "GOODS_POINT" NUMBER(10,0),                  --포인트 적립금
   "GOODS_PUBLISHED_DATE" DATE,                 --발행일
   "GOODS_TOTAL_PAGE" NUMBER(5,0),              --페이지수
   "GOODS_ISBN" VARCHAR2(50 BYTE),              --상품넘버
   "GOODS_DELIVERY_PRICE" NUMBER(10,0),         
   "GOODS_DELIVERY_DATE" DATE, 
   "GOODS_STATUS" VARCHAR2(50 BYTE), 
   "GOODS_INTRO" VARCHAR2(2000 BYTE), 
   "GOODS_WRITER_INTRO" VARCHAR2(2000 BYTE), 
   "GOODS_PUBLISHER_COMMENT" VARCHAR2(2000 BYTE), 
   "GOODS_RECOMMENDATION" VARCHAR2(2000 BYTE), 
   "GOODS_CONTENTS_ORDER" CLOB, 
   "GOODS_CREDATE" DATE DEFAULT sysdate
   ) ;
--------------------------------------------------------
--  DDL for Table T_SHOPPING_MEMBER
--------------------------------------------------------

  CREATE TABLE "T_SHOPPING_MEMBER" 
   (   "MEMBER_ID" VARCHAR2(20 BYTE) primary key, 
   "MEMBER_PW" VARCHAR2(30 BYTE), 
   "MEMBER_NAME" VARCHAR2(50 BYTE), 
   "MEMBER_GENDER" VARCHAR2(10 BYTE), 
   "TEL1" VARCHAR2(20 BYTE), 
   "TEL2" VARCHAR2(20 BYTE), 
   "TEL3" VARCHAR2(20 BYTE), 
   "HP1" VARCHAR2(20 BYTE), 
   "HP2" VARCHAR2(20 BYTE), 
   "HP3" VARCHAR2(20 BYTE), 
   "SMSSTS_YN" VARCHAR2(20 BYTE), 
   "EMAIL1" VARCHAR2(20 BYTE), 
   "EMAIL2" VARCHAR2(20 BYTE), 
   "EMAILSTS_YN" VARCHAR2(20 BYTE), 
   "ZIPCODE" VARCHAR2(20 BYTE), 
   "ROADADDRESS" VARCHAR2(500 BYTE), 
   "JIBUNADDRESS" VARCHAR2(500 BYTE), 
   "NAMUJIADDRESS" VARCHAR2(500 BYTE), 
   "MEMBER_BIRTH_Y" VARCHAR2(20 BYTE), 
   "MEMBER_BIRTH_M" VARCHAR2(20 BYTE), 
   "MEMBER_BIRTH_D" VARCHAR2(20 BYTE), 
   "MEMBER_BIRTH_GN" VARCHAR2(20 BYTE), 
   "JOINDATE" DATE DEFAULT sysdate, 
   "DEL_YN" VARCHAR2(20 BYTE) DEFAULT 'N'
   ) ;
--------------------------------------------------------
--  DDL for Table T_SHOPPING_ORDER
--------------------------------------------------------

  CREATE TABLE "T_SHOPPING_ORDER" 
   (   "ORDER_SEQ_NUM" NUMBER(20,0) primary key, 
   "ORDER_ID" NUMBER(20,0), 
   "MEMBER_ID" VARCHAR2(20 BYTE), 
   "GOODS_ID" NUMBER(20,0), 
   "ORDERER_NAME" VARCHAR2(50 BYTE), 
   "GOODS_TITLE" VARCHAR2(100 BYTE), 
   "ORDER_GOODS_QTY" NUMBER(5,0), 
   "GOODS_SALES_PRICE" NUMBER(5,0), 
   "GOODS_FILENAME" VARCHAR2(60 BYTE), 
   "RECEIVER_NAME" VARCHAR2(50 BYTE), 
   "RECEIVER_HP1" VARCHAR2(20 BYTE), 
   "RECEIVER_HP2" VARCHAR2(20 BYTE), 
   "RECEIVER_HP3" VARCHAR2(20 BYTE), 
   "RECEIVER_TEL1" VARCHAR2(20 BYTE), 
   "RECEIVER_TEL2" VARCHAR2(20 BYTE), 
   "RECEIVER_TEL3" VARCHAR2(20 BYTE), 
   "DELIVERY_ADDRESS" VARCHAR2(500 BYTE), 
   "DELIVERY_METHOD" VARCHAR2(40 BYTE), 
   "DELIVERY_MESSAGE" VARCHAR2(300 BYTE), 
   "GIFT_WRAPPING" VARCHAR2(20 BYTE), 
   "PAY_METHOD" VARCHAR2(200 BYTE), 
   "CARD_COM_NAME" VARCHAR2(50 BYTE), 
   "CARD_PAY_MONTH" VARCHAR2(20 BYTE), 
   "PAY_ORDERER_HP_NUM" VARCHAR2(20 BYTE), 
   "DELIVERY_STATE" VARCHAR2(20 BYTE) DEFAULT 'delivery_prepared', 
   "PAY_ORDER_TIME" DATE DEFAULT sysdate, 
   "ORDERER_HP" VARCHAR2(50 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table T_SHOPPING_CART
--------------------------------------------------------

  CREATE TABLE "T_SHOPPING_CART" 
   (   "CART_ID" NUMBER(10,0) primary key, 
   "GOODS_ID" NUMBER(20,0), 
   "MEMBER_ID" VARCHAR2(20 BYTE), 
   "DEL_YN" VARCHAR2(20 BYTE) DEFAULT 'N', 
   "CREDATE" DATE DEFAULT sysdate, 
   "CART_GOODS_QTY" NUMBER(4,0) DEFAULT 1
   ) ;
REM INSERTING into T_GOODS_DETAIL_IMAGE
SET DEFINE OFF;
--Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (346,394,'무작정 따라가기 홍콩 마카오.jpg','admin','main_image',to_date('18/10/16','RR/MM/DD'));
--Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (347,394,'무작정 따라가기 홍콩 마카오_상세.jpg','admin','detail_image1',to_date('18/10/16','RR/MM/DD'));
--Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (348,394,'detail2.jpg','admin','detail_image2',to_date('18/10/16','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (349,395,'블랍(루프포함)_메인.jpg','admin','main_image',to_date('18/10/16','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (350,395,'블랍(루프포함)_상세.jpg','admin','detail_image1',to_date('18/10/16','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (351,397,'휴대용_접이식_테이블_메인.jpg','admin','main_image',to_date('18/10/16','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (352,397,'휴대용_접이식_테이블_상세.jpg','admin','detail_image1',to_date('18/10/16','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (353,398,'황동2구 자충매트_메인.jpg','admin','main_image',to_date('18/10/16','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (354,398,'황동2구 자충매트_상세.jpg','admin','detail_image1',to_date('18/10/16','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (299,334,'두랄루민_트렌스폼_미니체어_메인.jpg','admin','main_image',to_date('18/10/16','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (300,334,'두랄루민_트렌스폼_미니체어_상세.jpg','admin','detail_image1',to_date('18/10/16','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (301,335,'리클라이너_체어_메인.jpg','admin','main_image',to_date('18/10/16','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (302,335,'리클라이너_체어_상세.jpg','admin','detail_image1',to_date('18/10/16','RR/MM/DD'));

Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (305,337,'웨일테일_이소가스워머_메인.jpg','admin','main_image',to_date('22/07/04','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (306,337,'웨일테일_이소가스워머_상세.jpg','admin','detail_image1',to_date('22/07/04','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (307,338,'프로스트_아이스_쿨러_20L_메인.jpg','admin','main_image',to_date('18/10/17','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (308,338,'프로스트_아이스_쿨러_20L_상세.jpg','admin','detail_image1',to_date('18/10/17','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (309,339,'폴라리스_드레인 워싱볼_민트_메인.jpg','admin','main_image',to_date('18/10/17','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (310,339,'폴라리스_드레인 워싱볼_민트_상세.jpg','admin','detail_image1',to_date('18/10/17','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (311,340,'헬로스_레더_테이블_매트_메인.jpg','admin','main_image',to_date('18/10/17','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (312,340,'헬로스_레더_테이블_매트_상세.jpg','admin','detail_image1',to_date('18/10/17','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (313,341,'헬로스_멀티팩가방_메인.jpg','admin','main_image',to_date('18/10/17','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (314,341,'헬로스_멀티팩가방_상세.jpg','admin','detail_image1',to_date('18/10/17','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (315,342,'오델로_칼도마_세트_메인.jpg','admin','main_image',to_date('18/10/17','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (316,342,'오델로_칼도마_세트_상세.jpg','admin','detail_image1',to_date('18/10/17','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (317,343,'모닥_스노우플레이크_랜턴_메인.jpg','admin','main_image',to_date('18/10/17','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (339,343,'모닥_스노우플레이크_랜턴_상세.jpg','admin','uploadFile',to_date('18/10/21','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (319,344,'블랙코팅_렉타타프_립스탑_메인.jpg','admin','main_image',to_date('18/10/17','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (320,344,'블랙코팅_렉타타프_립스탑_상세.jpg','admin','detail_image1',to_date('18/10/17','RR/MM/DD'));
--Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (321,345,'main_react.jpg','admin','main_image',to_date('18/10/17','RR/MM/DD'));
--Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (322,345,'detail3.jpg','admin','detail_image1',to_date('18/10/17','RR/MM/DD'));
--Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (323,346,'여행 일본어_메인.jpg','admin','main_image',to_date('18/10/17','RR/MM/DD'));
--Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (324,346,'여행 일본어_상세.jpg','admin','detail_image1',to_date('18/10/17','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (325,347,'빈슨메시프_티클라_메인.jpg','admin','main_image',to_date('18/10/20','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (326,347,'빈슨메시프_티클라_상세.jpg','admin','detail_image1',to_date('18/10/20','RR/MM/DD'));
--Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (327,348,'Java EE 디자이 패턴_메인.jpg','admin','main_image',to_date('18/10/20','RR/MM/DD'));
--Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (328,348,'Java EE 디자이 패턴_상세1.jpg','admin','detail_image1',to_date('18/10/20','RR/MM/DD'));
--Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (330,349,'자바 리팩토링_메인.jpg','admin','main_image',to_date('18/10/20','RR/MM/DD'));
--Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (331,349,'자바 리팩토링_상세1.jpg','admin','detail_image1',to_date('18/10/20','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (334,350,'콜핑_트랙스_메인.jpg','admin','main_image',to_date('18/10/20','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (341,350,'콜핑_트랙스_상세.jpg','admin','uploadFile',to_date('18/10/21','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (337,343,'모닥_스노우플레이크_랜턴_메인.jpg','admin','uploadFile',to_date('18/10/21','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (338,343,'모닥_스노우플레이크_랜턴_상세.jpg','admin','uploadFile',to_date('18/10/21','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (342,354,'노마드_밀리터리_메인.jpg','admin','main_image',to_date('18/10/23','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (343,354,'노마드_밀리터리_상세.jpg','admin','detail_image1',to_date('18/10/23','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (355,356,'웨일테일_이불_침낭_메인.jpg','admin','main_image',to_date('18/10/23','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (356,356,'웨일테일_이불_침낭_상세.jpg','admin','detail_image1',to_date('18/10/23','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (303,336,'웨일테일_매지컬_쉘프_행어_메인.jpg','admin','main_image',to_date('18/10/17','RR/MM/DD'));
Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE,CREDATE) values (304,336,'웨일테일_매지컬_쉘프_행어 상세.jpg','admin','detail_image1',to_date('18/10/17','RR/MM/DD'));

REM INSERTING into T_SHOPPING_GOODS

SET DEFINE OFF;
--Insert into T_SHOPPING_GOODS (GOODS_ID,GOODS_SORT,GOODS_TITLE,GOODS_WRITER,GOODS_PUBLISHER,GOODS_PRICE,GOODS_SALES_PRICE,GOODS_POINT,GOODS_PUBLISHED_DATE,GOODS_TOTAL_PAGE,GOODS_ISBN,GOODS_DELIVERY_PRICE,GOODS_DELIVERY_DATE,GOODS_STATUS,GOODS_INTRO,GOODS_WRITER_INTRO,GOODS_PUBLISHER_COMMENT,GOODS_RECOMMENDATION,GOODS_CREDATE) values (394,'컴퓨터와 인터넷','무작정 따라가기 홍콩 마카오','김수정, 김승남','인포북스',30000,27000,1000,to_date('15/10/16','RR/MM/DD'),1000,'121212',2000,to_date('18/10/18','RR/MM/DD'),'bestseller','이 책을 읽고 나면 프로그래머는 새로운 객체를 찾아서 만들게 될 것이고, 그것을 프로그래밍화 하는 것이 진정한 객체 지향 프로그래밍이라는 사실을 깨닫게 될 것이다.
--
--객체 지향 프로그래밍이란 사람을 ‘주체(subject)’라 하고, 주체가 바라본 대상(사람, 사물, 객체)을 ‘객체(object)’라고 한다. 사람이 일상적으로 보고, 느끼고, 생각하는 관점에서 프로그래밍을 하는 방식이다.
--
--자바를 처음 접하는 사람은 다소 생소한 개념이 나오지만 반복해서 학습을 하다 보면 어느새 프로그래밍에 입문할 수 있다는 사실을 깨닫게 될 것이다. 각 장의 끝에는 연습문제를 두어 독학하기에 적합하다. 또한 저자의 카페(http://cafe.naver.com/standardjava)에서는 이 책의 내용이 담긴 동영상 강좌를 무료로 제공한다.','저자가 오랜 기간 실무에서 습득한 이론 및 평소에 관심이 있던 분야와 학원 강의 중 입문자들이 첫 프로그래밍을 배웠을 때의 낮선 부분과 수업을 진행하면서 어려웠던 여러 가지의 시행착오를 바탕으로 자바를 처음 배우는 입문자가 쉽게 자신의 아이디어를 발휘하여 개발할 수 있게 구성하여 집필했다.
--
--- 전자공학과 졸업
--- 벤처 기업에서 다양한 소프트웨어 개발 참여
--- 대기업의 시스템 통합 작업에 관련된 소프트웨어 개발 참여
--- IT프로그래밍 학원에서 강의
--
--※저자카페 : http://cafe.naver.com/standardjava','이 책의 삼 단계 학습 방법
--
--첫 번째 단계는 프로그래밍 기초 과정이다.
--: 객체 지향 프로그래밍을 잘하기 위해서는 우선 기존 프로그래밍 언어의 발전과 프로그래밍의 특징을 잘 알아야 한다. 그리고 자바 또한 기존 언어에서 사용하는 개념이나 기능을 그대로 사용하기 때문에 가장 먼저 프로그래밍의 기본적인 특징이나 기능을 학습할 필요가 있다.
--
--두 번째 단계는 자바의 객체 지향 개념에 대해 배운다.
--: C언어는 컴퓨터의 수행 과정을 흉내 낸 절차적 언어이다. 이러한 절차적 언어를 하는데 있어 여러 가지 단점들이 나타났다. 대표적으로는 소스 코드의 재사용이다. 지금의 응용 프로그램은 초기에 비해 규모도 커지고 개발 기간도 많이 소모된다. 자바는 기존 기능의 재사용성, 설계의 용이성, 관리의 편리성 등의 이유로 많이 찾고 있다. 이 단계의 핵심은 재사용성 및 프로그래밍 설계와 관련된 객체 지향 개념에 대해 학습한다.
--
--세 번째 단계는 API의 기능을 각 장별로 학습한다.
--: 자바는 약 20년이 넘었기 때문에 이전에 자바로 프로그래밍을 하면서 다른 프로그램에서 많이 사용하는 기능을 미리 자바에서 클래스로 만들어서 제공한다. 이를 API(Application Program Interface)라고 하며, 이 단계의 과정은 사실 다른 언어에서도 지원한다. 그러나 자바는 앞에서 말한 바와 같이 객체 지향 언어이므로 이 모든 API 기능이 객체 지향 개념을 적용하여 제공되고 있다. 따라서 자바의 API를 잘 사용하려면 앞의 객체 지향 개념을 잘 숙지해야 한다.','이 책의 삼 단계 학습 방법
--
--첫 번째 단계는 프로그래밍 기초 과정이다.
--: 객체 지향 프로그래밍을 잘하기 위해서는 우선 기존 프로그래밍 언어의 발전과 프로그래밍의 특징을 잘 알아야 한다. 그리고 자바 또한 기존 언어에서 사용하는 개념이나 기능을 그대로 사용하기 때문에 가장 먼저 프로그래밍의 기본적인 특징이나 기능을 학습할 필요가 있다.
--
--두 번째 단계는 자바의 객체 지향 개념에 대해 배운다.
--: C언어는 컴퓨터의 수행 과정을 흉내 낸 절차적 언어이다. 이러한 절차적 언어를 하는데 있어 여러 가지 단점들이 나타났다. 대표적으로는 소스 코드의 재사용이다. 지금의 응용 프로그램은 초기에 비해 규모도 커지고 개발 기간도 많이 소모된다. 자바는 기존 기능의 재사용성, 설계의 용이성, 관리의 편리성 등의 이유로 많이 찾고 있다. 이 단계의 핵심은 재사용성 및 프로그래밍 설계와 관련된 객체 지향 개념에 대해 학습한다.
--
--세 번째 단계는 API의 기능을 각 장별로 학습한다.
--: 자바는 약 20년이 넘었기 때문에 이전에 자바로 프로그래밍을 하면서 다른 프로그램에서 많이 사용하는 기능을 미리 자바에서 클래스로 만들어서 제공한다. 이를 API(Application Program Interface)라고 하며, 이 단계의 과정은 사실 다른 언어에서도 지원한다. 그러나 자바는 앞에서 말한 바와 같이 객체 지향 언어이므로 이 모든 API 기능이 객체 지향 개념을 적용하여 제공되고 있다. 따라서 자바의 API를 잘 사용하려면 앞의 객체 지향 개념을 잘 숙지해야 한다.',to_date('18/10/16','RR/MM/DD'));
Insert into T_SHOPPING_GOODS (GOODS_ID,GOODS_SORT,GOODS_TITLE,GOODS_WRITER,GOODS_PUBLISHER,GOODS_PRICE,GOODS_SALES_PRICE,GOODS_POINT,GOODS_PUBLISHED_DATE,GOODS_TOTAL_PAGE,GOODS_ISBN,GOODS_DELIVERY_PRICE,GOODS_DELIVERY_DATE,GOODS_STATUS,GOODS_INTRO,GOODS_WRITER_INTRO,GOODS_PUBLISHER_COMMENT,GOODS_RECOMMENDATION,GOODS_CREDATE) values (395,'텐트','블랍(루프포함)-그린',' ','JACKAL',200000,180000,18000,to_date('22/04/12','RR/MM/DD'),3,'248891',18000,to_date('18/10/18','RR/MM/DD'),'bestseller',null,null,null,null,to_date('18/10/16','RR/MM/DD'));
Insert into T_SHOPPING_GOODS (GOODS_ID,GOODS_SORT,GOODS_TITLE,GOODS_WRITER,GOODS_PUBLISHER,GOODS_PRICE,GOODS_SALES_PRICE,GOODS_POINT,GOODS_PUBLISHED_DATE,GOODS_TOTAL_PAGE,GOODS_ISBN,GOODS_DELIVERY_PRICE,GOODS_DELIVERY_DATE,GOODS_STATUS,GOODS_INTRO,GOODS_WRITER_INTRO,GOODS_PUBLISHER_COMMENT,GOODS_RECOMMENDATION,GOODS_CREDATE) values (397,'테이블','휴대용 접이식 테이블 랜턴걸이',' ','노마드',60000,54000,5400,to_date('22/04/01','RR/MM/DD'),15,'268192',5400,to_date('18/10/17','RR/MM/DD'),'bestseller',null,null,null,null,to_date('18/10/16','RR/MM/DD'));
Insert into T_SHOPPING_GOODS (GOODS_ID,GOODS_SORT,GOODS_TITLE,GOODS_WRITER,GOODS_PUBLISHER,GOODS_PRICE,GOODS_SALES_PRICE,GOODS_POINT,GOODS_PUBLISHED_DATE,GOODS_TOTAL_PAGE,GOODS_ISBN,GOODS_DELIVERY_PRICE,GOODS_DELIVERY_DATE,GOODS_STATUS,GOODS_INTRO,GOODS_WRITER_INTRO,GOODS_PUBLISHER_COMMENT,GOODS_RECOMMENDATION,GOODS_CREDATE) values (398,'침구류','노마드 vivid 황동2구 자충매트 민트그레이',' ','노마드',50000,45000,4500,to_date('22/01/22','RR/MM/DD'),27,'296158',4500,to_date('18/10/17','RR/MM/DD'),'bestseller',null,null,null,null,to_date('18/10/16','RR/MM/DD'));
Insert into T_SHOPPING_GOODS (GOODS_ID,GOODS_SORT,GOODS_TITLE,GOODS_WRITER,GOODS_PUBLISHER,GOODS_PRICE,GOODS_SALES_PRICE,GOODS_POINT,GOODS_PUBLISHED_DATE,GOODS_TOTAL_PAGE,GOODS_ISBN,GOODS_DELIVERY_PRICE,GOODS_DELIVERY_DATE,GOODS_STATUS,GOODS_INTRO,GOODS_WRITER_INTRO,GOODS_PUBLISHER_COMMENT,GOODS_RECOMMENDATION,GOODS_CREDATE) values (334,'체어','노마드 두랄루민 트렌스폼 미니체어',' ','노마드',15000,13500,1350,to_date('21/10/27','RR/MM/DD'),51,'221627',1350,to_date('18/10/17','RR/MM/DD'),'bestseller',null,null,null,null,to_date('18/10/16','RR/MM/DD'));
Insert into T_SHOPPING_GOODS (GOODS_ID,GOODS_SORT,GOODS_TITLE,GOODS_WRITER,GOODS_PUBLISHER,GOODS_PRICE,GOODS_SALES_PRICE,GOODS_POINT,GOODS_PUBLISHED_DATE,GOODS_TOTAL_PAGE,GOODS_ISBN,GOODS_DELIVERY_PRICE,GOODS_DELIVERY_DATE,GOODS_STATUS,GOODS_INTRO,GOODS_WRITER_INTRO,GOODS_PUBLISHER_COMMENT,GOODS_RECOMMENDATION,GOODS_CREDATE) values (335,'체어','에이그라운드 리클라이너 체어-아이보리',' ','에이그라운드',75000,67500,6750,to_date('22/07/12','RR/MM/DD'),20,'221874',6750,to_date('18/10/24','RR/MM/DD'),'bestseller',null,null,null,null,to_date('18/10/16','RR/MM/DD'));
Insert into T_SHOPPING_GOODS (GOODS_ID,GOODS_SORT,GOODS_TITLE,GOODS_WRITER,GOODS_PUBLISHER,GOODS_PRICE,GOODS_SALES_PRICE,GOODS_POINT,GOODS_PUBLISHED_DATE,GOODS_TOTAL_PAGE,GOODS_ISBN,GOODS_DELIVERY_PRICE,GOODS_DELIVERY_DATE,GOODS_STATUS,GOODS_INTRO,GOODS_WRITER_INTRO,GOODS_PUBLISHER_COMMENT,GOODS_RECOMMENDATION,GOODS_CREDATE) values (336,'수납용품','웨일테일 매지컬 쉘프 행어',' ','웨일테일',110000,99000,9990,to_date('21/10/02','RR/MM/DD'),7,'266854',999,to_date('22/02/01','RR/MM/DD'),'bestseller',null,null,null,null,to_date('22/02/07','RR/MM/DD'));
Insert into T_SHOPPING_GOODS (GOODS_ID,GOODS_SORT,GOODS_TITLE,GOODS_WRITER,GOODS_PUBLISHER,GOODS_PRICE,GOODS_SALES_PRICE,GOODS_POINT,GOODS_PUBLISHED_DATE,GOODS_TOTAL_PAGE,GOODS_ISBN,GOODS_DELIVERY_PRICE,GOODS_DELIVERY_DATE,GOODS_STATUS,GOODS_INTRO,GOODS_WRITER_INTRO,GOODS_PUBLISHER_COMMENT,GOODS_RECOMMENDATION,GOODS_CREDATE) values (337,'랜턴','웨일테일 이소가스워머(블랙)',' ','웨일테일',30000,30000,2700,to_date('21/12/17','RR/MM/DD'),41,'266871',500,to_date('22/02/01','RR/MM/DD'),'bestseller',null,null,null,null,to_date('22/02/21','RR/MM/DD'));
Insert into T_SHOPPING_GOODS (GOODS_ID,GOODS_SORT,GOODS_TITLE,GOODS_WRITER,GOODS_PUBLISHER,GOODS_PRICE,GOODS_SALES_PRICE,GOODS_POINT,GOODS_PUBLISHED_DATE,GOODS_TOTAL_PAGE,GOODS_ISBN,GOODS_DELIVERY_PRICE,GOODS_DELIVERY_DATE,GOODS_STATUS,GOODS_INTRO,GOODS_WRITER_INTRO,GOODS_PUBLISHER_COMMENT,GOODS_RECOMMENDATION,GOODS_CREDATE) values (338,'수납용품','프로스트 아이스 쿨러 20L 메인',' ','코드26',170000,153000,15300,to_date('22/01/21','RR/MM/DD'),29,'254810',15300,to_date('21/01/21','RR/MM/DD'),'bestseller',null,null,null,null,to_date('22/01/27','RR/MM/DD'));
Insert into T_SHOPPING_GOODS (GOODS_ID,GOODS_SORT,GOODS_TITLE,GOODS_WRITER,GOODS_PUBLISHER,GOODS_PRICE,GOODS_SALES_PRICE,GOODS_POINT,GOODS_PUBLISHED_DATE,GOODS_TOTAL_PAGE,GOODS_ISBN,GOODS_DELIVERY_PRICE,GOODS_DELIVERY_DATE,GOODS_STATUS,GOODS_INTRO,GOODS_WRITER_INTRO,GOODS_PUBLISHER_COMMENT,GOODS_RECOMMENDATION,GOODS_CREDATE) values (339,'기타','폴라리스 드레인 워싱볼 민트',' ','폴라리스',26000,23400,2340,to_date('22/03/16','RR/MM/DD'),53,'247518',2340,to_date('18/10/25','RR/MM/DD'),'bestseller',null,null,null,null,to_date('18/10/17','RR/MM/DD'));
Insert into T_SHOPPING_GOODS (GOODS_ID,GOODS_SORT,GOODS_TITLE,GOODS_WRITER,GOODS_PUBLISHER,GOODS_PRICE,GOODS_SALES_PRICE,GOODS_POINT,GOODS_PUBLISHED_DATE,GOODS_TOTAL_PAGE,GOODS_ISBN,GOODS_DELIVERY_PRICE,GOODS_DELIVERY_DATE,GOODS_STATUS,GOODS_INTRO,GOODS_WRITER_INTRO,GOODS_PUBLISHER_COMMENT,GOODS_RECOMMENDATION,GOODS_CREDATE) values (340,'테이블','헬로스 레더 테이블 매트 L 베이지',' ','헬로스',18000,16200,1620,to_date('22/01/18','RR/MM/DD'),21,'258761',1620,to_date('18/10/25','RR/MM/DD'),'bestseller',null,null,null,null,to_date('18/10/17','RR/MM/DD'));
Insert into T_SHOPPING_GOODS (GOODS_ID,GOODS_SORT,GOODS_TITLE,GOODS_WRITER,GOODS_PUBLISHER,GOODS_PRICE,GOODS_SALES_PRICE,GOODS_POINT,GOODS_PUBLISHED_DATE,GOODS_TOTAL_PAGE,GOODS_ISBN,GOODS_DELIVERY_PRICE,GOODS_DELIVERY_DATE,GOODS_STATUS,GOODS_INTRO,GOODS_WRITER_INTRO,GOODS_PUBLISHER_COMMENT,GOODS_RECOMMENDATION,GOODS_CREDATE) values (341,'수납용품','헬로스 멀티팩가방 아이보리',' ','헬로스',25000,22500,2500,to_date('22/04/11','RR/MM/DD'),14,'261578',2500,to_date('18/10/18','RR/MM/DD'),'bestseller',null,null,null,null,to_date('18/10/17','RR/MM/DD'));
Insert into T_SHOPPING_GOODS (GOODS_ID,GOODS_SORT,GOODS_TITLE,GOODS_WRITER,GOODS_PUBLISHER,GOODS_PRICE,GOODS_SALES_PRICE,GOODS_POINT,GOODS_PUBLISHED_DATE,GOODS_TOTAL_PAGE,GOODS_ISBN,GOODS_DELIVERY_PRICE,GOODS_DELIVERY_DATE,GOODS_STATUS,GOODS_INTRO,GOODS_WRITER_INTRO,GOODS_PUBLISHER_COMMENT,GOODS_RECOMMENDATION,GOODS_CREDATE) values (342,'기타','오델로 칼도마 세트',' ','오델로',80000,72000,7200,to_date('21/12/17','RR/MM/DD'),4,'241621',7200,to_date('18/10/11','RR/MM/DD'),'bestseller',null,null,null,null,to_date('18/10/17','RR/MM/DD'));
Insert into T_SHOPPING_GOODS (GOODS_ID,GOODS_SORT,GOODS_TITLE,GOODS_WRITER,GOODS_PUBLISHER,GOODS_PRICE,GOODS_SALES_PRICE,GOODS_POINT,GOODS_PUBLISHED_DATE,GOODS_TOTAL_PAGE,GOODS_ISBN,GOODS_DELIVERY_PRICE,GOODS_DELIVERY_DATE,GOODS_STATUS,GOODS_INTRO,GOODS_WRITER_INTRO,GOODS_PUBLISHER_COMMENT,GOODS_RECOMMENDATION,GOODS_CREDATE) values (343,'랜턴','모닥 스노우플레이크 랜턴',' ','모닥',50000,45000,4500,to_date('22/06/08','RR/MM/DD'),31,'226104',4500,to_date('18/11/22','RR/MM/DD'),'steadyseller',null,null,null,null,to_date('18/10/17','RR/MM/DD'));
Insert into T_SHOPPING_GOODS (GOODS_ID,GOODS_SORT,GOODS_TITLE,GOODS_WRITER,GOODS_PUBLISHER,GOODS_PRICE,GOODS_SALES_PRICE,GOODS_POINT,GOODS_PUBLISHED_DATE,GOODS_TOTAL_PAGE,GOODS_ISBN,GOODS_DELIVERY_PRICE,GOODS_DELIVERY_DATE,GOODS_STATUS,GOODS_INTRO,GOODS_WRITER_INTRO,GOODS_PUBLISHER_COMMENT,GOODS_RECOMMENDATION,GOODS_CREDATE) values (344,'텐트','폴라리스 블랙코팅 렉타타프 립스탑 300D 초코브라운',' ','폴라리스',300000,270000,27000,to_date('21/10/21','RR/MM/DD'),4,'216249',27000,to_date('18/10/18','RR/MM/DD'),'newbook',null,null,null,null,to_date('18/10/17','RR/MM/DD'));
--Insert into T_SHOPPING_GOODS (GOODS_ID,GOODS_SORT,GOODS_TITLE,GOODS_WRITER,GOODS_PUBLISHER,GOODS_PRICE,GOODS_SALES_PRICE,GOODS_POINT,GOODS_PUBLISHED_DATE,GOODS_TOTAL_PAGE,GOODS_ISBN,GOODS_DELIVERY_PRICE,GOODS_DELIVERY_DATE,GOODS_STATUS,GOODS_INTRO,GOODS_WRITER_INTRO,GOODS_PUBLISHER_COMMENT,GOODS_RECOMMENDATION,GOODS_CREDATE) values (345,'컴퓨터와 인터넷','리액트를 다루는 기술','이순신','민국 출판사',30000,30000,888,to_date('18/10/12','RR/MM/DD'),888,'8888',888,to_date('18/10/18','RR/MM/DD'),'newbook','88','888888','888','888',to_date('18/10/17','RR/MM/DD'));
--Insert into T_SHOPPING_GOODS (GOODS_ID,GOODS_SORT,GOODS_TITLE,GOODS_WRITER,GOODS_PUBLISHER,GOODS_PRICE,GOODS_SALES_PRICE,GOODS_POINT,GOODS_PUBLISHED_DATE,GOODS_TOTAL_PAGE,GOODS_ISBN,GOODS_DELIVERY_PRICE,GOODS_DELIVERY_DATE,GOODS_STATUS,GOODS_INTRO,GOODS_WRITER_INTRO,GOODS_PUBLISHER_COMMENT,GOODS_RECOMMENDATION,GOODS_CREDATE) values (346,'컴퓨터와 인터넷','여행 일본어','이길동','국민 출판사',30000,30000,898,to_date('18/10/23','RR/MM/DD'),8989,'8989',8989,to_date('18/10/18','RR/MM/DD'),'on_sale','8989','8989','8989','8989',to_date('18/10/17','RR/MM/DD'));
Insert into T_SHOPPING_GOODS (GOODS_ID,GOODS_SORT,GOODS_TITLE,GOODS_WRITER,GOODS_PUBLISHER,GOODS_PRICE,GOODS_SALES_PRICE,GOODS_POINT,GOODS_PUBLISHED_DATE,GOODS_TOTAL_PAGE,GOODS_ISBN,GOODS_DELIVERY_PRICE,GOODS_DELIVERY_DATE,GOODS_STATUS,GOODS_INTRO,GOODS_WRITER_INTRO,GOODS_PUBLISHER_COMMENT,GOODS_RECOMMENDATION,GOODS_CREDATE) values (347,'텐트','빈슨메시프 티클라450레드',' ','빈슨메시프',45000,40500,4050,to_date('22/04/02','RR/MM/DD'),8,'269261',4050,to_date('18/10/22','RR/MM/DD'),'steadyseller',null,null,null,null,to_date('18/10/20','RR/MM/DD'));
--Insert into T_SHOPPING_GOODS (GOODS_ID,GOODS_SORT,GOODS_TITLE,GOODS_WRITER,GOODS_PUBLISHER,GOODS_PRICE,GOODS_SALES_PRICE,GOODS_POINT,GOODS_PUBLISHED_DATE,GOODS_TOTAL_PAGE,GOODS_ISBN,GOODS_DELIVERY_PRICE,GOODS_DELIVERY_DATE,GOODS_STATUS,GOODS_INTRO,GOODS_WRITER_INTRO,GOODS_PUBLISHER_COMMENT,GOODS_RECOMMENDATION,GOODS_CREDATE) values (348,'컴퓨터와 인터넷','자바 EE 디자인 패턴','무라트예네르, 알렉스 시돔','길벗',34000,30000,1000,to_date('18/10/18','RR/MM/DD'),1212,'12122222',2000,to_date('18/10/24','RR/MM/DD'),'on_sale','첫 번째 단계는 프로그래밍 기초 과정이다.
--: 객체 지향 프로그래밍을 잘하기 위해서는 우선 기존 프로그래밍 언어의 발전과 프로그래밍의 특징을 잘 알아야 한다. 그리고 자바 또한 기존 언어에서 사용하는 개념이나 기능을 그대로 사용하기 때문에 가장 먼저 프로그래밍의 기본적인 특징이나 기능을 학습할 필요가 있다.','첫 번째 단계는 프로그래밍 기초 과정이다.
--: 객체 지향 프로그래밍을 잘하기 위해서는 우선 기존 프로그래밍 언어의 발전과 프로그래밍의 특징을 잘 알아야 한다. 그리고 자바 또한 기존 언어에서 사용하는 개념이나 기능을 그대로 사용하기 때문에 가장 먼저 프로그래밍의 기본적인 특징이나 기능을 학습할 필요가 있다.','첫 번째 단계는 프로그래밍 기초 과정이다.
--: 객체 지향 프로그래밍을 잘하기 위해서는 우선 기존 프로그래밍 언어의 발전과 프로그래밍의 특징을 잘 알아야 한다. 그리고 자바 또한 기존 언어에서 사용하는 개념이나 기능을 그대로 사용하기 때문에 가장 먼저 프로그래밍의 기본적인 특징이나 기능을 학습할 필요가 있다.','첫 번째 단계는 프로그래밍 기초 과정이다.
--: 객체 지향 프로그래밍을 잘하기 위해서는 우선 기존 프로그래밍 언어의 발전과 프로그래밍의 특징을 잘 알아야 한다. 그리고 자바 또한 기존 언어에서 사용하는 개념이나 기능을 그대로 사용하기 때문에 가장 먼저 프로그래밍의 기본적인 특징이나 기능을 학습할 필요가 있다.',to_date('18/10/20','RR/MM/DD'));
--Insert into T_SHOPPING_GOODS (GOODS_ID,GOODS_SORT,GOODS_TITLE,GOODS_WRITER,GOODS_PUBLISHER,GOODS_PRICE,GOODS_SALES_PRICE,GOODS_POINT,GOODS_PUBLISHED_DATE,GOODS_TOTAL_PAGE,GOODS_ISBN,GOODS_DELIVERY_PRICE,GOODS_DELIVERY_DATE,GOODS_STATUS,GOODS_INTRO,GOODS_WRITER_INTRO,GOODS_PUBLISHER_COMMENT,GOODS_RECOMMENDATION,GOODS_CREDATE) values (349,'컴퓨터와 인터넷','자바로 배우는 리팩토링','유키히로시','길벗',34000,30000,1000,to_date('18/10/02','RR/MM/DD'),1111,'12122222',2000,to_date('18/10/25','RR/MM/DD'),'on_sale','저자가 오랜 기간 실무에서 습득한 이론 및 평소에 관심이 있던 분야와 학원 강의 중 입문자들이 첫 프로그래밍을 배웠을 때의 낮선 부분과 수업을 진행하면서 어려웠던 여러 가지의 시행착오를 바탕으로 자바를 처음 배우는 입문자가 쉽게 자신의 아이디어를 발휘하여 개발할 수 있게 구성하여 집필했다.','저자가 오랜 기간 실무에서 습득한 이론 및 평소에 관심이 있던 분야와 학원 강의 중 입문자들이 첫 프로그래밍을 배웠을 때의 낮선 부분과 수업을 진행하면서 어려웠던 여러 가지의 시행착오를 바탕으로 자바를 처음 배우는 입문자가 쉽게 자신의 아이디어를 발휘하여 개발할 수 있게 구성하여 집필했다.','저자가 오랜 기간 실무에서 습득한 이론 및 평소에 관심이 있던 분야와 학원 강의 중 입문자들이 첫 프로그래밍을 배웠을 때의 낮선 부분과 수업을 진행하면서 어려웠던 여러 가지의 시행착오를 바탕으로 자바를 처음 배우는 입문자가 쉽게 자신의 아이디어를 발휘하여 개발할 수 있게 구성하여 집필했다.','저자가 오랜 기간 실무에서 습득한 이론 및 평소에 관심이 있던 분야와 학원 강의 중 입문자들이 첫 프로그래밍을 배웠을 때의 낮선 부분과 수업을 진행하면서 어려웠던 여러 가지의 시행착오를 바탕으로 자바를 처음 배우는 입문자가 쉽게 자신의 아이디어를 발휘하여 개발할 수 있게 구성하여 집필했다.',to_date('18/10/20','RR/MM/DD'));
Insert into T_SHOPPING_GOODS (GOODS_ID,GOODS_SORT,GOODS_TITLE,GOODS_WRITER,GOODS_PUBLISHER,GOODS_PRICE,GOODS_SALES_PRICE,GOODS_POINT,GOODS_PUBLISHED_DATE,GOODS_TOTAL_PAGE,GOODS_ISBN,GOODS_DELIVERY_PRICE,GOODS_DELIVERY_DATE,GOODS_STATUS,GOODS_INTRO,GOODS_WRITER_INTRO,GOODS_PUBLISHER_COMMENT,GOODS_RECOMMENDATION,GOODS_CREDATE) values (350,'텐트','콜핑 트랙스',' ','콜핑',700000,630000,63000,to_date('22/05/08','RR/MM/DD'),11,'295152',63000,to_date('18/10/22','RR/MM/DD'),'steadyseller',null,null,null,null,to_date('18/10/20','RR/MM/DD'));
Insert into T_SHOPPING_GOODS (GOODS_ID,GOODS_SORT,GOODS_TITLE,GOODS_WRITER,GOODS_PUBLISHER,GOODS_PRICE,GOODS_SALES_PRICE,GOODS_POINT,GOODS_PUBLISHED_DATE,GOODS_TOTAL_PAGE,GOODS_ISBN,GOODS_DELIVERY_PRICE,GOODS_DELIVERY_DATE,GOODS_STATUS,GOODS_INTRO,GOODS_WRITER_INTRO,GOODS_PUBLISHER_COMMENT,GOODS_RECOMMENDATION,GOODS_CREDATE) values (354,'기타','20L 밀리터리 샤워백 캠프샤워기',' ','노마드',24000,21600,2160,to_date('22/03/12','RR/MM/DD'),15,'2112126',3000,to_date('22/07/14','RR/MM/DD'),'bestseller',null,null,null,null,to_date('22/07/23','RR/MM/DD'));
Insert into T_SHOPPING_GOODS (GOODS_ID,GOODS_SORT,GOODS_TITLE,GOODS_WRITER,GOODS_PUBLISHER,GOODS_PRICE,GOODS_SALES_PRICE,GOODS_POINT,GOODS_PUBLISHED_DATE,GOODS_TOTAL_PAGE,GOODS_ISBN,GOODS_DELIVERY_PRICE,GOODS_DELIVERY_DATE,GOODS_STATUS,GOODS_INTRO,GOODS_WRITER_INTRO,GOODS_PUBLISHER_COMMENT,GOODS_RECOMMENDATION,GOODS_CREDATE) values (356,'침구류','웨일테일 이불 침낭(아이보리)',' ','웨일테일',54000,48600,4860,to_date('22/07/16','RR/MM/DD'),42,'26211122',2000,to_date('22/06/12','RR/MM/DD'),'bestseller',null,null,null,null,to_date('22/06/10','RR/MM/DD'));
REM INSERTING into T_SHOPPING_MEMBER
SET DEFINE OFF;
Insert into T_SHOPPING_MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_GENDER,TEL1,TEL2,TEL3,HP1,HP2,HP3,SMSSTS_YN,EMAIL1,EMAIL2,EMAILSTS_YN,ZIPCODE,ROADADDRESS,JIBUNADDRESS,NAMUJIADDRESS,MEMBER_BIRTH_Y,MEMBER_BIRTH_M,MEMBER_BIRTH_D,MEMBER_BIRTH_GN,JOINDATE,DEL_YN) values ('admin','1212','어드민','101','02','1111','2222','010','1111','2222','Y','admin','test.com,non','Y','06253','서울 강남구 강남대로 298 (역삼동)','서울 강남구 역삼동 838','럭키빌딩 101호','2000','5','10','2',to_date('18/10/16','RR/MM/DD'),'N');
Insert into T_SHOPPING_MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_GENDER,TEL1,TEL2,TEL3,HP1,HP2,HP3,SMSSTS_YN,EMAIL1,EMAIL2,EMAILSTS_YN,ZIPCODE,ROADADDRESS,JIBUNADDRESS,NAMUJIADDRESS,MEMBER_BIRTH_Y,MEMBER_BIRTH_M,MEMBER_BIRTH_D,MEMBER_BIRTH_GN,JOINDATE,DEL_YN) values ('lee','1212','이병승','101','02','1111','2222','010','2222','3333','Y','lee','test.com,non','Y','13547','경기 성남시 분당구 고기로 25 (동원동)','경기 성남시 분당구 동원동 79-1','럭키빌딩 101호','2000','5','10','2',to_date('18/10/23','RR/MM/DD'),'N');
REM INSERTING into T_SHOPPING_ORDER
SET DEFINE OFF;
Insert into T_SHOPPING_ORDER (ORDER_SEQ_NUM,ORDER_ID,MEMBER_ID,GOODS_ID,ORDERER_NAME,GOODS_TITLE,ORDER_GOODS_QTY,GOODS_SALES_PRICE,GOODS_FILENAME,RECEIVER_NAME,RECEIVER_HP1,RECEIVER_HP2,RECEIVER_HP3,RECEIVER_TEL1,RECEIVER_TEL2,RECEIVER_TEL3,DELIVERY_ADDRESS,DELIVERY_METHOD,DELIVERY_MESSAGE,GIFT_WRAPPING,PAY_METHOD,CARD_COM_NAME,CARD_PAY_MONTH,PAY_ORDERER_HP_NUM,DELIVERY_STATE,PAY_ORDER_TIME,ORDERER_HP) values (88,92,'lee',344,'이병승','초보자를 위한 자바프로그래밍',1,30000,'image1.jpg','이병승','010','2222','3333','02','1111','2222','우편번호:13547<br>도로명 주소:경기 성남시 분당구 고기로 25 (동원동)<br>[지번 주소:경기 성남시 분당구 동원동 79-1]<br>럭키빌딩 101호','일반택배',null,'no','신용카드<Br>카드사:삼성<br>할부개월수:일시불','삼성','일시불','해당없음','cancel_order',to_date('18/10/23','RR/MM/DD'),'010-2222-3333');
Insert into T_SHOPPING_ORDER (ORDER_SEQ_NUM,ORDER_ID,MEMBER_ID,GOODS_ID,ORDERER_NAME,GOODS_TITLE,ORDER_GOODS_QTY,GOODS_SALES_PRICE,GOODS_FILENAME,RECEIVER_NAME,RECEIVER_HP1,RECEIVER_HP2,RECEIVER_HP3,RECEIVER_TEL1,RECEIVER_TEL2,RECEIVER_TEL3,DELIVERY_ADDRESS,DELIVERY_METHOD,DELIVERY_MESSAGE,GIFT_WRAPPING,PAY_METHOD,CARD_COM_NAME,CARD_PAY_MONTH,PAY_ORDERER_HP_NUM,DELIVERY_STATE,PAY_ORDER_TIME,ORDERER_HP) values (89,93,'lee',354,'이병승','모두의 딥러닝',1,21600,'모두의 딥러닝_메인.jpg','이병승','010','2222','3333','02','1111','2222','우편번호:13547<br>도로명 주소:경기 성남시 분당구 고기로 25 (동원동)<br>[지번 주소:경기 성남시 분당구 동원동 79-1]<br>럭키빌딩 101호','일반택배',null,'no','신용카드<Br>카드사:삼성<br>할부개월수:일시불','삼성','일시불','해당없음','delivering',to_date('18/10/23','RR/MM/DD'),'010-2222-3333');
Insert into T_SHOPPING_ORDER (ORDER_SEQ_NUM,ORDER_ID,MEMBER_ID,GOODS_ID,ORDERER_NAME,GOODS_TITLE,ORDER_GOODS_QTY,GOODS_SALES_PRICE,GOODS_FILENAME,RECEIVER_NAME,RECEIVER_HP1,RECEIVER_HP2,RECEIVER_HP3,RECEIVER_TEL1,RECEIVER_TEL2,RECEIVER_TEL3,DELIVERY_ADDRESS,DELIVERY_METHOD,DELIVERY_MESSAGE,GIFT_WRAPPING,PAY_METHOD,CARD_COM_NAME,CARD_PAY_MONTH,PAY_ORDERER_HP_NUM,DELIVERY_STATE,PAY_ORDER_TIME,ORDERER_HP) values (90,94,'lee',354,'이병승','모두의 딥러닝',1,21600,'모두의 딥러닝_메인.jpg','이병승','010','2222','3333','02','1111','2222','우편번호:13547<br>도로명 주소:경기 성남시 분당구 고기로 25 (동원동)<br>[지번 주소:경기 성남시 분당구 동원동 79-1]<br>럭키빌딩 101호','일반택배',null,'no','신용카드<Br>카드사:삼성<br>할부개월수:일시불','삼성','일시불','해당없음','cancel_order',to_date('18/10/27','RR/MM/DD'),'010-2222-3333');
REM INSERTING into T_SHOPPING_CART
SET DEFINE OFF;

drop sequence ORDER_SEQ_NUM;
drop sequence SEQ_GOODS_ID;
drop sequence SEQ_IMAGE_ID;
drop sequence SEQ_ORDER_ID;
--------------------------------------------------------
--  DDL for Sequence ORDER_SEQ_NUM
--------------------------------------------------------

   CREATE SEQUENCE  "ORDER_SEQ_NUM"  MINVALUE 0 MAXVALUE 10000000 INCREMENT BY 1 START WITH 400 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_GOODS_ID
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_GOODS_ID"  MINVALUE 100 MAXVALUE 1000000 INCREMENT BY 1 START WITH 400 CACHE 20 ORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_IMAGE_ID
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_IMAGE_ID"  MINVALUE 1 MAXVALUE 11111111 INCREMENT BY 1 START WITH 400 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_ORDER_ID
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_ORDER_ID"  MINVALUE 0 MAXVALUE 10000000 INCREMENT BY 1 START WITH 400 NOCACHE  ORDER  NOCYCLE ;
   
   SELECT * FROM t_goods_detail_image;
   
  SELECT * FROM t_shopping_goods;
   
   COMMIT;
   