ALTER TABLE shangpinxinxi ADD COLUMN cunfanghuowei varchar(200) DEFAULT NULL COMMENT '存放货位' AFTER shengchanpicihao;

ALTER TABLE shangpinruku ADD COLUMN cunfanghuowei varchar(200) DEFAULT NULL COMMENT '存放货位' AFTER shengchanpicihao;

ALTER TABLE chukuxinxi ADD COLUMN cunfanghuowei varchar(200) DEFAULT NULL COMMENT '存放货位' AFTER guige;
