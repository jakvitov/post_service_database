--Indexing on tables
--Index names - in_ + table name
begin;
CREATE INDEX in_ps_user ON ps_user(user_nick, user_pswd_hash);
CREATE INDEX in_ps_topic ON ps_topic(topic_name);
CREATE INDEX in_ps_post ON ps_post(post_created_time);
commit;