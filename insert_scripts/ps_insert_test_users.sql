--Insert script for test users and their posts and comments
--Warning! this script resets all serials in main ids - use in development ONLY

ALTER SEQUENCE ps_user_user_id_seq RESTART;
ALTER SEQUENCE ps_post_post_id_seq RESTART;
AlTER SEQUENCE ps_post_comment_post_comment_id_seq RESTART;
ALTER SEQUENCE ps_topic_topic_id_seq RESTART;

begin;
insert into ps_user(user_nick, user_pswd_hash, user_created_time) values('Jack', 'a', current_timestamp);
insert into ps_user(user_nick, user_pswd_hash, user_created_time) values('Oleg', 'b', current_timestamp);
insert into ps_user(user_nick, user_pswd_hash, user_created_time) values('Irma', 'c', current_timestamp);
insert into ps_user(user_nick, user_pswd_hash, user_created_time) values('CatLover', 'd', current_timestamp);
insert into ps_user(user_nick, user_pswd_hash, user_created_time) values('MoonRaker', 'e', current_timestamp);
commit;

begin;
insert into ps_topic(topic_name, topic_created_time, user_id) values ('Space', current_timestamp, 1);
insert into ps_topic(topic_name, topic_created_time, user_id) values ('Math', current_timestamp, 2);
insert into ps_topic(topic_name, topic_created_time, user_id) values ('Baking', current_timestamp, 3);
insert into ps_topic(topic_name, topic_created_time, user_id) values ('Astronomy', current_timestamp, 1);
insert into ps_topic(topic_name, topic_created_time, user_id) values ('Cats', current_timestamp, 4);
commit;

begin;
insert into ps_post(post_text, post_created_time, user_id, topic_id)
    values ('I love black cats! They are addorable', current_timestamp, 4, 5);
insert into ps_post(post_text, post_created_time, user_id, topic_id)
    values ('Sun is my favourite star, why cannot we just move there?', current_timestamp, 1, 1);
insert into ps_post(post_text, post_created_time, user_id, topic_id)
    values ('Why is baking so hard to start with?', current_timestamp, 3, 3);
insert into ps_post(post_text, post_created_time, user_id, topic_id)
    values ('Moon landing was not a fake! Here are my arguments:', current_timestamp, 1, 1);
commit;

begin;
insert into ps_post_comment(post_comment_text, post_comment_created_time, post_id, user_id)
    values ('I totally agree', current_timestamp, 1, 5);
insert into ps_post_comment(post_comment_text, post_comment_created_time, post_id, user_id)
    values ('You just have to earn some experience with it, than it is easy.', current_timestamp, 3, 2);
insert into ps_post_comment(post_comment_text, post_comment_created_time, post_id, user_id)
    values ('I own a white one, but black ones are adorable as well!', current_timestamp, 1, 1);
commit;
