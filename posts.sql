-- Table: public.Posts

-- DROP TABLE IF EXISTS public."Posts";

CREATE TABLE IF NOT EXISTS public."Posts"
(
    post_id integer NOT NULL,
    author_id integer,
    title character varying COLLATE pg_catalog."default",
    text text COLLATE pg_catalog."default",
    created_at date,
    updated_at date,
    comments_counter integer,
    likes_count integer,
    CONSTRAINT "Posts_pkey" PRIMARY KEY (post_id),
    CONSTRAINT "Posts_author_id_fkey" FOREIGN KEY (author_id)
        REFERENCES public."User" (user_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Posts"
    OWNER to postgres;