ALTER TABLE `shangpinxinxi`
ADD COLUMN `shengchanpicihao` varchar(200) DEFAULT NULL COMMENT '生产批次号' AFTER `guige`;

ALTER TABLE `shangpinruku`
ADD COLUMN `shengchanpicihao` varchar(200) DEFAULT NULL COMMENT '生产批次号' AFTER `guige`;
