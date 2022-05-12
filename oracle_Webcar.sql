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

-- ���� �ڵ��� ������ �Է�
insert into rentCar values(1, '�׷���', 3, 220420, 5, '�����ڵ���', 'hyundaiModel001.png', '������: ����� ���ʱ� �帪�� 12 â����: ���ֿ� ���ΰ�: New Thinking New Possibilities');
insert into rentCar values(2, '�׶�ĭ', 3, 250000, 5, '�����ڵ���', 'hyundaiModel002.png', '������: ����� ���ʱ� �帪�� 12 â����: ���ֿ� ���ΰ�: New Thinking New Possibilities');
insert into rentCar values(3, '����ũ����', 3, 300000, 8, '�����ڵ���', 'hyundaiModel003.png', '������: ����� ���ʱ� �帪�� 12 â����: ���ֿ� ���ΰ�: New Thinking New Possibilities');
insert into rentCar values(4, '�ƽ�ũ����', 3, 270000, 8, '�����ڵ���', 'hyundaiModel004.png', '������: ����� ���ʱ� �帪�� 12 â����: ���ֿ� ���ΰ�: New Thinking New Possibilities');
insert into rentCar values(5, '�Ӹ����̵�', 3, 220420, 5, '�����ڵ���', 'hyundaiModel005.png', '������: ����� ���ʱ� �帪�� 12 â����: ���ֿ� ���ΰ�: New Thinking New Possibilities');

-- ���� �ڵ��� ������ �Է�
insert into rentCar values(6, '���ڶ�', 2, 320420, 4, '�����ڵ���', 'hyundaiModel006.png', '������: ����� ���ʱ� �帪�� 12 â����: ���ֿ� ���ΰ�: New Thinking New Possibilities');
insert into rentCar values(7, '�Ÿ3', 2, 270000, 5, '�����ڵ���', 'hyundaiModel007.png', '������: ����� ���ʱ� �帪�� 12 â����: ���ֿ� ���ΰ�: New Thinking New Possibilities');
insert into rentCar values(8, 'EF�Ÿ', 2, 300000, 5, '�����ڵ���', 'hyundaiModel008.png', '������: ����� ���ʱ� �帪�� 12 â����: ���ֿ� ���ΰ�: New Thinking New Possibilities');
insert into rentCar values(9, '�Ÿ', 2, 270000, 8, '�����ڵ���', 'hyundaiModel009.png', '������: ����� ���ʱ� �帪�� 12 â����: ���ֿ� ���ΰ�: New Thinking New Possibilities');
insert into rentCar values(10, 'LF�ŸHEV', 2, 400420, 5, '�����ڵ���', 'hyundaiModel010.png', '������: ����� ���ʱ� �帪�� 12 â����: ���ֿ� ���ΰ�: New Thinking New Possibilities');


-- ���� �ڵ��� ������ �Է�
insert into rentCar values(11, '����2', 1, 200420, 5, '�����ڵ���', 'hyundaiModel011.png', '������: ����� ���ʱ� �帪�� 12 â����: ���ֿ� ���ΰ�: New Thinking New Possibilities');
insert into rentCar values(12, '����X', 1, 220000, 5, '�����ڵ���', 'hyundaiModel012.png', '������: ����� ���ʱ� �帪�� 12 â����: ���ֿ� ���ΰ�: New Thinking New Possibilities');
insert into rentCar values(13, '������Ʈ', 1, 300000, 8, '�����ڵ���', 'hyundaiModel013.png', '������: ����� ���ʱ� �帪�� 12 â����: ���ֿ� ���ΰ�: New Thinking New Possibilities');
insert into rentCar values(14, '������', 1, 270000, 8, '�����ڵ���', 'hyundaiModel014.png', '������: ����� ���ʱ� �帪�� 12 â����: ���ֿ� ���ΰ�: New Thinking New Possibilities');
insert into rentCar values(15, '��Ŭ��', 1, 250420, 5, '�����ڵ���', 'hyundaiModel015.png', '������: ����� ���ʱ� �帪�� 12 â����: ���ֿ� ���ΰ�: New Thinking New Possibilities');


-- volvo �ڵ��� ������ �Է�
insert into rentCar values(16, 'S80', 3, 630891, 6, '�����ڵ���', 'volvoModel001.png', '������: ������ ����Ʈ��Ÿ������ ���׺��� â����: �ƻ縣 ���긮����, ����Ÿ�� �󸣼� ���ΰ�: Design around you');
insert into rentCar values(17, 'S802', 3, 530123, 6, '�����ڵ���', 'volvoModel002.png', '������: ������ ����Ʈ��Ÿ������ ���׺��� â����: �ƻ縣 ���긮����, ����Ÿ�� �󸣼� ���ΰ�: Design around you');
insert into rentCar values(18, 'S90', 3, 930000, 6, '�����ڵ���', 'volvoModel003.png', '������: ������ ����Ʈ��Ÿ������ ���׺��� â����: �ƻ縣 ���긮����, ����Ÿ�� �󸣼� ���ΰ�: Design around you');
insert into rentCar values(19, 'S90X', 3, 530000, 6, '�����ڵ���', 'volvoModel004.png', '������: ������ ����Ʈ��Ÿ������ ���׺��� â����: �ƻ縣 ���긮����, ����Ÿ�� �󸣼� ���ΰ�: Design around you');
insert into rentCar values(20, 'V90', 3, 930891, 6, '�����ڵ���', 'volvoModel005.png', '������: ������ ����Ʈ��Ÿ������ ���׺��� â����: �ƻ縣 ���긮����, ����Ÿ�� �󸣼� ���ΰ�: Design around you');


-- volvo �ڵ��� ������ �Է�
insert into rentCar values(21, 'XC40', 2, 630891, 6, '�����ڵ���', 'volvoModel006.png', '������: ������ ����Ʈ��Ÿ������ ���׺��� â����: �ƻ縣 ���긮����, ����Ÿ�� �󸣼� ���ΰ�: Design around you');
insert into rentCar values(22, 'XC40Recharge', 2, 530891, 6, '�����ڵ���', 'volvoModel007.png', '������: ������ ����Ʈ��Ÿ������ ���׺��� â����: �ƻ縣 ���긮����, ����Ÿ�� �󸣼� ���ΰ�: Design around you');
insert into rentCar values(23, 'XC60', 2, 930000, 6, '�����ڵ���', 'volvoModel008.png', '������: ������ ����Ʈ��Ÿ������ ���׺��� â����: �ƻ縣 ���긮����, ����Ÿ�� �󸣼� ���ΰ�: Design around you');
insert into rentCar values(24, 'V70XC', 2, 530000, 6, '�����ڵ���', 'volvoModel009.png', '������: ������ ����Ʈ��Ÿ������ ���׺��� â����: �ƻ縣 ���긮����, ����Ÿ�� �󸣼� ���ΰ�: Design around you');
insert into rentCar values(25, 'XC70', 2, 930891, 6, '�����ڵ���', 'volvoModel010.png', '������: ������ ����Ʈ��Ÿ������ ���׺��� â����: �ƻ縣 ���긮����, ����Ÿ�� �󸣼� ���ΰ�: Design around you');


-- volvo �ڵ��� ������ �Է�
insert into rentCar values(26, 'S40', 1, 630891, 6, '�����ڵ���', 'volvoModel011.png', '������: ������ ����Ʈ��Ÿ������ ���׺��� â����: �ƻ縣 ���긮����, ����Ÿ�� �󸣼� ���ΰ�: Design around you');
insert into rentCar values(27, 'S60', 1, 530000, 6, '�����ڵ���', 'volvoModel012.png', '������: ������ ����Ʈ��Ÿ������ ���׺��� â����: �ƻ縣 ���긮����, ����Ÿ�� �󸣼� ���ΰ�: Design around you');
insert into rentCar values(28, 'S60X', 1, 930000, 6, '�����ڵ���', 'volvoModel013.png', '������: ������ ����Ʈ��Ÿ������ ���׺��� â����: �ƻ縣 ���긮����, ����Ÿ�� �󸣼� ���ΰ�: Design around you');
insert into rentCar values(29, 'V60', 1, 530000, 6, '�����ڵ���', 'volvoModel014.png', '������: ������ ����Ʈ��Ÿ������ ���׺��� â����: �ƻ縣 ���긮����, ����Ÿ�� �󸣼� ���ΰ�: Design around you');
insert into rentCar values(30, 'V60Cross', 1, 930891, 6, '�����ڵ���', 'volvoModel015.png', '������: ������ ����Ʈ��Ÿ������ ���׺��� â����: �ƻ縣 ���긮����, ����Ÿ�� �󸣼� ���ΰ�: Design around you');

-- kia �ڵ��� ������ �Է�
insert into rentCar values(31, 'kiaS40', 2, 330891, 6, '����ڵ���', 'kiaModel001.png', '������: ����� ���ʱ� �帪�� 12 â����: ���ֿ� ���ΰ�: New Thinking New Possibilities');
insert into rentCar values(32, 'kiaS60', 2, 430000, 6, '����ڵ���', 'kiaModel002.png', '������: ����� ���ʱ� �帪�� 12 â����: ���ֿ� ���ΰ�: New Thinking New Possibilities');
insert into rentCar values(33, 'kiaS60X', 2, 530000, 6, '����ڵ���', 'kiaModel003.png', '������: ����� ���ʱ� �帪�� 12 â����: ���ֿ� ���ΰ�: New Thinking New Possibilities');
insert into rentCar values(34, 'kiaV60', 2, 530000, 6, '����ڵ���', 'kiaModel004.png', '������: ����� ���ʱ� �帪�� 12 â����: ���ֿ� ���ΰ�: New Thinking New Possibilities');
insert into rentCar values(35, 'kiaV60Cross', 2, 730891, 6, '����ڵ���', 'kiaModel005.png', '������: ����� ���ʱ� �帪�� 12 â����: ���ֿ� ���ΰ�: New Thinking New Possibilities');



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
















