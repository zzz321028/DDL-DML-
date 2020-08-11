#DDL

#显示所有数据库：
show databases;

#进入某个数据库：
use db_name;

#创建一个数据库：
create databse db_name；

#创建指定字符集的数据库：
create database db_name character set utf8;

#显示数据库的创建信息：
show create database db_name;

#修改数据库的编码：
alter database db_name character set gb2312;

#删除一个数据库：
drop database db_name;

#修改表名：
alter table ta rename tb;                                                 

#修改字段的数据类型：
alter table zzz modify name varchar(30);        

#修改字段名：
alter table zzz change name zjc varchar(25);      

#添加字段：
alter table zzz add zlx varchar(10);                                                  

#删除字段：
alter table zzz drop zlx;   

#修改表的存储引擎：
alter table zzz engine=MyISAM;

#删除表的外键约束：
alter table zzz drop foreign key zzk; 

#删除一张表：
drop table zzz;  


#DML

# 插入-指定字段
INSERT INTO zzz2 ('name', 'price') VALUES ('one',22), ('two', 33);
# 插入-不指定，values顺序需要和表字段一致
INSERT INTO zzz2 VALUES (NULL, 'three', 33), (NULL, 'four', 44);

#修改字段
UPDATE zzz2 SET price = 4411 WHERE 'name' = 'four'

# 返回删除影响条数【触发trigger，可回滚】
DELETE FROM zzz2 ORDER BY id DESC LIMIT 2

# 限制+排序查询
SELECT * FROM zzz2 ORDER BY id DESC LIMIT 3;
# 应用聚合函数
SELECT COUNT(id),SUM(price),MIN(price),MAX(price),AVG(price) FROM zzz2 ORDER BY id DESC;
# 去重查询
SELECT DISTINCT('name') FROM zzz2 LIMIT 10
