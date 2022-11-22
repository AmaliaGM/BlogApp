-- Table: public.Comments

-- DROP TABLE IF EXISTS public."Comments";

CREATE TABLE IF NOT EXISTS public."Comments"
(
    comment_id integer NOT NULL,
    author_id integer,
    post_id integer,
    text text COLLATE pg_catalog."default",
    updated_at date,
    created_at date,
    CONSTRAINT "Comments_pkey" PRIMARY KEY (comment_id),
    CONSTRAINT "Comments_author_id_fkey" FOREIGN KEY (author_id)
        REFERENCES public."User" (user_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT "Comments_post_id_fkey" FOREIGN KEY (post_id)
        REFERENCES public."Posts" (post_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Comments"
    OWNER to postgres;