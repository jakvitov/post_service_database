--Foreign keys and relations names
--Foreign key constraints names - fk_ + referenced_table_name
begin;
ALTER TABLE ps_post ADD user_id int;
ALTER TABLE ps_post ADD CONSTRAINT fk_ps_user FOREIGN KEY (user_id) REFERENCES ps_user(user_id);

ALTER TABLE ps_post ADD topic_id int;
ALTER TABLE ps_post ADD CONSTRAINT fk_ps_topic FOREIGN KEY (topic_id) REFERENCES ps_topic(topic_id);

ALTER TABLE ps_post_comment ADD post_id int;
ALTER TABLE ps_post_comment ADD CONSTRAINT fk_ps_post FOREIGN KEY (post_id) REFERENCES ps_post(post_id);

ALTER TABLE ps_topic ADD user_id int;
ALTER TABLE ps_topic ADD CONSTRAINT fk_ps_user FOREIGN KEY (user_id) REFERENCES ps_user(user_id);

ALTER TABLE ps_post_comment ADD user_id int;
ALTER TABLE ps_post_comment ADD CONSTRAINT fk_ps_user FOREIGN KEY (user_id) REFERENCES ps_user(user_id);
commit;