/* メッセージTBL作成 */
/*
sqlite3 ./cmn_db.sqlite3 < ./create_tb_message.sql
*/

/* メッセージTBL作成 */
create table tb_message (
	id text not null, -- メッセージID
	message text not null, -- メッセージ内容
	primary key (
		id
	)
);

/* メッセージ追加 */
insert into tb_message (id, message) values ('E0000000', 'エラーメッセージ');
insert into tb_message (id, message) values ('I0000000', '情報メッセージ');
insert into tb_message (id, message) values ('W0000000', '警告メッセージ');

/* 出力用に設定 */
.mode column
.headers on
.output ./tb_message.txt

/* メッセージTBLの内容をファイルに出力 */
select id, message from tb_message order by id;

/* 標準出力に戻す */
.output stdout

/* 終了 */
.exit
