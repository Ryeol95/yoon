create sequence car_seq
	start with 1
	increment by 1
	minvalue 1
	maxvalue 10000
	nocycle;

create table rentCar(
	no number primary key,
	carname varchar2(30),
	category number,
	price number,
	usepeople number,
	company varchar2(30),
	img varchar2(50),
	info varchar2(200)
); 


commit

select * from tab;

-- 현대 자동차 대형모델 입력
insert into rentCar values(1, '그랜저', 3, 220420, 5, '현대자동차', 'hyundaiModel001.png', '소재지: 서울시 서초구 헌릉로 12 창립자: 정주영 슬로건: New Thinking New Possibilities');
insert into rentCar values(2, '테라칸', 3, 250000, 5, '현대자동차', 'hyundaiModel002.png', '소재지: 서울시 서초구 헌릉로 12 창립자: 정주영 슬로건: New Thinking New Possibilities');
insert into rentCar values(3, '베라크루즈', 3, 300000, 8, '현대자동차', 'hyundaiModel003.png', '소재지: 서울시 서초구 헌릉로 12 창립자: 정주영 슬로건: New Thinking New Possibilities');
insert into rentCar values(4, '맥스크루즈', 3, 270000, 8, '현대자동차', 'hyundaiModel004.png', '소재지: 서울시 서초구 헌릉로 12 창립자: 정주영 슬로건: New Thinking New Possibilities');
insert into rentCar values(5, '팰리세이드', 3, 220420, 5, '현대자동차', 'hyundaiModel005.png', '소재지: 서울시 서초구 헌릉로 12 창립자: 정주영 슬로건: New Thinking New Possibilities');

-- 현대 자동차 중형모델 입력
insert into rentCar values(6, '스텔라', 2, 320420, 4, '현대자동차', 'hyundaiModel006.png', '소재지: 서울시 서초구 헌릉로 12 창립자: 정주영 슬로건: New Thinking New Possibilities');
insert into rentCar values(7, '쏘나타3', 2, 270000, 5, '현대자동차', 'hyundaiModel007.png', '소재지: 서울시 서초구 헌릉로 12 창립자: 정주영 슬로건: New Thinking New Possibilities');
insert into rentCar values(8, 'EF쏘나타', 2, 300000, 5, '현대자동차', 'hyundaiModel008.png', '소재지: 서울시 서초구 헌릉로 12 창립자: 정주영 슬로건: New Thinking New Possibilities');
insert into rentCar values(9, '쏘나타', 2, 270000, 8, '현대자동차', 'hyundaiModel009.png', '소재지: 서울시 서초구 헌릉로 12 창립자: 정주영 슬로건: New Thinking New Possibilities');
insert into rentCar values(10, 'LF쏘나타HEV', 2, 400420, 5, '현대자동차', 'hyundaiModel010.png', '소재지: 서울시 서초구 헌릉로 12 창립자: 정주영 슬로건: New Thinking New Possibilities');


-- 현대 자동차 소형모델 입력
insert into rentCar values(11, '포니2', 1, 200420, 5, '현대자동차', 'hyundaiModel011.png', '소재지: 서울시 서초구 헌릉로 12 창립자: 정주영 슬로건: New Thinking New Possibilities');
insert into rentCar values(12, '엑셀X', 1, 220000, 5, '현대자동차', 'hyundaiModel012.png', '소재지: 서울시 서초구 헌릉로 12 창립자: 정주영 슬로건: New Thinking New Possibilities');
insert into rentCar values(13, '뉴엑센트', 1, 300000, 8, '현대자동차', 'hyundaiModel013.png', '소재지: 서울시 서초구 헌릉로 12 창립자: 정주영 슬로건: New Thinking New Possibilities');
insert into rentCar values(14, '베르나', 1, 270000, 8, '현대자동차', 'hyundaiModel014.png', '소재지: 서울시 서초구 헌릉로 12 창립자: 정주영 슬로건: New Thinking New Possibilities');
insert into rentCar values(15, '뉴클릭', 1, 250420, 5, '현대자동차', 'hyundaiModel015.png', '소재지: 서울시 서초구 헌릉로 12 창립자: 정주영 슬로건: New Thinking New Possibilities');


-- volvo 자동차 대형모델 입력
insert into rentCar values(16, 'S80', 3, 630891, 6, '볼보자동차', 'volvoModel001.png', '소재지: 스웨덴 베스트라여타란드주 예테보리 창립자: 아사르 가브리엘손, 구스타프 라르손 슬로건: Design around you');
insert into rentCar values(17, 'S802', 3, 530123, 6, '볼보자동차', 'volvoModel002.png', '소재지: 스웨덴 베스트라여타란드주 예테보리 창립자: 아사르 가브리엘손, 구스타프 라르손 슬로건: Design around you');
insert into rentCar values(18, 'S90', 3, 930000, 6, '볼보자동차', 'volvoModel003.png', '소재지: 스웨덴 베스트라여타란드주 예테보리 창립자: 아사르 가브리엘손, 구스타프 라르손 슬로건: Design around you');
insert into rentCar values(19, 'S90X', 3, 530000, 6, '볼보자동차', 'volvoModel004.png', '소재지: 스웨덴 베스트라여타란드주 예테보리 창립자: 아사르 가브리엘손, 구스타프 라르손 슬로건: Design around you');
insert into rentCar values(20, 'V90', 3, 930891, 6, '볼보자동차', 'volvoModel005.png', '소재지: 스웨덴 베스트라여타란드주 예테보리 창립자: 아사르 가브리엘손, 구스타프 라르손 슬로건: Design around you');


-- volvo 자동차 중형모델 입력
insert into rentCar values(21, 'XC40', 2, 630891, 6, '볼보자동차', 'volvoModel006.png', '소재지: 스웨덴 베스트라여타란드주 예테보리 창립자: 아사르 가브리엘손, 구스타프 라르손 슬로건: Design around you');
insert into rentCar values(22, 'XC40Recharge', 2, 530891, 6, '볼보자동차', 'volvoModel007.png', '소재지: 스웨덴 베스트라여타란드주 예테보리 창립자: 아사르 가브리엘손, 구스타프 라르손 슬로건: Design around you');
insert into rentCar values(23, 'XC60', 2, 930000, 6, '볼보자동차', 'volvoModel008.png', '소재지: 스웨덴 베스트라여타란드주 예테보리 창립자: 아사르 가브리엘손, 구스타프 라르손 슬로건: Design around you');
insert into rentCar values(24, 'V70XC', 2, 530000, 6, '볼보자동차', 'volvoModel009.png', '소재지: 스웨덴 베스트라여타란드주 예테보리 창립자: 아사르 가브리엘손, 구스타프 라르손 슬로건: Design around you');
insert into rentCar values(25, 'XC70', 2, 930891, 6, '볼보자동차', 'volvoModel010.png', '소재지: 스웨덴 베스트라여타란드주 예테보리 창립자: 아사르 가브리엘손, 구스타프 라르손 슬로건: Design around you');


-- volvo 자동차 소형모델 입력
insert into rentCar values(26, 'S40', 1, 630891, 6, '볼보자동차', 'volvoModel011.png', '소재지: 스웨덴 베스트라여타란드주 예테보리 창립자: 아사르 가브리엘손, 구스타프 라르손 슬로건: Design around you');
insert into rentCar values(27, 'S60', 1, 530000, 6, '볼보자동차', 'volvoModel012.png', '소재지: 스웨덴 베스트라여타란드주 예테보리 창립자: 아사르 가브리엘손, 구스타프 라르손 슬로건: Design around you');
insert into rentCar values(28, 'S60X', 1, 930000, 6, '볼보자동차', 'volvoModel013.png', '소재지: 스웨덴 베스트라여타란드주 예테보리 창립자: 아사르 가브리엘손, 구스타프 라르손 슬로건: Design around you');
insert into rentCar values(29, 'V60', 1, 530000, 6, '볼보자동차', 'volvoModel014.png', '소재지: 스웨덴 베스트라여타란드주 예테보리 창립자: 아사르 가브리엘손, 구스타프 라르손 슬로건: Design around you');
insert into rentCar values(30, 'V60Cross', 1, 930891, 6, '볼보자동차', 'volvoModel015.png', '소재지: 스웨덴 베스트라여타란드주 예테보리 창립자: 아사르 가브리엘손, 구스타프 라르손 슬로건: Design around you');

-- kia 자동차 중형모델 입력
insert into rentCar values(31, 'kiaS40', 2, 330891, 6, '기아자동차', 'kiaModel001.png', '소재지: 서울시 서초구 헌릉로 12 창립자: 정주영 슬로건: New Thinking New Possibilities');
insert into rentCar values(32, 'kiaS60', 2, 430000, 6, '기아자동차', 'kiaModel002.png', '소재지: 서울시 서초구 헌릉로 12 창립자: 정주영 슬로건: New Thinking New Possibilities');
insert into rentCar values(33, 'kiaS60X', 2, 530000, 6, '기아자동차', 'kiaModel003.png', '소재지: 서울시 서초구 헌릉로 12 창립자: 정주영 슬로건: New Thinking New Possibilities');
insert into rentCar values(34, 'kiaV60', 2, 530000, 6, '기아자동차', 'kiaModel004.png', '소재지: 서울시 서초구 헌릉로 12 창립자: 정주영 슬로건: New Thinking New Possibilities');
insert into rentCar values(35, 'kiaV60Cross', 2, 730891, 6, '기아자동차', 'kiaModel005.png', '소재지: 서울시 서초구 헌릉로 12 창립자: 정주영 슬로건: New Thinking New Possibilities');



select * from rentCar;

delete from rentCar where no = 1;

drop table rentCar;
drop sequence car_seq;


create sequence reserve_seq
	start with 1
	increment by 1
	minvalue 1
	maxvalue 10000
	nocycle
	nocache;


create table CarReserve (
	reserveNo number primary key,
	id varchar2(30)not null,
	no number not null,
	qty number not null,
	dday number not null,
	rday varchar2(30) not null,
	insurance number not null,
	wifi number not null,
	babyseat number not null,
	navination number not null
);


select * from tab;
















