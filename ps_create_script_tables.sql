--Create script for empty tables without relations

begin;
--Common user of the service
CREATE TABLE ps_user (
	user_id				serial PRIMARY KEY,
	user_nick 			varchar(15) NOT NULL UNIQUE,
	user_pswd_hash		varchar(32) NOT NULL,
	user_created_time 	timestamp
);

--Posts created by the user
CREATE TABLE ps_post (
	post_id				serial PRIMARY KEY,
	post_text			varchar(300) NOT NULL,
	post_created_time	timestamp
);

--Comments created on the posts by users
CREATE TABLE ps_post_comment (
	post_comment_id 	serial PRIMARY KEY,
	post_comment_text 	varchar(200) NOT NULL,
	post_comment_created_time	timestamp

);

--Topics created by users, each post may belong to a topic
CREATE TABLE  ps_topic (
	topic_id			serial PRIMARY KEY,
	topic_name			varchar(15) NOT NULL,
	topic_created_time	timestamp
);
commit;