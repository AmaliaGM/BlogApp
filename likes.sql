-- Table: public.Likes

-- DROP TABLE IF EXISTS public."Likes";

CREATE TABLE IF NOT EXISTS public."Likes"
(
    likes_id integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    author_id integer,
    post_id integer,
    created_at date,
    updated_at date,
    CONSTRAINT "Likes_pkey" PRIMARY KEY (likes_id),
    CONSTRAINT "Likes_author_id_fkey" FOREIGN KEY (author_id)
        REFERENCES public."User" (user_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT "Likes_post_id_fkey" FOREIGN KEY (post_id)
        REFERENCES public."Posts" (post_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Likes"
    OWNER to postgres;