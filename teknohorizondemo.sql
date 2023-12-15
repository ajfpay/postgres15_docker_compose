--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Debian 12.9-1.pgdg110+1)
-- Dumped by pg_dump version 12.9 (Debian 12.9-1.pgdg110+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: account_emailaddress; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.account_emailaddress (
    id integer NOT NULL,
    email character varying(254) NOT NULL,
    verified boolean NOT NULL,
    "primary" boolean NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.account_emailaddress OWNER TO postgres;

--
-- Name: account_emailaddress_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.account_emailaddress_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_emailaddress_id_seq OWNER TO postgres;

--
-- Name: account_emailaddress_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.account_emailaddress_id_seq OWNED BY public.account_emailaddress.id;


--
-- Name: account_emailconfirmation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.account_emailconfirmation (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    sent timestamp with time zone,
    key character varying(64) NOT NULL,
    email_address_id integer NOT NULL
);


ALTER TABLE public.account_emailconfirmation OWNER TO postgres;

--
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.account_emailconfirmation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_emailconfirmation_id_seq OWNER TO postgres;

--
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.account_emailconfirmation_id_seq OWNED BY public.account_emailconfirmation.id;


--
-- Name: announcements_announcement; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.announcements_announcement (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    title character varying(144),
    host_id integer NOT NULL,
    caption character varying(80),
    content text,
    overview character varying(140),
    paragraph1 text,
    paragraph10 text,
    paragraph2 text,
    paragraph3 text,
    paragraph4 text,
    paragraph5 text,
    paragraph6 text,
    paragraph7 text,
    paragraph8 text,
    paragraph9 text,
    "paragraphContent1" text,
    "paragraphContent10" text,
    "paragraphContent2" text,
    "paragraphContent3" text,
    "paragraphContent4" text,
    "paragraphContent5" text,
    "paragraphContent6" text,
    "paragraphContent7" text,
    "paragraphContent8" text,
    "paragraphContent9" text,
    poster_path character varying(100),
    poster_path1 character varying(100),
    poster_path10 character varying(100),
    poster_path2 character varying(100),
    poster_path3 character varying(100),
    poster_path4 character varying(100),
    poster_path5 character varying(100),
    poster_path6 character varying(100),
    poster_path7 character varying(100),
    poster_path8 character varying(100),
    poster_path9 character varying(100),
    promo_end_date timestamp with time zone,
    slug character varying(100) NOT NULL,
    video character varying(140)
);


ALTER TABLE public.announcements_announcement OWNER TO postgres;

--
-- Name: announcements_announcement_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.announcements_announcement_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.announcements_announcement_id_seq OWNER TO postgres;

--
-- Name: announcements_announcement_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.announcements_announcement_id_seq OWNED BY public.announcements_announcement.id;


--
-- Name: announcements_image; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.announcements_image (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    caption character varying(40),
    file character varying(100) NOT NULL,
    announcement_id integer NOT NULL
);


ALTER TABLE public.announcements_image OWNER TO postgres;

--
-- Name: announcements_image1; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.announcements_image1 (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    caption character varying(40),
    file character varying(100) NOT NULL,
    announcement_id integer NOT NULL
);


ALTER TABLE public.announcements_image1 OWNER TO postgres;

--
-- Name: announcements_image10; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.announcements_image10 (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    caption character varying(40),
    file character varying(100) NOT NULL,
    announcement_id integer NOT NULL
);


ALTER TABLE public.announcements_image10 OWNER TO postgres;

--
-- Name: announcements_image10_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.announcements_image10_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.announcements_image10_id_seq OWNER TO postgres;

--
-- Name: announcements_image10_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.announcements_image10_id_seq OWNED BY public.announcements_image10.id;


--
-- Name: announcements_image1_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.announcements_image1_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.announcements_image1_id_seq OWNER TO postgres;

--
-- Name: announcements_image1_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.announcements_image1_id_seq OWNED BY public.announcements_image1.id;


--
-- Name: announcements_image2; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.announcements_image2 (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    caption character varying(40),
    file character varying(100) NOT NULL,
    announcement_id integer NOT NULL
);


ALTER TABLE public.announcements_image2 OWNER TO postgres;

--
-- Name: announcements_image2_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.announcements_image2_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.announcements_image2_id_seq OWNER TO postgres;

--
-- Name: announcements_image2_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.announcements_image2_id_seq OWNED BY public.announcements_image2.id;


--
-- Name: announcements_image3; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.announcements_image3 (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    caption character varying(40),
    file character varying(100) NOT NULL,
    announcement_id integer NOT NULL
);


ALTER TABLE public.announcements_image3 OWNER TO postgres;

--
-- Name: announcements_image3_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.announcements_image3_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.announcements_image3_id_seq OWNER TO postgres;

--
-- Name: announcements_image3_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.announcements_image3_id_seq OWNED BY public.announcements_image3.id;


--
-- Name: announcements_image4; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.announcements_image4 (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    caption character varying(40),
    file character varying(100) NOT NULL,
    announcement_id integer NOT NULL
);


ALTER TABLE public.announcements_image4 OWNER TO postgres;

--
-- Name: announcements_image4_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.announcements_image4_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.announcements_image4_id_seq OWNER TO postgres;

--
-- Name: announcements_image4_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.announcements_image4_id_seq OWNED BY public.announcements_image4.id;


--
-- Name: announcements_image5; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.announcements_image5 (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    caption character varying(40),
    file character varying(100) NOT NULL,
    announcement_id integer NOT NULL
);


ALTER TABLE public.announcements_image5 OWNER TO postgres;

--
-- Name: announcements_image5_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.announcements_image5_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.announcements_image5_id_seq OWNER TO postgres;

--
-- Name: announcements_image5_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.announcements_image5_id_seq OWNED BY public.announcements_image5.id;


--
-- Name: announcements_image6; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.announcements_image6 (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    caption character varying(40),
    file character varying(100) NOT NULL,
    announcement_id integer NOT NULL
);


ALTER TABLE public.announcements_image6 OWNER TO postgres;

--
-- Name: announcements_image6_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.announcements_image6_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.announcements_image6_id_seq OWNER TO postgres;

--
-- Name: announcements_image6_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.announcements_image6_id_seq OWNED BY public.announcements_image6.id;


--
-- Name: announcements_image7; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.announcements_image7 (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    caption character varying(40),
    file character varying(100) NOT NULL,
    announcement_id integer NOT NULL
);


ALTER TABLE public.announcements_image7 OWNER TO postgres;

--
-- Name: announcements_image7_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.announcements_image7_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.announcements_image7_id_seq OWNER TO postgres;

--
-- Name: announcements_image7_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.announcements_image7_id_seq OWNED BY public.announcements_image7.id;


--
-- Name: announcements_image8; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.announcements_image8 (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    caption character varying(40),
    file character varying(100) NOT NULL,
    announcement_id integer NOT NULL
);


ALTER TABLE public.announcements_image8 OWNER TO postgres;

--
-- Name: announcements_image8_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.announcements_image8_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.announcements_image8_id_seq OWNER TO postgres;

--
-- Name: announcements_image8_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.announcements_image8_id_seq OWNED BY public.announcements_image8.id;


--
-- Name: announcements_image9; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.announcements_image9 (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    caption character varying(40),
    file character varying(100) NOT NULL,
    announcement_id integer NOT NULL
);


ALTER TABLE public.announcements_image9 OWNER TO postgres;

--
-- Name: announcements_image9_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.announcements_image9_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.announcements_image9_id_seq OWNER TO postgres;

--
-- Name: announcements_image9_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.announcements_image9_id_seq OWNED BY public.announcements_image9.id;


--
-- Name: announcements_image_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.announcements_image_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.announcements_image_id_seq OWNER TO postgres;

--
-- Name: announcements_image_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.announcements_image_id_seq OWNED BY public.announcements_image.id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: authtoken_token; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.authtoken_token (
    key character varying(40) NOT NULL,
    created timestamp with time zone NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.authtoken_token OWNER TO postgres;

--
-- Name: conversations_conversation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.conversations_conversation (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL
);


ALTER TABLE public.conversations_conversation OWNER TO postgres;

--
-- Name: conversations_conversation_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.conversations_conversation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.conversations_conversation_id_seq OWNER TO postgres;

--
-- Name: conversations_conversation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.conversations_conversation_id_seq OWNED BY public.conversations_conversation.id;


--
-- Name: conversations_conversation_participants; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.conversations_conversation_participants (
    id integer NOT NULL,
    conversation_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.conversations_conversation_participants OWNER TO postgres;

--
-- Name: conversations_conversation_participants_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.conversations_conversation_participants_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.conversations_conversation_participants_id_seq OWNER TO postgres;

--
-- Name: conversations_conversation_participants_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.conversations_conversation_participants_id_seq OWNED BY public.conversations_conversation_participants.id;


--
-- Name: conversations_message; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.conversations_message (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    message text NOT NULL,
    conversation_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.conversations_message OWNER TO postgres;

--
-- Name: conversations_message_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.conversations_message_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.conversations_message_id_seq OWNER TO postgres;

--
-- Name: conversations_message_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.conversations_message_id_seq OWNED BY public.conversations_message.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: django_site; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.django_site OWNER TO postgres;

--
-- Name: django_site_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_site_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_site_id_seq OWNER TO postgres;

--
-- Name: django_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_site_id_seq OWNED BY public.django_site.id;


--
-- Name: favorites_favoritenorcharge; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.favorites_favoritenorcharge (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    title character varying(80) NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.favorites_favoritenorcharge OWNER TO postgres;

--
-- Name: favorites_favoritenorcharge_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.favorites_favoritenorcharge_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.favorites_favoritenorcharge_id_seq OWNER TO postgres;

--
-- Name: favorites_favoritenorcharge_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.favorites_favoritenorcharge_id_seq OWNED BY public.favorites_favoritenorcharge.id;


--
-- Name: favorites_favoritenorcharge_nocharges; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.favorites_favoritenorcharge_nocharges (
    id integer NOT NULL,
    favoritenorcharge_id integer NOT NULL,
    nocharge_id integer NOT NULL
);


ALTER TABLE public.favorites_favoritenorcharge_nocharges OWNER TO postgres;

--
-- Name: favorites_favoritenorcharge_nocharges_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.favorites_favoritenorcharge_nocharges_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.favorites_favoritenorcharge_nocharges_id_seq OWNER TO postgres;

--
-- Name: favorites_favoritenorcharge_nocharges_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.favorites_favoritenorcharge_nocharges_id_seq OWNED BY public.favorites_favoritenorcharge_nocharges.id;


--
-- Name: games_game; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.games_game (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    name character varying(140) NOT NULL,
    caption_title character varying(140),
    description character varying(300) NOT NULL,
    game_type_id integer,
    host_id integer NOT NULL,
    link_tutorial character varying(120),
    "imageData" character varying(100)
);


ALTER TABLE public.games_game OWNER TO postgres;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO postgres;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games_game.id;


--
-- Name: games_gametype; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.games_gametype (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.games_gametype OWNER TO postgres;

--
-- Name: games_gametype_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.games_gametype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_gametype_id_seq OWNER TO postgres;

--
-- Name: games_gametype_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.games_gametype_id_seq OWNED BY public.games_gametype.id;


--
-- Name: games_photo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.games_photo (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    caption character varying(80),
    file character varying(100) NOT NULL,
    game_id integer NOT NULL
);


ALTER TABLE public.games_photo OWNER TO postgres;

--
-- Name: games_photo2; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.games_photo2 (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    caption character varying(80),
    file character varying(100) NOT NULL,
    game_id integer NOT NULL
);


ALTER TABLE public.games_photo2 OWNER TO postgres;

--
-- Name: games_photo2_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.games_photo2_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_photo2_id_seq OWNER TO postgres;

--
-- Name: games_photo2_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.games_photo2_id_seq OWNED BY public.games_photo2.id;


--
-- Name: games_photo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.games_photo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_photo_id_seq OWNER TO postgres;

--
-- Name: games_photo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.games_photo_id_seq OWNED BY public.games_photo.id;


--
-- Name: guides_articletype; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.guides_articletype (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    title character varying(80) NOT NULL
);


ALTER TABLE public.guides_articletype OWNER TO postgres;

--
-- Name: guides_articletype_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.guides_articletype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.guides_articletype_id_seq OWNER TO postgres;

--
-- Name: guides_articletype_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.guides_articletype_id_seq OWNED BY public.guides_articletype.id;


--
-- Name: guides_guide; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.guides_guide (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    title character varying(140) NOT NULL,
    caption character varying(140),
    description character varying(300) NOT NULL,
    link_tutorial character varying(120),
    "imageData" character varying(100),
    article_type_id integer,
    host_id integer NOT NULL
);


ALTER TABLE public.guides_guide OWNER TO postgres;

--
-- Name: guides_guide_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.guides_guide_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.guides_guide_id_seq OWNER TO postgres;

--
-- Name: guides_guide_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.guides_guide_id_seq OWNED BY public.guides_guide.id;


--
-- Name: guides_photo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.guides_photo (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    caption character varying(80) NOT NULL,
    file character varying(100) NOT NULL,
    guide_id integer NOT NULL
);


ALTER TABLE public.guides_photo OWNER TO postgres;

--
-- Name: guides_photo2; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.guides_photo2 (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    caption character varying(80) NOT NULL,
    file character varying(100) NOT NULL,
    guide_id integer NOT NULL
);


ALTER TABLE public.guides_photo2 OWNER TO postgres;

--
-- Name: guides_photo2_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.guides_photo2_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.guides_photo2_id_seq OWNER TO postgres;

--
-- Name: guides_photo2_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.guides_photo2_id_seq OWNED BY public.guides_photo2.id;


--
-- Name: guides_photo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.guides_photo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.guides_photo_id_seq OWNER TO postgres;

--
-- Name: guides_photo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.guides_photo_id_seq OWNED BY public.guides_photo.id;


--
-- Name: lists_list; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lists_list (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    name character varying(80) NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.lists_list OWNER TO postgres;

--
-- Name: lists_list_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.lists_list_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lists_list_id_seq OWNER TO postgres;

--
-- Name: lists_list_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.lists_list_id_seq OWNED BY public.lists_list.id;


--
-- Name: lists_list_rooms; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lists_list_rooms (
    id integer NOT NULL,
    list_id integer NOT NULL,
    room_id integer NOT NULL
);


ALTER TABLE public.lists_list_rooms OWNER TO postgres;

--
-- Name: lists_list_rooms_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.lists_list_rooms_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lists_list_rooms_id_seq OWNER TO postgres;

--
-- Name: lists_list_rooms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.lists_list_rooms_id_seq OWNED BY public.lists_list_rooms.id;


--
-- Name: news_articletype; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.news_articletype (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    title character varying(80) NOT NULL
);


ALTER TABLE public.news_articletype OWNER TO postgres;

--
-- Name: news_articletypenew_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.news_articletypenew_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.news_articletypenew_id_seq OWNER TO postgres;

--
-- Name: news_articletypenew_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.news_articletypenew_id_seq OWNED BY public.news_articletype.id;


--
-- Name: news_new; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.news_new (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    title character varying(140) NOT NULL,
    caption character varying(140),
    description character varying(300) NOT NULL,
    link_tutorial character varying(120),
    "imageData" character varying(100),
    article_type_id integer,
    host_id integer NOT NULL
);


ALTER TABLE public.news_new OWNER TO postgres;

--
-- Name: news_new_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.news_new_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.news_new_id_seq OWNER TO postgres;

--
-- Name: news_new_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.news_new_id_seq OWNED BY public.news_new.id;


--
-- Name: news_photo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.news_photo (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    caption character varying(80) NOT NULL,
    file character varying(100) NOT NULL,
    new_id integer NOT NULL
);


ALTER TABLE public.news_photo OWNER TO postgres;

--
-- Name: news_photo2; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.news_photo2 (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    caption character varying(80) NOT NULL,
    file character varying(100) NOT NULL,
    new_id integer NOT NULL
);


ALTER TABLE public.news_photo2 OWNER TO postgres;

--
-- Name: news_photo2_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.news_photo2_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.news_photo2_id_seq OWNER TO postgres;

--
-- Name: news_photo2_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.news_photo2_id_seq OWNED BY public.news_photo2.id;


--
-- Name: news_photo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.news_photo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.news_photo_id_seq OWNER TO postgres;

--
-- Name: news_photo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.news_photo_id_seq OWNED BY public.news_photo.id;


--
-- Name: nocharges_categoryapp; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.nocharges_categoryapp (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    title character varying(80)
);


ALTER TABLE public.nocharges_categoryapp OWNER TO postgres;

--
-- Name: nocharges_categoryapp_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.nocharges_categoryapp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nocharges_categoryapp_id_seq OWNER TO postgres;

--
-- Name: nocharges_categoryapp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.nocharges_categoryapp_id_seq OWNED BY public.nocharges_categoryapp.id;


--
-- Name: nocharges_categorydomain; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.nocharges_categorydomain (
    id integer NOT NULL,
    title character varying(100) NOT NULL
);


ALTER TABLE public.nocharges_categorydomain OWNER TO postgres;

--
-- Name: nocharges_categorydomain_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.nocharges_categorydomain_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nocharges_categorydomain_id_seq OWNER TO postgres;

--
-- Name: nocharges_categorydomain_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.nocharges_categorydomain_id_seq OWNED BY public.nocharges_categorydomain.id;


--
-- Name: nocharges_categoryfree; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.nocharges_categoryfree (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    title character varying(80)
);


ALTER TABLE public.nocharges_categoryfree OWNER TO postgres;

--
-- Name: nocharges_categoryfree_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.nocharges_categoryfree_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nocharges_categoryfree_id_seq OWNER TO postgres;

--
-- Name: nocharges_categoryfree_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.nocharges_categoryfree_id_seq OWNED BY public.nocharges_categoryfree.id;


--
-- Name: nocharges_categoryos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.nocharges_categoryos (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    title character varying(80)
);


ALTER TABLE public.nocharges_categoryos OWNER TO postgres;

--
-- Name: nocharges_categoryos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.nocharges_categoryos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nocharges_categoryos_id_seq OWNER TO postgres;

--
-- Name: nocharges_categoryos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.nocharges_categoryos_id_seq OWNED BY public.nocharges_categoryos.id;


--
-- Name: nocharges_developer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.nocharges_developer (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    title character varying(80)
);


ALTER TABLE public.nocharges_developer OWNER TO postgres;

--
-- Name: nocharges_developer_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.nocharges_developer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nocharges_developer_id_seq OWNER TO postgres;

--
-- Name: nocharges_developer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.nocharges_developer_id_seq OWNED BY public.nocharges_developer.id;


--
-- Name: nocharges_distribution; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.nocharges_distribution (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    title character varying(80)
);


ALTER TABLE public.nocharges_distribution OWNER TO postgres;

--
-- Name: nocharges_distribution_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.nocharges_distribution_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nocharges_distribution_id_seq OWNER TO postgres;

--
-- Name: nocharges_distribution_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.nocharges_distribution_id_seq OWNED BY public.nocharges_distribution.id;


--
-- Name: nocharges_domain; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.nocharges_domain (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    title character varying(80)
);


ALTER TABLE public.nocharges_domain OWNER TO postgres;

--
-- Name: nocharges_domain_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.nocharges_domain_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nocharges_domain_id_seq OWNER TO postgres;

--
-- Name: nocharges_domain_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.nocharges_domain_id_seq OWNED BY public.nocharges_domain.id;


--
-- Name: nocharges_image; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.nocharges_image (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    caption character varying(40),
    file character varying(100) NOT NULL,
    nocharge_id integer NOT NULL
);


ALTER TABLE public.nocharges_image OWNER TO postgres;

--
-- Name: nocharges_image1; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.nocharges_image1 (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    caption character varying(40),
    file character varying(100) NOT NULL,
    nocharge_id integer NOT NULL
);


ALTER TABLE public.nocharges_image1 OWNER TO postgres;

--
-- Name: nocharges_image10; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.nocharges_image10 (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    caption character varying(40),
    file character varying(100) NOT NULL,
    nocharge_id integer NOT NULL
);


ALTER TABLE public.nocharges_image10 OWNER TO postgres;

--
-- Name: nocharges_image10_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.nocharges_image10_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nocharges_image10_id_seq OWNER TO postgres;

--
-- Name: nocharges_image10_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.nocharges_image10_id_seq OWNED BY public.nocharges_image10.id;


--
-- Name: nocharges_image1_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.nocharges_image1_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nocharges_image1_id_seq OWNER TO postgres;

--
-- Name: nocharges_image1_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.nocharges_image1_id_seq OWNED BY public.nocharges_image1.id;


--
-- Name: nocharges_image2; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.nocharges_image2 (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    caption character varying(40),
    file character varying(100) NOT NULL,
    nocharge_id integer NOT NULL
);


ALTER TABLE public.nocharges_image2 OWNER TO postgres;

--
-- Name: nocharges_image2_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.nocharges_image2_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nocharges_image2_id_seq OWNER TO postgres;

--
-- Name: nocharges_image2_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.nocharges_image2_id_seq OWNED BY public.nocharges_image2.id;


--
-- Name: nocharges_image3; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.nocharges_image3 (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    caption character varying(40),
    file character varying(100) NOT NULL,
    nocharge_id integer NOT NULL
);


ALTER TABLE public.nocharges_image3 OWNER TO postgres;

--
-- Name: nocharges_image3_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.nocharges_image3_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nocharges_image3_id_seq OWNER TO postgres;

--
-- Name: nocharges_image3_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.nocharges_image3_id_seq OWNED BY public.nocharges_image3.id;


--
-- Name: nocharges_image4; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.nocharges_image4 (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    caption character varying(40),
    file character varying(100) NOT NULL,
    nocharge_id integer NOT NULL
);


ALTER TABLE public.nocharges_image4 OWNER TO postgres;

--
-- Name: nocharges_image4_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.nocharges_image4_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nocharges_image4_id_seq OWNER TO postgres;

--
-- Name: nocharges_image4_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.nocharges_image4_id_seq OWNED BY public.nocharges_image4.id;


--
-- Name: nocharges_image5; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.nocharges_image5 (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    caption character varying(40),
    file character varying(100) NOT NULL,
    nocharge_id integer NOT NULL
);


ALTER TABLE public.nocharges_image5 OWNER TO postgres;

--
-- Name: nocharges_image5_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.nocharges_image5_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nocharges_image5_id_seq OWNER TO postgres;

--
-- Name: nocharges_image5_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.nocharges_image5_id_seq OWNED BY public.nocharges_image5.id;


--
-- Name: nocharges_image6; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.nocharges_image6 (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    caption character varying(40),
    file character varying(100) NOT NULL,
    nocharge_id integer NOT NULL
);


ALTER TABLE public.nocharges_image6 OWNER TO postgres;

--
-- Name: nocharges_image6_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.nocharges_image6_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nocharges_image6_id_seq OWNER TO postgres;

--
-- Name: nocharges_image6_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.nocharges_image6_id_seq OWNED BY public.nocharges_image6.id;


--
-- Name: nocharges_image7; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.nocharges_image7 (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    caption character varying(40),
    file character varying(100) NOT NULL,
    nocharge_id integer NOT NULL
);


ALTER TABLE public.nocharges_image7 OWNER TO postgres;

--
-- Name: nocharges_image7_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.nocharges_image7_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nocharges_image7_id_seq OWNER TO postgres;

--
-- Name: nocharges_image7_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.nocharges_image7_id_seq OWNED BY public.nocharges_image7.id;


--
-- Name: nocharges_image8; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.nocharges_image8 (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    caption character varying(40),
    file character varying(100) NOT NULL,
    nocharge_id integer NOT NULL
);


ALTER TABLE public.nocharges_image8 OWNER TO postgres;

--
-- Name: nocharges_image8_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.nocharges_image8_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nocharges_image8_id_seq OWNER TO postgres;

--
-- Name: nocharges_image8_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.nocharges_image8_id_seq OWNED BY public.nocharges_image8.id;


--
-- Name: nocharges_image9; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.nocharges_image9 (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    caption character varying(40),
    file character varying(100) NOT NULL,
    nocharge_id integer NOT NULL
);


ALTER TABLE public.nocharges_image9 OWNER TO postgres;

--
-- Name: nocharges_image9_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.nocharges_image9_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nocharges_image9_id_seq OWNER TO postgres;

--
-- Name: nocharges_image9_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.nocharges_image9_id_seq OWNED BY public.nocharges_image9.id;


--
-- Name: nocharges_image_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.nocharges_image_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nocharges_image_id_seq OWNER TO postgres;

--
-- Name: nocharges_image_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.nocharges_image_id_seq OWNED BY public.nocharges_image.id;


--
-- Name: nocharges_nocharge; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.nocharges_nocharge (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    title character varying(140) NOT NULL,
    caption character varying(80),
    overview character varying(240),
    content text,
    video character varying(140),
    poster_path character varying(100),
    title1 text,
    content1 text,
    poster_path1 character varying(100),
    title2 text,
    content2 text,
    poster_path2 character varying(100),
    title3 text,
    content3 text,
    poster_path3 character varying(100),
    title4 text,
    content4 text,
    poster_path4 character varying(100),
    title5 text,
    content5 text,
    poster_path5 character varying(100),
    title6 text,
    content6 text,
    poster_path6 character varying(100),
    title7 text,
    content7 text,
    poster_path7 character varying(100),
    title8 text,
    content8 text,
    poster_path8 character varying(100),
    title9 text,
    content9 text,
    poster_path9 character varying(100),
    title10 text,
    content10 text,
    poster_path10 character varying(100),
    category_app_id integer,
    category_os_id integer,
    host_id integer NOT NULL,
    category_free_id integer,
    developer_id integer,
    distribution_id integer,
    domain_id integer,
    category_domain_id integer,
    slug character varying(100) NOT NULL,
    promo_end_date timestamp with time zone
);


ALTER TABLE public.nocharges_nocharge OWNER TO postgres;

--
-- Name: nocharges_nocharge_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.nocharges_nocharge_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nocharges_nocharge_id_seq OWNER TO postgres;

--
-- Name: nocharges_nocharge_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.nocharges_nocharge_id_seq OWNED BY public.nocharges_nocharge.id;


--
-- Name: profits_articletype; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.profits_articletype (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    title character varying(80) NOT NULL
);


ALTER TABLE public.profits_articletype OWNER TO postgres;

--
-- Name: profits_articletype_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.profits_articletype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.profits_articletype_id_seq OWNER TO postgres;

--
-- Name: profits_articletype_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.profits_articletype_id_seq OWNED BY public.profits_articletype.id;


--
-- Name: profits_category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.profits_category (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    title character varying(80),
    description text NOT NULL,
    url character varying(160) NOT NULL
);


ALTER TABLE public.profits_category OWNER TO postgres;

--
-- Name: profits_category_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.profits_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.profits_category_id_seq OWNER TO postgres;

--
-- Name: profits_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.profits_category_id_seq OWNED BY public.profits_category.id;


--
-- Name: profits_photo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.profits_photo (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    caption character varying(80) NOT NULL,
    file character varying(100) NOT NULL,
    profit_id integer NOT NULL
);


ALTER TABLE public.profits_photo OWNER TO postgres;

--
-- Name: profits_photo2; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.profits_photo2 (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    caption character varying(80) NOT NULL,
    file character varying(100) NOT NULL,
    profit_id integer NOT NULL
);


ALTER TABLE public.profits_photo2 OWNER TO postgres;

--
-- Name: profits_photo2_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.profits_photo2_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.profits_photo2_id_seq OWNER TO postgres;

--
-- Name: profits_photo2_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.profits_photo2_id_seq OWNED BY public.profits_photo2.id;


--
-- Name: profits_photo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.profits_photo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.profits_photo_id_seq OWNER TO postgres;

--
-- Name: profits_photo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.profits_photo_id_seq OWNED BY public.profits_photo.id;


--
-- Name: profits_profit; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.profits_profit (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    title character varying(140) NOT NULL,
    caption character varying(140),
    description character varying(300) NOT NULL,
    link_tutorial character varying(120),
    "imageData" character varying(100),
    article_type_id integer,
    host_id integer NOT NULL,
    category_id integer,
    "imageData2" character varying(100)
);


ALTER TABLE public.profits_profit OWNER TO postgres;

--
-- Name: profits_profit_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.profits_profit_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.profits_profit_id_seq OWNER TO postgres;

--
-- Name: profits_profit_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.profits_profit_id_seq OWNED BY public.profits_profit.id;


--
-- Name: reservations_bookedday; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reservations_bookedday (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    day date NOT NULL,
    reservation_id integer NOT NULL
);


ALTER TABLE public.reservations_bookedday OWNER TO postgres;

--
-- Name: reservations_bookedday_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.reservations_bookedday_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reservations_bookedday_id_seq OWNER TO postgres;

--
-- Name: reservations_bookedday_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.reservations_bookedday_id_seq OWNED BY public.reservations_bookedday.id;


--
-- Name: reservations_reservation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reservations_reservation (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    status character varying(12) NOT NULL,
    check_in date NOT NULL,
    check_out date NOT NULL,
    guest_id integer NOT NULL,
    room_id integer NOT NULL
);


ALTER TABLE public.reservations_reservation OWNER TO postgres;

--
-- Name: reservations_reservation_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.reservations_reservation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reservations_reservation_id_seq OWNER TO postgres;

--
-- Name: reservations_reservation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.reservations_reservation_id_seq OWNED BY public.reservations_reservation.id;


--
-- Name: rest_framework_api_key_apikey; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rest_framework_api_key_apikey (
    id character varying(150) NOT NULL,
    created timestamp with time zone NOT NULL,
    name character varying(50) NOT NULL,
    revoked boolean NOT NULL,
    expiry_date timestamp with time zone,
    hashed_key character varying(150) NOT NULL,
    prefix character varying(8) NOT NULL
);


ALTER TABLE public.rest_framework_api_key_apikey OWNER TO postgres;

--
-- Name: reviews_review; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reviews_review (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    review text NOT NULL,
    accuracy integer NOT NULL,
    communication integer NOT NULL,
    cleanliness integer NOT NULL,
    location integer NOT NULL,
    check_in integer NOT NULL,
    value integer NOT NULL,
    room_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.reviews_review OWNER TO postgres;

--
-- Name: reviews_review_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.reviews_review_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reviews_review_id_seq OWNER TO postgres;

--
-- Name: reviews_review_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.reviews_review_id_seq OWNED BY public.reviews_review.id;


--
-- Name: rooms_amenity; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rooms_amenity (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.rooms_amenity OWNER TO postgres;

--
-- Name: rooms_amenity_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rooms_amenity_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rooms_amenity_id_seq OWNER TO postgres;

--
-- Name: rooms_amenity_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rooms_amenity_id_seq OWNED BY public.rooms_amenity.id;


--
-- Name: rooms_facility; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rooms_facility (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.rooms_facility OWNER TO postgres;

--
-- Name: rooms_facility_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rooms_facility_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rooms_facility_id_seq OWNER TO postgres;

--
-- Name: rooms_facility_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rooms_facility_id_seq OWNED BY public.rooms_facility.id;


--
-- Name: rooms_houserule; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rooms_houserule (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.rooms_houserule OWNER TO postgres;

--
-- Name: rooms_houserule_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rooms_houserule_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rooms_houserule_id_seq OWNER TO postgres;

--
-- Name: rooms_houserule_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rooms_houserule_id_seq OWNED BY public.rooms_houserule.id;


--
-- Name: rooms_photo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rooms_photo (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    caption character varying(80) NOT NULL,
    file character varying(100) NOT NULL,
    room_id integer NOT NULL
);


ALTER TABLE public.rooms_photo OWNER TO postgres;

--
-- Name: rooms_photo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rooms_photo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rooms_photo_id_seq OWNER TO postgres;

--
-- Name: rooms_photo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rooms_photo_id_seq OWNED BY public.rooms_photo.id;


--
-- Name: rooms_room; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rooms_room (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    name character varying(140) NOT NULL,
    description character varying(300) NOT NULL,
    country character varying(2) NOT NULL,
    city character varying(80) NOT NULL,
    price integer NOT NULL,
    address character varying(140) NOT NULL,
    guests integer NOT NULL,
    beds integer NOT NULL,
    bedrooms integer NOT NULL,
    baths integer NOT NULL,
    check_in time without time zone NOT NULL,
    check_out time without time zone NOT NULL,
    instant_book boolean NOT NULL,
    host_id integer NOT NULL,
    room_type_id integer
);


ALTER TABLE public.rooms_room OWNER TO postgres;

--
-- Name: rooms_room_amenities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rooms_room_amenities (
    id integer NOT NULL,
    room_id integer NOT NULL,
    amenity_id integer NOT NULL
);


ALTER TABLE public.rooms_room_amenities OWNER TO postgres;

--
-- Name: rooms_room_amenities_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rooms_room_amenities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rooms_room_amenities_id_seq OWNER TO postgres;

--
-- Name: rooms_room_amenities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rooms_room_amenities_id_seq OWNED BY public.rooms_room_amenities.id;


--
-- Name: rooms_room_facilities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rooms_room_facilities (
    id integer NOT NULL,
    room_id integer NOT NULL,
    facility_id integer NOT NULL
);


ALTER TABLE public.rooms_room_facilities OWNER TO postgres;

--
-- Name: rooms_room_facilities_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rooms_room_facilities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rooms_room_facilities_id_seq OWNER TO postgres;

--
-- Name: rooms_room_facilities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rooms_room_facilities_id_seq OWNED BY public.rooms_room_facilities.id;


--
-- Name: rooms_room_house_rules; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rooms_room_house_rules (
    id integer NOT NULL,
    room_id integer NOT NULL,
    houserule_id integer NOT NULL
);


ALTER TABLE public.rooms_room_house_rules OWNER TO postgres;

--
-- Name: rooms_room_house_rules_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rooms_room_house_rules_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rooms_room_house_rules_id_seq OWNER TO postgres;

--
-- Name: rooms_room_house_rules_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rooms_room_house_rules_id_seq OWNED BY public.rooms_room_house_rules.id;


--
-- Name: rooms_room_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rooms_room_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rooms_room_id_seq OWNER TO postgres;

--
-- Name: rooms_room_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rooms_room_id_seq OWNED BY public.rooms_room.id;


--
-- Name: rooms_roomtype; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rooms_roomtype (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.rooms_roomtype OWNER TO postgres;

--
-- Name: rooms_roomtype_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rooms_roomtype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rooms_roomtype_id_seq OWNER TO postgres;

--
-- Name: rooms_roomtype_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rooms_roomtype_id_seq OWNED BY public.rooms_roomtype.id;


--
-- Name: socialaccount_socialaccount; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.socialaccount_socialaccount (
    id integer NOT NULL,
    provider character varying(30) NOT NULL,
    uid character varying(191) NOT NULL,
    last_login timestamp with time zone NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    extra_data text NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.socialaccount_socialaccount OWNER TO postgres;

--
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.socialaccount_socialaccount_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialaccount_id_seq OWNER TO postgres;

--
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.socialaccount_socialaccount_id_seq OWNED BY public.socialaccount_socialaccount.id;


--
-- Name: socialaccount_socialapp; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.socialaccount_socialapp (
    id integer NOT NULL,
    provider character varying(30) NOT NULL,
    name character varying(40) NOT NULL,
    client_id character varying(191) NOT NULL,
    secret character varying(191) NOT NULL,
    key character varying(191) NOT NULL
);


ALTER TABLE public.socialaccount_socialapp OWNER TO postgres;

--
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.socialaccount_socialapp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialapp_id_seq OWNER TO postgres;

--
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.socialaccount_socialapp_id_seq OWNED BY public.socialaccount_socialapp.id;


--
-- Name: socialaccount_socialapp_sites; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.socialaccount_socialapp_sites (
    id integer NOT NULL,
    socialapp_id integer NOT NULL,
    site_id integer NOT NULL
);


ALTER TABLE public.socialaccount_socialapp_sites OWNER TO postgres;

--
-- Name: socialaccount_socialapp_sites_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.socialaccount_socialapp_sites_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialapp_sites_id_seq OWNER TO postgres;

--
-- Name: socialaccount_socialapp_sites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.socialaccount_socialapp_sites_id_seq OWNED BY public.socialaccount_socialapp_sites.id;


--
-- Name: socialaccount_socialtoken; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.socialaccount_socialtoken (
    id integer NOT NULL,
    token text NOT NULL,
    token_secret text NOT NULL,
    expires_at timestamp with time zone,
    account_id integer NOT NULL,
    app_id integer NOT NULL
);


ALTER TABLE public.socialaccount_socialtoken OWNER TO postgres;

--
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.socialaccount_socialtoken_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialtoken_id_seq OWNER TO postgres;

--
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.socialaccount_socialtoken_id_seq OWNED BY public.socialaccount_socialtoken.id;


--
-- Name: tiplists_tiplist_games; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tiplists_tiplist_games (
    id integer NOT NULL,
    tiplist_id integer NOT NULL,
    game_id integer NOT NULL
);


ALTER TABLE public.tiplists_tiplist_games OWNER TO postgres;

--
-- Name: tiplists_tiplist_games_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tiplists_tiplist_games_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tiplists_tiplist_games_id_seq OWNER TO postgres;

--
-- Name: tiplists_tiplist_games_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tiplists_tiplist_games_id_seq OWNED BY public.tiplists_tiplist_games.id;


--
-- Name: tiplists_tiplistguide; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tiplists_tiplistguide (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    title character varying(80) NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.tiplists_tiplistguide OWNER TO postgres;

--
-- Name: tiplists_tiplistguide_guides; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tiplists_tiplistguide_guides (
    id integer NOT NULL,
    tiplistguide_id integer NOT NULL,
    guide_id integer NOT NULL
);


ALTER TABLE public.tiplists_tiplistguide_guides OWNER TO postgres;

--
-- Name: tiplists_tiplistguide_guides_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tiplists_tiplistguide_guides_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tiplists_tiplistguide_guides_id_seq OWNER TO postgres;

--
-- Name: tiplists_tiplistguide_guides_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tiplists_tiplistguide_guides_id_seq OWNED BY public.tiplists_tiplistguide_guides.id;


--
-- Name: tiplists_tiplistguide_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tiplists_tiplistguide_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tiplists_tiplistguide_id_seq OWNER TO postgres;

--
-- Name: tiplists_tiplistguide_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tiplists_tiplistguide_id_seq OWNED BY public.tiplists_tiplistguide.id;


--
-- Name: tiplists_tiplistnew_news; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tiplists_tiplistnew_news (
    id integer NOT NULL,
    tiplistnew_id integer NOT NULL,
    new_id integer NOT NULL
);


ALTER TABLE public.tiplists_tiplistnew_news OWNER TO postgres;

--
-- Name: tiplists_tiplistnew_news_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tiplists_tiplistnew_news_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tiplists_tiplistnew_news_id_seq OWNER TO postgres;

--
-- Name: tiplists_tiplistnew_news_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tiplists_tiplistnew_news_id_seq OWNED BY public.tiplists_tiplistnew_news.id;


--
-- Name: tiplists_tiplistprofit; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tiplists_tiplistprofit (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    title character varying(80) NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.tiplists_tiplistprofit OWNER TO postgres;

--
-- Name: tiplists_tiplistprofit_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tiplists_tiplistprofit_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tiplists_tiplistprofit_id_seq OWNER TO postgres;

--
-- Name: tiplists_tiplistprofit_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tiplists_tiplistprofit_id_seq OWNED BY public.tiplists_tiplistprofit.id;


--
-- Name: tiplists_tiplistprofit_profits; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tiplists_tiplistprofit_profits (
    id integer NOT NULL,
    tiplistprofit_id integer NOT NULL,
    profit_id integer NOT NULL
);


ALTER TABLE public.tiplists_tiplistprofit_profits OWNER TO postgres;

--
-- Name: tiplists_tiplistprofit_profits_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tiplists_tiplistprofit_profits_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tiplists_tiplistprofit_profits_id_seq OWNER TO postgres;

--
-- Name: tiplists_tiplistprofit_profits_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tiplists_tiplistprofit_profits_id_seq OWNED BY public.tiplists_tiplistprofit_profits.id;


--
-- Name: tiplists_tiplisttutorial_tips; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tiplists_tiplisttutorial_tips (
);


ALTER TABLE public.tiplists_tiplisttutorial_tips OWNER TO postgres;

--
-- Name: tiplists_tiplisttutorial_tutorials; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tiplists_tiplisttutorial_tutorials (
    tutorial_id integer NOT NULL,
    tiplisttutorial_id integer NOT NULL,
    id integer NOT NULL
);


ALTER TABLE public.tiplists_tiplisttutorial_tutorials OWNER TO postgres;

--
-- Name: tips_photo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tips_photo (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    caption character varying(80) NOT NULL,
    file character varying(100) NOT NULL,
    tip_id integer NOT NULL
);


ALTER TABLE public.tips_photo OWNER TO postgres;

--
-- Name: tips_photo2; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tips_photo2 (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    caption character varying(80) NOT NULL,
    file character varying(100) NOT NULL,
    tip_id integer NOT NULL
);


ALTER TABLE public.tips_photo2 OWNER TO postgres;

--
-- Name: tips_photo2_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tips_photo2_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tips_photo2_id_seq OWNER TO postgres;

--
-- Name: tips_photo2_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tips_photo2_id_seq OWNED BY public.tips_photo2.id;


--
-- Name: tips_photo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tips_photo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tips_photo_id_seq OWNER TO postgres;

--
-- Name: tips_photo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tips_photo_id_seq OWNED BY public.tips_photo.id;


--
-- Name: tips_tip; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tips_tip (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    name character varying(140) NOT NULL,
    caption_title character varying(140),
    description character varying(300) NOT NULL,
    link_tutorial character varying(120),
    host_id integer NOT NULL,
    tip_type_id integer,
    "imageData" character varying(100)
);


ALTER TABLE public.tips_tip OWNER TO postgres;

--
-- Name: tips_tip_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tips_tip_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tips_tip_id_seq OWNER TO postgres;

--
-- Name: tips_tip_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tips_tip_id_seq OWNED BY public.tips_tip.id;


--
-- Name: tips_tiptype; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tips_tiptype (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.tips_tiptype OWNER TO postgres;

--
-- Name: tips_tiptype_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tips_tiptype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tips_tiptype_id_seq OWNER TO postgres;

--
-- Name: tips_tiptype_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tips_tiptype_id_seq OWNED BY public.tips_tiptype.id;


--
-- Name: tutorials_articletype; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tutorials_articletype (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    title character varying(80) NOT NULL
);


ALTER TABLE public.tutorials_articletype OWNER TO postgres;

--
-- Name: tutorials_articletype_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tutorials_articletype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tutorials_articletype_id_seq OWNER TO postgres;

--
-- Name: tutorials_articletype_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tutorials_articletype_id_seq OWNED BY public.tutorials_articletype.id;


--
-- Name: tutorials_photo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tutorials_photo (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    caption character varying(80) NOT NULL,
    file character varying(100) NOT NULL,
    tutorial_id integer NOT NULL
);


ALTER TABLE public.tutorials_photo OWNER TO postgres;

--
-- Name: tutorials_photo2; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tutorials_photo2 (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    caption character varying(80) NOT NULL,
    file character varying(100) NOT NULL,
    tutorial_id integer NOT NULL
);


ALTER TABLE public.tutorials_photo2 OWNER TO postgres;

--
-- Name: tutorials_photo2_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tutorials_photo2_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tutorials_photo2_id_seq OWNER TO postgres;

--
-- Name: tutorials_photo2_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tutorials_photo2_id_seq OWNED BY public.tutorials_photo2.id;


--
-- Name: tutorials_photo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tutorials_photo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tutorials_photo_id_seq OWNER TO postgres;

--
-- Name: tutorials_photo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tutorials_photo_id_seq OWNED BY public.tutorials_photo.id;


--
-- Name: tutorials_tutorial; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tutorials_tutorial (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    title character varying(140) NOT NULL,
    caption character varying(140),
    description character varying(300) NOT NULL,
    link_tutorial character varying(120),
    "imageData" character varying(100),
    article_type_id integer,
    host_id integer NOT NULL
);


ALTER TABLE public.tutorials_tutorial OWNER TO postgres;

--
-- Name: tutorials_tutorial_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tutorials_tutorial_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tutorials_tutorial_id_seq OWNER TO postgres;

--
-- Name: tutorials_tutorial_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tutorials_tutorial_id_seq OWNED BY public.tutorials_tutorial.id;


--
-- Name: users_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    avatar character varying(100) NOT NULL,
    gender character varying(10) NOT NULL,
    bio text NOT NULL,
    birthdate date,
    language character varying(2) NOT NULL,
    currency character varying(3) NOT NULL,
    superhost boolean NOT NULL,
    email_verified boolean NOT NULL,
    email_secret character varying(20) NOT NULL,
    login_method character varying(50) NOT NULL
);


ALTER TABLE public.users_user OWNER TO postgres;

--
-- Name: users_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.users_user_groups OWNER TO postgres;

--
-- Name: users_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_groups_id_seq OWNER TO postgres;

--
-- Name: users_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_user_groups_id_seq OWNED BY public.users_user_groups.id;


--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO postgres;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users_user.id;


--
-- Name: users_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.users_user_user_permissions OWNER TO postgres;

--
-- Name: users_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: users_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_user_user_permissions_id_seq OWNED BY public.users_user_user_permissions.id;


--
-- Name: account_emailaddress id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_emailaddress ALTER COLUMN id SET DEFAULT nextval('public.account_emailaddress_id_seq'::regclass);


--
-- Name: account_emailconfirmation id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_emailconfirmation ALTER COLUMN id SET DEFAULT nextval('public.account_emailconfirmation_id_seq'::regclass);


--
-- Name: announcements_announcement id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.announcements_announcement ALTER COLUMN id SET DEFAULT nextval('public.announcements_announcement_id_seq'::regclass);


--
-- Name: announcements_image id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.announcements_image ALTER COLUMN id SET DEFAULT nextval('public.announcements_image_id_seq'::regclass);


--
-- Name: announcements_image1 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.announcements_image1 ALTER COLUMN id SET DEFAULT nextval('public.announcements_image1_id_seq'::regclass);


--
-- Name: announcements_image10 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.announcements_image10 ALTER COLUMN id SET DEFAULT nextval('public.announcements_image10_id_seq'::regclass);


--
-- Name: announcements_image2 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.announcements_image2 ALTER COLUMN id SET DEFAULT nextval('public.announcements_image2_id_seq'::regclass);


--
-- Name: announcements_image3 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.announcements_image3 ALTER COLUMN id SET DEFAULT nextval('public.announcements_image3_id_seq'::regclass);


--
-- Name: announcements_image4 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.announcements_image4 ALTER COLUMN id SET DEFAULT nextval('public.announcements_image4_id_seq'::regclass);


--
-- Name: announcements_image5 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.announcements_image5 ALTER COLUMN id SET DEFAULT nextval('public.announcements_image5_id_seq'::regclass);


--
-- Name: announcements_image6 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.announcements_image6 ALTER COLUMN id SET DEFAULT nextval('public.announcements_image6_id_seq'::regclass);


--
-- Name: announcements_image7 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.announcements_image7 ALTER COLUMN id SET DEFAULT nextval('public.announcements_image7_id_seq'::regclass);


--
-- Name: announcements_image8 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.announcements_image8 ALTER COLUMN id SET DEFAULT nextval('public.announcements_image8_id_seq'::regclass);


--
-- Name: announcements_image9 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.announcements_image9 ALTER COLUMN id SET DEFAULT nextval('public.announcements_image9_id_seq'::regclass);


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: conversations_conversation id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.conversations_conversation ALTER COLUMN id SET DEFAULT nextval('public.conversations_conversation_id_seq'::regclass);


--
-- Name: conversations_conversation_participants id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.conversations_conversation_participants ALTER COLUMN id SET DEFAULT nextval('public.conversations_conversation_participants_id_seq'::regclass);


--
-- Name: conversations_message id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.conversations_message ALTER COLUMN id SET DEFAULT nextval('public.conversations_message_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: django_site id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_site ALTER COLUMN id SET DEFAULT nextval('public.django_site_id_seq'::regclass);


--
-- Name: favorites_favoritenorcharge id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.favorites_favoritenorcharge ALTER COLUMN id SET DEFAULT nextval('public.favorites_favoritenorcharge_id_seq'::regclass);


--
-- Name: favorites_favoritenorcharge_nocharges id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.favorites_favoritenorcharge_nocharges ALTER COLUMN id SET DEFAULT nextval('public.favorites_favoritenorcharge_nocharges_id_seq'::regclass);


--
-- Name: games_game id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.games_game ALTER COLUMN id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: games_gametype id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.games_gametype ALTER COLUMN id SET DEFAULT nextval('public.games_gametype_id_seq'::regclass);


--
-- Name: games_photo id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.games_photo ALTER COLUMN id SET DEFAULT nextval('public.games_photo_id_seq'::regclass);


--
-- Name: games_photo2 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.games_photo2 ALTER COLUMN id SET DEFAULT nextval('public.games_photo2_id_seq'::regclass);


--
-- Name: guides_articletype id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.guides_articletype ALTER COLUMN id SET DEFAULT nextval('public.guides_articletype_id_seq'::regclass);


--
-- Name: guides_guide id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.guides_guide ALTER COLUMN id SET DEFAULT nextval('public.guides_guide_id_seq'::regclass);


--
-- Name: guides_photo id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.guides_photo ALTER COLUMN id SET DEFAULT nextval('public.guides_photo_id_seq'::regclass);


--
-- Name: guides_photo2 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.guides_photo2 ALTER COLUMN id SET DEFAULT nextval('public.guides_photo2_id_seq'::regclass);


--
-- Name: lists_list id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lists_list ALTER COLUMN id SET DEFAULT nextval('public.lists_list_id_seq'::regclass);


--
-- Name: lists_list_rooms id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lists_list_rooms ALTER COLUMN id SET DEFAULT nextval('public.lists_list_rooms_id_seq'::regclass);


--
-- Name: news_articletype id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.news_articletype ALTER COLUMN id SET DEFAULT nextval('public.news_articletypenew_id_seq'::regclass);


--
-- Name: news_new id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.news_new ALTER COLUMN id SET DEFAULT nextval('public.news_new_id_seq'::regclass);


--
-- Name: news_photo id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.news_photo ALTER COLUMN id SET DEFAULT nextval('public.news_photo_id_seq'::regclass);


--
-- Name: news_photo2 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.news_photo2 ALTER COLUMN id SET DEFAULT nextval('public.news_photo2_id_seq'::regclass);


--
-- Name: nocharges_categoryapp id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_categoryapp ALTER COLUMN id SET DEFAULT nextval('public.nocharges_categoryapp_id_seq'::regclass);


--
-- Name: nocharges_categorydomain id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_categorydomain ALTER COLUMN id SET DEFAULT nextval('public.nocharges_categorydomain_id_seq'::regclass);


--
-- Name: nocharges_categoryfree id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_categoryfree ALTER COLUMN id SET DEFAULT nextval('public.nocharges_categoryfree_id_seq'::regclass);


--
-- Name: nocharges_categoryos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_categoryos ALTER COLUMN id SET DEFAULT nextval('public.nocharges_categoryos_id_seq'::regclass);


--
-- Name: nocharges_developer id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_developer ALTER COLUMN id SET DEFAULT nextval('public.nocharges_developer_id_seq'::regclass);


--
-- Name: nocharges_distribution id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_distribution ALTER COLUMN id SET DEFAULT nextval('public.nocharges_distribution_id_seq'::regclass);


--
-- Name: nocharges_domain id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_domain ALTER COLUMN id SET DEFAULT nextval('public.nocharges_domain_id_seq'::regclass);


--
-- Name: nocharges_image id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_image ALTER COLUMN id SET DEFAULT nextval('public.nocharges_image_id_seq'::regclass);


--
-- Name: nocharges_image1 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_image1 ALTER COLUMN id SET DEFAULT nextval('public.nocharges_image1_id_seq'::regclass);


--
-- Name: nocharges_image10 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_image10 ALTER COLUMN id SET DEFAULT nextval('public.nocharges_image10_id_seq'::regclass);


--
-- Name: nocharges_image2 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_image2 ALTER COLUMN id SET DEFAULT nextval('public.nocharges_image2_id_seq'::regclass);


--
-- Name: nocharges_image3 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_image3 ALTER COLUMN id SET DEFAULT nextval('public.nocharges_image3_id_seq'::regclass);


--
-- Name: nocharges_image4 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_image4 ALTER COLUMN id SET DEFAULT nextval('public.nocharges_image4_id_seq'::regclass);


--
-- Name: nocharges_image5 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_image5 ALTER COLUMN id SET DEFAULT nextval('public.nocharges_image5_id_seq'::regclass);


--
-- Name: nocharges_image6 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_image6 ALTER COLUMN id SET DEFAULT nextval('public.nocharges_image6_id_seq'::regclass);


--
-- Name: nocharges_image7 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_image7 ALTER COLUMN id SET DEFAULT nextval('public.nocharges_image7_id_seq'::regclass);


--
-- Name: nocharges_image8 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_image8 ALTER COLUMN id SET DEFAULT nextval('public.nocharges_image8_id_seq'::regclass);


--
-- Name: nocharges_image9 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_image9 ALTER COLUMN id SET DEFAULT nextval('public.nocharges_image9_id_seq'::regclass);


--
-- Name: nocharges_nocharge id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_nocharge ALTER COLUMN id SET DEFAULT nextval('public.nocharges_nocharge_id_seq'::regclass);


--
-- Name: profits_articletype id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profits_articletype ALTER COLUMN id SET DEFAULT nextval('public.profits_articletype_id_seq'::regclass);


--
-- Name: profits_category id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profits_category ALTER COLUMN id SET DEFAULT nextval('public.profits_category_id_seq'::regclass);


--
-- Name: profits_photo id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profits_photo ALTER COLUMN id SET DEFAULT nextval('public.profits_photo_id_seq'::regclass);


--
-- Name: profits_photo2 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profits_photo2 ALTER COLUMN id SET DEFAULT nextval('public.profits_photo2_id_seq'::regclass);


--
-- Name: profits_profit id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profits_profit ALTER COLUMN id SET DEFAULT nextval('public.profits_profit_id_seq'::regclass);


--
-- Name: reservations_bookedday id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reservations_bookedday ALTER COLUMN id SET DEFAULT nextval('public.reservations_bookedday_id_seq'::regclass);


--
-- Name: reservations_reservation id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reservations_reservation ALTER COLUMN id SET DEFAULT nextval('public.reservations_reservation_id_seq'::regclass);


--
-- Name: reviews_review id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reviews_review ALTER COLUMN id SET DEFAULT nextval('public.reviews_review_id_seq'::regclass);


--
-- Name: rooms_amenity id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rooms_amenity ALTER COLUMN id SET DEFAULT nextval('public.rooms_amenity_id_seq'::regclass);


--
-- Name: rooms_facility id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rooms_facility ALTER COLUMN id SET DEFAULT nextval('public.rooms_facility_id_seq'::regclass);


--
-- Name: rooms_houserule id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rooms_houserule ALTER COLUMN id SET DEFAULT nextval('public.rooms_houserule_id_seq'::regclass);


--
-- Name: rooms_photo id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rooms_photo ALTER COLUMN id SET DEFAULT nextval('public.rooms_photo_id_seq'::regclass);


--
-- Name: rooms_room id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rooms_room ALTER COLUMN id SET DEFAULT nextval('public.rooms_room_id_seq'::regclass);


--
-- Name: rooms_room_amenities id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rooms_room_amenities ALTER COLUMN id SET DEFAULT nextval('public.rooms_room_amenities_id_seq'::regclass);


--
-- Name: rooms_room_facilities id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rooms_room_facilities ALTER COLUMN id SET DEFAULT nextval('public.rooms_room_facilities_id_seq'::regclass);


--
-- Name: rooms_room_house_rules id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rooms_room_house_rules ALTER COLUMN id SET DEFAULT nextval('public.rooms_room_house_rules_id_seq'::regclass);


--
-- Name: rooms_roomtype id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rooms_roomtype ALTER COLUMN id SET DEFAULT nextval('public.rooms_roomtype_id_seq'::regclass);


--
-- Name: socialaccount_socialaccount id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialaccount ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialaccount_id_seq'::regclass);


--
-- Name: socialaccount_socialapp id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialapp ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialapp_id_seq'::regclass);


--
-- Name: socialaccount_socialapp_sites id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialapp_sites_id_seq'::regclass);


--
-- Name: socialaccount_socialtoken id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialtoken ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialtoken_id_seq'::regclass);


--
-- Name: tiplists_tiplist_games id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tiplists_tiplist_games ALTER COLUMN id SET DEFAULT nextval('public.tiplists_tiplist_games_id_seq'::regclass);


--
-- Name: tiplists_tiplistguide id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tiplists_tiplistguide ALTER COLUMN id SET DEFAULT nextval('public.tiplists_tiplistguide_id_seq'::regclass);


--
-- Name: tiplists_tiplistguide_guides id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tiplists_tiplistguide_guides ALTER COLUMN id SET DEFAULT nextval('public.tiplists_tiplistguide_guides_id_seq'::regclass);


--
-- Name: tiplists_tiplistnew_news id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tiplists_tiplistnew_news ALTER COLUMN id SET DEFAULT nextval('public.tiplists_tiplistnew_news_id_seq'::regclass);


--
-- Name: tiplists_tiplistprofit id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tiplists_tiplistprofit ALTER COLUMN id SET DEFAULT nextval('public.tiplists_tiplistprofit_id_seq'::regclass);


--
-- Name: tiplists_tiplistprofit_profits id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tiplists_tiplistprofit_profits ALTER COLUMN id SET DEFAULT nextval('public.tiplists_tiplistprofit_profits_id_seq'::regclass);


--
-- Name: tips_photo id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tips_photo ALTER COLUMN id SET DEFAULT nextval('public.tips_photo_id_seq'::regclass);


--
-- Name: tips_photo2 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tips_photo2 ALTER COLUMN id SET DEFAULT nextval('public.tips_photo2_id_seq'::regclass);


--
-- Name: tips_tip id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tips_tip ALTER COLUMN id SET DEFAULT nextval('public.tips_tip_id_seq'::regclass);


--
-- Name: tips_tiptype id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tips_tiptype ALTER COLUMN id SET DEFAULT nextval('public.tips_tiptype_id_seq'::regclass);


--
-- Name: tutorials_articletype id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tutorials_articletype ALTER COLUMN id SET DEFAULT nextval('public.tutorials_articletype_id_seq'::regclass);


--
-- Name: tutorials_photo id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tutorials_photo ALTER COLUMN id SET DEFAULT nextval('public.tutorials_photo_id_seq'::regclass);


--
-- Name: tutorials_photo2 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tutorials_photo2 ALTER COLUMN id SET DEFAULT nextval('public.tutorials_photo2_id_seq'::regclass);


--
-- Name: tutorials_tutorial id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tutorials_tutorial ALTER COLUMN id SET DEFAULT nextval('public.tutorials_tutorial_id_seq'::regclass);


--
-- Name: users_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user ALTER COLUMN id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Name: users_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user_groups ALTER COLUMN id SET DEFAULT nextval('public.users_user_groups_id_seq'::regclass);


--
-- Name: users_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.users_user_user_permissions_id_seq'::regclass);


--
-- Data for Name: account_emailaddress; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.account_emailaddress (id, email, verified, "primary", user_id) FROM stdin;
1	minka@gmail.com	t	t	10
2	jaka@gmail.com	f	t	11
\.


--
-- Data for Name: account_emailconfirmation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.account_emailconfirmation (id, created, sent, key, email_address_id) FROM stdin;
\.


--
-- Data for Name: announcements_announcement; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.announcements_announcement (id, created, updated, title, host_id, caption, content, overview, paragraph1, paragraph10, paragraph2, paragraph3, paragraph4, paragraph5, paragraph6, paragraph7, paragraph8, paragraph9, "paragraphContent1", "paragraphContent10", "paragraphContent2", "paragraphContent3", "paragraphContent4", "paragraphContent5", "paragraphContent6", "paragraphContent7", "paragraphContent8", "paragraphContent9", poster_path, poster_path1, poster_path10, poster_path2, poster_path3, poster_path4, poster_path5, poster_path6, poster_path7, poster_path8, poster_path9, promo_end_date, slug, video) FROM stdin;
1	2023-02-15 04:03:05.037807+00	2023-02-15 04:03:05.037831+00	Maintenace membutuhkan 3 jam	1	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2023-04-05 03:54:39.324871+00		\N
2	2023-04-05 03:56:38.06068+00	2023-04-05 03:56:38.060691+00	Percayakan keamanan anda kepada tidak ada	1	adasd	asdasd	asdasd																																2023-04-21 03:54:57+00	percayakan-keamanan-anda-kepada-tidak-ada	\N
3	2023-04-05 07:47:04.191618+00	2023-04-05 07:49:29.637644+00	What's New In GNOME 44	1	After its usual 6-month release cycle, GNOME 44 will be released today. Read on	For this release, the GNOME Shell quick settings menu has received a lot of attention:\r\n\r\nThere's a new background apps menu which shows applications that run in the background without a visible window, allowing to close them. This only works for Flatpak applications for now. \r\nThe Bluetooth button now has a menu which displays connected devices, as well as allowing devices to be connected and disconnected.\r\nQuick settings buttons now have descriptions. For example, previously the Power Mode button would display only its current mode, e.g., Balanced; with this release, the main button text shows Power Mode with the current power mode as its description, e.g., Balanced (this can be seen in the background apps screenshot above).	Quick Settings menu improvements	It's worth noting I couldn't find a way to re-activate an app running in the background—if I close the Discord window (and it's enabled to close to the tray), it shows up in this list, but clicking it doesn't allow re-opening the Discord window. So either I missed something (let me know in the comments!), or this is not supported.																				announcement_images/icon_th.png											2023-04-05 07:46:04+00	whats-new-in-gnome-44	\N
\.


--
-- Data for Name: announcements_image; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.announcements_image (id, created, updated, caption, file, announcement_id) FROM stdin;
\.


--
-- Data for Name: announcements_image1; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.announcements_image1 (id, created, updated, caption, file, announcement_id) FROM stdin;
\.


--
-- Data for Name: announcements_image10; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.announcements_image10 (id, created, updated, caption, file, announcement_id) FROM stdin;
\.


--
-- Data for Name: announcements_image2; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.announcements_image2 (id, created, updated, caption, file, announcement_id) FROM stdin;
\.


--
-- Data for Name: announcements_image3; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.announcements_image3 (id, created, updated, caption, file, announcement_id) FROM stdin;
\.


--
-- Data for Name: announcements_image4; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.announcements_image4 (id, created, updated, caption, file, announcement_id) FROM stdin;
\.


--
-- Data for Name: announcements_image5; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.announcements_image5 (id, created, updated, caption, file, announcement_id) FROM stdin;
\.


--
-- Data for Name: announcements_image6; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.announcements_image6 (id, created, updated, caption, file, announcement_id) FROM stdin;
\.


--
-- Data for Name: announcements_image7; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.announcements_image7 (id, created, updated, caption, file, announcement_id) FROM stdin;
\.


--
-- Data for Name: announcements_image8; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.announcements_image8 (id, created, updated, caption, file, announcement_id) FROM stdin;
\.


--
-- Data for Name: announcements_image9; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.announcements_image9 (id, created, updated, caption, file, announcement_id) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add content type	4	add_contenttype
14	Can change content type	4	change_contenttype
15	Can delete content type	4	delete_contenttype
16	Can view content type	4	view_contenttype
17	Can add session	5	add_session
18	Can change session	5	change_session
19	Can delete session	5	delete_session
20	Can view session	5	view_session
21	Can add user	6	add_user
22	Can change user	6	change_user
23	Can delete user	6	delete_user
24	Can view user	6	view_user
25	Can add room	7	add_room
26	Can change room	7	change_room
27	Can delete room	7	delete_room
28	Can view room	7	view_room
29	Can add Room Type	8	add_roomtype
30	Can change Room Type	8	change_roomtype
31	Can delete Room Type	8	delete_roomtype
32	Can view Room Type	8	view_roomtype
33	Can add amenity	9	add_amenity
34	Can change amenity	9	change_amenity
35	Can delete amenity	9	delete_amenity
36	Can view amenity	9	view_amenity
37	Can add facility	10	add_facility
38	Can change facility	10	change_facility
39	Can delete facility	10	delete_facility
40	Can view facility	10	view_facility
41	Can add House Rule	11	add_houserule
42	Can change House Rule	11	change_houserule
43	Can delete House Rule	11	delete_houserule
44	Can view House Rule	11	view_houserule
45	Can add photo	12	add_photo
46	Can change photo	12	change_photo
47	Can delete photo	12	delete_photo
48	Can view photo	12	view_photo
49	Can add review	13	add_review
50	Can change review	13	change_review
51	Can delete review	13	delete_review
52	Can view review	13	view_review
53	Can add reservation	14	add_reservation
54	Can change reservation	14	change_reservation
55	Can delete reservation	14	delete_reservation
56	Can view reservation	14	view_reservation
57	Can add Booked Day	15	add_bookedday
58	Can change Booked Day	15	change_bookedday
59	Can delete Booked Day	15	delete_bookedday
60	Can view Booked Day	15	view_bookedday
61	Can add list	16	add_list
62	Can change list	16	change_list
63	Can delete list	16	delete_list
64	Can view list	16	view_list
65	Can add conversation	17	add_conversation
66	Can change conversation	17	change_conversation
67	Can delete conversation	17	delete_conversation
68	Can view conversation	17	view_conversation
69	Can add message	18	add_message
70	Can change message	18	change_message
71	Can delete message	18	delete_message
72	Can view message	18	view_message
100	Can add API key	34	add_apikey
101	Can change API key	34	change_apikey
102	Can delete API key	34	delete_apikey
103	Can view API key	34	view_apikey
104	Can add Game Type	35	add_gametype
105	Can change Game Type	35	change_gametype
106	Can delete Game Type	35	delete_gametype
107	Can view Game Type	35	view_gametype
108	Can add photo1	36	add_photo1
109	Can change photo1	36	change_photo1
110	Can delete photo1	36	delete_photo1
111	Can view photo1	36	view_photo1
112	Can add game	37	add_game
113	Can change game	37	change_game
114	Can delete game	37	delete_game
115	Can view game	37	view_game
116	Can add photo2	38	add_photo2
117	Can change photo2	38	change_photo2
118	Can delete photo2	38	delete_photo2
119	Can view photo2	38	view_photo2
120	Can add photo	39	add_photo
121	Can change photo	39	change_photo
122	Can delete photo	39	delete_photo
123	Can view photo	39	view_photo
124	Can add Tip Type	40	add_tiptype
125	Can change Tip Type	40	change_tiptype
126	Can delete Tip Type	40	delete_tiptype
127	Can view Tip Type	40	view_tiptype
128	Can add tip	41	add_tip
129	Can change tip	41	change_tip
130	Can delete tip	41	delete_tip
131	Can view tip	41	view_tip
132	Can add photo2	42	add_photo2
133	Can change photo2	42	change_photo2
134	Can delete photo2	42	delete_photo2
135	Can view photo2	42	view_photo2
136	Can add photo	43	add_photo
137	Can change photo	43	change_photo
138	Can delete photo	43	delete_photo
139	Can view photo	43	view_photo
140	Can add tip list	44	add_tiplist
141	Can change tip list	44	change_tiplist
142	Can delete tip list	44	delete_tiplist
143	Can view tip list	44	view_tiplist
144	Can add tip list tutorial	45	add_tiplisttutorial
145	Can change tip list tutorial	45	change_tiplisttutorial
146	Can delete tip list tutorial	45	delete_tiplisttutorial
147	Can view tip list tutorial	45	view_tiplisttutorial
148	Can add Article Type	46	add_articletype
149	Can change Article Type	46	change_articletype
150	Can delete Article Type	46	delete_articletype
151	Can view Article Type	46	view_articletype
152	Can add profit	47	add_profit
153	Can change profit	47	change_profit
154	Can delete profit	47	delete_profit
155	Can view profit	47	view_profit
156	Can add photo2	48	add_photo2
157	Can change photo2	48	change_photo2
158	Can delete photo2	48	delete_photo2
159	Can view photo2	48	view_photo2
160	Can add photo	49	add_photo
161	Can change photo	49	change_photo
162	Can delete photo	49	delete_photo
163	Can view photo	49	view_photo
164	Can add free list	50	add_freelist
165	Can change free list	50	change_freelist
166	Can delete free list	50	delete_freelist
167	Can view free list	50	view_freelist
168	Can add tip list profit	51	add_tiplistprofit
169	Can change tip list profit	51	change_tiplistprofit
170	Can delete tip list profit	51	delete_tiplistprofit
171	Can view tip list profit	51	view_tiplistprofit
172	Can add Article Type	52	add_articletype
173	Can change Article Type	52	change_articletype
174	Can delete Article Type	52	delete_articletype
175	Can view Article Type	52	view_articletype
176	Can add photo	53	add_photo
177	Can change photo	53	change_photo
178	Can delete photo	53	delete_photo
179	Can view photo	53	view_photo
180	Can add photo2	54	add_photo2
181	Can change photo2	54	change_photo2
182	Can delete photo2	54	delete_photo2
183	Can view photo2	54	view_photo2
184	Can add tutorial	55	add_tutorial
185	Can change tutorial	55	change_tutorial
186	Can delete tutorial	55	delete_tutorial
187	Can view tutorial	55	view_tutorial
188	Can add photo2	56	add_photo2
189	Can change photo2	56	change_photo2
190	Can delete photo2	56	delete_photo2
191	Can view photo2	56	view_photo2
192	Can add photo	57	add_photo
193	Can change photo	57	change_photo
194	Can delete photo	57	delete_photo
195	Can view photo	57	view_photo
196	Can add new	58	add_new
197	Can change new	58	change_new
198	Can delete new	58	delete_new
199	Can view new	58	view_new
200	Can add Article Type News	59	add_articletypenew
201	Can change Article Type News	59	change_articletypenew
202	Can delete Article Type News	59	delete_articletypenew
203	Can view Article Type News	59	view_articletypenew
204	Can add tip list new	60	add_tiplistnew
205	Can change tip list new	60	change_tiplistnew
206	Can delete tip list new	60	delete_tiplistnew
207	Can view tip list new	60	view_tiplistnew
208	Can add Article Type	61	add_articletype
209	Can change Article Type	61	change_articletype
210	Can delete Article Type	61	delete_articletype
211	Can view Article Type	61	view_articletype
212	Can add guide	62	add_guide
213	Can change guide	62	change_guide
214	Can delete guide	62	delete_guide
215	Can view guide	62	view_guide
216	Can add photo2	63	add_photo2
217	Can change photo2	63	change_photo2
218	Can delete photo2	63	delete_photo2
219	Can view photo2	63	view_photo2
220	Can add photo	64	add_photo
221	Can change photo	64	change_photo
222	Can delete photo	64	delete_photo
223	Can view photo	64	view_photo
224	Can add tip list guide	65	add_tiplistguide
225	Can change tip list guide	65	change_tiplistguide
226	Can delete tip list guide	65	delete_tiplistguide
227	Can view tip list guide	65	view_tiplistguide
228	Can add Article Type	59	add_articletype
229	Can change Article Type	59	change_articletype
230	Can delete Article Type	59	delete_articletype
231	Can view Article Type	59	view_articletype
232	Can add detail	66	add_detail
233	Can change detail	66	change_detail
234	Can delete detail	66	delete_detail
235	Can view detail	66	view_detail
236	Can add comment	67	add_comment
237	Can change comment	67	change_comment
238	Can delete comment	67	delete_comment
239	Can view comment	67	view_comment
240	Can add Category	68	add_category
241	Can change Category	68	change_category
242	Can delete Category	68	delete_category
243	Can view Category	68	view_category
244	Can add Category Free	69	add_categoryfree
245	Can change Category Free	69	change_categoryfree
246	Can delete Category Free	69	delete_categoryfree
247	Can view Category Free	69	view_categoryfree
248	Can add Image6	70	add_image6
249	Can change Image6	70	change_image6
250	Can delete Image6	70	delete_image6
251	Can view Image6	70	view_image6
252	Can add Image10	71	add_image10
253	Can change Image10	71	change_image10
254	Can delete Image10	71	delete_image10
255	Can view Image10	71	view_image10
256	Can add Main Image	72	add_image
257	Can change Main Image	72	change_image
258	Can delete Main Image	72	delete_image
259	Can view Main Image	72	view_image
260	Can add Image9	73	add_image9
261	Can change Image9	73	change_image9
262	Can delete Image9	73	delete_image9
263	Can view Image9	73	view_image9
264	Can add nocharge	74	add_nocharge
265	Can change nocharge	74	change_nocharge
266	Can delete nocharge	74	delete_nocharge
267	Can view nocharge	74	view_nocharge
268	Can add Image7	75	add_image7
269	Can change Image7	75	change_image7
270	Can delete Image7	75	delete_image7
271	Can view Image7	75	view_image7
272	Can add Category App	76	add_categoryapp
273	Can change Category App	76	change_categoryapp
274	Can delete Category App	76	delete_categoryapp
275	Can view Category App	76	view_categoryapp
276	Can add Image4	77	add_image4
277	Can change Image4	77	change_image4
278	Can delete Image4	77	delete_image4
279	Can view Image4	77	view_image4
280	Can add Image1	78	add_image1
281	Can change Image1	78	change_image1
282	Can delete Image1	78	delete_image1
283	Can view Image1	78	view_image1
284	Can add Image3	79	add_image3
285	Can change Image3	79	change_image3
286	Can delete Image3	79	delete_image3
287	Can view Image3	79	view_image3
288	Can add Image5	80	add_image5
289	Can change Image5	80	change_image5
290	Can delete Image5	80	delete_image5
291	Can view Image5	80	view_image5
292	Can add Category OS	81	add_categoryos
293	Can change Category OS	81	change_categoryos
294	Can delete Category OS	81	delete_categoryos
295	Can view Category OS	81	view_categoryos
296	Can add Image2	82	add_image2
297	Can change Image2	82	change_image2
298	Can delete Image2	82	delete_image2
299	Can view Image2	82	view_image2
300	Can add Image8	83	add_image8
301	Can change Image8	83	change_image8
302	Can delete Image8	83	delete_image8
303	Can view Image8	83	view_image8
304	Can add Keywords	84	add_keyword
305	Can change Keywords	84	change_keyword
306	Can delete Keywords	84	delete_keyword
307	Can view Keywords	84	view_keyword
308	Can add Company	85	add_company
309	Can change Company	85	change_company
310	Can delete Company	85	delete_company
311	Can view Company	85	view_company
312	Can add Free from	86	add_freefrom
313	Can change Free from	86	change_freefrom
314	Can delete Free from	86	delete_freefrom
315	Can view Free from	86	view_freefrom
316	Can add Developer	87	add_developer
317	Can change Developer	87	change_developer
318	Can delete Developer	87	delete_developer
319	Can view Developer	87	view_developer
320	Can add Distribution	88	add_distribution
321	Can change Distribution	88	change_distribution
322	Can delete Distribution	88	delete_distribution
323	Can view Distribution	88	view_distribution
324	Can add favorite norcharge	89	add_favoritenorcharge
325	Can change favorite norcharge	89	change_favoritenorcharge
326	Can delete favorite norcharge	89	delete_favoritenorcharge
327	Can view favorite norcharge	89	view_favoritenorcharge
328	Can add Domain	90	add_domain
329	Can change Domain	90	change_domain
330	Can delete Domain	90	delete_domain
331	Can view Domain	90	view_domain
332	Can add announcement	91	add_announcement
333	Can change announcement	91	change_announcement
334	Can delete announcement	91	delete_announcement
335	Can view announcement	91	view_announcement
336	Can add category article	92	add_categoryarticle
337	Can change category article	92	change_categoryarticle
338	Can delete category article	92	delete_categoryarticle
339	Can view category article	92	view_categoryarticle
340	Can add similar article	93	add_similararticle
341	Can change similar article	93	change_similararticle
342	Can delete similar article	93	delete_similararticle
343	Can view similar article	93	view_similararticle
344	Can add recommendation	94	add_recommendation
345	Can change recommendation	94	change_recommendation
346	Can delete recommendation	94	delete_recommendation
347	Can view recommendation	94	view_recommendation
348	Can add category domain	95	add_categorydomain
349	Can change category domain	95	change_categorydomain
350	Can delete category domain	95	delete_categorydomain
351	Can view category domain	95	view_categorydomain
352	Can add Image9	96	add_image9
353	Can change Image9	96	change_image9
354	Can delete Image9	96	delete_image9
355	Can view Image9	96	view_image9
356	Can add Image8	97	add_image8
357	Can change Image8	97	change_image8
358	Can delete Image8	97	delete_image8
359	Can view Image8	97	view_image8
360	Can add Image7	98	add_image7
361	Can change Image7	98	change_image7
362	Can delete Image7	98	delete_image7
363	Can view Image7	98	view_image7
364	Can add Image6	99	add_image6
365	Can change Image6	99	change_image6
366	Can delete Image6	99	delete_image6
367	Can view Image6	99	view_image6
368	Can add Image5	100	add_image5
369	Can change Image5	100	change_image5
370	Can delete Image5	100	delete_image5
371	Can view Image5	100	view_image5
372	Can add Image4	101	add_image4
373	Can change Image4	101	change_image4
374	Can delete Image4	101	delete_image4
375	Can view Image4	101	view_image4
376	Can add Image3	102	add_image3
377	Can change Image3	102	change_image3
378	Can delete Image3	102	delete_image3
379	Can view Image3	102	view_image3
380	Can add Image2	103	add_image2
381	Can change Image2	103	change_image2
382	Can delete Image2	103	delete_image2
383	Can view Image2	103	view_image2
384	Can add Image10	104	add_image10
385	Can change Image10	104	change_image10
386	Can delete Image10	104	delete_image10
387	Can view Image10	104	view_image10
388	Can add Image1	105	add_image1
389	Can change Image1	105	change_image1
390	Can delete Image1	105	delete_image1
391	Can view Image1	105	view_image1
392	Can add Main Image	106	add_image
393	Can change Main Image	106	change_image
394	Can delete Main Image	106	delete_image
395	Can view Main Image	106	view_image
396	Can add Token	107	add_token
397	Can change Token	107	change_token
398	Can delete Token	107	delete_token
399	Can view Token	107	view_token
400	Can add token	108	add_tokenproxy
401	Can change token	108	change_tokenproxy
402	Can delete token	108	delete_tokenproxy
403	Can view token	108	view_tokenproxy
404	Can add site	109	add_site
405	Can change site	109	change_site
406	Can delete site	109	delete_site
407	Can view site	109	view_site
408	Can add email address	110	add_emailaddress
409	Can change email address	110	change_emailaddress
410	Can delete email address	110	delete_emailaddress
411	Can view email address	110	view_emailaddress
412	Can add email confirmation	111	add_emailconfirmation
413	Can change email confirmation	111	change_emailconfirmation
414	Can delete email confirmation	111	delete_emailconfirmation
415	Can view email confirmation	111	view_emailconfirmation
416	Can add social account	112	add_socialaccount
417	Can change social account	112	change_socialaccount
418	Can delete social account	112	delete_socialaccount
419	Can view social account	112	view_socialaccount
420	Can add social application	113	add_socialapp
421	Can change social application	113	change_socialapp
422	Can delete social application	113	delete_socialapp
423	Can view social application	113	view_socialapp
424	Can add social application token	114	add_socialtoken
425	Can change social application token	114	change_socialtoken
426	Can delete social application token	114	delete_socialtoken
427	Can view social application token	114	view_socialtoken
\.


--
-- Data for Name: authtoken_token; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.authtoken_token (key, created, user_id) FROM stdin;
41ed5fc31f30c56d99588fde0e0b55d02f6151aa	2023-07-20 09:38:23.336624+00	10
b298fc6cbfb27c97b8dd21249424a03cc34ff6be	2023-07-21 02:10:12.783624+00	11
\.


--
-- Data for Name: conversations_conversation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.conversations_conversation (id, created, updated) FROM stdin;
\.


--
-- Data for Name: conversations_conversation_participants; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.conversations_conversation_participants (id, conversation_id, user_id) FROM stdin;
\.


--
-- Data for Name: conversations_message; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.conversations_message (id, created, updated, message, conversation_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2021-12-16 08:21:44.038091+00	1	Amenities1	1	[{"added": {}}]	9	1
2	2021-12-16 08:21:50.607071+00	1	Free wifi	1	[{"added": {}}]	10	1
3	2021-12-16 08:22:00.470083+00	1	No Smoking	1	[{"added": {}}]	11	1
4	2021-12-16 08:22:08.512326+00	1	Hotel	1	[{"added": {}}]	8	1
5	2021-12-17 02:26:04.454637+00	1	Api test room	2	[{"changed": {"fields": ["instant_book"]}}]	7	1
6	2021-12-18 07:14:33.826194+00	3	Ola	3		7	1
7	2021-12-18 07:23:54.06551+00	4	Ola	3		7	1
8	2021-12-18 07:25:53.568713+00	5	Ola	3		7	1
9	2021-12-18 07:54:53.744669+00	6	Ola	3		7	1
10	2021-12-22 01:58:05.960832+00	2	versta	3		6	1
11	2021-12-22 02:21:08.423684+00	3	versta	3		6	1
12	2021-12-22 02:21:42.877042+00	4	versta	3		6	1
13	2021-12-22 04:50:47.230462+00	2	Ola	2	[{"changed": {"fields": ["price"]}}]	7	1
14	2021-12-28 03:24:21.868715+00	xkSAuvHu.pbkdf2_sha256$150000$UYmhTMlCcky1$LTi2dDgd5xaqh92li/BLZyMTZ77HJzEB4cwmkZzSHpc=	my-remote-service	3		34	1
15	2021-12-28 03:24:21.876929+00	7S1THZ6q.pbkdf2_sha256$150000$gS4kLSBqDGzE$7X2lalt9+a2GZSFlOXRuaeIEGZovVpl+hk+e7BcawXU=	my-remote-service	3		34	1
16	2021-12-28 03:24:21.879917+00	A1a56Vm8.pbkdf2_sha256$150000$BykqHaNY39UH$E7U9kapFxEEhc3iz4GXo2U51/gM38t7tHFlPJzBHNuA=	my-remote-service	3		34	1
17	2021-12-28 03:24:49.046054+00	sv6nDcQN.pbkdf2_sha256$150000$7RMRSKo0jRxZ$EoFhMjlBlLAb1CoU31rh7IThjmFoF/2IMAcWXz6wjXM=	firts_mylist	1	[{"added": {}}]	34	1
18	2021-12-28 03:31:36.990413+00	VLnBmfOD.pbkdf2_sha256$150000$f7cVwGWiOZMW$+sGfOwwn8pAjoqEHTXS1kFXxwGq0rqkHd7gJuaoamWo=	my-remote-service	3		34	1
19	2022-01-10 08:07:39.779902+00	1	Adventure	1	[{"added": {}}]	35	1
20	2022-01-10 08:13:48.590642+00	2	Watch Notion	1	[{"added": {}}]	37	1
21	2022-01-10 08:24:10.567833+00	3	Watch Norhem	1	[{"added": {}}]	37	1
22	2022-01-10 08:28:08.942893+00	4	Watch Norhem	1	[{"added": {}}]	37	1
23	2022-01-10 08:28:39.48529+00	4	Watch Norhem	3		37	1
24	2022-01-10 08:28:39.4886+00	3	Watch Norhem	3		37	1
25	2022-01-10 08:28:39.492024+00	2	Watch Notion	3		37	1
26	2022-01-10 08:29:12.993471+00	5	Legion	1	[{"added": {}}]	37	1
27	2022-01-10 08:32:17.910286+00	6	Assa	1	[{"added": {}}, {"added": {"name": "photo", "object": "File1"}}]	37	1
28	2022-01-10 08:43:39.335046+00	7	Lianm	1	[{"added": {}}]	37	1
29	2022-01-10 09:24:00.284978+00	1	Windows	1	[{"added": {}}]	40	1
30	2022-01-10 09:25:06.625539+00	1	Cara membuat auto	1	[{"added": {}}, {"added": {"name": "photo", "object": "y files"}}]	41	1
31	2022-01-10 14:29:07.752857+00	8	Test	3		37	1
32	2022-01-11 06:51:55.906154+00	12	gdgdffffffffffffffffff	3		37	1
33	2022-01-13 03:26:53.176509+00	1	My Favourites Games Article	3		44	1
34	2022-02-04 09:54:50.247798+00	qogcF0vl.pbkdf2_sha256$150000$eQ9vIxe8Wv4Y$Z85LXsTBvzbl6Zi33D+YlTDBKdOdN09n6S3Z3p2e/Qw=	admin	1	[{"added": {}}]	34	1
35	2022-02-21 04:48:47.213174+00	6	Assa	2	[{"changed": {"fields": ["link_tutorial"]}}]	37	1
36	2022-02-21 04:49:09.523199+00	5	Legion	2	[{"changed": {"fields": ["link_tutorial"]}}]	37	1
37	2022-03-17 03:06:18.273189+00	10	asdadl	3		37	1
38	2022-03-23 04:07:27.165416+00	1	Software	1	[{"added": {}}]	46	1
39	2022-03-23 04:46:22.562382+00	1	gogo	1	[{"added": {}}]	50	1
40	2022-03-24 03:49:17.001187+00	1	Windows	1	[{"added": {}}]	52	1
41	2022-03-24 03:50:59.655312+00	1	My Favourites Tips Article	3		45	1
42	2022-03-24 04:19:32.127011+00	1	My Favourites Tips Article	3		45	1
43	2022-03-24 04:31:08.196148+00	1	My Favourites Tips Article	3		45	1
44	2022-03-24 04:31:10.154252+00	1	My Favourites Tips Article	3		45	1
45	2022-03-24 04:31:11.782567+00	1	My Favourites Tips Article	3		45	1
46	2022-03-24 04:31:18.608879+00	1	My Favourites Tips Article	3		45	1
47	2022-03-24 04:32:57.982265+00	1	My Favourites Tips Article	3		45	1
48	2022-03-24 04:45:17.573717+00	1	Test Tutorial Make	3		55	1
49	2022-03-24 14:16:49.520365+00	1	FreeF	1	[{"added": {}}]	59	1
50	2022-03-24 14:51:23.031304+00	1	Free Data	3		58	1
51	2022-03-25 02:11:58.667073+00	1	YugiOh Duel Deck	1	[{"added": {}}]	61	1
52	2022-03-26 02:09:17.846804+00	3	Free3	3		47	1
53	2022-08-08 04:06:07.165822+00	2	Arcade	1	[{"added": {}}]	35	1
54	2022-08-10 02:37:59.254841+00	3	caption action	1	[{"added": {}}]	35	1
55	2022-08-10 02:39:53.888946+00	3	caption action	3		35	1
56	2022-08-10 14:46:09.885228+00	4	Action	1	[{"added": {}}]	35	1
57	2022-08-10 14:46:13.626251+00	4	Action	2	[]	35	1
58	2022-08-11 02:27:17.133839+00	1	Epic Games	1	[{"added": {}}]	68	1
59	2022-08-11 02:32:15.141883+00	7	Madagascar	1	[{"added": {}}, {"added": {"name": "photo", "object": "Landscpae"}}]	47	1
60	2022-08-11 07:39:48.450327+00	8	test	1	[{"added": {}}]	47	1
61	2022-08-11 07:40:22.129329+00	8	test	3		47	1
62	2022-08-12 02:00:20.517443+00	7	Madagascar	3		47	1
63	2022-08-12 02:01:34.13534+00	9	Mulaid	1	[{"added": {}}, {"added": {"name": "photo", "object": "jamesweb"}}, {"added": {"name": "photo", "object": "amazonian"}}]	47	1
64	2022-08-12 02:20:15.36051+00	9	Mulaid	3		47	1
65	2022-08-12 02:21:03.237091+00	11	ti lemo	1	[{"added": {}}, {"added": {"name": "Photo 1", "object": "cap"}}, {"added": {"name": "Photo 1", "object": "nugu"}}]	47	1
66	2022-08-12 03:23:43.295314+00	1	Grapich	1	[{"added": {}}]	76	1
67	2022-08-12 03:23:56.398323+00	1	Game	1	[{"added": {}}]	69	1
68	2022-08-12 03:24:14.493626+00	1	Windows	1	[{"added": {}}]	81	1
69	2022-08-12 03:24:30.628504+00	1	tutorial	1	[{"added": {}}]	84	1
70	2022-08-12 03:24:41.120589+00	2	figma	1	[{"added": {}}]	84	1
71	2022-08-12 03:54:30.247599+00	1	Title	1	[{"added": {}}, {"added": {"name": "Main Image", "object": "sdfsdf"}}, {"added": {"name": "Main Image", "object": "ghghgh"}}]	74	1
72	2022-08-12 05:07:36.874021+00	2	sdfs	1	[{"added": {}}]	74	1
73	2022-08-12 05:07:48.425478+00	2	sdfs	3		74	1
74	2022-08-12 15:12:34.417737+00	1	My fav	1	[{"added": {}}]	89	1
75	2022-08-12 15:12:42.688205+00	1	My fav	2	[{"changed": {"fields": ["nocharges"]}}]	89	1
76	2022-08-13 06:43:57.977245+00	1	Free	1	[{"added": {}}]	90	1
77	2022-08-13 06:44:04.341417+00	2	Latest	1	[{"added": {}}]	90	1
78	2022-08-13 06:44:15.142155+00	3	Tutorial	1	[{"added": {}}]	90	1
79	2022-08-13 06:45:15.843277+00	1	Title	2	[{"changed": {"fields": ["domain"]}}]	74	1
80	2022-08-13 06:48:34.92622+00	3	Tutorial membuat linux for all	1	[{"added": {}}]	74	1
81	2022-08-18 02:49:41.562491+00	4	tutori2	1	[{"added": {}}]	74	1
82	2022-08-18 02:50:01.787155+00	5	tut3	1	[{"added": {}}]	74	1
83	2022-08-18 02:50:33.826503+00	6	tu4	1	[{"added": {}}]	74	1
84	2022-08-21 09:35:19.087488+00	1	Epic Games	1	[{"added": {}}]	87	1
85	2022-08-21 09:35:38.118399+00	6	tu4	2	[{"changed": {"fields": ["developer"]}}]	74	1
86	2022-08-21 09:37:09.58336+00	2	Activision	1	[{"added": {}}]	87	1
87	2022-08-21 09:37:24.721349+00	6	tu4	2	[{"changed": {"fields": ["developer"]}}]	74	1
88	2022-08-21 09:37:36.376267+00	1	Epic	1	[{"added": {}}]	88	1
89	2022-08-21 09:37:46.631817+00	1	Epic Games	2	[{"changed": {"fields": ["title"]}}]	88	1
90	2022-08-21 09:37:58.045183+00	1	Title	2	[{"changed": {"fields": ["developer", "distribution"]}}]	74	1
91	2022-08-23 04:44:46.183081+00	1	Title	2	[{"changed": {"fields": ["poster_path"]}}]	74	1
92	2022-08-23 04:44:59.425313+00	1	Title	2	[{"changed": {"fields": ["poster_path"]}}]	74	1
93	2022-08-23 05:00:39.664414+00	1	Title	2	[{"changed": {"fields": ["poster_path"]}}]	74	1
94	2022-08-23 07:51:06.108066+00	7	micla	1	[{"added": {}}]	74	1
95	2022-08-23 07:52:31.174368+00	8	Tras	1	[{"added": {}}]	74	1
96	2022-08-23 08:29:18.449106+00	8	Tras	2	[{"changed": {"fields": ["domain"]}}]	74	1
97	2022-08-23 08:32:56.628601+00	9	latest3	1	[{"added": {}}]	74	1
98	2022-08-27 01:26:34.967679+00	10	title4	1	[{"added": {}}]	74	1
99	2022-08-27 01:27:42.332078+00	11	ka5	1	[{"added": {}}]	74	1
100	2022-08-27 01:28:05.301338+00	12	ad6	1	[{"added": {}}]	74	1
101	2022-08-27 01:28:41.218927+00	13	ad7	1	[{"added": {}}]	74	1
102	2022-08-27 01:29:19.914661+00	14	as8a	1	[{"added": {}}]	74	1
103	2022-08-27 01:29:42.925144+00	15	dad	1	[{"added": {}}]	74	1
104	2022-08-27 01:31:03.89748+00	16	werwer	1	[{"added": {}}]	74	1
105	2022-08-27 01:31:26.687111+00	17	11wqe	1	[{"added": {}}]	74	1
106	2022-08-27 01:31:48.542327+00	18	12adwas	1	[{"added": {}}]	74	1
107	2022-08-27 01:32:10.463974+00	19	13asd	1	[{"added": {}}]	74	1
108	2022-08-27 01:32:32.478644+00	20	14asdasd	1	[{"added": {}}]	74	1
109	2022-08-27 01:34:38.754098+00	21	15	1	[{"added": {}}]	74	1
110	2022-08-27 01:35:02.132797+00	22	16asda	1	[{"added": {}}]	74	1
111	2022-08-27 01:35:28.069044+00	23	17yuyu	1	[{"added": {}}]	74	1
112	2022-08-27 01:35:53.9587+00	24	18ii	1	[{"added": {}}]	74	1
113	2022-08-27 01:36:23.383563+00	25	19iuaids	1	[{"added": {}}]	74	1
114	2022-08-27 01:36:50.000734+00	26	20sdss	1	[{"added": {}}]	74	1
115	2022-08-27 03:52:19.520742+00	2	Application	1	[{"added": {}}]	69	1
116	2022-08-27 03:52:25.767235+00	18	12adwas	2	[{"changed": {"fields": ["category_free"]}}]	74	1
117	2022-08-27 03:57:42.785564+00	18	12adwas	2	[{"changed": {"fields": ["category_free"]}}]	74	1
118	2022-08-30 03:38:59.488371+00	27	free	1	[{"added": {}}]	74	1
119	2022-08-30 06:58:08.261083+00	27	free	2	[{"changed": {"fields": ["poster_path"]}}]	74	1
120	2022-08-30 07:49:38.348038+00	27	free	2	[]	74	1
121	2022-08-30 07:49:48.113442+00	27	free	2	[{"changed": {"fields": ["poster_path"]}}]	74	1
122	2022-08-30 07:49:58.83145+00	27	free	2	[{"changed": {"fields": ["poster_path"]}}]	74	1
123	2022-08-30 08:12:28.300869+00	27	Rumbleverse	2	[{"changed": {"fields": ["title"]}}]	74	1
124	2022-08-30 08:16:03.419448+00	28	Destiny 2	1	[{"added": {}}]	74	1
125	2022-08-30 08:16:57.849761+00	28	Destiny 2	2	[{"changed": {"fields": ["domain"]}}]	74	1
126	2022-08-30 14:01:30.016762+00	1	‘Nephrite’ is a Classy New GTK Theme for Linux Desktops	2	[{"changed": {"fields": ["title", "overview", "poster_path"]}}]	74	1
127	2022-08-30 14:01:49.447235+00	1	Nephrite’ is a Classy New GTK Theme for Linux Desktops	2	[{"changed": {"fields": ["title", "poster_path"]}}]	74	1
128	2022-08-30 14:03:34.292319+00	3	GNOME’s New Quick Toggles Land in Ubuntu 22.10	2	[{"changed": {"fields": ["title", "overview", "poster_path"]}}]	74	1
129	2022-08-30 14:07:31.005232+00	4	Want to Watch Blu-rays in VLC on Ubuntu? You NEED MakeMKV	2	[{"changed": {"fields": ["title", "overview", "poster_path"]}}]	74	1
130	2022-08-30 14:17:48.122116+00	29	How to Add WebP Support to Ubuntu 22.04 LTS	1	[{"added": {}}]	74	1
131	2022-12-21 05:07:52.77526+00	30	Look	1	[{"added": {}}]	74	1
132	2022-12-24 09:24:40.082103+00	28	Dapatkan Destiny 2 gratis di Epic Games Store	2	[{"changed": {"fields": ["title"]}}]	74	1
133	2022-12-24 09:28:33.664405+00	28	Dapatkan Rumbleverse gratis di Epic Games Store	2	[{"changed": {"fields": ["title"]}}]	74	1
134	2022-12-24 09:34:22.783295+00	27	Amazon prime bagi gratis Destiny 2	2	[{"changed": {"fields": ["title", "poster_path"]}}]	74	1
135	2022-12-24 09:34:31.221239+00	27	Amazon prime bagi gratis Destiny 2	2	[{"changed": {"fields": ["poster_path"]}}]	74	1
136	2022-12-26 07:38:28.505467+00	27	Amazon prime bagi gratis Destiny 2 kesempatan terbatas	2	[{"changed": {"fields": ["title"]}}]	74	1
137	2023-01-12 02:29:21.49437+00	28	Dapatkan Rumbleverse gratis di Epic Games Store	2	[{"changed": {"fields": ["poster_path1"]}}]	74	1
138	2023-01-12 02:39:10.5993+00	30	Look	2	[{"changed": {"fields": ["caption", "overview", "content", "developer", "video", "title1", "content1", "poster_path1", "title2", "content2", "poster_path2", "title3", "content3", "poster_path3", "title4", "content4", "poster_path4", "title5", "content5"]}}]	74	1
139	2023-01-12 02:39:22.1701+00	30	Look	2	[{"changed": {"fields": ["poster_path"]}}]	74	1
140	2023-01-12 02:41:01.397568+00	30	Look	2	[{"changed": {"fields": ["poster_path", "poster_path5", "title6", "content6", "poster_path6", "title7", "content7", "poster_path7", "title8", "content8", "poster_path8", "title9", "content9", "poster_path9", "title10", "content10", "poster_path10"]}}]	74	1
141	2023-01-12 02:56:11.345422+00	30	First Version of Vanilla OS is Available to Download	2	[{"changed": {"fields": ["title"]}}]	74	1
142	2023-01-16 08:08:40.874533+00	2	Linux	1	[{"added": {}}]	81	1
143	2023-01-16 08:19:44.385718+00	3	Manyo M	1	[{"added": {}}]	87	1
144	2023-01-16 08:19:51.011193+00	4	Lookmu	1	[{"added": {}}]	87	1
145	2023-01-16 08:20:00.382318+00	5	Maspin	1	[{"added": {}}]	87	1
146	2023-02-15 04:03:05.039123+00	1	Maintenace membutuhkan 3 jam	1	[{"added": {}}]	91	1
147	2023-02-23 07:06:33.291353+00	31	cucung	1	[{"added": {}}]	74	1
148	2023-02-23 08:05:15.806618+00	32	lalabo	1	[{"added": {}}]	74	1
149	2023-02-24 03:26:50.751398+00	30	First Version of Vanilla OS is Available to Download	2	[{"changed": {"fields": ["keywords"]}}]	74	1
150	2023-02-24 03:28:49.384482+00	32	lalabo	3		74	1
151	2023-02-24 03:28:49.387597+00	31	cucung	3		74	1
152	2023-02-24 03:33:42.823812+00	29	How to Add WebP Support to Ubuntu 22.04 LTS	2	[{"changed": {"fields": ["keywords"]}}]	74	1
153	2023-02-24 07:23:26.707028+00	29	How to Add WebP Support to Ubuntu 22.04 LTS	2	[{"changed": {"fields": ["domain", "developer", "distribution", "category_os", "category_app", "category_free"]}}]	74	1
154	2023-02-24 07:25:23.404658+00	4	Want to Watch Blu-rays in VLC on Ubuntu? You NEED MakeMKV	2	[{"changed": {"fields": ["developer", "distribution", "category_os", "category_app", "category_free", "keywords"]}}]	74	1
155	2023-02-24 08:14:47.047883+00	28	Dapatkan Rumbleverse gratis di Epic Games Store	2	[{"changed": {"fields": ["keywords"]}}]	74	1
156	2023-02-24 08:18:39.530254+00	1	Nephrite’ is a Classy New GTK Theme for Linux Desktops	2	[{"changed": {"fields": ["keywords"]}}]	74	1
157	2023-02-24 08:30:17.241604+00	3	GNOME’s New Quick Toggles Land in Ubuntu 22.10	2	[{"changed": {"fields": ["keywords"]}}]	74	1
158	2023-02-24 08:31:50.988382+00	3	game	1	[{"added": {}}]	84	1
159	2023-02-24 08:31:55.95412+00	28	Dapatkan Rumbleverse gratis di Epic Games Store	2	[{"changed": {"fields": ["keywords"]}}]	74	1
160	2023-02-24 08:32:17.001177+00	1	Nephrite’ is a Classy New GTK Theme for Linux Desktops	2	[{"changed": {"fields": ["domain", "category_free"]}}]	74	1
161	2023-02-24 08:44:32.761983+00	6	tu4	2	[{"changed": {"fields": ["keywords"]}}]	74	1
162	2023-02-24 08:51:13.339883+00	30	First Version of Vanilla OS is Available to Download	2	[{"changed": {"fields": ["keywords"]}}]	74	1
163	2023-02-24 08:51:48.942769+00	29	How to Add WebP Support to Ubuntu 22.04 LTS	2	[{"changed": {"fields": ["keywords"]}}]	74	1
164	2023-02-24 08:52:05.732721+00	27	Amazon prime bagi gratis Destiny 2 kesempatan terbatas	2	[{"changed": {"fields": ["keywords"]}}]	74	1
165	2023-02-24 08:52:14.627596+00	26	20sdss	2	[{"changed": {"fields": ["keywords"]}}]	74	1
166	2023-02-24 08:52:30.388076+00	25	19iuaids	2	[{"changed": {"fields": ["keywords"]}}]	74	1
167	2023-02-24 08:52:36.535425+00	24	18ii	2	[{"changed": {"fields": ["keywords"]}}]	74	1
168	2023-02-24 08:52:41.968184+00	23	17yuyu	2	[{"changed": {"fields": ["keywords"]}}]	74	1
169	2023-02-24 08:52:48.123159+00	22	16asda	2	[{"changed": {"fields": ["keywords"]}}]	74	1
170	2023-02-24 08:52:53.197243+00	21	15	2	[{"changed": {"fields": ["keywords"]}}]	74	1
171	2023-02-24 08:52:58.511855+00	20	14asdasd	2	[{"changed": {"fields": ["keywords"]}}]	74	1
172	2023-02-24 08:53:03.83073+00	19	13asd	2	[{"changed": {"fields": ["keywords"]}}]	74	1
173	2023-02-24 08:53:09.648918+00	18	12adwas	2	[{"changed": {"fields": ["keywords"]}}]	74	1
174	2023-02-24 08:53:14.261065+00	17	11wqe	2	[{"changed": {"fields": ["keywords"]}}]	74	1
175	2023-02-24 08:53:18.875992+00	16	werwer	2	[{"changed": {"fields": ["keywords"]}}]	74	1
176	2023-02-24 08:53:23.312354+00	15	dad	2	[{"changed": {"fields": ["keywords"]}}]	74	1
177	2023-02-24 08:53:35.001784+00	14	as8a	2	[{"changed": {"fields": ["keywords"]}}]	74	1
178	2023-02-24 08:53:40.429649+00	13	ad7	2	[{"changed": {"fields": ["keywords"]}}]	74	1
179	2023-02-24 08:53:47.750264+00	12	ad6	2	[{"changed": {"fields": ["keywords"]}}]	74	1
180	2023-02-24 08:53:53.032248+00	11	ka5	2	[{"changed": {"fields": ["keywords"]}}]	74	1
181	2023-02-24 08:53:57.480267+00	10	title4	2	[{"changed": {"fields": ["keywords"]}}]	74	1
182	2023-02-24 08:54:07.629583+00	9	latest3	2	[{"changed": {"fields": ["keywords"]}}]	74	1
183	2023-02-24 08:54:17.683444+00	8	Tras	2	[{"changed": {"fields": ["keywords"]}}]	74	1
184	2023-02-24 08:54:25.640974+00	7	micla	2	[{"changed": {"fields": ["keywords"]}}]	74	1
185	2023-02-24 08:54:34.810191+00	6	tu4	2	[{"changed": {"fields": ["keywords"]}}]	74	1
186	2023-02-24 08:54:40.270483+00	5	tut3	2	[{"changed": {"fields": ["keywords"]}}]	74	1
187	2023-02-24 08:54:50.745681+00	4	Want to Watch Blu-rays in VLC on Ubuntu? You NEED MakeMKV	2	[{"changed": {"fields": ["keywords"]}}]	74	1
188	2023-02-24 08:55:00.879786+00	1	Nephrite’ is a Classy New GTK Theme for Linux Desktops	2	[{"changed": {"fields": ["keywords"]}}]	74	1
189	2023-02-24 09:23:37.568311+00	3	GNOME’s New Quick Toggles Land in Ubuntu 22.10	2	[{"changed": {"fields": ["category_free"]}}]	74	1
190	2023-02-24 09:25:36.034582+00	27	Amazon prime bagi gratis Destiny 2 kesempatan terbatas	2	[{"changed": {"fields": ["category_free"]}}]	74	1
191	2023-02-25 04:18:00.258271+00	30	First Version of Vanilla OS is Available to Download	2	[{"changed": {"fields": ["similar_news"]}}]	74	1
192	2023-02-25 05:25:12.853705+00	33	Linuxkah	1	[{"added": {}}]	74	1
193	2023-02-25 05:26:08.722908+00	33	Linuxkah	2	[{"changed": {"fields": ["similar_news"]}}]	74	1
194	2023-02-25 05:27:21.001186+00	27	Amazon prime bagi gratis Destiny 2 kesempatan terbatas	2	[]	74	1
195	2023-02-25 05:28:35.857099+00	4	Want to Watch Blu-rays in VLC on Ubuntu? You NEED MakeMKV	2	[{"changed": {"fields": ["category_os"]}}]	74	1
196	2023-02-25 05:30:55.613507+00	34	implementaas	1	[{"added": {}}]	74	1
197	2023-02-25 05:31:28.499506+00	34	implementaas	2	[]	74	1
198	2023-02-25 07:16:07.797053+00	34	implementaas	2	[{"changed": {"fields": ["similar_news"]}}]	74	1
199	2023-02-25 07:56:37.438931+00	35	bangkok	1	[{"added": {}}]	74	1
200	2023-02-25 08:06:12.108376+00	36	lingli	1	[{"added": {}}]	74	1
201	2023-02-27 02:49:39.62445+00	36	lingli	2	[{"changed": {"fields": ["similar_news"]}}]	74	1
202	2023-02-27 02:50:33.950098+00	35	bangkok	3		74	1
203	2023-02-27 02:52:37.695607+00	36	lingli	2	[{"changed": {"fields": ["similar_news"]}}]	74	1
204	2023-02-27 03:03:31.269502+00	36	lingli	2	[{"changed": {"fields": ["similar_news"]}}]	74	1
205	2023-02-27 03:11:48.100646+00	36	lingli	2	[{"changed": {"fields": ["similar_news"]}}]	74	1
206	2023-02-27 07:32:56.1889+00	1	CategoryDomain object (1)	1	[{"added": {}}]	95	1
207	2023-02-27 07:33:09.624881+00	2	CategoryDomain object (2)	1	[{"added": {}}]	95	1
208	2023-02-27 07:37:52.177975+00	1	Nocharge object (30) recommends None	1	[{"added": {}}]	94	1
209	2023-02-27 07:49:56.975151+00	2	Dapatkan Rumbleverse gratis di Epic Games Store recommends None	1	[{"added": {}}]	94	1
210	2023-02-27 07:50:09.003974+00	1	First Version of Vanilla OS is Available to Download recommends None	3		94	1
211	2023-02-27 07:55:15.80894+00	1	OS	1	[{"added": {}}]	93	1
212	2023-02-27 07:55:54.0733+00	1	OS	2	[{"changed": {"fields": ["category_domain"]}}]	93	1
213	2023-02-27 07:56:17.788805+00	2	Dapatkan Rumbleverse gratis di Epic Games Store recommends OS	3		94	1
214	2023-02-27 07:57:00.655876+00	3	First Version of Vanilla OS is Available to Download recommends OS	1	[{"added": {}}]	94	1
215	2023-02-27 08:27:17.886912+00	3	First Version of Vanilla OS is Available to Download recommends similar article	3		94	1
216	2023-02-27 08:48:23.487656+00	4	Gadget recommends How to Add WebP Support to Ubuntu 22.04 LTS	1	[{"added": {}}]	94	1
217	2023-02-27 08:48:37.391837+00	5	Gadget recommends Dapatkan Rumbleverse gratis di Epic Games Store	1	[{"added": {}}]	94	1
218	2023-02-27 09:36:08.094855+00	37	macanpon	1	[{"added": {}}]	74	1
219	2023-02-27 09:37:03.879744+00	38	micanpon	1	[{"added": {}}]	74	1
220	2023-03-01 02:21:17.756193+00	39	caraka	1	[{"added": {}}]	74	1
221	2023-03-01 02:26:38.291475+00	40	bahama	1	[{"added": {}}]	74	1
222	2023-03-01 02:33:17.733945+00	41	The little whitew	1	[{"added": {}}]	74	1
223	2023-03-01 02:38:05.47425+00	40	bahama	2	[]	74	1
224	2023-03-01 02:39:18.781555+00	42	Tingting	1	[{"added": {}}]	74	1
225	2023-03-01 02:41:48.187156+00	43	nonoasd	1	[{"added": {}}]	74	1
226	2023-03-01 02:53:01.8357+00	44	abs	1	[{"added": {}}]	74	1
227	2023-03-01 02:56:45.932938+00	45	hahaha	1	[{"added": {}}]	74	1
228	2023-03-01 03:02:15.882205+00	46	iiiiii	1	[{"added": {}}]	74	1
229	2023-03-01 03:32:35.544383+00	46	iiiiii	3		74	1
230	2023-03-01 03:32:35.54823+00	45	hahaha	3		74	1
231	2023-03-01 03:32:35.549516+00	44	abs	3		74	1
232	2023-03-01 03:32:35.550815+00	43	nonoasd	3		74	1
233	2023-03-01 03:32:35.552069+00	42	Tingting	3		74	1
234	2023-03-01 03:32:35.553502+00	41	The little whitew	3		74	1
235	2023-03-01 03:32:35.554845+00	40	bahama	3		74	1
236	2023-03-01 03:32:35.556149+00	39	caraka	3		74	1
237	2023-03-01 03:32:35.557324+00	38	micanpon	3		74	1
238	2023-03-01 03:32:35.558515+00	37	macanpon	3		74	1
239	2023-03-01 03:32:35.559588+00	36	lingli	3		74	1
240	2023-03-01 03:32:35.56092+00	34	implementaas	3		74	1
241	2023-03-01 03:32:35.561972+00	33	Linuxkah	3		74	1
242	2023-03-01 04:54:51.134224+00	28	Dapatkan Rumbleverse gratis di Epic Games Store	2	[{"changed": {"fields": ["similar_news"]}}]	74	1
243	2023-03-01 05:06:11.153739+00	47	Adventure	1	[{"added": {}}]	74	1
244	2023-03-01 05:20:04.944296+00	29	How to Add WebP Support to Ubuntu 22.04 LTS	2	[{"changed": {"fields": ["similar_news"]}}]	74	1
245	2023-03-01 09:44:19.409559+00	48	Steam OS on WIndows	1	[{"added": {}}]	74	1
246	2023-03-02 02:33:36.058277+00	48	Steam OS on WIndows	2	[{"changed": {"fields": ["poster_path", "poster_path1"]}}]	74	1
247	2023-03-02 02:34:19.303131+00	47	Adventure	2	[{"changed": {"fields": ["poster_path"]}}]	74	1
248	2023-03-02 10:06:45.811843+00	30	First Version of Vanilla OS is Available to Download	2	[{"changed": {"fields": ["url", "similar_news"]}}]	74	1
249	2023-03-06 05:11:18.488638+00	47	Adventure	2	[{"changed": {"fields": ["url"]}}]	74	1
250	2023-03-09 07:11:33.743943+00	47	Adventure	2	[{"changed": {"fields": ["url", "keywords"]}}]	74	1
251	2023-03-15 02:04:53.565788+00	28	Dapatkan Rumbleverse gratis di Epic Games Store	2	[{"changed": {"fields": ["caption", "url"]}}]	74	1
252	2023-03-15 03:05:23.965728+00	48	Steam OS on WIndows	2	[{"changed": {"fields": ["category_app", "url"]}}]	74	1
253	2023-03-15 03:53:38.27636+00	2	Game	1	[{"added": {}}]	76	1
254	2023-03-15 03:53:42.923646+00	47	Adventure	2	[{"changed": {"fields": ["category_app"]}}]	74	1
255	2023-03-15 03:53:52.814874+00	28	Dapatkan Rumbleverse gratis di Epic Games Store	2	[{"changed": {"fields": ["category_app"]}}]	74	1
256	2023-03-15 03:54:17.878941+00	3	VOD	1	[{"added": {}}]	76	1
257	2023-03-15 03:54:27.443642+00	27	Amazon prime bagi gratis Destiny 2 kesempatan terbatas	2	[{"changed": {"fields": ["category_app", "url"]}}]	74	1
258	2023-03-17 13:54:13.920167+00	53	asdasd	3		74	1
259	2023-03-17 13:54:13.927496+00	52	asdasd	3		74	1
260	2023-03-17 13:54:13.92906+00	51	asdasd	3		74	1
261	2023-03-17 13:54:13.936576+00	50	inwebview	3		74	1
262	2023-03-20 09:32:52.413858+00	9	abc@g.com	2	[{"changed": {"fields": ["is_staff", "user_permissions", "gender", "birthdate", "language", "currency"]}}]	6	1
263	2023-03-20 09:58:13.455554+00	60	asdasd	2	[{"changed": {"fields": ["domain", "keywords"]}}]	74	9
264	2023-03-20 09:58:51.759334+00	59	hakuna	2	[{"changed": {"fields": ["category_os"]}}]	74	9
265	2023-03-20 09:59:50.002973+00	59	hakuna	2	[{"changed": {"fields": ["similar_news"]}}]	74	9
266	2023-03-20 10:10:30.983044+00	60	asdasd	2	[{"changed": {"fields": ["similar_news"]}}]	74	9
267	2023-03-20 10:11:08.415599+00	61	asdasd	2	[{"changed": {"fields": ["category_os"]}}]	74	9
268	2023-03-20 10:11:28.116907+00	61	asdasd	2	[{"changed": {"fields": ["similar_news"]}}]	74	9
269	2023-03-21 03:51:45.043042+00	48	Steam OS on WIndows	2	[{"changed": {"fields": ["slug"]}}]	74	1
270	2023-03-21 04:25:42.183337+00	30	First Version of Vanilla OS is Available to Download	2	[]	74	1
271	2023-03-21 04:26:25.698815+00	58	this is the bway	2	[{"changed": {"fields": ["similar_news"]}}]	74	1
272	2023-03-21 04:28:05.540033+00	58	this is the bway	2	[]	74	1
273	2023-03-21 04:30:30.926316+00	30	First Version of Vanilla OS is Available to Download	2	[]	74	1
274	2023-03-21 04:50:13.16447+00	61	asdasd	2	[]	74	1
275	2023-03-21 04:50:19.981022+00	61	asdasd	2	[]	74	1
276	2023-03-21 04:50:37.929439+00	61	asdasd	3		74	1
277	2023-03-21 04:50:37.934254+00	60	asdasd	3		74	1
278	2023-03-21 04:50:37.935748+00	59	hakuna	3		74	1
279	2023-03-21 04:50:37.937321+00	58	this is the bway	3		74	1
280	2023-03-21 04:50:37.939277+00	57	askdjalskd	3		74	1
281	2023-03-21 04:50:37.944455+00	56	askdjalskd	3		74	1
282	2023-03-21 04:50:37.946608+00	55	ahs	3		74	1
283	2023-03-21 04:50:37.948675+00	54	halo	3		74	1
284	2023-03-21 04:50:37.950736+00	49	inwebview	3		74	1
285	2023-03-21 04:51:04.574724+00	47	Adventure	2	[]	74	1
286	2023-03-21 04:52:10.865639+00	29	How to Add WebP Support to Ubuntu 22.04 LTS	2	[{"changed": {"fields": ["url", "keywords"]}}]	74	1
287	2023-03-21 04:52:35.251227+00	28	Dapatkan Rumbleverse gratis di Epic Games Store	2	[]	74	1
288	2023-03-21 04:52:43.636885+00	27	Amazon prime bagi gratis Destiny 2 kesempatan terbatas	2	[]	74	1
289	2023-03-21 04:53:13.68194+00	26	20sdss	2	[{"changed": {"fields": ["url", "keywords"]}}]	74	1
290	2023-03-21 04:53:27.43735+00	25	19iuaids	2	[{"changed": {"fields": ["url"]}}]	74	1
291	2023-03-21 04:53:35.300254+00	24	18ii	2	[{"changed": {"fields": ["url"]}}]	74	1
292	2023-03-21 04:53:43.171004+00	23	17yuyu	2	[{"changed": {"fields": ["url"]}}]	74	1
293	2023-03-21 04:53:51.815337+00	22	16asda	2	[{"changed": {"fields": ["url"]}}]	74	1
294	2023-03-21 04:54:00.385173+00	21	15	2	[{"changed": {"fields": ["url"]}}]	74	1
295	2023-03-21 04:54:16.622611+00	20	14asdasd	2	[{"changed": {"fields": ["url"]}}]	74	1
296	2023-03-21 04:54:23.31019+00	19	13asd	2	[{"changed": {"fields": ["url"]}}]	74	1
297	2023-03-21 04:54:30.09156+00	18	12adwas	2	[{"changed": {"fields": ["url"]}}]	74	1
298	2023-03-21 04:54:36.971909+00	17	11wqe	2	[{"changed": {"fields": ["url"]}}]	74	1
299	2023-03-21 04:54:44.579756+00	16	werwer	2	[{"changed": {"fields": ["url"]}}]	74	1
300	2023-03-21 04:54:52.917212+00	15	dad	2	[{"changed": {"fields": ["video", "url"]}}]	74	1
301	2023-03-21 04:54:59.740209+00	14	as8a	2	[{"changed": {"fields": ["video", "url"]}}]	74	1
302	2023-03-21 04:55:40.296316+00	13	ad7	2	[{"changed": {"fields": ["video", "poster_path", "url"]}}]	74	1
303	2023-03-21 04:55:51.037283+00	12	ad6	2	[{"changed": {"fields": ["poster_path", "url"]}}]	74	1
304	2023-03-21 04:56:07.279228+00	11	ka5	2	[{"changed": {"fields": ["video", "poster_path", "url"]}}]	74	1
305	2023-03-21 04:56:20.776805+00	10	title4	2	[{"changed": {"fields": ["video", "poster_path", "url"]}}]	74	1
306	2023-03-21 04:56:31.994219+00	9	latest3	2	[{"changed": {"fields": ["category_domain", "distribution", "url"]}}]	74	1
307	2023-03-21 04:57:18.511038+00	1	Nephrite’ is a Classy New GTK Theme for Linux Desktops	2	[{"changed": {"fields": ["url"]}}]	74	1
387	2023-04-03 09:52:44.163638+00	65	tutoriallagi	1	[{"added": {}}]	74	1
308	2023-03-21 04:57:30.265294+00	3	GNOME’s New Quick Toggles Land in Ubuntu 22.10	2	[{"changed": {"fields": ["video", "url"]}}]	74	1
309	2023-03-21 04:57:48.456667+00	4	Want to Watch Blu-rays in VLC on Ubuntu? You NEED MakeMKV	2	[{"changed": {"fields": ["category_domain", "video", "url", "similar_news"]}}]	74	1
310	2023-03-21 04:58:07.902803+00	8	Tras	3		74	1
311	2023-03-21 04:58:07.910526+00	7	micla	3		74	1
312	2023-03-21 04:58:07.912523+00	6	tu4	3		74	1
313	2023-03-21 04:58:07.914618+00	5	tut3	3		74	1
314	2023-03-21 13:52:04.356004+00	30	First Version of Vanilla OS is Available to Download	2	[{"changed": {"fields": ["poster_path"]}}]	74	1
315	2023-03-21 13:52:16.832565+00	30	First Version of Vanilla OS is Available to Download	2	[{"changed": {"fields": ["poster_path"]}}]	74	1
316	2023-03-22 06:26:14.376958+00	30	First Version of Vanilla OS is Available to Download	2	[{"changed": {"fields": ["poster_path"]}}]	74	1
317	2023-03-22 06:26:38.558759+00	30	First Version of Vanilla OS is Available to Download	2	[{"changed": {"fields": ["poster_path"]}}]	74	1
318	2023-03-22 08:13:08.38954+00	28	Dapatkan Rumbleverse gratis di Epic Games Store	2	[{"changed": {"fields": ["promo_end_date"]}}]	74	1
319	2023-03-22 08:13:23.064603+00	47	Adventure	2	[{"changed": {"fields": ["promo_end_date"]}}]	74	1
320	2023-03-22 08:14:01.119854+00	27	Amazon prime bagi gratis Destiny 2 kesempatan terbatas	2	[{"changed": {"fields": ["promo_end_date"]}}]	74	1
321	2023-03-22 08:25:56.016592+00	47	Adventure	2	[{"changed": {"fields": ["promo_end_date"]}}]	74	1
322	2023-03-22 08:44:08.951637+00	62	asdasd	1	[{"added": {}}]	74	1
323	2023-03-22 08:46:16.092333+00	62	asdasd	2	[{"changed": {"fields": ["promo_end_date"]}}]	74	1
324	2023-03-22 09:14:28.581753+00	47	Adventure	2	[{"changed": {"fields": ["promo_end_date"]}}]	74	1
325	2023-03-25 07:02:47.31394+00	4	Artificial Intelligence	1	[{"added": {}}]	76	1
326	2023-03-25 07:03:28.222545+00	5	Gratis	1	[{"added": {}}]	76	1
327	2023-03-25 07:03:46.638274+00	5	Free	2	[{"changed": {"fields": ["title"]}}]	76	1
328	2023-03-25 07:04:11.317768+00	5	Free	3		76	1
329	2023-03-25 07:10:04.919971+00	63	GitHub Perkenalkan CoPilot X Dengan Dukungan GPT4 OpenAI	1	[{"added": {}}]	74	1
330	2023-03-25 07:52:05.404141+00	2	Gratis	2	[{"changed": {"fields": ["title"]}}]	76	1
331	2023-03-28 03:26:19.871359+00	47	Adventure steam	2	[{"changed": {"fields": ["title"]}}]	74	1
332	2023-04-01 04:07:19.849169+00	64	Coba	1	[{"added": {}}]	74	1
333	2023-04-03 03:38:16.949204+00	6	Development	1	[{"added": {}}]	76	1
334	2023-04-03 03:38:41.042065+00	7	Antivirus dan Keamanan	1	[{"added": {}}]	76	1
335	2023-04-03 03:40:34.154295+00	8	Operating System	1	[{"added": {}}]	76	1
336	2023-04-03 03:40:45.814852+00	8	Operating System	2	[]	76	1
337	2023-04-03 03:41:19.534786+00	9	Internet & Network	1	[{"added": {}}]	76	1
338	2023-04-03 03:42:23.62501+00	10	Grapich Design	1	[{"added": {}}]	76	1
339	2023-04-03 03:42:33.51518+00	11	Office	1	[{"added": {}}]	76	1
340	2023-04-03 03:43:02.550736+00	12	Virtualization	1	[{"added": {}}]	76	1
341	2023-04-03 03:43:41.433951+00	13	Multimedia	1	[{"added": {}}]	76	1
342	2023-04-03 03:43:51.803689+00	14	Messaging	1	[{"added": {}}]	76	1
343	2023-04-03 03:44:27.67875+00	15	System Utility	1	[{"added": {}}]	76	1
344	2023-04-03 03:44:39.190821+00	16	Backup and Restore	1	[{"added": {}}]	76	1
345	2023-04-03 03:45:19.517518+00	17	File and Document Management	1	[{"added": {}}]	76	1
346	2023-04-03 03:45:33.036391+00	18	Personalize	1	[{"added": {}}]	76	1
347	2023-04-03 03:45:59.054832+00	19	CAD & 3D Design	1	[{"added": {}}]	76	1
348	2023-04-03 03:46:58.831888+00	20	Scheduling and Reminders	1	[{"added": {}}]	76	1
349	2023-04-03 03:47:17.770291+00	21	Database System	1	[{"added": {}}]	76	1
350	2023-04-03 03:47:40.838025+00	22	Application Testing	1	[{"added": {}}]	76	1
351	2023-04-03 03:48:03.253877+00	23	System Administration	1	[{"added": {}}]	76	1
352	2023-04-03 03:48:22.41282+00	24	Video Editing	1	[{"added": {}}]	76	1
353	2023-04-03 03:49:28.946481+00	25	Sound Processor	1	[{"added": {}}]	76	1
354	2023-04-03 03:50:04.372468+00	26	Software	1	[{"added": {}}]	76	1
355	2023-04-03 03:50:29.294379+00	27	Password Management	1	[{"added": {}}]	76	1
356	2023-04-03 03:50:53.940837+00	28	Distance learning	1	[{"added": {}}]	76	1
357	2023-04-03 03:51:39.197513+00	29	Analysis Data	1	[{"added": {}}]	76	1
358	2023-04-03 03:52:17.416501+00	30	Virtual Office	1	[{"added": {}}]	76	1
359	2023-04-03 03:53:08.966464+00	31	Debugging and Profiling Tools	1	[{"added": {}}]	76	1
360	2023-04-03 03:53:19.940125+00	32	Front-end Development	1	[{"added": {}}]	76	1
361	2023-04-03 03:53:30.084218+00	33	Cloud Service	1	[{"added": {}}]	76	1
362	2023-04-03 03:53:38.951685+00	34	Backend Development	1	[{"added": {}}]	76	1
363	2023-04-03 03:53:49.332889+00	35	VPN Software	1	[{"added": {}}]	76	1
364	2023-04-03 03:53:59.223543+00	36	Digital Content Application	1	[{"added": {}}]	76	1
365	2023-04-03 03:54:09.558792+00	37	E-commerce and Finance	1	[{"added": {}}]	76	1
366	2023-04-03 03:54:25.44772+00	38	Personal Finance Manager	1	[{"added": {}}]	76	1
367	2023-04-03 03:54:33.622817+00	39	Business communication	1	[{"added": {}}]	76	1
368	2023-04-03 03:54:43.103966+00	40	Edit PDF	1	[{"added": {}}]	76	1
369	2023-04-03 03:54:52.128431+00	41	Software Security Applications	1	[{"added": {}}]	76	1
370	2023-04-03 03:55:07.110662+00	42	Group Work Tool	1	[{"added": {}}]	76	1
371	2023-04-03 03:55:15.156897+00	43	Mobile Application Development	1	[{"added": {}}]	76	1
372	2023-04-03 03:55:24.036774+00	44	Audio Editor	1	[{"added": {}}]	76	1
373	2023-04-03 03:55:32.736046+00	45	Content Management System	1	[{"added": {}}]	76	1
374	2023-04-03 03:56:19.089271+00	46	Product Analysis	1	[{"added": {}}]	76	1
375	2023-04-03 03:56:40.208264+00	47	Aplikasi Kesehatan	1	[{"added": {}}]	76	1
376	2023-04-03 03:57:31.635113+00	48	Music Streaming Service	1	[{"added": {}}]	76	1
377	2023-04-03 03:57:40.83803+00	49	Collaboration Software	1	[{"added": {}}]	76	1
378	2023-04-03 03:57:50.70457+00	50	Game Development	1	[{"added": {}}]	76	1
379	2023-04-03 03:58:02.271468+00	51	Network Security Management	1	[{"added": {}}]	76	1
380	2023-04-03 03:58:11.119908+00	52	Big Data Analytics	1	[{"added": {}}]	76	1
381	2023-04-03 03:58:21.800729+00	53	Desktop Application Development	1	[{"added": {}}]	76	1
382	2023-04-03 04:03:05.329536+00	54	Virtual Reality Application	1	[{"added": {}}]	76	1
383	2023-04-03 04:27:14.504317+00	2	Free	2	[{"changed": {"fields": ["title"]}}]	76	1
384	2023-04-03 04:27:57.892207+00	7	Antivirus dan Security	2	[{"changed": {"fields": ["title"]}}]	76	1
385	2023-04-03 04:29:06.686959+00	1	Graphic	2	[{"changed": {"fields": ["title"]}}]	76	1
386	2023-04-03 09:44:24.644508+00	64	Coba	2	[{"changed": {"fields": ["category_os"]}}]	74	1
388	2023-04-03 09:53:31.985536+00	66	asdasdad	1	[{"added": {}}]	74	1
389	2023-04-03 09:54:02.229083+00	67	adsasdasd	1	[{"added": {}}]	74	1
390	2023-04-03 09:54:28.209706+00	68	last test	1	[{"added": {}}]	74	1
391	2023-04-05 03:56:38.061994+00	2	Percayakan keamanan anda kepada tidak ada	1	[{"added": {}}]	91	1
392	2023-04-05 07:47:04.211426+00	3	What's New In GNOME 44	1	[{"added": {}}]	91	1
393	2023-04-05 07:49:29.657041+00	3	What's New In GNOME 44	2	[{"changed": {"fields": ["poster_path"]}}]	91	1
394	2023-04-10 07:49:16.754766+00	69	lululasudlad	1	[{"added": {}}]	74	1
395	2023-04-13 04:34:04.378414+00	70	Manhun	1	[{"added": {}}]	74	1
396	2023-04-13 04:35:04.339412+00	70	Manhun	2	[{"changed": {"fields": ["domain"]}}]	74	1
397	2023-04-13 04:36:08.784392+00	70	Manhun	2	[{"changed": {"fields": ["poster_path1"]}}]	74	1
398	2023-04-13 04:42:21.768509+00	30	First Version of Vanilla OS is Available to Download	2	[{"changed": {"fields": ["title1", "content1", "title2", "content2"]}}]	74	1
399	2023-04-13 05:21:37.626329+00	27	Amazon prime bagi gratis Destiny 2 kesempatan terbatas	2	[{"changed": {"fields": ["category_app"]}}]	74	1
400	2023-04-26 02:27:47.735471+00	3	All	1	[{"added": {}}]	81	1
401	2023-04-26 02:28:16.82981+00	3	All	3		81	1
402	2023-04-26 02:31:17.807116+00	4	Cross-Platform	1	[{"added": {}}]	81	1
403	2023-04-26 02:35:19.42982+00	55	Utilities	1	[{"added": {}}]	76	1
404	2023-04-26 02:55:55.590066+00	71	Flameshot: Aplikasi Screenshot Open-Source yang Wajib Kamu Coba!	1	[{"added": {}}]	74	1
405	2023-04-26 03:21:23.000068+00	72	test	1	[{"added": {}}]	74	1
406	2023-04-26 03:21:31.546843+00	71	Flameshot: Aplikasi Screenshot Open-Source yang Wajib Kamu Coba!	2	[{"changed": {"fields": ["similar_news"]}}]	74	1
407	2023-04-26 03:21:42.778709+00	71	Flameshot: Aplikasi Screenshot Open-Source yang Wajib Kamu Coba!	2	[{"changed": {"fields": ["poster_path"]}}]	74	1
408	2023-04-26 03:23:02.737836+00	71	Flameshot: Aplikasi Screenshot Open-Source yang Wajib Kamu Coba!	2	[{"changed": {"fields": ["title1", "content1", "poster_path1"]}}]	74	1
409	2023-04-26 03:44:59.185833+00	71	Flameshot: Aplikasi Screenshot Open-Source yang Wajib Kamu Coba!	2	[{"changed": {"fields": ["poster_path1"]}}]	74	1
410	2023-04-26 03:45:11.304042+00	71	Flameshot: Aplikasi Screenshot Open-Source yang Wajib Kamu Coba!	2	[{"changed": {"fields": ["poster_path1"]}}]	74	1
411	2023-04-26 04:26:34.715186+00	71	Flameshot: Aplikasi Screenshot Open-Source yang Wajib Kamu Coba!	2	[{"changed": {"fields": ["promo_end_date"]}}]	74	1
412	2023-04-26 04:39:09.627048+00	71	Flameshot: Aplikasi Screenshot Open-Source yang Wajib Kamu Coba!	2	[{"changed": {"fields": ["content", "title1", "content1"]}}]	74	1
413	2023-04-26 04:42:20.827622+00	71	Flameshot: Aplikasi Screenshot Open-Source yang Wajib Kamu Coba!	2	[{"changed": {"fields": ["title1"]}}]	74	1
414	2023-04-26 04:43:50.767618+00	71	Flameshot: Aplikasi Screenshot Open-Source yang Wajib Kamu Coba!	2	[{"changed": {"fields": ["title1", "content1"]}}]	74	1
415	2023-04-26 04:45:19.795349+00	71	Flameshot: Aplikasi Screenshot Open-Source yang Wajib Kamu Coba!	2	[{"changed": {"fields": ["content1"]}}]	74	1
416	2023-04-26 04:56:18.79612+00	71	Fitur lainnya yang menarik memiliki fitur upload langsung yang dikonversi menjadi link dari imgurl, hal ini cukup penting, mengingat ada  beberapa rule dalam grup yang dimiliki tidak boleh mengunggah 	2	[{"changed": {"fields": ["title1", "content1"]}}]	74	1
417	2023-04-26 04:57:40.548726+00	71	Fitur lainnya yang menarik memiliki fitur upload langsung yang dikonversi menjadi link dari imgurl, hal ini cukup penting, mengingat ada  beberapa rule dalam grup yang dimiliki tidak boleh mengunggah 	2	[{"changed": {"fields": ["title1"]}}]	74	1
418	2023-04-26 04:59:53.690196+00	71	Fitur lainnya yang menarik memiliki fitur upload langsung yang dikonversi menjadi link dari imgurl, hal ini cukup penting, mengingat ada  beberapa rule dalam grup yang dimiliki tidak boleh mengunggah 	2	[{"changed": {"fields": ["title1", "content1"]}}]	74	1
419	2023-04-26 05:09:27.428513+00	71	Fitur lainnya yang menarik memiliki fitur upload langsung yang dikonversi menjadi link dari imgurl, hal ini cukup penting, mengingat ada  beberapa rule dalam grup yang dimiliki tidak boleh mengunggah 	2	[{"changed": {"fields": ["content1"]}}]	74	1
420	2023-04-26 05:14:37.605808+00	71	Flameshot: Aplikasi Screenshot Open-Source yang Wajib Kamu Coba!	2	[{"changed": {"fields": ["title1"]}}]	74	1
421	2023-05-01 09:23:52.953667+00	73	Perbedaan MBR dan GPT Saat Pemilihan Boot	1	[{"added": {}}]	74	1
422	2023-05-01 09:25:13.593327+00	73	Perbedaan MBR dan GPT Saat Pemilihan Boot	2	[{"changed": {"fields": ["content", "similar_news"]}}]	74	1
423	2023-05-01 09:37:17.486187+00	73	Perbedaan MBR dan GPT Saat Pemilihan Boot	2	[{"changed": {"fields": ["overview"]}}]	74	1
424	2023-05-01 09:48:36.496259+00	73	Perbedaan MBR dan GPT Saat Pemilihan Boot	2	[{"changed": {"fields": ["title1", "content1", "title2", "content2"]}}]	74	1
425	2023-05-01 10:19:04.178507+00	74	Skeptis Terhadap File yang Diterima Namun Penasaran Ingin Mengakses? Gunakan Sandbox!	1	[{"added": {}}]	74	1
426	2023-05-01 13:27:42.966965+00	74	Skeptis Terhadap File yang Diterima Namun Penasaran Ingin Mengakses? Gunakan Sandbox!	2	[{"changed": {"fields": ["content3"]}}]	74	1
427	2023-05-01 13:43:33.213497+00	74	Skeptis Terhadap File yang Diterima Namun Penasaran Ingin Mengakses? Gunakan Sandbox!	2	[{"changed": {"fields": ["content3", "poster_path3"]}}]	74	1
428	2023-05-01 13:47:37.196202+00	74	Skeptis Terhadap File yang Diterima Namun Penasaran Ingin Mengakses? Gunakan Sandbox!	2	[{"changed": {"fields": ["content3", "poster_path3"]}}]	74	1
429	2023-05-01 13:48:29.664512+00	74	Skeptis Terhadap File yang Diterima Namun Penasaran Ingin Mengakses? Gunakan Sandbox!	2	[{"changed": {"fields": ["poster_path3"]}}]	74	1
430	2023-05-01 14:03:22.455472+00	74	Skeptis Terhadap File yang Diterima Namun Penasaran Ingin Mengakses? Gunakan Sandbox!	2	[{"changed": {"fields": ["content3", "poster_path4"]}}]	74	1
431	2023-05-01 14:04:40.139254+00	74	Skeptis Terhadap File yang Diterima Namun Penasaran Ingin Mengakses? Gunakan Sandbox!	2	[{"changed": {"fields": ["content3"]}}]	74	1
432	2023-05-01 14:07:38.516271+00	74	Skeptis Terhadap File yang Diterima Namun Penasaran Ingin Mengakses? Gunakan Sandbox!	2	[{"changed": {"fields": ["content3", "content5", "poster_path5"]}}]	74	1
433	2023-05-01 14:36:39.07882+00	75	Tutorial <i>Install Windows Subsytem for Android</i>(WSA) Pada Windows 11	1	[{"added": {}}]	74	1
434	2023-05-01 14:37:36.368658+00	75	Tutorial Install Windows Subsytem for Android (WSA) Pada Windows 11	2	[{"changed": {"fields": ["title", "poster_path"]}}]	74	1
435	2023-05-01 14:40:47.381065+00	75	Tutorial Install Windows Subsytem for Android (WSA) Pada Windows 11	2	[{"changed": {"fields": ["content"]}}]	74	1
436	2023-05-01 14:52:02.189887+00	75	Tutorial Install Windows Subsytem for Android (WSA) Pada Windows 11	2	[{"changed": {"fields": ["title1", "content1"]}}]	74	1
437	2023-05-02 14:29:44.325154+00	76	Rangoli Software Keyboard Royal Kludge(Linux Support)	1	[{"added": {}}]	74	1
438	2023-05-02 14:36:01.625945+00	76	Rangoli Software Keyboard Royal Kludge(Linux Support)	2	[{"changed": {"fields": ["similar_news", "title1", "content1", "title2"]}}]	74	1
439	2023-05-02 14:37:27.749334+00	76	Rangoli Software Keyboard Royal Kludge(Linux Support)	2	[{"changed": {"fields": ["title1"]}}]	74	1
440	2023-05-02 14:41:32.28542+00	76	Rangoli Software Keyboard Royal Kludge(Linux Support)	2	[{"changed": {"fields": ["content", "domain"]}}]	74	1
441	2023-05-02 14:42:56.21861+00	76	Rangoli Software Keyboard Royal Kludge(Linux Support)	2	[{"changed": {"fields": ["content", "domain"]}}]	74	1
442	2023-05-02 14:44:26.968012+00	76	Rangoli Software Keyboard Royal Kludge(Linux Support)	2	[{"changed": {"fields": ["title1"]}}]	74	1
443	2023-05-02 14:59:22.166775+00	77	Stacer: Linux System Optimizer and Monitoring	1	[{"added": {}}]	74	1
444	2023-05-02 15:00:32.270245+00	77	Stacer: Linux System Optimizer and Monitoring	2	[{"changed": {"fields": ["content", "similar_news"]}}]	74	1
445	2023-05-02 15:17:03.379422+00	77	Stacer: Linux System Optimizer and Monitoring	2	[{"changed": {"fields": ["overview"]}}]	74	1
446	2023-05-03 00:48:07.436333+00	77	Stacer: Linux System Optimizer and Monitoring	2	[{"changed": {"fields": ["content"]}}]	74	1
447	2023-05-03 01:00:04.223589+00	6	Warm Lamp Games	1	[{"added": {}}]	87	1
448	2023-05-03 01:00:30.492887+00	2	Prime Gaming	1	[{"added": {}}]	88	1
449	2023-05-03 01:01:09.432693+00	56	Game	1	[{"added": {}}]	76	1
450	2023-05-03 01:10:38.012215+00	78	Dapatkan Beholder 2 Gratis	1	[{"added": {}}]	74	1
451	2023-05-03 01:16:04.884075+00	78	Dapatkan Beholder 2 Gratis	2	[{"changed": {"fields": ["caption", "overview", "similar_news"]}}]	74	1
452	2023-05-03 01:17:54.699641+00	78	Dapatkan Beholder 2 Gratis	2	[{"changed": {"fields": ["poster_path"]}}]	74	1
453	2023-05-03 01:22:29.969902+00	78	Dapatkan Beholder 2 Gratis	2	[{"changed": {"fields": ["overview", "content"]}}]	74	1
454	2023-05-03 01:22:59.830312+00	78	Dapatkan Beholder 2 Gratis	2	[{"changed": {"fields": ["caption"]}}]	74	1
455	2023-05-03 04:46:26.894837+00	78	Dapatkan Beholder 2 Gratis	2	[{"changed": {"fields": ["content", "title1"]}}]	74	1
456	2023-05-03 05:05:24.692647+00	3	Steam	1	[{"added": {}}]	88	1
457	2023-05-03 05:05:30.364512+00	27	Amazon prime bagi gratis Destiny 2 kesempatan terbatas	2	[{"changed": {"fields": ["distribution"]}}]	74	1
458	2023-05-03 05:07:41.209446+00	4	Udemy	1	[{"added": {}}]	88	1
459	2023-05-03 05:08:14.287571+00	27	Amazon prime bagi gratis Destiny 2 kesempatan terbatas	2	[{"changed": {"fields": ["distribution"]}}]	74	1
460	2023-05-03 05:19:40.088359+00	3	Course	1	[{"added": {}}]	69	1
461	2023-05-03 05:26:06.857164+00	79	Amazon Web Services (AWS) - Zero to Hero	1	[{"added": {}}]	74	1
462	2023-05-03 05:26:30.94743+00	80	Amazon Web Services (AWS) - Zero to Hero	1	[{"added": {}}]	74	1
463	2023-05-03 05:26:45.108407+00	80	Amazon Web Services (AWS) - Zero to Hero	3		74	1
464	2023-05-03 05:26:45.113125+00	79	Amazon Web Services (AWS) - Zero to Hero	3		74	1
465	2023-05-03 05:52:10.751913+00	81	Amazon Web Services (AWS) - Zero to Hero	1	[{"added": {}}]	74	1
466	2023-05-03 05:52:29.03179+00	81	Amazon Web Services (AWS) - Zero to Hero	3		74	1
467	2023-05-03 05:53:15.595588+00	82	Amazon Web Services (AWS) - Zero to Hero	1	[{"added": {}}]	74	1
468	2023-05-03 05:54:59.6473+00	82	Amazon Web Services (AWS) - Zero to Hero	3		74	1
469	2023-05-03 05:55:26.875379+00	83	asdasd	1	[{"added": {}}]	74	1
470	2023-05-03 05:55:45.040982+00	83	asdasd	3		74	1
471	2023-05-03 05:56:25.98628+00	84	qweqweqwe	1	[{"added": {}}]	74	1
472	2023-05-03 05:56:42.380726+00	84	qweqweqwe	2	[{"changed": {"fields": ["poster_path"]}}]	74	1
473	2023-05-03 05:57:17.904286+00	84	Amazon Web Services (AWS) - Zero to Hero	2	[{"changed": {"fields": ["title", "caption", "overview"]}}]	74	1
474	2023-05-03 05:57:51.167044+00	84	Amazon Web Services (AWS) - Zero to Hero	2	[{"changed": {"fields": ["developer", "distribution", "category_os", "category_app"]}}]	74	1
475	2023-05-03 05:58:28.402395+00	84	Amazon Web Services (AWS) - Zero to Hero	3		74	1
476	2023-05-03 05:58:50.233096+00	85	sadadasd	1	[{"added": {}}]	74	1
477	2023-05-03 05:59:12.051889+00	85	sadadasd	2	[{"changed": {"fields": ["distribution"]}}]	74	1
478	2023-05-03 05:59:22.666369+00	85	sadadasd	2	[{"changed": {"fields": ["developer"]}}]	74	1
479	2023-05-03 05:59:37.831914+00	85	sadadasd	2	[{"changed": {"fields": ["category_os"]}}]	74	1
480	2023-05-03 06:01:49.325711+00	85	sadadasd	3		74	1
481	2023-05-03 06:13:20.673581+00	86	Amazon Web Services (AWS) - Zero to Hero	1	[{"added": {}}]	74	1
482	2023-05-03 06:14:10.076207+00	86	Amazon Web Services (AWS) - Zero to Hero	2	[{"changed": {"fields": ["caption", "overview", "similar_news"]}}]	74	1
483	2023-05-03 06:23:41.467115+00	72	test	3		74	1
484	2023-05-03 06:23:41.475342+00	70	Manhun	3		74	1
485	2023-05-03 06:23:41.476709+00	69	lululasudlad	3		74	1
486	2023-05-03 06:23:41.478068+00	68	last test	3		74	1
487	2023-05-03 06:23:41.479639+00	67	adsasdasd	3		74	1
488	2023-05-03 06:23:41.48128+00	66	asdasdad	3		74	1
489	2023-05-03 06:23:41.48282+00	65	tutoriallagi	3		74	1
490	2023-05-03 06:23:41.484221+00	64	Coba	3		74	1
491	2023-05-03 06:23:41.485309+00	63	GitHub Perkenalkan CoPilot X Dengan Dukungan GPT4 OpenAI	3		74	1
492	2023-05-03 06:23:41.486485+00	62	asdasd	3		74	1
493	2023-05-03 06:23:41.487615+00	48	Steam OS on WIndows	3		74	1
494	2023-05-03 06:23:41.48869+00	47	Adventure steam	3		74	1
495	2023-05-03 06:23:41.489884+00	30	First Version of Vanilla OS is Available to Download	3		74	1
496	2023-05-03 06:23:41.49093+00	29	How to Add WebP Support to Ubuntu 22.04 LTS	3		74	1
497	2023-05-03 06:23:41.491991+00	28	Dapatkan Rumbleverse gratis di Epic Games Store	3		74	1
498	2023-05-03 06:23:41.493221+00	27	Amazon prime bagi gratis Destiny 2 kesempatan terbatas	3		74	1
499	2023-05-03 06:23:41.494642+00	26	20sdss	3		74	1
500	2023-05-03 06:23:41.495986+00	25	19iuaids	3		74	1
501	2023-05-03 06:23:41.497413+00	24	18ii	3		74	1
502	2023-05-03 06:23:41.498904+00	23	17yuyu	3		74	1
503	2023-05-03 06:23:41.500328+00	22	16asda	3		74	1
504	2023-05-03 06:23:41.501575+00	21	15	3		74	1
505	2023-05-03 06:23:41.502816+00	20	14asdasd	3		74	1
506	2023-05-03 06:23:41.50417+00	19	13asd	3		74	1
507	2023-05-03 06:23:41.505334+00	18	12adwas	3		74	1
508	2023-05-03 06:23:41.506649+00	17	11wqe	3		74	1
509	2023-05-03 06:23:41.50792+00	16	werwer	3		74	1
510	2023-05-03 06:23:41.509329+00	15	dad	3		74	1
511	2023-05-03 06:23:41.512934+00	14	as8a	3		74	1
512	2023-05-03 06:23:41.514385+00	13	ad7	3		74	1
513	2023-05-03 06:23:41.515761+00	12	ad6	3		74	1
514	2023-05-03 06:23:41.516961+00	11	ka5	3		74	1
515	2023-05-03 06:23:41.518267+00	10	title4	3		74	1
516	2023-05-03 06:23:41.519861+00	9	latest3	3		74	1
517	2023-05-03 06:23:41.521399+00	4	Want to Watch Blu-rays in VLC on Ubuntu? You NEED MakeMKV	3		74	1
518	2023-05-03 06:23:41.523032+00	3	GNOME’s New Quick Toggles Land in Ubuntu 22.10	3		74	1
519	2023-05-03 06:23:41.526189+00	1	Nephrite’ is a Classy New GTK Theme for Linux Desktops	3		74	1
520	2023-05-03 06:27:11.899577+00	86	Amazon Web Services (AWS) - Zero to Hero	2	[{"changed": {"fields": ["category_app", "similar_news"]}}]	74	1
521	2023-05-03 06:27:43.402371+00	78	Dapatkan Beholder 2 Gratis	2	[{"changed": {"fields": ["category_app", "similar_news"]}}]	74	1
522	2023-05-03 06:45:49.147679+00	87	Breathe dan Poker Club	1	[{"added": {}}]	74	1
523	2023-05-03 06:46:13.04203+00	87	Breathe dan Poker Club	2	[{"changed": {"fields": ["poster_path"]}}]	74	1
524	2023-05-03 06:49:33.762597+00	87	Breathe dan Poker Club	2	[{"changed": {"fields": ["content"]}}]	74	1
525	2023-05-03 06:49:56.365767+00	87	Breathe dan Poker Club	2	[{"changed": {"fields": ["content"]}}]	74	1
526	2023-05-03 06:51:17.9901+00	87	Breathe dan Poker Club	2	[{"changed": {"fields": ["content"]}}]	74	1
527	2023-05-03 07:33:14.455624+00	88	AI Voice Generator: Buat Voiceover dengan Mudah	1	[{"added": {}}]	74	1
528	2023-05-03 07:35:24.424496+00	88	AI Voice Generator: Buat Voiceover dengan Mudah	2	[{"changed": {"fields": ["similar_news", "content1"]}}]	74	1
529	2023-05-03 09:15:22.0819+00	89	Meningkatkan Produktivitas Pemrograman dengan AI Code Translator	1	[{"added": {}}]	74	1
530	2023-05-03 09:15:47.438397+00	89	Meningkatkan Produktivitas Pemrograman dengan AI Code Translator	2	[{"changed": {"fields": ["similar_news"]}}]	74	1
531	2023-05-03 09:16:28.38928+00	89	Meningkatkan Produktivitas Pemrograman dengan AI Code Translator	2	[{"changed": {"fields": ["content", "poster_path"]}}]	74	1
532	2023-05-03 09:27:52.91616+00	89	Meningkatkan Produktivitas Pemrograman dengan AI Code Translator	2	[{"changed": {"fields": ["title1", "content1", "title2", "content2"]}}]	74	1
533	2023-05-03 09:28:40.793535+00	89	Meningkatkan Produktivitas Pemrograman dengan AI Code Translator	2	[{"changed": {"fields": ["title2"]}}]	74	1
534	2023-05-03 09:29:03.896384+00	89	Meningkatkan Produktivitas Pemrograman dengan AI Code Translator	2	[{"changed": {"fields": ["title2"]}}]	74	1
535	2023-05-03 09:30:24.22263+00	89	Meningkatkan Produktivitas Pemrograman dengan AI Code Translator	2	[{"changed": {"fields": ["title2"]}}]	74	1
536	2023-05-03 09:31:25.061988+00	89	Meningkatkan Produktivitas Pemrograman dengan AI Code Translator	2	[{"changed": {"fields": ["title2"]}}]	74	1
537	2023-05-03 09:32:03.030781+00	89	Meningkatkan Produktivitas Pemrograman dengan AI Code Translator	2	[{"changed": {"fields": ["title2"]}}]	74	1
538	2023-05-03 09:33:37.450649+00	89	Meningkatkan Produktivitas Pemrograman dengan AI Code Translator	2	[{"changed": {"fields": ["title2"]}}]	74	1
539	2023-05-03 09:34:08.41182+00	89	Meningkatkan Produktivitas Pemrograman dengan AI Code Translator	2	[{"changed": {"fields": ["title2"]}}]	74	1
540	2023-05-03 09:36:22.173337+00	89	Meningkatkan Produktivitas Pemrograman dengan AI Code Translator	2	[{"changed": {"fields": ["content2"]}}]	74	1
541	2023-05-03 14:00:35.241861+00	89	Meningkatkan Produktivitas Pemrograman dengan AI Code Translator	2	[{"changed": {"fields": ["title2"]}}]	74	1
542	2023-05-03 14:01:01.720129+00	89	Meningkatkan Produktivitas Pemrograman dengan AI Code Translator	2	[{"changed": {"fields": ["title2"]}}]	74	1
543	2023-05-03 14:21:25.928539+00	89	Meningkatkan Produktivitas Pemrograman dengan AI Code Translator	2	[{"changed": {"fields": ["video"]}}]	74	1
544	2023-05-03 14:32:01.172775+00	89	Meningkatkan Produktivitas Pemrograman dengan AI Code Translator	2	[{"changed": {"fields": ["content10"]}}]	74	1
545	2023-05-03 14:34:36.321246+00	89	Meningkatkan Produktivitas Pemrograman dengan AI Code Translator	2	[{"changed": {"fields": ["content10"]}}]	74	1
546	2023-05-03 14:44:03.272461+00	87	Breathe dan Poker Club	2	[{"changed": {"fields": ["category_os"]}}]	74	1
547	2023-05-03 14:56:05.273528+00	86	Amazon Web Services (AWS) - Zero to Hero	2	[{"changed": {"fields": ["content"]}}]	74	1
548	2023-05-03 14:57:33.93254+00	86	Amazon Web Services (AWS) - Zero to Hero	2	[{"changed": {"fields": ["caption", "overview"]}}]	74	1
549	2023-05-04 09:42:24.448682+00	89	Meningkatkan Produktivitas Pemrograman dengan AI Code Translator	2	[{"changed": {"fields": ["title2"]}}]	74	1
550	2023-05-04 09:44:32.390639+00	89	Meningkatkan Produktivitas Pemrograman dengan AI Code Translator	2	[{"changed": {"fields": ["title2"]}}]	74	1
551	2023-05-04 09:45:05.099905+00	89	Meningkatkan Produktivitas Pemrograman dengan AI Code Translator	2	[{"changed": {"fields": ["title2"]}}]	74	1
552	2023-05-04 09:45:44.641803+00	89	Meningkatkan Produktivitas Pemrograman dengan AI Code Translator	2	[{"changed": {"fields": ["content"]}}]	74	1
553	2023-05-04 09:46:24.735301+00	89	Meningkatkan Produktivitas Pemrograman dengan AI Code Translator	2	[{"changed": {"fields": ["content"]}}]	74	1
554	2023-05-04 09:53:00.837357+00	89	Meningkatkan Produktivitas Pemrograman dengan AI Code Translator	2	[{"changed": {"fields": ["content"]}}]	74	1
555	2023-05-04 09:55:46.503337+00	89	Meningkatkan Produktivitas Pemrograman dengan AI Code Translator	2	[{"changed": {"fields": ["content"]}}]	74	1
556	2023-05-04 10:11:29.734332+00	89	Meningkatkan Produktivitas Pemrograman dengan AI Code Translator	2	[{"changed": {"fields": ["content"]}}]	74	1
557	2023-05-04 10:14:30.674084+00	89	Meningkatkan Produktivitas Pemrograman dengan AI Code Translator	2	[{"changed": {"fields": ["content"]}}]	74	1
558	2023-05-09 08:31:34.206599+00	89	Meningkatkan Produktivitas Pemrograman dengan AI Code Translator	2	[{"changed": {"fields": ["title1"]}}]	74	1
559	2023-05-09 08:37:36.010715+00	89	Meningkatkan Produktivitas Pemrograman dengan AI Code Translator	2	[{"changed": {"fields": ["title1"]}}]	74	1
560	2023-05-09 08:39:33.448488+00	89	Meningkatkan Produktivitas Pemrograman dengan AI Code Translator	2	[{"changed": {"fields": ["title1"]}}]	74	1
561	2023-05-09 08:41:35.096369+00	89	Meningkatkan Produktivitas Pemrograman dengan AI Code Translator	2	[{"changed": {"fields": ["title1"]}}]	74	1
562	2023-05-09 09:15:30.346559+00	89	Meningkatkan Produktivitas Pemrograman dengan AI Code Translator	2	[{"changed": {"fields": ["title1"]}}]	74	1
563	2023-05-09 09:16:16.613276+00	87	Breathe dan Poker Club	2	[{"changed": {"fields": ["similar_news", "title1"]}}]	74	1
564	2023-05-09 09:18:06.868939+00	87	Breathe dan Poker Club	2	[{"changed": {"fields": ["title1"]}}]	74	1
565	2023-05-09 09:20:34.020693+00	87	Breathe dan Poker Club	2	[{"changed": {"fields": ["title1"]}}]	74	1
566	2023-05-09 09:22:35.226529+00	87	Breathe dan Poker Club	2	[{"changed": {"fields": ["title1"]}}]	74	1
567	2023-05-09 09:24:23.766553+00	87	Breathe dan Poker Club	2	[{"changed": {"fields": ["title1"]}}]	74	1
568	2023-05-09 09:25:14.442047+00	87	Breathe dan Poker Club	2	[{"changed": {"fields": ["title1"]}}]	74	1
569	2023-05-09 09:26:59.264464+00	89	Meningkatkan Produktivitas Pemrograman dengan AI Code Translator	2	[{"changed": {"fields": ["title1"]}}]	74	1
570	2023-05-09 09:28:48.155417+00	89	Meningkatkan Produktivitas Pemrograman dengan AI Code Translator	2	[{"changed": {"fields": ["title2"]}}]	74	1
571	2023-05-09 09:34:37.378965+00	74	Skeptis Terhadap File yang Diterima Namun Penasaran Ingin Mengakses? Gunakan Sandbox!	2	[{"changed": {"fields": ["similar_news", "poster_path4"]}}]	74	1
572	2023-05-09 09:35:08.202211+00	74	Skeptis Terhadap File yang Diterima Namun Penasaran Ingin Mengakses? Gunakan Sandbox!	2	[{"changed": {"fields": ["poster_path5"]}}]	74	1
573	2023-05-09 09:35:32.697186+00	74	Skeptis Terhadap File yang Diterima Namun Penasaran Ingin Mengakses? Gunakan Sandbox!	2	[{"changed": {"fields": ["poster_path5"]}}]	74	1
574	2023-05-09 09:40:56.431874+00	74	Skeptis Terhadap File yang Diterima Namun Penasaran Ingin Mengakses? Gunakan Sandbox!	2	[{"changed": {"fields": ["poster_path6"]}}]	74	1
575	2023-05-09 09:49:19.867573+00	74	Skeptis Terhadap File yang Diterima Namun Penasaran Ingin Mengakses? Gunakan Sandbox!	2	[{"changed": {"fields": ["poster_path4"]}}]	74	1
576	2023-05-09 09:50:30.707604+00	74	Skeptis Terhadap File yang Diterima Namun Penasaran Ingin Mengakses? Gunakan Sandbox!	2	[{"changed": {"fields": ["title5", "content5", "poster_path5", "poster_path6"]}}]	74	1
577	2023-05-09 09:52:01.259027+00	74	Skeptis Terhadap File yang Diterima Namun Penasaran Ingin Mengakses? Gunakan Sandbox!	2	[{"changed": {"fields": ["title5", "content5", "poster_path5"]}}]	74	1
578	2023-05-09 10:06:29.314279+00	74	Skeptis Terhadap File yang Diterima Namun Penasaran Ingin Mengakses? Gunakan Sandbox!	2	[{"changed": {"fields": ["poster_path1"]}}]	74	1
579	2023-05-09 10:08:20.998359+00	74	Skeptis Terhadap File yang Diterima Namun Penasaran Ingin Mengakses? Gunakan Sandbox!	2	[{"changed": {"fields": ["poster_path1"]}}]	74	1
580	2023-05-09 10:10:48.565793+00	74	Skeptis Terhadap File yang Diterima Namun Penasaran Ingin Mengakses? Gunakan Sandbox!	2	[{"changed": {"fields": ["title4", "content4"]}}]	74	1
581	2023-05-09 13:34:11.296372+00	74	Skeptis Terhadap File yang Diterima Namun Penasaran Ingin Mengakses? Gunakan Sandbox!	2	[{"changed": {"fields": ["title5"]}}]	74	1
582	2023-05-10 07:29:05.66154+00	87	Breathe dan Poker Club	2	[{"changed": {"fields": ["content1", "poster_path1"]}}]	74	1
583	2023-05-10 08:46:33.57069+00	74	Skeptis Terhadap File yang Diterima Namun Penasaran Ingin Mengakses? Gunakan Sandbox!	2	[{"changed": {"fields": ["content3"]}}]	74	1
584	2023-05-10 15:04:06.802545+00	74	Skeptis Terhadap File yang Diterima Namun Penasaran Ingin Mengakses? Gunakan Sandbox!	2	[{"changed": {"fields": ["title4", "content4", "title5"]}}]	74	1
585	2023-05-11 02:39:59.719453+00	89	Meningkatkan Produktivitas Pemrograman dengan AI Code Translator	2	[{"changed": {"fields": ["content", "poster_path1"]}}]	74	1
586	2023-06-22 07:10:57.204622+00	75	Tutorial Install Windows Subsytem for Android (WSA) Pada Windows 11	2	[{"changed": {"fields": ["similar_news"]}}]	74	1
587	2023-07-08 07:44:48.890073+00	93	Cakalang	1	[{"added": {}}]	74	1
588	2023-07-08 08:10:47.677326+00	94	Piastry	1	[{"added": {}}]	74	1
589	2023-07-08 08:30:47.144981+00	94	Piastry	3		74	1
590	2023-07-08 08:39:16.415607+00	93	Cakalang	3		74	1
591	2023-07-10 04:18:29.378626+00	95	Thinkboi	1	[{"added": {}}]	74	1
592	2023-07-10 07:35:44.039556+00	95	Thinkboi	3		74	1
593	2023-07-11 02:24:37.811517+00	96	NOicih	1	[{"added": {}}]	74	1
594	2023-07-11 02:32:26.71934+00	97	Lokim	1	[{"added": {}}]	74	1
595	2023-07-11 02:42:04.710371+00	97	Lokim	3		74	1
596	2023-07-11 02:53:24.789621+00	98	Mikasa	1	[{"added": {}}]	74	1
597	2023-07-11 02:56:23.088529+00	99	Makalibu	1	[{"added": {}}]	74	1
598	2023-07-11 03:13:59.762464+00	98	Mikasa	3		74	1
599	2023-07-11 03:26:48.45996+00	99	Makalibu	3		74	1
600	2023-07-11 03:26:48.467455+00	96	NOicih	3		74	1
601	2023-07-19 09:49:25.497751+00	1	235a19927852bbb026c1a27ab110adc7070ade59	3		108	1
602	2023-07-20 08:57:36.908307+00	100	Gadolga	1	[{"added": {}}]	74	1
603	2023-07-20 09:37:44.230831+00	1	minka@gmail.com	2	[{"changed": {"fields": ["verified"]}}]	110	1
604	2023-07-20 09:51:17.252615+00	102	Jakalang	3		74	1
605	2023-07-20 09:51:17.255943+00	101	Makarena	3		74	1
606	2023-07-20 09:51:17.257489+00	100	Gadolga	3		74	1
607	2023-07-29 09:18:36.306182+00	114	Maladin	1	[{"added": {}}]	74	1
608	2023-07-29 09:30:26.218305+00	119	Oo	3		74	1
609	2023-07-29 09:30:26.223194+00	118	Tikabo	3		74	1
610	2023-07-29 09:30:26.225056+00	117	Kaka	3		74	1
611	2023-07-29 09:30:26.227208+00	116	Ajeng	3		74	1
612	2023-07-29 09:30:26.229563+00	115	Baganu	3		74	1
613	2023-07-29 09:30:26.23162+00	114	Maladin	3		74	1
614	2023-07-29 09:30:26.233566+00	113	Aladin	3		74	1
615	2023-07-29 09:30:26.235447+00	112	Obashken	3		74	1
616	2023-07-29 09:30:26.237511+00	111	nanang	3		74	1
617	2023-07-29 09:30:26.239174+00	110	nano	3		74	1
618	2023-07-29 09:30:26.240833+00	109	Mangekyu	3		74	1
619	2023-07-29 09:30:26.242494+00	108	Shituku	3		74	1
620	2023-07-29 09:30:26.244679+00	107	Nomaden	3		74	1
621	2023-07-29 09:30:26.246754+00	106	lalaskdlasd	3		74	1
622	2023-07-29 09:30:26.248747+00	105	asda	3		74	1
623	2023-07-29 09:30:26.250517+00	104	asdasd	3		74	1
624	2023-07-29 09:30:26.252418+00	103	lalaskdlasd	3		74	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	contenttypes	contenttype
5	sessions	session
6	users	user
7	rooms	room
8	rooms	roomtype
9	rooms	amenity
10	rooms	facility
11	rooms	houserule
12	rooms	photo
13	reviews	review
14	reservations	reservation
15	reservations	bookedday
16	lists	list
17	conversations	conversation
18	conversations	message
34	rest_framework_api_key	apikey
35	games	gametype
36	games	photo1
37	games	game
38	games	photo2
39	games	photo
40	tips	tiptype
41	tips	tip
42	tips	photo2
43	tips	photo
44	tiplists	tiplist
45	tiplists	tiplisttutorial
46	profits	articletype
47	profits	profit
48	profits	photo2
49	profits	photo
50	tiplists	freelist
51	tiplists	tiplistprofit
52	tutorials	articletype
53	tutorials	photo
54	tutorials	photo2
55	tutorials	tutorial
56	news	photo2
57	news	photo
58	news	new
60	tiplists	tiplistnew
61	guides	articletype
62	guides	guide
63	guides	photo2
64	guides	photo
65	tiplists	tiplistguide
59	news	articletype
66	profits	detail
67	profits	comment
68	profits	category
69	nocharges	categoryfree
70	nocharges	image6
71	nocharges	image10
72	nocharges	image
73	nocharges	image9
74	nocharges	nocharge
75	nocharges	image7
76	nocharges	categoryapp
77	nocharges	image4
78	nocharges	image1
79	nocharges	image3
80	nocharges	image5
81	nocharges	categoryos
82	nocharges	image2
83	nocharges	image8
84	nocharges	keyword
85	nocharges	company
86	nocharges	freefrom
87	nocharges	developer
88	nocharges	distribution
89	favorites	favoritenorcharge
90	nocharges	domain
91	announcements	announcement
92	nocharges	categoryarticle
93	nocharges	similararticle
94	nocharges	recommendation
95	nocharges	categorydomain
96	announcements	image9
97	announcements	image8
98	announcements	image7
99	announcements	image6
100	announcements	image5
101	announcements	image4
102	announcements	image3
103	announcements	image2
104	announcements	image10
105	announcements	image1
106	announcements	image
107	authtoken	token
108	authtoken	tokenproxy
109	sites	site
110	account	emailaddress
111	account	emailconfirmation
112	socialaccount	socialaccount
113	socialaccount	socialapp
114	socialaccount	socialtoken
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2021-12-16 03:39:15.978756+00
2	contenttypes	0002_remove_content_type_name	2021-12-16 03:39:15.992829+00
3	auth	0001_initial	2021-12-16 03:39:16.029515+00
4	auth	0002_alter_permission_name_max_length	2021-12-16 03:39:16.073467+00
5	auth	0003_alter_user_email_max_length	2021-12-16 03:39:16.083004+00
6	auth	0004_alter_user_username_opts	2021-12-16 03:39:16.092208+00
7	auth	0005_alter_user_last_login_null	2021-12-16 03:39:16.099613+00
8	auth	0006_require_contenttypes_0002	2021-12-16 03:39:16.106376+00
9	auth	0007_alter_validators_add_error_messages	2021-12-16 03:39:16.116297+00
10	auth	0008_alter_user_username_max_length	2021-12-16 03:39:16.125919+00
11	auth	0009_alter_user_last_name_max_length	2021-12-16 03:39:16.132536+00
12	auth	0010_alter_group_name_max_length	2021-12-16 03:39:16.144015+00
13	auth	0011_update_proxy_permissions	2021-12-16 03:39:16.152576+00
14	users	0001_initial	2021-12-16 03:39:16.196068+00
15	admin	0001_initial	2021-12-16 03:39:16.256623+00
16	admin	0002_logentry_remove_auto_add	2021-12-16 03:39:16.283002+00
17	admin	0003_logentry_add_action_flag_choices	2021-12-16 03:39:16.294736+00
18	conversations	0001_initial	2021-12-16 03:39:16.340907+00
19	conversations	0002_auto_20190924_1800	2021-12-16 03:39:16.434456+00
20	rooms	0001_initial	2021-12-16 03:39:16.466469+00
21	rooms	0002_auto_20190923_1819	2021-12-16 03:39:16.507099+00
22	rooms	0003_auto_20190924_1436	2021-12-16 03:39:16.648025+00
23	rooms	0004_auto_20190924_1457	2021-12-16 03:39:16.8835+00
24	lists	0001_initial	2021-12-16 03:39:16.928249+00
25	lists	0002_auto_20190924_1800	2021-12-16 03:39:17.013351+00
26	lists	0003_auto_20191119_2016	2021-12-16 03:39:17.045891+00
27	lists	0004_auto_20191218_2035	2021-12-16 03:39:17.072921+00
28	reservations	0001_initial	2021-12-16 03:39:17.10365+00
29	reservations	0002_auto_20190924_1800	2021-12-16 03:39:17.163077+00
30	reservations	0003_bookedday	2021-12-16 03:39:17.194642+00
31	reviews	0001_initial	2021-12-16 03:39:17.231287+00
32	reviews	0002_auto_20190924_1800	2021-12-16 03:39:17.2982+00
33	reviews	0003_auto_20191119_1723	2021-12-16 03:39:17.422424+00
34	rooms	0005_auto_20190924_1739	2021-12-16 03:39:17.448767+00
35	rooms	0006_auto_20190924_1800	2021-12-16 03:39:17.614697+00
36	rooms	0007_auto_20190924_1806	2021-12-16 03:39:17.63861+00
37	rooms	0008_auto_20190925_1555	2021-12-16 03:39:17.658747+00
38	rooms	0009_auto_20191029_1509	2021-12-16 03:39:17.676925+00
39	sessions	0001_initial	2021-12-16 03:39:17.690929+00
40	users	0002_auto_20190925_1555	2021-12-16 03:39:17.719771+00
41	users	0003_auto_20191029_1509	2021-12-16 03:39:17.763286+00
42	users	0004_auto_20191029_1523	2021-12-16 03:39:17.796337+00
43	users	0005_user_login_method	2021-12-16 03:39:17.813472+00
44	users	0006_auto_20191119_1723	2021-12-16 03:39:17.831559+00
45	users	0007_auto_20191119_2016	2021-12-16 03:39:17.873071+00
46	users	0008_auto_20191218_2035	2021-12-16 03:39:17.904663+00
67	rooms	0010_auto_20211220_1823	2021-12-20 09:23:40.758147+00
68	users	0009_user_name	2021-12-20 09:23:40.780809+00
69	users	0010_remove_user_name	2021-12-20 09:24:30.864884+00
70	rest_framework_api_key	0001_initial	2021-12-28 01:28:54.353604+00
71	rest_framework_api_key	0002_auto_20190529_2243	2021-12-28 01:28:54.3789+00
72	rest_framework_api_key	0003_auto_20190623_1952	2021-12-28 01:28:54.391038+00
73	rest_framework_api_key	0004_prefix_hashed_key	2021-12-28 01:28:54.441703+00
74	games	0001_initial	2022-01-10 08:07:00.333373+00
75	games	0002_auto_20220110_1712	2022-01-10 08:13:00.842043+00
76	games	0003_auto_20220110_1727	2022-01-10 08:27:52.835697+00
77	games	0004_game_link_tutorial	2022-01-10 08:42:48.784725+00
78	tips	0001_initial	2022-01-10 09:23:14.535082+00
79	tiplists	0001_initial	2022-01-11 06:51:30.629468+00
80	tiplists	0002_tiplisttutorial	2022-01-11 09:26:17.910478+00
81	tips	0002_auto_20220316_1737	2022-03-16 08:37:45.60909+00
82	games	0005_game_imagedata	2022-03-17 02:06:03.256167+00
83	profits	0001_initial	2022-03-23 03:59:20.187078+00
84	tiplists	0003_freelist	2022-03-23 03:59:20.250204+00
85	tiplists	0004_auto_20220323_1259	2022-03-23 03:59:20.295688+00
86	tips	0003_tip_imagedata	2022-03-23 03:59:20.322288+00
87	tiplists	0005_auto_20220323_1344	2022-03-23 04:44:50.415703+00
88	tiplists	0006_auto_20220323_1609	2022-03-23 07:09:14.146848+00
89	tutorials	0001_initial	2022-03-24 02:33:08.194554+00
90	rest_framework_api_key	0005_auto_20220110_1102	2022-03-24 04:18:24.66767+00
91	news	0001_initial	2022-03-24 13:49:51.662645+00
92	tiplists	0002_tiplistnew	2022-03-24 14:14:26.30331+00
93	guides	0001_initial	2022-03-25 02:11:09.983489+00
94	news	0002_auto_20220325_1108	2022-03-25 02:11:10.016211+00
95	tiplists	0003_tiplistguide	2022-03-25 02:11:10.064964+00
96	news	0003_auto_20220325_1211	2022-03-25 03:14:42.471196+00
97	games	0006_auto_20220810_1135	2022-08-10 02:36:42.003343+00
98	games	0007_remove_gametype_caption	2022-08-10 02:41:05.996139+00
99	profits	0002_comment_detail	2022-08-10 07:47:40.486744+00
100	profits	0003_auto_20220810_1652	2022-08-10 07:53:10.303062+00
101	profits	0004_auto_20220811_1125	2022-08-11 02:25:44.965798+00
102	profits	0005_profit_imagedata2	2022-08-11 07:27:09.244261+00
103	profits	0006_auto_20220811_1638	2022-08-11 07:38:42.396931+00
104	profits	0007_auto_20220811_1643	2022-08-11 07:43:42.251898+00
105	profits	0008_auto_20220811_1643	2022-08-11 07:43:42.296655+00
106	profits	0009_auto_20220812_1056	2022-08-12 01:56:50.901952+00
107	profits	0010_auto_20220812_1117	2022-08-12 02:17:57.944936+00
108	nocharges	0001_initial	2022-08-12 03:20:40.208188+00
109	nocharges	0002_auto_20220812_1223	2022-08-12 03:23:23.095391+00
110	nocharges	0003_nocharge_category_free	2022-08-12 03:33:51.211568+00
111	nocharges	0004_auto_20220812_1323	2022-08-12 04:23:19.740683+00
112	nocharges	0004_auto_20220812_1405	2022-08-12 05:05:49.37375+00
113	nocharges	0005_auto_20220812_1406	2022-08-12 05:06:48.63729+00
114	favorites	0001_initial	2022-08-12 15:05:24.760591+00
115	tiplists	0003_delete_tiplist	2022-08-13 04:19:14.475533+00
116	nocharges	0006_auto_20220813_1543	2022-08-13 06:43:15.874644+00
117	announcements	0001_initial	2023-02-15 04:02:09.638568+00
118	nocharges	0007_nocharge_similar_news	2023-02-23 05:18:57.266004+00
119	nocharges	0008_nocharge_related_article	2023-02-23 07:31:56.094776+00
120	nocharges	0009_auto_20230223_1650	2023-02-23 07:50:55.327834+00
121	nocharges	0010_auto_20230223_1701	2023-02-23 08:01:55.835055+00
122	nocharges	0011_auto_20230227_1554	2023-02-27 06:54:24.943414+00
123	nocharges	0012_auto_20230227_1612	2023-02-27 07:32:19.640506+00
124	nocharges	0013_auto_20230227_1726	2023-02-27 08:26:46.525922+00
125	nocharges	0014_auto_20230227_1745	2023-02-27 08:45:30.186931+00
126	nocharges	0015_auto_20230301_1124	2023-03-01 02:25:09.628217+00
127	nocharges	0016_nocharge_url	2023-03-02 10:05:52.365745+00
128	tiplists	0004_delete_tiplistnew	2023-03-16 04:42:51.330516+00
129	tiplists	0005_delete_tiplisttutorial	2023-03-16 04:58:37.562775+00
130	tiplists	0002_delete_tiplist	2023-03-19 08:08:12.268031+00
131	nocharges	0017_auto_20230320_1639	2023-03-20 07:39:35.98799+00
132	nocharges	0018_remove_nocharge_related_article	2023-03-20 13:43:47.682498+00
133	nocharges	0019_nocharge_slug	2023-03-21 03:45:30.766359+00
134	nocharges	0020_auto_20230321_1330	2023-03-21 04:30:23.620104+00
135	nocharges	0021_nocharge_promo_end_date	2023-03-22 08:11:08.218511+00
136	nocharges	0022_remove_nocharge_url	2023-04-05 03:10:36.156946+00
137	announcements	0002_auto_20230405_1254	2023-04-05 03:54:39.89669+00
138	nocharges	0023_auto_20230405_1258	2023-04-05 03:58:45.306092+00
139	nocharges	0024_auto_20230410_1646	2023-04-10 07:46:49.785888+00
140	nocharges	0025_auto_20230426_1018	2023-04-26 03:18:49.642381+00
141	nocharges	0026_auto_20230426_1019	2023-04-26 03:19:58.579899+00
142	nocharges	0027_auto_20230426_1044	2023-04-26 03:44:27.461019+00
143	nocharges	0028_auto_20230503_0810	2023-05-03 01:10:06.117025+00
144	nocharges	0029_auto_20230503_0820	2023-05-03 01:20:38.452423+00
145	nocharges	0030_auto_20230503_0822	2023-05-03 01:22:18.128989+00
146	nocharges	0031_auto_20230708_1436	2023-07-08 07:37:01.618464+00
147	authtoken	0001_initial	2023-07-19 03:06:09.607412+00
148	authtoken	0002_auto_20160226_1747	2023-07-19 03:06:09.801026+00
149	authtoken	0003_tokenproxy	2023-07-19 03:06:09.811158+00
150	nocharges	0032_delete_recommendation	2023-07-20 08:56:31.203689+00
151	account	0001_initial	2023-07-20 09:30:30.764657+00
152	account	0002_email_max_length	2023-07-20 09:30:30.811516+00
153	sites	0001_initial	2023-07-20 09:30:30.819967+00
154	sites	0002_alter_domain_unique	2023-07-20 09:30:30.830791+00
155	socialaccount	0001_initial	2023-07-20 09:30:30.983463+00
156	socialaccount	0002_token_max_lengths	2023-07-20 09:30:31.043185+00
157	socialaccount	0003_extra_data_default_dict	2023-07-20 09:30:31.054894+00
158	nocharges	0033_auto_20230720_1648	2023-07-20 09:49:11.826259+00
159	nocharges	0034_auto_20230729_1557	2023-07-29 08:58:02.516911+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
h8t6da5v0inw2zo1xaz1gc4z68k12bqs	ZGY5ODM4YTNiN2Y2NTY5ZjE0ZDc5NDRmYzc5MDg4ZTQ3YzJiOTFkMDp7Il9sYW5ndWFnZSI6ImVuIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjliNGM0ZTA1ZjIwOGJiNmQxOGIxMDg1YWMzMmRjMTAyMmFhZGQ0MDEifQ==	2021-12-31 02:25:51.354141+00
1u61mxmpohmw3jecr6mz5i30hnm98ifq	NWFjYTI4ZjUyYTRhOGFjODJiYmQ3OTg0YWQzMjY1MmJkMDM1YWZhNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjRjNGUwNWYyMDhiYjZkMThiMTA4NWFjMzJkYzEwMjJhYWRkNDAxIn0=	2022-01-04 03:45:11.358851+00
4701vmyaipujfzrly1y54pewrl4tfils	NWFjYTI4ZjUyYTRhOGFjODJiYmQ3OTg0YWQzMjY1MmJkMDM1YWZhNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjRjNGUwNWYyMDhiYjZkMThiMTA4NWFjMzJkYzEwMjJhYWRkNDAxIn0=	2022-01-04 03:52:34.445942+00
9qaqaxtmpt84zstpzl20ldn1stntr7ct	NWFjYTI4ZjUyYTRhOGFjODJiYmQ3OTg0YWQzMjY1MmJkMDM1YWZhNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjRjNGUwNWYyMDhiYjZkMThiMTA4NWFjMzJkYzEwMjJhYWRkNDAxIn0=	2022-01-25 09:53:06.740789+00
y4r5s5310427ecxf9nx1e0t5fp6grex3	YzYyYTFjZmViMGNmYTAyMDYzMjE4ZDlhNmZlMWFlOWEwZWU1MmJiYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjRjNGUwNWYyMDhiYjZkMThiMTA4NWFjMzJkYzEwMjJhYWRkNDAxIiwiaXNfaG9zdGluZyI6dHJ1ZX0=	2022-01-26 04:43:52.129696+00
1z9k67hh7fzgbacwdvu7x4t4odcn9pmu	NWFjYTI4ZjUyYTRhOGFjODJiYmQ3OTg0YWQzMjY1MmJkMDM1YWZhNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjRjNGUwNWYyMDhiYjZkMThiMTA4NWFjMzJkYzEwMjJhYWRkNDAxIn0=	2022-02-08 20:27:45.731721+00
uvihmfaw3bqvtixx2qu23vfsn758mh2c	NWFjYTI4ZjUyYTRhOGFjODJiYmQ3OTg0YWQzMjY1MmJkMDM1YWZhNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjRjNGUwNWYyMDhiYjZkMThiMTA4NWFjMzJkYzEwMjJhYWRkNDAxIn0=	2022-02-17 10:35:25.122079+00
o1680k8iyf7eex7a80g718dpzmtlehyj	NWFjYTI4ZjUyYTRhOGFjODJiYmQ3OTg0YWQzMjY1MmJkMDM1YWZhNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjRjNGUwNWYyMDhiYjZkMThiMTA4NWFjMzJkYzEwMjJhYWRkNDAxIn0=	2022-02-18 09:07:21.565595+00
31dydodqu8jx8a4g7z3nrldd8mf180de	NWFjYTI4ZjUyYTRhOGFjODJiYmQ3OTg0YWQzMjY1MmJkMDM1YWZhNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjRjNGUwNWYyMDhiYjZkMThiMTA4NWFjMzJkYzEwMjJhYWRkNDAxIn0=	2022-03-29 08:38:09.363591+00
iq84snz20z0impy5ds32li36tb5z2jue	YzYyYTFjZmViMGNmYTAyMDYzMjE4ZDlhNmZlMWFlOWEwZWU1MmJiYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjRjNGUwNWYyMDhiYjZkMThiMTA4NWFjMzJkYzEwMjJhYWRkNDAxIiwiaXNfaG9zdGluZyI6dHJ1ZX0=	2022-03-30 07:14:05.403475+00
rjzcvfhvlvlgy9x265r6cw36dcuttfkd	NWFjYTI4ZjUyYTRhOGFjODJiYmQ3OTg0YWQzMjY1MmJkMDM1YWZhNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjRjNGUwNWYyMDhiYjZkMThiMTA4NWFjMzJkYzEwMjJhYWRkNDAxIn0=	2022-04-04 02:47:06.239976+00
56msr572rxkge2wms6b5k1ys38ngiyx8	YzYyYTFjZmViMGNmYTAyMDYzMjE4ZDlhNmZlMWFlOWEwZWU1MmJiYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjRjNGUwNWYyMDhiYjZkMThiMTA4NWFjMzJkYzEwMjJhYWRkNDAxIiwiaXNfaG9zdGluZyI6dHJ1ZX0=	2022-04-06 04:07:01.183798+00
635lzxgrvpl4bhigytq0o3osgj2agv55	NWFjYTI4ZjUyYTRhOGFjODJiYmQ3OTg0YWQzMjY1MmJkMDM1YWZhNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjRjNGUwNWYyMDhiYjZkMThiMTA4NWFjMzJkYzEwMjJhYWRkNDAxIn0=	2022-04-27 14:43:40.780711+00
fdjd0cr2p40sc29cpvdcgolh0w2782nt	NWFjYTI4ZjUyYTRhOGFjODJiYmQ3OTg0YWQzMjY1MmJkMDM1YWZhNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjRjNGUwNWYyMDhiYjZkMThiMTA4NWFjMzJkYzEwMjJhYWRkNDAxIn0=	2022-06-20 02:59:00.099438+00
s0dci1lnelvecdq28roqbeqe4998vmys	NWFjYTI4ZjUyYTRhOGFjODJiYmQ3OTg0YWQzMjY1MmJkMDM1YWZhNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjRjNGUwNWYyMDhiYjZkMThiMTA4NWFjMzJkYzEwMjJhYWRkNDAxIn0=	2022-07-24 05:16:59.372095+00
r0jsy1ubfj8zyl8vln3jb3shzxzn2r0s	YzYyYTFjZmViMGNmYTAyMDYzMjE4ZDlhNmZlMWFlOWEwZWU1MmJiYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjRjNGUwNWYyMDhiYjZkMThiMTA4NWFjMzJkYzEwMjJhYWRkNDAxIiwiaXNfaG9zdGluZyI6dHJ1ZX0=	2022-08-22 04:02:50.746499+00
71rf8cjbi9lerbb4q8ifdia8mtsooxnq	NWFjYTI4ZjUyYTRhOGFjODJiYmQ3OTg0YWQzMjY1MmJkMDM1YWZhNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjRjNGUwNWYyMDhiYjZkMThiMTA4NWFjMzJkYzEwMjJhYWRkNDAxIn0=	2022-08-22 14:38:31.296891+00
b9mb51oce0wpvztd70fw24odu1uetd6m	MzU5ZGZmZjFhYmJlMWY1NzczYmZkOTc1OTQwMzc2ZGI1YWY1MzYyZTp7Il9sYW5ndWFnZSI6ImVuIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjliNGM0ZTA1ZjIwOGJiNmQxOGIxMDg1YWMzMmRjMTAyMmFhZGQ0MDEiLCJpc19ob3N0aW5nIjp0cnVlfQ==	2022-08-24 02:38:25.340249+00
qoalzpt3m3kkz6e40tu4t82z7eihp9wc	NWFjYTI4ZjUyYTRhOGFjODJiYmQ3OTg0YWQzMjY1MmJkMDM1YWZhNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjRjNGUwNWYyMDhiYjZkMThiMTA4NWFjMzJkYzEwMjJhYWRkNDAxIn0=	2022-08-25 01:58:18.232543+00
7wp2y2tlh4hercs4f835okq5tuj4h9d0	NWFjYTI4ZjUyYTRhOGFjODJiYmQ3OTg0YWQzMjY1MmJkMDM1YWZhNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjRjNGUwNWYyMDhiYjZkMThiMTA4NWFjMzJkYzEwMjJhYWRkNDAxIn0=	2022-09-10 01:25:22.989631+00
mwg9go84fqyqd1y5bo5gzamwfz1vehgx	NWFjYTI4ZjUyYTRhOGFjODJiYmQ3OTg0YWQzMjY1MmJkMDM1YWZhNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjRjNGUwNWYyMDhiYjZkMThiMTA4NWFjMzJkYzEwMjJhYWRkNDAxIn0=	2022-09-13 07:20:04.055409+00
8dfg47pbvs2x0lfle4kptxfyv0wlrnbj	NWFjYTI4ZjUyYTRhOGFjODJiYmQ3OTg0YWQzMjY1MmJkMDM1YWZhNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjRjNGUwNWYyMDhiYjZkMThiMTA4NWFjMzJkYzEwMjJhYWRkNDAxIn0=	2022-09-26 00:00:13.611011+00
tpwcn0swhreh12gobslshslnswy0e5j2	NWFjYTI4ZjUyYTRhOGFjODJiYmQ3OTg0YWQzMjY1MmJkMDM1YWZhNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjRjNGUwNWYyMDhiYjZkMThiMTA4NWFjMzJkYzEwMjJhYWRkNDAxIn0=	2022-10-13 07:37:26.257829+00
ofjeeox6atjh8dkrssnotuu3f0kxyby9	NWFjYTI4ZjUyYTRhOGFjODJiYmQ3OTg0YWQzMjY1MmJkMDM1YWZhNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjRjNGUwNWYyMDhiYjZkMThiMTA4NWFjMzJkYzEwMjJhYWRkNDAxIn0=	2022-12-06 03:34:47.293107+00
ymjo74x6hbcojfmshb2x35102n4900eb	NWFjYTI4ZjUyYTRhOGFjODJiYmQ3OTg0YWQzMjY1MmJkMDM1YWZhNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjRjNGUwNWYyMDhiYjZkMThiMTA4NWFjMzJkYzEwMjJhYWRkNDAxIn0=	2022-12-27 06:40:20.053516+00
dqvqd4s0jh6jelr59ct1gt8o4kx9ucjm	NWFjYTI4ZjUyYTRhOGFjODJiYmQ3OTg0YWQzMjY1MmJkMDM1YWZhNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjRjNGUwNWYyMDhiYjZkMThiMTA4NWFjMzJkYzEwMjJhYWRkNDAxIn0=	2023-01-04 05:05:39.362282+00
s1y97cwtybs8vpzpczgm25hv7g1z1bv1	NWFjYTI4ZjUyYTRhOGFjODJiYmQ3OTg0YWQzMjY1MmJkMDM1YWZhNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjRjNGUwNWYyMDhiYjZkMThiMTA4NWFjMzJkYzEwMjJhYWRkNDAxIn0=	2023-01-26 02:26:57.572295+00
vu7y2my1244lb2y3morna2ien57fbt49	NWFjYTI4ZjUyYTRhOGFjODJiYmQ3OTg0YWQzMjY1MmJkMDM1YWZhNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjRjNGUwNWYyMDhiYjZkMThiMTA4NWFjMzJkYzEwMjJhYWRkNDAxIn0=	2023-02-10 02:33:37.457781+00
j8omtuylqc6zbaayh4fnwl32sg56x3uw	NWFjYTI4ZjUyYTRhOGFjODJiYmQ3OTg0YWQzMjY1MmJkMDM1YWZhNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjRjNGUwNWYyMDhiYjZkMThiMTA4NWFjMzJkYzEwMjJhYWRkNDAxIn0=	2023-02-10 03:24:42.930965+00
iic41b5doog1yh7swg7h326gk0bqkiaj	NWFjYTI4ZjUyYTRhOGFjODJiYmQ3OTg0YWQzMjY1MmJkMDM1YWZhNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjRjNGUwNWYyMDhiYjZkMThiMTA4NWFjMzJkYzEwMjJhYWRkNDAxIn0=	2023-02-18 15:04:58.45305+00
ehnqa9hujkgnm51ik4vjvdhz5g86xcgj	YzYyYTFjZmViMGNmYTAyMDYzMjE4ZDlhNmZlMWFlOWEwZWU1MmJiYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjRjNGUwNWYyMDhiYjZkMThiMTA4NWFjMzJkYzEwMjJhYWRkNDAxIiwiaXNfaG9zdGluZyI6dHJ1ZX0=	2023-03-11 07:18:26.156763+00
67bxgj5qn1ioqnm7bx8i12vru1ovoruv	NWFjYTI4ZjUyYTRhOGFjODJiYmQ3OTg0YWQzMjY1MmJkMDM1YWZhNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjRjNGUwNWYyMDhiYjZkMThiMTA4NWFjMzJkYzEwMjJhYWRkNDAxIn0=	2023-03-14 15:20:23.76081+00
c8jv115t9ncl92yyqdozsxdy0m7wg522	NWFjYTI4ZjUyYTRhOGFjODJiYmQ3OTg0YWQzMjY1MmJkMDM1YWZhNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjRjNGUwNWYyMDhiYjZkMThiMTA4NWFjMzJkYzEwMjJhYWRkNDAxIn0=	2023-03-23 07:11:10.345273+00
wvlp8xzv5r1rs8x2t4stiyct4ppprxqs	NWFjYTI4ZjUyYTRhOGFjODJiYmQ3OTg0YWQzMjY1MmJkMDM1YWZhNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjRjNGUwNWYyMDhiYjZkMThiMTA4NWFjMzJkYzEwMjJhYWRkNDAxIn0=	2023-03-30 05:26:55.247525+00
37kowjaec4hcgt3kp90vaf0lkekijaus	NjcyZWJkY2VkMTU0ZTczYWM5OTczNjkzZDYwODdmZmUxMWU3MGFjZTp7fQ==	2023-03-30 07:19:51.335656+00
9tjbh77a8251s9xakntyjjokw9280zz7	NjcyZWJkY2VkMTU0ZTczYWM5OTczNjkzZDYwODdmZmUxMWU3MGFjZTp7fQ==	2023-03-30 07:23:16.941799+00
8176dxutjq67g7w4197ei8p9x9sz1auf	NjcyZWJkY2VkMTU0ZTczYWM5OTczNjkzZDYwODdmZmUxMWU3MGFjZTp7fQ==	2023-04-03 09:29:37.283085+00
4hnrw3543yp0dusvls2x72uo073ngdx3	Njk2OTExNDBjODZiODYzZjRjYzYyOWRlY2Y5MDFhYmJlMTc1NGRhNzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1Y2ZhZWU4MzVmM2Q2YTVhNWRhMDAwNjI1YTZiNjg2M2QxNGVkMDc1IiwiaXNfaG9zdGluZyI6dHJ1ZX0=	2023-04-03 09:33:50.394598+00
jpe2mpy53i2xzche5s01qgaz1kkwuk9e	NWFjYTI4ZjUyYTRhOGFjODJiYmQ3OTg0YWQzMjY1MmJkMDM1YWZhNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjRjNGUwNWYyMDhiYjZkMThiMTA4NWFjMzJkYzEwMjJhYWRkNDAxIn0=	2023-04-04 02:49:53.571154+00
27wn48zm8f27siuqtj1di9d8meu7zpb3	NWFjYTI4ZjUyYTRhOGFjODJiYmQ3OTg0YWQzMjY1MmJkMDM1YWZhNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjRjNGUwNWYyMDhiYjZkMThiMTA4NWFjMzJkYzEwMjJhYWRkNDAxIn0=	2023-04-04 06:39:21.2058+00
y1drawkl3jn45xxx189ndf7q2yboaqla	NWFjYTI4ZjUyYTRhOGFjODJiYmQ3OTg0YWQzMjY1MmJkMDM1YWZhNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjRjNGUwNWYyMDhiYjZkMThiMTA4NWFjMzJkYzEwMjJhYWRkNDAxIn0=	2023-04-06 14:48:08.545972+00
osjkac552owceeku37o3767adnfwxosq	NWFjYTI4ZjUyYTRhOGFjODJiYmQ3OTg0YWQzMjY1MmJkMDM1YWZhNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjRjNGUwNWYyMDhiYjZkMThiMTA4NWFjMzJkYzEwMjJhYWRkNDAxIn0=	2023-04-11 10:14:23.012123+00
gji0qd8kgrar57uo8jv1gexnpxghsvrr	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-04-24 07:47:20.392973+00
ud3j81lrgchdznv8lsvn74x0fdecncdp	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-04-27 04:19:00.91818+00
0o0lsc4l8tqt3dtv61ur4x6pgkfdldsd	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-05-10 02:25:16.032893+00
s20huftdj3zqv5bkwil98okcgrp1bs7g	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-05-24 07:28:44.24473+00
ix6cr0jlo0c6teai4gbf8bpna8wd454i	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-07-05 07:57:38.915115+00
5vumaaipjzdo3dbermvt9eal0ilnbpl8	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-07-22 07:28:00.991517+00
6f4yhnv4tb4ttar6uwrmfov9vj74zpcf	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-07-24 04:17:18.283833+00
zfc0j7f4o1qlqcyeemzrv0ecfj46uvia	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-07-25 02:22:58.813451+00
c6yhmmyojphrd161imc4xptoapsyf3i2	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-04 08:21:16.065286+00
e0x8kcel1ko2md0nzdy1v3yocqmc2txv	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-04 08:21:36.934063+00
d7fo4nizq3hsckfkdwsue00smy1g74jx	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-04 08:27:01.364842+00
364mzzzxab4vtpvwewisi1cnot8ufe0g	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-04 08:33:55.369817+00
8m5gozpw3leo4l05bnkxshyofleicau7	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-04 08:44:48.909958+00
lo72pp3e2sp2inv4171sck3lsi2clqm0	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-04 08:57:29.105363+00
qwrphkzd09o31wxree8ex95ynv6kfu9c	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-04 08:58:39.620235+00
zhrl5vhqshdjgxkav029y2sat3xn176i	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-04 09:44:07.752762+00
511or2ut0hdmou04bxzrz9bh60a7b8fc	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-07 03:18:31.102142+00
p6qix8wj6d37mb9y19rnh913xve1jqih	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-07 03:19:24.611947+00
xr5xpxnhe6xxydlhzmfpofc3sfmgt8g0	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-07 03:47:59.499488+00
20jtskktrbh75uxms77la68bww4aog2u	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-07 03:52:19.278224+00
b56ri4gfyl3gk3cpf21bu26zdngtji6c	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-07 07:02:18.196479+00
tewpol59zyd7dolmgqwjlwm7ta1ptny4	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-08 02:59:13.603025+00
aehngsnlk319zpwo3hte6wpuw78evc9o	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-08 03:01:58.37772+00
24ytbqfk8389fxsmx1ti09gd9syo5jr1	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-08 03:04:22.215579+00
nzepwluddmgtnbo6syczq45jolqml693	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-08 03:05:20.645013+00
0q65q70su86a2pqugkym8xzqjtyvuukt	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-08 03:06:25.43621+00
4t70qycc78lu2yj0t0phfq31ip2p9h6i	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-08 03:13:17.385044+00
8qx14xbqaujk571zt96yuphui0bxhiqu	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-08 03:20:07.181977+00
a1cs64gk75jrlnwu5zdt9yo7yyi6avxn	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-08 07:16:35.875772+00
9xf4pi8shd521t2tk9kq4rigzoq73782	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-08 08:53:50.062265+00
isao5mad3bzc1hymn0pgb1zff9hjxi0u	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-08 09:40:24.658009+00
2oqyofq7t74f2d79af636rka7kz212m2	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-08 09:41:42.105787+00
1zeg5pt3b5uab74j3kfxok8exej75kvh	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-09 02:32:53.458594+00
a0azy4rfhwj40y45aek9z2yk8vlxokos	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-09 03:45:01.049124+00
jnf2udz0p4yoj5pqz11xcyizvzviyykr	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-09 02:55:37.768601+00
vpchoo0ecpkzehs4u2l02u61xwbyhk7u	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-09 02:56:48.829502+00
nap47fd8yuzum29m3jnzh7irxg6sb3ka	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-09 04:40:38.433024+00
e6s922p8gpnrux23k01xv55dcntqm5wo	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-09 04:45:59.685773+00
x9coz8edk6586sbl3th433fywzzk3sg1	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-09 04:54:20.252771+00
04au52zgzrihxsf60d7ld31h9ppzqe6x	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-09 04:55:15.671666+00
xb59tpcgod8t6u3lzd5kcegyvkvll4kv	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-09 07:25:38.3039+00
7o376n10h5edqnbup8lwo1n0rbiqv34a	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-09 07:45:08.321775+00
qhzdrydsremy7t1noradckgf83sujkih	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-09 08:08:09.197259+00
3y9syknpmxhtdofrz6jcq4nptszbegq0	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-09 08:48:01.426685+00
zmyxs2g4kt6b284a5ppjzyz8gb91m0eq	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-09 09:40:31.564303+00
c10omvrs30ocpcfutcuvwdymv5pqvcof	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-09 09:51:17.71552+00
bqk23zldminekkk50z0z5lnuv5rws9vt	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-09 09:55:30.180085+00
ub3n67aw7rvc6i8xt0wa47c1fz496j1c	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-09 09:57:40.333435+00
cl2wcrpmu945kvzpolri3cnxv7gpg6jo	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-10 01:50:02.853862+00
ftrqd2138zn6bsxl990t6k75co5mki47	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-10 01:53:58.871227+00
4o8jo5hrcib1snmutko931nla3fgp5fs	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-10 02:12:19.864156+00
1idbhf2j4mdo0gg40iwnz4rf55rcasjf	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-10 03:07:25.907727+00
9f2pt806tnqn7gnumg5woq6mjk0ih5d6	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-10 03:21:37.130484+00
pjzzdug1ybut3k5021cy42p5r2xx9rqc	NTUxMDRlMWQ0MThmOTM3ZjIxNjFhNmFkNTE0M2NiNDc4NDE1NzhlZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMzQ5YjYyZjI2MjExNWQ3OTQwMmNmMzg3MDJkYmRlN2QyNWM5NTE4In0=	2023-08-11 01:48:51.467678+00
\.


--
-- Data for Name: django_site; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_site (id, domain, name) FROM stdin;
1	example.com	example.com
\.


--
-- Data for Name: favorites_favoritenorcharge; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.favorites_favoritenorcharge (id, created, updated, title, user_id) FROM stdin;
1	2022-08-12 15:12:34.412948+00	2022-08-12 15:12:42.683609+00	My fav	1
\.


--
-- Data for Name: favorites_favoritenorcharge_nocharges; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.favorites_favoritenorcharge_nocharges (id, favoritenorcharge_id, nocharge_id) FROM stdin;
\.


--
-- Data for Name: games_game; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.games_game (id, created, updated, name, caption_title, description, game_type_id, host_id, link_tutorial, "imageData") FROM stdin;
7	2022-01-10 08:43:39.333472+00	2022-01-10 08:43:39.333487+00	Lianm	Test	Good get	1	1	https://www.youtube.com/watch?v=dUoU9I4zD3U&list=OLAK5uy_mpQhSrV2uGWGSvyGFfc44Q0nXnvZHlxcs	\N
11	2022-01-11 02:20:26.336724+00	2022-01-11 02:20:26.33674+00	asda	jhkak	asdda	1	1	aslsfsff	\N
13	2022-01-12 04:44:22.60916+00	2022-01-12 04:44:22.609174+00	Game1	title this	Lokaie	1	1	linkg	\N
6	2022-01-10 08:32:17.905616+00	2022-02-21 04:48:47.21157+00	Assa	Free on ubisoft	Lorem karoe	1	1	test	\N
5	2022-01-10 08:29:12.992487+00	2022-02-21 04:49:09.521661+00	Legion	Free GOG	Lorep	1	1	ipsum	\N
14	2022-03-17 02:06:58.173636+00	2022-03-17 02:06:58.173651+00	Nautilus	Linux Terminal	Conjunsion	1	1	http://localhost:8000/games/create/	game_photos/nvidia-compressed_MDWuV0O.png
15	2022-03-17 02:47:42.650628+00	2022-03-17 02:47:42.650649+00	Forza	Make Monew	Tut kenzon	1	1	http://localhost:8000/games/create/	game_photos/pexels-roberto-nickson-2559941.jpg
9	2022-01-10 14:29:23.320338+00	2022-03-17 07:35:31.29095+00	depan	Cpation	Nice	1	1	link	game_photos/20220218-BerchtesgadenerAlpen_JA-JP8988545599_UHD.jpg
16	2022-08-08 04:07:11.051071+00	2022-08-08 04:07:11.051089+00	Libo	Limbo Call	Nneed Teroimnas	2	1	https://www.1337x.tw/	game_photos/20220207-WinterludeIce_ROW2615609916_UHD.jpg
\.


--
-- Data for Name: games_gametype; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.games_gametype (id, created, updated, name) FROM stdin;
1	2022-01-10 08:07:39.778529+00	2022-01-10 08:07:39.778545+00	Adventure
2	2022-08-08 04:06:07.160489+00	2022-08-08 04:06:07.160527+00	Arcade
4	2022-08-10 14:46:09.880639+00	2022-08-10 14:46:13.625358+00	Action
\.


--
-- Data for Name: games_photo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.games_photo (id, created, updated, caption, file, game_id) FROM stdin;
1	2022-01-10 08:32:17.90759+00	2022-01-10 08:32:17.907608+00	File1	game_photos/XYplorer_doH79Pn1d1.png	6
2	2022-03-16 06:19:40.90062+00	2022-03-16 06:23:05.083278+00	ok	game_photos/l-ny-sun.jpg	5
3	2022-03-16 06:23:31.452712+00	2022-03-16 06:23:31.452726+00	colloid	game_photos/colloid.png	5
4	2022-03-16 06:23:43.581803+00	2022-03-16 06:23:43.581818+00	oke	game_photos/Screenshot.png	5
\.


--
-- Data for Name: games_photo2; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.games_photo2 (id, created, updated, caption, file, game_id) FROM stdin;
\.


--
-- Data for Name: guides_articletype; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.guides_articletype (id, created, updated, title) FROM stdin;
1	2022-03-25 02:11:58.66623+00	2022-03-25 02:11:58.666243+00	YugiOh Duel Deck
\.


--
-- Data for Name: guides_guide; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.guides_guide (id, created, updated, title, caption, description, link_tutorial, "imageData", article_type_id, host_id) FROM stdin;
1	2022-03-25 02:12:57.724184+00	2022-03-26 04:10:22.377679+00	Guide Data Satu Dua	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever sinc	With now gimp new	http://localhost:8000/guides/create/	guide_photos/pexels-roberto-nickson-2559941.jpg	1	1
2	2022-03-26 01:37:01.895185+00	2022-03-26 04:10:34.599064+00	Guide 2	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever sinc	Multi universe of massi	http://localhost:8000/guides/create/	guide_photos/minimalish.jpg	1	1
3	2022-03-26 04:14:55.433988+00	2022-03-26 04:14:55.434002+00	Tutor3	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever sinc	Wooerokekle	http://localhost:8000/profits/create/	guide_photos/macos-monterey-wwdc-21-stock-5k-6016x6016-5584.jpg	1	1
4	2022-03-26 04:15:35.143487+00	2022-03-26 04:15:35.143502+00	totr4	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever sinc	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the	http://localhost:8000/profits/create/	guide_photos/pexels-roberto-shumski-1903702.jpg	1	1
5	2022-03-26 04:17:58.304718+00	2022-03-26 04:17:58.304732+00	tutor5	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever sinc	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the	http://localhost:8000/profits/create/	guide_photos/macos-monterey-stock-green-light-layers-5k-8k-7680x7680-5891.jpg	1	1
6	2022-03-26 04:20:22.630156+00	2022-03-26 04:20:22.630176+00	Tutor6	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever sinc	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the	http://localhost:8000/profits/create/	guide_photos/pexels-deva-darshan-1123972.jpg	1	1
7	2022-03-26 04:26:40.295159+00	2022-03-26 04:26:40.295174+00	tutor7	adadsa	asdakds	lksjlkd	guide_photos/Screenshot_from_2022-03-21_21-23-32.png	1	1
8	2022-03-26 04:35:54.427299+00	2022-03-26 04:35:54.427315+00	tutor8	ahjkashdk	adkjaldjk	lkajlkadjlkad	guide_photos/Screenshot_from_2022-03-21_09-26-58.png	1	1
9	2022-03-26 04:43:30.537874+00	2022-03-26 04:43:30.537887+00	tutor9	asdalkdj	laksdjalkd	slkdjslk	guide_photos/Screenshot_from_2022-03-21_21-23-32_ADjjxhE.png	1	1
10	2022-03-26 06:14:37.027545+00	2022-03-26 06:22:38.730443+00	Abo	sfdsf	asdasd	asdasd	guide_photos/Screenshot_from_2022-03-01_10-55-15.png	1	1
11	2022-03-26 06:37:33.126319+00	2022-03-26 06:37:33.126333+00	mask	aksdsa	adsadsa	http://localhost:8000/guides/create/	guide_photos/Screenshot_from_2022-03-21_09-26-58_6CBeu8L.png	1	1
\.


--
-- Data for Name: guides_photo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.guides_photo (id, created, updated, caption, file, guide_id) FROM stdin;
\.


--
-- Data for Name: guides_photo2; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.guides_photo2 (id, created, updated, caption, file, guide_id) FROM stdin;
\.


--
-- Data for Name: lists_list; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.lists_list (id, created, updated, name, user_id) FROM stdin;
1	2021-12-20 07:57:39.289071+00	2021-12-20 07:57:39.289087+00	My Favourites Houses	1
\.


--
-- Data for Name: lists_list_rooms; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.lists_list_rooms (id, list_id, room_id) FROM stdin;
\.


--
-- Data for Name: news_articletype; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.news_articletype (id, created, updated, title) FROM stdin;
1	2022-03-24 14:16:49.519561+00	2022-03-24 14:16:49.519575+00	FreeF
\.


--
-- Data for Name: news_new; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.news_new (id, created, updated, title, caption, description, link_tutorial, "imageData", article_type_id, host_id) FROM stdin;
2	2022-03-25 01:32:33.81016+00	2022-03-26 03:04:08.628776+00	Tik rol	Best Clock	With magnesium	http://localhost:8000/news/create/	new_photos/pexels-oliver-sjöström-931018.jpg	1	1
\.


--
-- Data for Name: news_photo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.news_photo (id, created, updated, caption, file, new_id) FROM stdin;
\.


--
-- Data for Name: news_photo2; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.news_photo2 (id, created, updated, caption, file, new_id) FROM stdin;
\.


--
-- Data for Name: nocharges_categoryapp; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.nocharges_categoryapp (id, created, updated, title) FROM stdin;
3	2023-03-15 03:54:17.875982+00	2023-03-15 03:54:17.875999+00	VOD
4	2023-03-25 07:02:47.310644+00	2023-03-25 07:02:47.310662+00	Artificial Intelligence
6	2023-04-03 03:38:16.943414+00	2023-04-03 03:38:16.94343+00	Development
8	2023-04-03 03:40:34.153376+00	2023-04-03 03:40:45.813995+00	Operating System
9	2023-04-03 03:41:19.53403+00	2023-04-03 03:41:19.534046+00	Internet & Network
10	2023-04-03 03:42:23.62406+00	2023-04-03 03:42:23.624085+00	Grapich Design
11	2023-04-03 03:42:33.514477+00	2023-04-03 03:42:33.514494+00	Office
12	2023-04-03 03:43:02.549939+00	2023-04-03 03:43:02.549956+00	Virtualization
13	2023-04-03 03:43:41.433081+00	2023-04-03 03:43:41.433104+00	Multimedia
14	2023-04-03 03:43:51.802941+00	2023-04-03 03:43:51.802957+00	Messaging
15	2023-04-03 03:44:27.678009+00	2023-04-03 03:44:27.678025+00	System Utility
16	2023-04-03 03:44:39.189996+00	2023-04-03 03:44:39.190011+00	Backup and Restore
17	2023-04-03 03:45:19.516658+00	2023-04-03 03:45:19.516675+00	File and Document Management
18	2023-04-03 03:45:33.035535+00	2023-04-03 03:45:33.035553+00	Personalize
19	2023-04-03 03:45:59.05404+00	2023-04-03 03:45:59.054056+00	CAD & 3D Design
20	2023-04-03 03:46:58.830953+00	2023-04-03 03:46:58.83097+00	Scheduling and Reminders
21	2023-04-03 03:47:17.769448+00	2023-04-03 03:47:17.769465+00	Database System
22	2023-04-03 03:47:40.837301+00	2023-04-03 03:47:40.837316+00	Application Testing
23	2023-04-03 03:48:03.253079+00	2023-04-03 03:48:03.253096+00	System Administration
24	2023-04-03 03:48:22.412057+00	2023-04-03 03:48:22.412073+00	Video Editing
25	2023-04-03 03:49:28.945619+00	2023-04-03 03:49:28.945636+00	Sound Processor
26	2023-04-03 03:50:04.371778+00	2023-04-03 03:50:04.371795+00	Software
27	2023-04-03 03:50:29.293738+00	2023-04-03 03:50:29.293755+00	Password Management
28	2023-04-03 03:50:53.939961+00	2023-04-03 03:50:53.93999+00	Distance learning
29	2023-04-03 03:51:39.196747+00	2023-04-03 03:51:39.196763+00	Analysis Data
30	2023-04-03 03:52:17.415571+00	2023-04-03 03:52:17.415589+00	Virtual Office
31	2023-04-03 03:53:08.965591+00	2023-04-03 03:53:08.965609+00	Debugging and Profiling Tools
32	2023-04-03 03:53:19.93935+00	2023-04-03 03:53:19.939366+00	Front-end Development
33	2023-04-03 03:53:30.083467+00	2023-04-03 03:53:30.083483+00	Cloud Service
34	2023-04-03 03:53:38.95037+00	2023-04-03 03:53:38.950397+00	Backend Development
35	2023-04-03 03:53:49.332077+00	2023-04-03 03:53:49.332094+00	VPN Software
36	2023-04-03 03:53:59.222461+00	2023-04-03 03:53:59.222479+00	Digital Content Application
37	2023-04-03 03:54:09.558079+00	2023-04-03 03:54:09.558095+00	E-commerce and Finance
38	2023-04-03 03:54:25.446898+00	2023-04-03 03:54:25.446915+00	Personal Finance Manager
39	2023-04-03 03:54:33.62197+00	2023-04-03 03:54:33.621988+00	Business communication
40	2023-04-03 03:54:43.102886+00	2023-04-03 03:54:43.102912+00	Edit PDF
41	2023-04-03 03:54:52.127695+00	2023-04-03 03:54:52.127712+00	Software Security Applications
42	2023-04-03 03:55:07.109904+00	2023-04-03 03:55:07.10992+00	Group Work Tool
43	2023-04-03 03:55:15.156033+00	2023-04-03 03:55:15.15605+00	Mobile Application Development
44	2023-04-03 03:55:24.035922+00	2023-04-03 03:55:24.035938+00	Audio Editor
45	2023-04-03 03:55:32.735093+00	2023-04-03 03:55:32.735116+00	Content Management System
46	2023-04-03 03:56:19.088262+00	2023-04-03 03:56:19.088301+00	Product Analysis
47	2023-04-03 03:56:40.207369+00	2023-04-03 03:56:40.207386+00	Aplikasi Kesehatan
48	2023-04-03 03:57:31.634291+00	2023-04-03 03:57:31.634306+00	Music Streaming Service
49	2023-04-03 03:57:40.837182+00	2023-04-03 03:57:40.837197+00	Collaboration Software
50	2023-04-03 03:57:50.703779+00	2023-04-03 03:57:50.703797+00	Game Development
51	2023-04-03 03:58:02.270772+00	2023-04-03 03:58:02.270789+00	Network Security Management
52	2023-04-03 03:58:11.118908+00	2023-04-03 03:58:11.118933+00	Big Data Analytics
53	2023-04-03 03:58:21.800029+00	2023-04-03 03:58:21.800045+00	Desktop Application Development
54	2023-04-03 04:03:05.328761+00	2023-04-03 04:03:05.328777+00	Virtual Reality Application
2	2023-03-15 03:53:38.273368+00	2023-04-03 04:27:14.502507+00	Free
7	2023-04-03 03:38:41.041223+00	2023-04-03 04:27:57.891311+00	Antivirus dan Security
1	2022-08-12 03:23:43.294312+00	2023-04-03 04:29:06.68617+00	Graphic
55	2023-04-26 02:35:19.42359+00	2023-04-26 02:35:19.423606+00	Utilities
56	2023-05-03 01:01:09.428579+00	2023-05-03 01:01:09.428602+00	Game
\.


--
-- Data for Name: nocharges_categorydomain; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.nocharges_categorydomain (id, title) FROM stdin;
1	Mayapada
2	Gadget
\.


--
-- Data for Name: nocharges_categoryfree; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.nocharges_categoryfree (id, created, updated, title) FROM stdin;
1	2022-08-12 03:23:56.397376+00	2022-08-12 03:23:56.397395+00	Game
2	2022-08-27 03:52:19.515139+00	2022-08-27 03:52:19.515168+00	Application
3	2023-05-03 05:19:40.086385+00	2023-05-03 05:19:40.086411+00	Course
\.


--
-- Data for Name: nocharges_categoryos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.nocharges_categoryos (id, created, updated, title) FROM stdin;
1	2022-08-12 03:24:14.492445+00	2022-08-12 03:24:14.492472+00	Windows
2	2023-01-16 08:08:40.873273+00	2023-01-16 08:08:40.873288+00	Linux
4	2023-04-26 02:31:17.806395+00	2023-04-26 02:31:17.806409+00	Cross-Platform
\.


--
-- Data for Name: nocharges_developer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.nocharges_developer (id, created, updated, title) FROM stdin;
1	2022-08-21 09:35:19.082167+00	2022-08-21 09:35:19.082197+00	Epic Games
2	2022-08-21 09:37:09.582394+00	2022-08-21 09:37:09.582418+00	Activision
3	2023-01-16 08:19:44.384501+00	2023-01-16 08:19:44.384517+00	Manyo M
4	2023-01-16 08:19:51.010552+00	2023-01-16 08:19:51.010567+00	Lookmu
5	2023-01-16 08:20:00.381635+00	2023-01-16 08:20:00.381648+00	Maspin
6	2023-05-03 01:00:04.219069+00	2023-05-03 01:00:04.219101+00	Warm Lamp Games
\.


--
-- Data for Name: nocharges_distribution; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.nocharges_distribution (id, created, updated, title) FROM stdin;
1	2022-08-21 09:37:36.372268+00	2022-08-21 09:37:46.630491+00	Epic Games
2	2023-05-03 01:00:30.4884+00	2023-05-03 01:00:30.488431+00	Prime Gaming
3	2023-05-03 05:05:24.690908+00	2023-05-03 05:05:24.690925+00	Steam
4	2023-05-03 05:07:41.208743+00	2023-05-03 05:07:41.208756+00	Udemy
\.


--
-- Data for Name: nocharges_domain; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.nocharges_domain (id, created, updated, title) FROM stdin;
1	2022-08-13 06:43:57.976309+00	2022-08-13 06:43:57.976329+00	Free
2	2022-08-13 06:44:04.340527+00	2022-08-13 06:44:04.340544+00	Latest
3	2022-08-13 06:44:15.141186+00	2022-08-13 06:44:15.141209+00	Tutorial
\.


--
-- Data for Name: nocharges_image; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.nocharges_image (id, created, updated, caption, file, nocharge_id) FROM stdin;
\.


--
-- Data for Name: nocharges_image1; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.nocharges_image1 (id, created, updated, caption, file, nocharge_id) FROM stdin;
\.


--
-- Data for Name: nocharges_image10; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.nocharges_image10 (id, created, updated, caption, file, nocharge_id) FROM stdin;
\.


--
-- Data for Name: nocharges_image2; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.nocharges_image2 (id, created, updated, caption, file, nocharge_id) FROM stdin;
\.


--
-- Data for Name: nocharges_image3; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.nocharges_image3 (id, created, updated, caption, file, nocharge_id) FROM stdin;
\.


--
-- Data for Name: nocharges_image4; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.nocharges_image4 (id, created, updated, caption, file, nocharge_id) FROM stdin;
\.


--
-- Data for Name: nocharges_image5; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.nocharges_image5 (id, created, updated, caption, file, nocharge_id) FROM stdin;
\.


--
-- Data for Name: nocharges_image6; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.nocharges_image6 (id, created, updated, caption, file, nocharge_id) FROM stdin;
\.


--
-- Data for Name: nocharges_image7; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.nocharges_image7 (id, created, updated, caption, file, nocharge_id) FROM stdin;
\.


--
-- Data for Name: nocharges_image8; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.nocharges_image8 (id, created, updated, caption, file, nocharge_id) FROM stdin;
\.


--
-- Data for Name: nocharges_image9; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.nocharges_image9 (id, created, updated, caption, file, nocharge_id) FROM stdin;
\.


--
-- Data for Name: nocharges_nocharge; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.nocharges_nocharge (id, created, updated, title, caption, overview, content, video, poster_path, title1, content1, poster_path1, title2, content2, poster_path2, title3, content3, poster_path3, title4, content4, poster_path4, title5, content5, poster_path5, title6, content6, poster_path6, title7, content7, poster_path7, title8, content8, poster_path8, title9, content9, poster_path9, title10, content10, poster_path10, category_app_id, category_os_id, host_id, category_free_id, developer_id, distribution_id, domain_id, category_domain_id, slug, promo_end_date) FROM stdin;
87	2023-05-03 06:45:49.131321+00	2023-05-10 07:29:05.655967+00	Breathe dan Poker Club	Dua game gratis yang mencoba menghibur di waktu luang.	Bertahan di luar angkasa dan temukan misteri dengan Breathedge, atau mainkan poker secara online dengan pemain lain di Poker Club.	Sibuk dengan pekerjaan atau tugas kuliah memang bisa sangat melelahkan. Kadang kita perlu melepaskan sedikit penat dengan bermain game. Jika kamu sedang mencari game baru untuk dimainkan, Breathedge dan Poker Club adalah pilihan yang menarik. Dua game ini sangat berbeda jenisnya, namun keduanya menyajikan pengalaman seru dan menghibur bagi para pemainnya.\r\n<br>\r\nDapatkan game secara gratis sampai dengan <b>4 Mei, 2023</b>.\r\n<br>\r\n<b>Breathedge</b> https://t.ly/V6GT\r\n<br>\r\n<b>Poker Club</b> https://t.ly/ohxd	\N	uploads/2023/05/free-breatheandpocker.jpg	Berikut contoh penggunaannya\r\n\r\n```js\r\nconst data = "data"\r\n```	asdasd	uploads/2023/05/code-poster_FJ5ilEu.jpg																												2	4	1	1	\N	1	1	\N	breathe-dan-poker-club	2023-05-04 06:28:51+00
89	2023-05-03 09:15:22.061003+00	2023-05-11 02:39:59.70179+00	Meningkatkan Produktivitas Pemrograman dengan AI Code Translator	Repository ini yang menggunakan teknologi Machine Learning dari OpenAI.	Memungkinkan para pengembang perangkat lunak untuk mengintegrasikan satu bahasa pemrograman dengan yang lain, atau menerjemahkan kode dari bahasa tertentu ke bahasa lain dengan mudah dan efisien.	Dalam dunia pemrograman, seringkali kita dihadapkan pada tugas-tugas yang memerlukan kemampuan untuk menerjemahkan kode dari satu bahasa ke bahasa lain. Hal ini dapat menjadi tugas yang rumit dan memakan waktu, terutama jika kita tidak akrab dengan kedua bahasa pemrograman tersebut.	https://www.youtube.com/watch?v=0lS4LT422S4	uploads/2023/05/code-poster.jpg	Solusi baru telah muncul untuk menyelesaikan masalah tersebut. AI Code Translator adalah platform inovatif yang menggunakan teknologi Machine Learning dari OpenAI untuk membantu mengubah kode-kode pemrograman antar bahasa secara otomatis dan akurat. \r\n\\n\r\nDengan menggunakan AI Code Translator, Anda dapat mengubah kode yang ditulis dalam satu bahasa pemrograman menjadi bahasa pemrograman lain tanpa harus mempelajari bahasa baru secara mendetail.\\n\r\n\r\nAnda hanya perlu menyalin kode dari bahasa sumber ke platform AI Code Translator, dan kemudian memilih bahasa target yang diinginkan. Platform akan segera menerjemahkan kode tersebut ke dalam bahasa target yang diinginkan, sehingga Anda dapat mempercepat penyelesaian tugas pemrograman Anda.\\n	AI Code Translator tersedia secara gratis dengan lisensi open-source di Github. Anda dapat mengunduh dan menginstalnya pada sistem operasi Anda sendiri atau menggunakan versi online yang tersedia di https://github.com/mckaywrigley/ai-code-translator	uploads/2023/05/A_cute_adorable_baby_owl_made_of_crystal_ball_with.jpg	Berikut ini adalah langkah-langkah untuk menginstall AI Code Translator pada <b>localhost</b>:<br>\r\n1. Pastikan bahwa Node.js, Git dan npm sudah terinstal pada sistem operasi Anda. Jika belum, silakan unduh dan instal versi terbaru dari Node.js di situs resmi.<br>\r\n2. Buka terminal pada sistem operasi Anda dan buat direktori baru untuk AI Code Translator.<br>\r\n3. Masuk ke direktori tersebut dengan menjalankan perintah: \r\n```bash \r\ncd /path/to/directory\r\n```\r\n4. Jalankan perintah ini dari terminal untuk mengunduh kode sumber AI Code Translator dari Github: <b><pre><code>git clone https://github.com/mckaywrigley/ai-code-translator.git</code></pre></b> \r\n5. Setelah proses cloning selesai, masuk ke direktori AI Code Translator yang telah diunduh dengan menjalankan perintah: <b><pre><code>cd ai-code-translator</code></pre></b>	Install semua dependensi yang dibutuhkan dengan menjalankan perintah: <b><pre><code>npm install</code></pre></b>\r\n\r\nJalankan aplikasi dengan menjalankan perintah: <b><pre><code>npm start</code></pre></b>\r\n\r\nAplikasi akan berjalan pada localhost dan port defaultnya adalah 3000. Buka browser dan ketikkan <b><pre><code>http://localhost:3000</code></pre></b> pada address bar untuk membuka aplikasi AI Code Translator.																								<b>Kami juga telah membuat video tutorial yang dapat membantu Anda memahami topik ini dengan lebih baik</b>:		4	4	1	\N	\N	\N	3	\N	meningkatkan-produktivitas-pemrograman-dengan-ai-code-translator	\N
88	2023-05-03 07:33:14.431015+00	2023-05-03 07:35:24.417312+00	AI Voice Generator: Buat Voiceover dengan Mudah	Murf.ai menyediakan Generator Suara AI dalam 20 bahasa yang berbeda.	Anda dapat memilih dari lebih dari 120 suara pembacaan teks ke suara dan membuat <i>voiceover</i> AI. Dengan aplikasi ini, Anda bisa langsung mengubah teks menjadi suara dengan mudah dan cepat.	Murf adalah generator suara AI yang dapat menciptakan voiceover manusia yang mirip untuk video, podcast, dan presentasi. Dengan Murf, Anda tidak perlu membeli peralatan rekaman mahal atau mempekerjakan penyanyi profesional. \r\n<br>\r\nPlatform ini menawarkan lebih dari 120 suara AI dengan aksen dan nada yang berbeda yang terdengar realistis dan alami. Selain itu, platform ini mendukung klona suara, mengubah suara, serta kontrol pitch, penekanan, dan kecepatan.	\N	uploads/2023/05/AI-murf-poster.jpg	Murf memungkinkan pengguna untuk menambahkan musik dan media latar belakang pada voiceover mereka, membuatnya menjadi solusi lengkap untuk penciptaan konten suara bagi para kreator. Antarmukanya mudah digunakan dan fitur-fiturnya yang canggih membuatnya menjadi alat yang sangat berguna untuk meningkatkan konten e-learning, membuat modul pelatihan perusahaan, maupun membuat video yang menarik.	Audio yang dihasilkan tidak sempurna seperti manusia, tapi masih bisa diandalkan, untuk mencobanya dapat mengunjungi https://murf.ai/\r\n<br>\r\nJangan khawatir, ini gratis.																													4	4	1	\N	\N	\N	3	\N	ai-voice-generator-buat-voiceover-dengan-mudah	\N
71	2023-04-26 02:55:55.56307+00	2023-04-26 05:14:37.596118+00	Flameshot: Aplikasi Screenshot Open-Source yang Wajib Kamu Coba!	Powerfull dan banyak fitur	Dengan fitur-fiturnya yang keren, seperti menambahkan teks, garis, panah, atau kotak pada tangkapan layar, serta menyimpan hasil tangkapan.	Flameshot aplikasi open-source yang berfungsi sebagai alat bantu untuk mengambil tangkapan layar pada sistem operasi Windows, Linux, dan macOS. Aplikasi ini memiliki fitur-fitur keren seperti kemampuan untuk menambahkan teks, panah, kotak, dan objek lainnya ke dalam tangkapan layar, serta menyimpan hasil tangkapan dalam berbagai format gambar.	\N	uploads/2023/04/flameshot.jpg	Fitur lainnya yang menarik memiliki fitur upload langsung yang dikonversi menjadi link dari imgurl, hal ini cukup penting, mengingat ada  beberapa rule dalam grup yang dimiliki tidak boleh mengunggah gambar. Dengan fitur ini bisa menggantikan gambar dengan url untuk mengaksesnya. Untuk menggunakannya cukup dengan mengunjungi https://flameshot.org/ lalu download sesuai dengan platform masing-masing.		uploads/2023/04/flameshot-demo.gif																												55	4	1	2	\N	\N	3	\N	flameshot-aplikasi-screenshot-open-source-yang-wajib-kamu-coba	\N
73	2023-05-01 09:23:52.913869+00	2023-05-01 09:48:36.487743+00	Perbedaan MBR dan GPT Saat Pemilihan Boot	Memilih Jenis Partisi	Bingung milih MBR atau GPT saat memilih di BIOS, Artikel ini discuss perbedaannya.	Saat menginstall ulang sistem operasi pada perangkat komputer, seringkali kita harus memilih antara menggunakan MBR (Master Boot Record) atau GPT (GUID Partition Table) sebagai tipe partisi harddisk. Tipe partisi ini bisa mempengaruhi bagaimana sistem operasi dan data diatur pada harddisk, sehingga penting untuk memahami perbedaan antara keduanya.\r\n<br>\r\nMBR dan GPT adalah dua jenis tipe partisi yang berbeda dalam cara mereka mengorganisir data pada harddisk. MBR adalah tipe partisi lama yang digunakan sejak zaman BIOS (Basic Input/Output System), sedangkan GPT merupakan tipe partisi baru yang diperkenalkan pada era modern UEFI (Unified Extensible Firmware Interface).\r\n<br>\r\nPerbedaan utama antara MBR dan GPT adalah kapasitas dan jumlah partisi yang dapat didukung. MBR hanya mendukung partisi hingga 2TB dan maksimal 4 partisi primer, sementara GPT mendukung partisi hingga lebih dari 9 zettabyte dan tidak terbatas oleh batasan partisi primer.\r\n<br>\r\nSelain itu, GPT juga memiliki fitur keamanan yang lebih baik daripada MBR, seperti backup header partisi dan checksum yang membantu melindungi data dari kerusakan atau kegagalan disk. GPT juga dapat mendukung booting sistem operasi secara langsung dari partisi tertentu tanpa memerlukan boot loader eksternal seperti yang diperlukan oleh MBR.	\N	uploads/2023/05/mbr-gpt.jpg	Namun, satu hal yang perlu diperhatikan saat memilih antara MBR dan GPT adalah kompatibilitas dengan sistem operasi dan hardware. Beberapa sistem operasi dan hardware mungkin tidak mendukung GPT, meskipun sebagian besar sistem modern saat ini dapat mendukung GPT.\r\n<br>\r\n<br>\r\nJadi, saat menginstall ulang sistem operasi pada perangkat komputer, pastikan untuk mempertimbangkan tipe partisi apa yang ingin digunakan. Jika harddisk Anda lebih dari 2TB atau memerlukan partisi lebih dari 4, maka GPT mungkin menjadi pilihan yang lebih baik. Namun, jika Anda menggunakan hardware atau sistem operasi yang tidak mendukung GPT, maka MBR bisa menjadi pilihan yang lebih aman dan stabil.	Untuk menggunakan MBR, hanya membutuhkan Boot Mode denngan Pilihan Legacy  yang tersedia di mayoritas motherboard yang sudah berumur. Sehingga, hampir semua komputer yang dibuat dalam beberapa tahun terakhir dapat menggunakan MBR tanpa masalah.		Sedangkan untuk menggunakan GPT, harddisk membutuhkan komputer dengan UEFI (Unified Extensible Firmware Interface) atau BIOS yang mendukung boot mode UEFI. Kebanyakan laptop dan desktop yang dirilis pada tahun 2011 atau lebih baru sudah dilengkapi dengan UEFI, sehingga seharusnya dapat mendukung GPT. Namun, beberapa motherboard lama mungkin masih menggunakan BIOS tradisional dan tidak mendukung boot mode UEFI, sehingga tidak dapat menggunakan GPT.	Secara umum, spesifikasi hardware yang diperlukan untuk MBR dan GPT memiliki perbedaan. Namun, UEFI menjadi faktor penting ketika menggunakan GPT, karena harddisk dengan GPT hanya dapat digunakan pada sistem operasi yang mendukung UEFI. Jadi, pastikan untuk memeriksa spesifikasi hardware dan sistem operasi sebelum memilih tipe partisi yang akan digunakan pada harddisk.																										15	4	1	\N	\N	\N	3	\N	perbedaan-mbr-dan-gpt-saat-pemilihan-boot	\N
74	2023-05-01 10:19:04.120858+00	2023-05-10 15:04:06.792686+00	Skeptis Terhadap File yang Diterima Namun Penasaran Ingin Mengakses? Gunakan Sandbox!	Secure File Access	Sandbox aman akses file dicurigai. Lindungi sistem kamu dari ancaman cyber saat tetap bisa akses file yang diinginkan.	Dalam era digital yang semakin berkembang, keamanan dan perlindungan data pengguna menjadi sangat penting. Microsoft, sebagai perusahaan teknologi terdepan, mengambil langkah besar dengan memperkenalkan fitur Sandbox pada Windows, demi meningkatkan keamanan dan kenyamanan penggunanya.	\N	uploads/2023/05/sandbox.jpg	Sandbox pada Windows merupakan fitur yang memungkinkan pengguna untuk menjalankan aplikasi atau perangkat lunak dalam lingkungan yang terisolasi dan terkontrol, sehingga tidak dapat mengakses sistem utama atau data pengguna. Hal ini sangat penting untuk melindungi pengguna dari potensi ancaman keamanan, seperti virus, malware, dan serangan peretas.	Kepala Divisi Keamanan Microsoft Indonesia, mengatakan, "Fitur Sandbox pada Windows bukan hanya menjadi solusi keamanan yang efektif, tetapi juga memberikan kemudahan bagi pengguna untuk menguji aplikasi atau perangkat lunak tanpa khawatir merusak sistem utama mereka."		Fitur Sandbox ini juga memudahkan pengembang perangkat lunak untuk menguji produk mereka dalam lingkungan yang aman dan terkontrol, sehingga mereka dapat memastikan bahwa produk yang mereka hasilkan bebas dari kelemahan keamanan atau gangguan yang mungkin terjadi jika diuji pada sistem utama pengguna.	Salah satu contoh penting dari penggunaan fitur Sandbox adalah ketika pengguna ingin mengakses file atau dokumen yang dicurigai dapat membahayakan sistem mereka. Dengan menjalankannya dalam lingkungan Sandbox, pengguna dapat memeriksa dan mengidentifikasi potensi ancaman, tanpa membahayakan sistem utama mereka.		Selain itu, fitur Sandbox pada Windows juga mendukung pengelolaan sumber daya yang efisien, karena memungkinkan pengguna untuk menghentikan proses yang tidak diperlukan dalam lingkungan terisolasi tersebut. Hal ini tentunya membuat penggunaan sumber daya sistem lebih optimal dan efisien.	<h1>Berikut langkah-langkah untuk mengaktifkan Windows Sandbox di Windows 11</h1>\r\n<br>\r\n<ol>\r\n<li>Buka <i>Start Menu</i></li>\r\n<li>Cari dan pilih <i>keyword <b>Turn Windows features on or off.</b></i> </li>\r\n<li>Pastikan Windows Sandbox telah tercentang, jika belum lakukan install dengan menceklist <i>Checkbox</i> Windows Sandbox. Lalu Restart.\r\n<li>Cari dan pilih Windows Sandbox.</li>\r\n</ol>	uploads/2023/05/turn-windows-feature.jpg			uploads/2023/05/windows-turn-on-sandbox_NY0zlzz.jpg		Berikut <i>preview</i> Windows Sandbox yang telah berhasil dijalankan, sekarang anda dapat mencoba file yang menurut anda mencurigakan tanpa harus was-was akan bahaya yang mengintai.	uploads/2023/05/windows-sandbox-preview_txXKaaZ.jpg																15	1	1	\N	\N	\N	3	\N	skeptis-terhadap-file-yang-diterima-namun-penasaran-ingin-mengakses-gunakan-sandbox	\N
75	2023-05-01 14:36:39.03393+00	2023-06-22 07:10:57.1922+00	Tutorial Install Windows Subsytem for Android (WSA) Pada Windows 11	Jalankan Aplikasi Android di Windows 11 dengan WSA.	WSA memungkinkan pengguna untuk menjalankan aplikasi Android langsung di desktop Windows 11.	Jika Anda seorang pengguna PC yang juga menggunakan banyak aplikasi Android dan juga development mobile apps, maka Windows Subsystem for Android (WSA) dapat menjadi fitur yang sangat berguna untuk Anda. Dengan mengaktifkan WSA pada Windows 11, Anda dapat menjalankan aplikasi Android langsung di desktop PC Anda tanpa perlu menggunakan emulator atau ponsel cerdas tambahan. Fitur inovatif ini dapat meningkatkan produktivitas dan kemudahan penggunaan, serta memungkinkan integrasi yang lebih baik antara aplikasi Android dan sistem operasi Windows. Dalam artikel ini, penulis akan membahas cara mudah menginstal dan mengaktifkan WSA pada Windows 11 serta langkah-langkah untuk mulai menggunakan fitur ini dengan cepat dan mudah.	\N	uploads/2023/05/wsa-windows11-base.jpg	Langkah pertama yang harus dilakukan adalah memastikan bahwa sistem operasi Windows 11 Anda sudah ditingkatkan ke versi build 22000.258 atau dengan versi <i>Insider</i>, karena fitur WSA hanya tersedia pada build tersebut atau yang lebih baru. Setelah itu, Anda harus mengaktifkan fitur Developer Mode pada Windows 11 agar dapat mengaktifkan fungsi Windows Subsystem for Android. Setelah semua persyaratan terpenuhi, langkah selanjutnya adalah mengunduh dan menginstal paket WSA dari Microsoft Store. Sebelum memulai langkah-langkahnya, pastikan membaca <b><i>System requirements\r\n</i></b> yang disarankan oleh Microsoft.	Cara																													6	1	1	\N	\N	\N	3	\N	tutorial-install-windows-subsytem-for-android-wsa-pada-windows-11	\N
76	2023-05-02 14:29:44.305766+00	2023-05-02 14:44:26.963471+00	Rangoli Software Keyboard Royal Kludge(Linux Support)	Budget King Mechanical Keyboard	Dalam pengembangannya, Rangoli melakukan reverse-engineering terhadap protokol yang digunakan oleh keyboard Royal Kludge.	Keyboard Royal Kludge memang populer di kalangan pengguna keyboard mekanik yang memiliki anggaran terbatas, namun dukungan perangkat lunaknya kurang memuaskan. Namun, sekarang ada solusi yang tepat untuk mengatasinya, yaitu dengan menggunakan aplikasi open-source bernama Rangoli yang dapat diunduh secara gratis melalui GitHub ini https://github.com/rnayabed/rangoli	\N	uploads/2023/05/rangoli-fit.jpg	Rangoli adalah software yang mendukung berbagai jenis keyboard Royal Kludge. Dengan menggunakan Rangoli, pengguna dapat menyesuaikan tombol atau pemetaan sesuai dengan kebutuhan mereka. Perangkat lunak ini juga <b>crossplatform</b> yang mendukung dalam lingkungan yang luas sehingga memberikan kenyamanan dalam mengatur keyboard dengan sistem operasi Linux.	Dalam pengembangannya,  Rangoli melakukan reverse-engineering terhadap protokol yang digunakan oleh keyboard Royal Kludge dengan firmware default-nya, sehingga Rangoli bisa berfungsi sebagai software pengganti RK Software. Selain itu, aplikasi ini dilesensikan di bawah GNU General Public License v3.0 dan disarankan bagi para penggunanya untuk memberikan donasi sebagai dukungan kepada pengembang.		Dengan aplikasi Rangoli, mengelola keyboard Royal Kludge menjadi lebih mudah dan menyenangkan. Jadi, bagi Anda yang ingin meningkatkan produktivitas pengalaman mengetik di Linux dengan keyboard Royal Kludge, Rangoli mungkin bisa jadi pilihan yang tepat.																											55	2	1	\N	\N	\N	3	\N	rangoli-software-keyboard-royal-kludgelinux-support	\N
78	2023-05-03 01:10:37.98711+00	2023-05-03 06:27:43.396901+00	Dapatkan Beholder 2 Gratis	Lawan Korupsi dalam Beholder 2.	Pemain berperan sebagai inspektur pemerintah yang menyusup dan melawan korupsi serta konspirasi di sebuah negara otoriter. Dilengkapi dengan cerita yang menarik, tampilan visual yang unik, dan gameplay yang memacu adrenalin.	Game ini tersedia secara gratis di Prime Gaming. Dalam game ini, Anda akan mengambil keputusan sulit, mengumpulkan informasi rahasia, melakukan penyadapan, dan membangun hubungan dengan beragam karakter unik dalam upaya untuk menjaga keamanan keluarga dan membantu mereka mencapai tujuan mereka.	\N	uploads/2023/05/free-beholder.jpg	Beholder 2 menawarkan pengalaman yang mendalam dan penuh teka-teki, serta grafik yang indah dan atmosfer yang memikat. Jika Anda mencari pengalaman bermain game yang meningkatkan kemampuan analitis dan menggugah imajinasi, Beholder 2 bisa menjadi pilihan yang tepat. Dapatkan gamenya di Prime Game ini https://gaming.amazon.com																														2	4	1	1	6	2	1	\N	dapatkan-beholder-2-gratis	2023-05-24 00:49:36+00
77	2023-05-02 14:59:22.149295+00	2023-05-03 00:48:07.429046+00	Stacer: Linux System Optimizer and Monitoring	Manajemen Sistem Linux Anda dengan Stacer.	Aplikasi ini memungkinkan pengguna untuk melihat penggunaan CPU, memori, penyimpanan, dan aktivitas jaringan secara real-time.	Stacer adalah alat utilitas gratis dan open-source untuk Linux yang menyediakan antarmuka pengguna yang mudah dipahami untuk memantau dan mengelola sumber daya sistem. Aplikasi ini memungkinkan pengguna untuk melihat penggunaan CPU, memori, penyimpanan, dan aktivitas jaringan secara real-time. \r\n<br>\r\nSelain itu, Stacer juga menyediakan fitur pembersihan sistem untuk menghapus file sampah, mengatur aplikasi startup, dan menghapus paket perangkat lunak yang tidak diperlukan. Dengan desain yang intuitif dan alat optimisasi yang bermanfaat, Stacer merupakan alat penting bagi pengguna Linux yang ingin memudahkan proses manajemen sistem mereka. Dapatkan secara gratis dari Repository Github ini https://github.com/oguzhaninan/Stacer	\N	uploads/2023/05/stacer.jpg																															55	2	1	\N	\N	\N	3	\N	stacer-linux-system-optimizer-and-monitoring	\N
86	2023-05-03 06:13:20.651372+00	2023-05-03 14:57:33.92705+00	Amazon Web Services (AWS) - Zero to Hero	Membantu Anda memahami dan menguasai layanan-layanan AWS yang paling populer.	Course ini cocok untuk pemula yang ingin memulai karir di bidang cloud computing dan profesional yang ingin meningkatkan keterampilan mereka dalam penggunaan AWS.	Course ini dirancang untuk membantu peserta memahami dan menguasai layanan-layanan AWS yang paling populer dan memberikan pengenalan mendalam tentang manajemen sumber daya, komputasi, jaringan, basis data, dan keamanan pada platform AWS. Selain itu, peserta juga akan belajar bagaimana membangun, mengelola, dan memantau aplikasi dan infrastruktur cloud menggunakan teknologi-teknologi seperti EC2, S3, RDS, CloudWatch, dan lain sebagainya.\r\n<br>\r\nDapatkan Coursenya disini <br> https://www.udemy.com/course/amazon-web-services-aws-v/	\N	uploads/2023/05/course-aws.png.jpg																															2	4	1	3	\N	4	1	\N	amazon-web-services-aws-zero-to-hero	\N
\.


--
-- Data for Name: profits_articletype; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.profits_articletype (id, created, updated, title) FROM stdin;
1	2022-03-23 04:07:27.164645+00	2022-03-23 04:07:27.164658+00	Software
\.


--
-- Data for Name: profits_category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.profits_category (id, created, updated, title, description, url) FROM stdin;
1	2022-08-11 02:27:17.132688+00	2022-08-11 02:27:17.132715+00	Epic Games	Free of weeks games on the internet	epic-games
\.


--
-- Data for Name: profits_photo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.profits_photo (id, created, updated, caption, file, profit_id) FROM stdin;
6	2022-08-12 02:21:03.225607+00	2022-08-12 02:21:03.225626+00	cap	profit_photos/20220605-RapadalenSNP_EN-US6836173287_UHD.jpg	11
7	2022-08-12 02:21:03.231028+00	2022-08-12 02:21:03.231046+00	nugu	profit_photos/20220530-WW2Lincoln_EN-US6306243521_UHD.jpg	11
\.


--
-- Data for Name: profits_photo2; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.profits_photo2 (id, created, updated, caption, file, profit_id) FROM stdin;
\.


--
-- Data for Name: profits_profit; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.profits_profit (id, created, updated, title, caption, description, link_tutorial, "imageData", article_type_id, host_id, category_id, "imageData2") FROM stdin;
2	2022-03-23 07:17:08.176331+00	2022-03-23 07:17:08.176345+00	Nautial	Bset Remvoe	Lokimon a asdmasd	https://gitlab.com/azijuanfahri/ahk_setup	profit_photos/pexels-oliver-sjöström-931018.jpg	1	1	\N	\N
4	2022-03-26 02:07:03.937367+00	2022-03-26 02:07:03.937383+00	Free3	Nice	Pik pcik	http://localhost:8000/profits/create/	profit_photos/macos-monterey-stock-green-light-layers-5k-8k-7680x7680-5891_md2RMNX.jpg	1	1	\N	\N
5	2022-03-26 02:08:10.361289+00	2022-03-26 02:08:10.361328+00	Lulu	sdfsdf	kjhkjh	kjhkjhj	profit_photos/Screenshot_from_2022-03-21_21-23-32.png	1	1	\N	\N
6	2022-03-26 03:02:39.150306+00	2022-03-26 03:02:39.15032+00	Lima	Lima	With Universe	http://localhost:8000/profits/create/	profit_photos/macos-monterey-wwdc-21-stock-5k-6016x6016-5584.jpg	1	1	\N	\N
1	2022-03-23 04:09:40.173309+00	2022-04-19 07:53:47.818057+00	Easus Pro With Magisk Latest, Numura Ba	Limited Time	Easus adalah nanana	http://localhost:8000/profits/create/	profit_photos/newyork19.jpg	1	1	\N	\N
11	2022-08-12 02:21:03.214997+00	2022-08-12 02:21:03.215012+00	ti lemo	capmo li	itu kolomn	https://www.django-rest-framework.org/api-guide/fields/#charfield	profit_photos/20220705-FannetteIsland_EN-US7369656560_UHD_MbgV2fD.jpg	1	1	1	profit_photos/20220627-ValensoleLavender_EN-US7717234716_UHD.jpg
12	2023-03-16 07:26:00.997195+00	2023-03-16 07:26:00.997213+00	masda	mada3	maasdadasd	asdasdasd	profit_photos/1.png	1	1	1	profit_photos/highdetail.jpg
13	2023-03-17 14:00:19.571549+00	2023-03-17 14:00:19.571565+00	ini nte	comp	aldjalkdj	www.yputu.com	profit_photos/1_sGPF2Bg.png	1	1	1	profit_photos/1_by9kVRU.png
14	2023-03-18 02:42:16.528317+00	2023-03-18 02:42:16.528334+00	hahahah	aklsdalk	aksdjaklsd	aksldjlakd	profit_photos/highdetail_Nk4scxv.jpg	1	1	1	profit_photos/1_fAKHhp7.png
15	2023-03-18 02:48:40.347892+00	2023-03-18 02:48:40.347907+00	aosiudaodsi	iouaoiudaoi	aoisduaoi	aiosuadio	profit_photos/icon512.png	1	1	1	profit_photos/1_j8PetNA.png
16	2023-03-18 02:49:11.009726+00	2023-03-18 02:49:11.009744+00	langsu	alksdjl	akljdl	lkasjdl	profit_photos/icon512_doHo29N.png	1	1	1	profit_photos/un_fondo_azul_en_el_medio.jpg
17	2023-03-18 02:49:42.145+00	2023-03-18 02:49:42.145016+00	aoduio	oaiduoia	asdaad	aksdjalk	profit_photos/un_fondo_azul_en_el_medio_I3jwbRQ.jpg	1	1	1	profit_photos/1_0NbXIKP.png
\.


--
-- Data for Name: reservations_bookedday; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.reservations_bookedday (id, created, updated, day, reservation_id) FROM stdin;
\.


--
-- Data for Name: reservations_reservation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.reservations_reservation (id, created, updated, status, check_in, check_out, guest_id, room_id) FROM stdin;
\.


--
-- Data for Name: rest_framework_api_key_apikey; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rest_framework_api_key_apikey (id, created, name, revoked, expiry_date, hashed_key, prefix) FROM stdin;
sv6nDcQN.pbkdf2_sha256$150000$7RMRSKo0jRxZ$EoFhMjlBlLAb1CoU31rh7IThjmFoF/2IMAcWXz6wjXM=	2021-12-28 03:24:49.044685+00	firts_mylist	f	\N	pbkdf2_sha256$150000$7RMRSKo0jRxZ$EoFhMjlBlLAb1CoU31rh7IThjmFoF/2IMAcWXz6wjXM=	sv6nDcQN
qogcF0vl.pbkdf2_sha256$150000$eQ9vIxe8Wv4Y$Z85LXsTBvzbl6Zi33D+YlTDBKdOdN09n6S3Z3p2e/Qw=	2022-02-04 09:54:50.247323+00	admin	f	\N	pbkdf2_sha256$150000$eQ9vIxe8Wv4Y$Z85LXsTBvzbl6Zi33D+YlTDBKdOdN09n6S3Z3p2e/Qw=	qogcF0vl
\.


--
-- Data for Name: reviews_review; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.reviews_review (id, created, updated, review, accuracy, communication, cleanliness, location, check_in, value, room_id, user_id) FROM stdin;
\.


--
-- Data for Name: rooms_amenity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rooms_amenity (id, created, updated, name) FROM stdin;
1	2021-12-16 08:21:44.036864+00	2021-12-16 08:21:44.036879+00	Amenities1
\.


--
-- Data for Name: rooms_facility; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rooms_facility (id, created, updated, name) FROM stdin;
1	2021-12-16 08:21:50.605966+00	2021-12-16 08:21:50.605982+00	Free wifi
\.


--
-- Data for Name: rooms_houserule; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rooms_houserule (id, created, updated, name) FROM stdin;
1	2021-12-16 08:22:00.468997+00	2021-12-16 08:22:00.469014+00	No Smoking
\.


--
-- Data for Name: rooms_photo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rooms_photo (id, created, updated, caption, file, room_id) FROM stdin;
1	2021-12-17 01:33:51.573014+00	2021-12-17 01:33:51.573043+00	test	room_photos/7134013.jpg	1
2	2022-01-06 07:26:19.995991+00	2022-01-06 07:26:19.996006+00	againttest	room_photos/chrome_Iq9u9s30Ii.png	1
\.


--
-- Data for Name: rooms_room; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rooms_room (id, created, updated, name, description, country, city, price, address, guests, beds, bedrooms, baths, check_in, check_out, instant_book, host_id, room_type_id) FROM stdin;
8	2021-12-23 01:23:02.925972+00	2021-12-23 01:23:28.390135+00	Liko	Many thing root	ID	Jakarta	100	Street Go	2	2	2	2	00:00:00	12:00:00	t	1	1
2	2021-12-16 09:17:26.120596+00	2021-12-23 02:42:17.371091+00	Ola	We like to send useful feedback to the developers to help them fix bugs and improve the user experience of their open-source projects. Your feedback can help us spot the extension's bugs or any performance issue with them. Please take a few minutes to fill this feedback form. Your valuable input wil	AO	Pokeln	126	Steet 22	1	1	1	1	02:00:00	12:00:00	t	1	1
1	2021-12-16 08:23:19.555178+00	2021-12-23 02:42:49.848958+00	Api test room	Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary	AX	Poken	120	Street	2	2	2	2	01:11:00	12:00:00	t	1	1
9	2022-01-11 02:06:29.233609+00	2022-01-11 02:06:29.233625+00	Contoh	Description	AX	Poki	120	Setliu	1	1	1	1	00:00:00	12:00:00	f	1	1
\.


--
-- Data for Name: rooms_room_amenities; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rooms_room_amenities (id, room_id, amenity_id) FROM stdin;
1	8	1
2	2	1
3	1	1
4	9	1
\.


--
-- Data for Name: rooms_room_facilities; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rooms_room_facilities (id, room_id, facility_id) FROM stdin;
1	8	1
2	2	1
3	1	1
4	9	1
\.


--
-- Data for Name: rooms_room_house_rules; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rooms_room_house_rules (id, room_id, houserule_id) FROM stdin;
1	8	1
2	2	1
3	1	1
4	9	1
\.


--
-- Data for Name: rooms_roomtype; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rooms_roomtype (id, created, updated, name) FROM stdin;
1	2021-12-16 08:22:08.511276+00	2021-12-16 08:22:08.511292+00	Hotel
\.


--
-- Data for Name: socialaccount_socialaccount; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.socialaccount_socialaccount (id, provider, uid, last_login, date_joined, extra_data, user_id) FROM stdin;
\.


--
-- Data for Name: socialaccount_socialapp; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.socialaccount_socialapp (id, provider, name, client_id, secret, key) FROM stdin;
\.


--
-- Data for Name: socialaccount_socialapp_sites; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.socialaccount_socialapp_sites (id, socialapp_id, site_id) FROM stdin;
\.


--
-- Data for Name: socialaccount_socialtoken; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.socialaccount_socialtoken (id, token, token_secret, expires_at, account_id, app_id) FROM stdin;
\.


--
-- Data for Name: tiplists_tiplist_games; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tiplists_tiplist_games (id, tiplist_id, game_id) FROM stdin;
\.


--
-- Data for Name: tiplists_tiplistguide; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tiplists_tiplistguide (id, created, updated, title, user_id) FROM stdin;
1	2022-03-25 02:13:13.377568+00	2022-03-25 02:13:13.377583+00	My Favourites guides Article	1
\.


--
-- Data for Name: tiplists_tiplistguide_guides; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tiplists_tiplistguide_guides (id, tiplistguide_id, guide_id) FROM stdin;
2	1	11
\.


--
-- Data for Name: tiplists_tiplistnew_news; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tiplists_tiplistnew_news (id, tiplistnew_id, new_id) FROM stdin;
\.


--
-- Data for Name: tiplists_tiplistprofit; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tiplists_tiplistprofit (id, created, updated, title, user_id) FROM stdin;
1	2022-03-23 07:14:34.090572+00	2022-03-23 07:14:34.090587+00	My Favourites profits Article	1
\.


--
-- Data for Name: tiplists_tiplistprofit_profits; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tiplists_tiplistprofit_profits (id, tiplistprofit_id, profit_id) FROM stdin;
\.


--
-- Data for Name: tiplists_tiplisttutorial_tips; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tiplists_tiplisttutorial_tips  FROM stdin;
\.


--
-- Data for Name: tiplists_tiplisttutorial_tutorials; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tiplists_tiplisttutorial_tutorials (tutorial_id, tiplisttutorial_id, id) FROM stdin;
\.


--
-- Data for Name: tips_photo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tips_photo (id, created, updated, caption, file, tip_id) FROM stdin;
11	2022-03-16 08:37:55.425354+00	2022-03-16 08:37:55.425368+00	okla	tip_photos/poshtibancom_1Lw6vcS.png	1
12	2022-03-16 12:04:37.48273+00	2022-03-16 12:04:37.482745+00	naren	tip_photos/colloid_E6osZMo.png	2
13	2022-03-16 12:05:14.488742+00	2022-03-16 12:05:14.488755+00	tut	tip_photos/pexels-roberto-nickson-2559941.jpg	4
14	2022-03-16 12:05:45.494715+00	2022-03-16 12:05:45.494762+00	sun	tip_photos/l-ny-sun_BBThvAQ.jpg	3
\.


--
-- Data for Name: tips_photo2; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tips_photo2 (id, created, updated, caption, file, tip_id) FROM stdin;
\.


--
-- Data for Name: tips_tip; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tips_tip (id, created, updated, name, caption_title, description, link_tutorial, host_id, tip_type_id, "imageData") FROM stdin;
1	2022-01-10 09:25:06.621629+00	2022-01-10 09:25:06.621678+00	Cara membuat auto	Free	Dengan menggunakan sistem yang lebih baiik	https://www.youtube.com/watch?v=dUoU9I4zD3U&list=OLAK5uy_mpQhSrV2uGWGSvyGFfc44Q0nXnvZHlxcs	1	1	\N
2	2022-01-11 09:29:32.972046+00	2022-01-11 09:29:32.972083+00	Cara membuat autokey	Best	Dengan adanya hotkeydapat memudahkan	wwwkasdd	1	1	\N
3	2022-01-13 03:38:58.526666+00	2022-01-13 03:38:58.526683+00	Tip2	jgjhgj	jhghjgj	tertetrtr	1	1	\N
4	2022-03-16 07:14:36.024772+00	2022-03-16 07:14:36.024787+00	stroll	F1	natulis	www.google.com	1	1	\N
\.


--
-- Data for Name: tips_tiptype; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tips_tiptype (id, created, updated, name) FROM stdin;
1	2022-01-10 09:24:00.283272+00	2022-01-10 09:24:00.283298+00	Windows
\.


--
-- Data for Name: tutorials_articletype; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tutorials_articletype (id, created, updated, title) FROM stdin;
1	2022-03-24 03:49:17.00017+00	2022-03-24 03:49:17.000183+00	Windows
\.


--
-- Data for Name: tutorials_photo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tutorials_photo (id, created, updated, caption, file, tutorial_id) FROM stdin;
\.


--
-- Data for Name: tutorials_photo2; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tutorials_photo2 (id, created, updated, caption, file, tutorial_id) FROM stdin;
\.


--
-- Data for Name: tutorials_tutorial; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tutorials_tutorial (id, created, updated, title, caption, description, link_tutorial, "imageData", article_type_id, host_id) FROM stdin;
3	2022-03-24 04:52:41.039057+00	2022-03-24 04:52:41.039071+00	jhjhj	jkjkj	hghjghj	hgjghj	tutorial_photos/Screenshot_from_2022-03-21_21-23-32.png	1	1
2	2022-03-24 04:34:46.551685+00	2022-03-26 04:02:11.850513+00	Tutor2	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever sinc	with thele	http://localhost:8000/tutorials/create/	tutorial_photos/Screenshot_from_2022-03-21_09-26-58.png	1	1
\.


--
-- Data for Name: users_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined, avatar, gender, bio, birthdate, language, currency, superhost, email_verified, email_secret, login_method) FROM stdin;
5	pbkdf2_sha256$150000$4FPzlFhXWtzy$/cbHAdtzzkql81h5gN7LmODwZeOGRCkjRtL0TUoW7+0=	\N	f	versta	max	verstapen	max@max.com	f	t	2021-12-22 03:22:41.490171+00				\N	kr	krw	f	f		email
6	pbkdf2_sha256$150000$Z6M1trlWQzRt$rKBbM87OlQQREOAWrMW7satusbpQSQc3oCc5QAT1jvM=	\N	f	max@max2.com	Unnamed User		max@max2.com	f	t	2021-12-24 08:48:40.694439+00				\N	kr	krw	f	f		email
7	pbkdf2_sha256$150000$Ca0cryQoKnME$nohqfN6CAz30RffJyqU6Ia1hOZJG2c5xOVdxRUwBbPo=	2023-03-16 07:19:51.3405+00	f	a@gmail.com	turanu	masji	a@gmail.com	f	t	2023-03-16 07:19:51.130936+00				\N	kr	krw	f	f		email
8	pbkdf2_sha256$150000$00nsBXNd9iT2$MXUgPfDmcvtLr1CkyLZhpMkrXUzmkHqqrD3a8VqC98Q=	2023-03-16 07:23:16.946867+00	f	admin@admin.com	asdas	asasd	admin@admin.com	f	t	2023-03-16 07:23:16.743218+00				\N	kr	krw	f	f		email
9	pbkdf2_sha256$150000$Q5QP9rq9AnKQ$LYJP31lSIo8sOFH2efQLVUq3FhDMEEvxBvzFA71ihVE=	2023-03-20 09:33:42.199343+00	f	abc@g.com	lamala	torinu	abc@g.com	t	t	2023-03-20 09:29:37+00		male		2000-03-20	en	usd	f	f		email
1	pbkdf2_sha256$150000$DvLrq9XBRCGk$deBPTBOQQ8pPGOCtOXo89dSeA/wh1wkGr+V2ybZcPC4=	2023-07-28 01:48:51.427158+00	t	adminajfpay	Admin		ajfpay@gmail.com	t	t	2021-12-16 08:19:23.621459+00				\N	kr	krw	f	f		email
10	pbkdf2_sha256$150000$CZr1xIZGNMeg$sNSXz0pLJLCFnQPD2xoL3ombmI0f9NrrFt7DIwhjXRY=	2023-07-20 09:38:23.344059+00	f	minka	Unnamed User		minka@gmail.com	f	t	2023-07-20 09:35:47.856025+00				\N	kr	krw	f	f		email
11	pbkdf2_sha256$150000$d9Pt6aUs1BsZ$fN5bCZ5BmYFPg6rvZCo4YCPoCTHLQZJcxT/izSHHphc=	2023-07-21 02:10:12.786169+00	f	jaka	Unnamed User		jaka@gmail.com	f	t	2023-07-21 02:09:45.796683+00				\N	kr	krw	f	f		email
\.


--
-- Data for Name: users_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: users_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users_user_user_permissions (id, user_id, permission_id) FROM stdin;
1	9	13
2	9	14
3	9	15
4	9	16
5	9	17
6	9	18
7	9	19
8	9	20
9	9	25
10	9	26
11	9	27
12	9	28
13	9	29
14	9	30
15	9	31
16	9	32
17	9	33
18	9	34
19	9	35
20	9	36
21	9	37
22	9	38
23	9	39
24	9	40
25	9	41
26	9	42
27	9	43
28	9	44
29	9	45
30	9	46
31	9	47
32	9	48
33	9	49
34	9	50
35	9	51
36	9	52
37	9	53
38	9	54
39	9	55
40	9	56
41	9	57
42	9	58
43	9	59
44	9	60
45	9	61
46	9	62
47	9	63
48	9	64
49	9	65
50	9	66
51	9	67
52	9	68
53	9	69
54	9	70
55	9	71
56	9	72
57	9	100
58	9	101
59	9	102
60	9	103
61	9	104
62	9	105
63	9	106
64	9	107
65	9	108
66	9	109
67	9	110
68	9	111
69	9	112
70	9	113
71	9	114
72	9	115
73	9	116
74	9	117
75	9	118
76	9	119
77	9	120
78	9	121
79	9	122
80	9	123
81	9	124
82	9	125
83	9	126
84	9	127
85	9	128
86	9	129
87	9	130
88	9	131
89	9	132
90	9	133
91	9	134
92	9	135
93	9	136
94	9	137
95	9	138
96	9	139
97	9	140
98	9	141
99	9	142
100	9	143
101	9	144
102	9	145
103	9	146
104	9	147
105	9	148
106	9	149
107	9	150
108	9	151
109	9	152
110	9	153
111	9	154
112	9	155
113	9	156
114	9	157
115	9	158
116	9	159
117	9	160
118	9	161
119	9	162
120	9	163
121	9	164
122	9	165
123	9	166
124	9	167
125	9	168
126	9	169
127	9	170
128	9	171
129	9	172
130	9	173
131	9	174
132	9	175
133	9	176
134	9	177
135	9	178
136	9	179
137	9	180
138	9	181
139	9	182
140	9	183
141	9	184
142	9	185
143	9	186
144	9	187
145	9	188
146	9	189
147	9	190
148	9	191
149	9	192
150	9	193
151	9	194
152	9	195
153	9	196
154	9	197
155	9	198
156	9	199
157	9	200
158	9	201
159	9	202
160	9	203
161	9	204
162	9	205
163	9	206
164	9	207
165	9	208
166	9	209
167	9	210
168	9	211
169	9	212
170	9	213
171	9	214
172	9	215
173	9	216
174	9	217
175	9	218
176	9	219
177	9	220
178	9	221
179	9	222
180	9	223
181	9	224
182	9	225
183	9	226
184	9	227
185	9	228
186	9	229
187	9	230
188	9	231
189	9	232
190	9	233
191	9	234
192	9	235
193	9	236
194	9	237
195	9	238
196	9	239
197	9	240
198	9	241
199	9	242
200	9	243
201	9	244
202	9	245
203	9	246
204	9	247
205	9	248
206	9	249
207	9	250
208	9	251
209	9	252
210	9	253
211	9	254
212	9	255
213	9	256
214	9	257
215	9	258
216	9	259
217	9	260
218	9	261
219	9	262
220	9	263
221	9	264
222	9	265
223	9	266
224	9	267
225	9	268
226	9	269
227	9	270
228	9	271
229	9	272
230	9	273
231	9	274
232	9	275
233	9	276
234	9	277
235	9	278
236	9	279
237	9	280
238	9	281
239	9	282
240	9	283
241	9	284
242	9	285
243	9	286
244	9	287
245	9	288
246	9	289
247	9	290
248	9	291
249	9	292
250	9	293
251	9	294
252	9	295
253	9	296
254	9	297
255	9	298
256	9	299
257	9	300
258	9	301
259	9	302
260	9	303
261	9	304
262	9	305
263	9	306
264	9	307
265	9	308
266	9	309
267	9	310
268	9	311
269	9	312
270	9	313
271	9	314
272	9	315
273	9	316
274	9	317
275	9	318
276	9	319
277	9	320
278	9	321
279	9	322
280	9	323
281	9	324
282	9	325
283	9	326
284	9	327
285	9	328
286	9	329
287	9	330
288	9	331
289	9	336
290	9	337
291	9	338
292	9	339
293	9	340
294	9	341
295	9	342
296	9	343
297	9	344
298	9	345
299	9	346
300	9	347
301	9	348
302	9	349
303	9	350
304	9	351
\.


--
-- Name: account_emailaddress_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.account_emailaddress_id_seq', 2, true);


--
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.account_emailconfirmation_id_seq', 1, false);


--
-- Name: announcements_announcement_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.announcements_announcement_id_seq', 3, true);


--
-- Name: announcements_image10_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.announcements_image10_id_seq', 1, false);


--
-- Name: announcements_image1_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.announcements_image1_id_seq', 1, false);


--
-- Name: announcements_image2_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.announcements_image2_id_seq', 1, false);


--
-- Name: announcements_image3_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.announcements_image3_id_seq', 1, false);


--
-- Name: announcements_image4_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.announcements_image4_id_seq', 1, false);


--
-- Name: announcements_image5_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.announcements_image5_id_seq', 1, false);


--
-- Name: announcements_image6_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.announcements_image6_id_seq', 1, false);


--
-- Name: announcements_image7_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.announcements_image7_id_seq', 1, false);


--
-- Name: announcements_image8_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.announcements_image8_id_seq', 1, false);


--
-- Name: announcements_image9_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.announcements_image9_id_seq', 1, false);


--
-- Name: announcements_image_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.announcements_image_id_seq', 1, false);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 427, true);


--
-- Name: conversations_conversation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.conversations_conversation_id_seq', 1, false);


--
-- Name: conversations_conversation_participants_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.conversations_conversation_participants_id_seq', 1, false);


--
-- Name: conversations_message_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.conversations_message_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 624, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 114, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 159, true);


--
-- Name: django_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_site_id_seq', 1, true);


--
-- Name: favorites_favoritenorcharge_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.favorites_favoritenorcharge_id_seq', 1, true);


--
-- Name: favorites_favoritenorcharge_nocharges_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.favorites_favoritenorcharge_nocharges_id_seq', 1, true);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.games_game_id_seq', 16, true);


--
-- Name: games_gametype_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.games_gametype_id_seq', 4, true);


--
-- Name: games_photo2_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.games_photo2_id_seq', 1, false);


--
-- Name: games_photo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.games_photo_id_seq', 4, true);


--
-- Name: guides_articletype_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.guides_articletype_id_seq', 1, true);


--
-- Name: guides_guide_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.guides_guide_id_seq', 11, true);


--
-- Name: guides_photo2_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.guides_photo2_id_seq', 1, false);


--
-- Name: guides_photo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.guides_photo_id_seq', 1, false);


--
-- Name: lists_list_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.lists_list_id_seq', 1, true);


--
-- Name: lists_list_rooms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.lists_list_rooms_id_seq', 6, true);


--
-- Name: news_articletypenew_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.news_articletypenew_id_seq', 1, true);


--
-- Name: news_new_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.news_new_id_seq', 2, true);


--
-- Name: news_photo2_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.news_photo2_id_seq', 1, false);


--
-- Name: news_photo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.news_photo_id_seq', 1, false);


--
-- Name: nocharges_categoryapp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.nocharges_categoryapp_id_seq', 56, true);


--
-- Name: nocharges_categorydomain_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.nocharges_categorydomain_id_seq', 2, true);


--
-- Name: nocharges_categoryfree_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.nocharges_categoryfree_id_seq', 3, true);


--
-- Name: nocharges_categoryos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.nocharges_categoryos_id_seq', 4, true);


--
-- Name: nocharges_developer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.nocharges_developer_id_seq', 6, true);


--
-- Name: nocharges_distribution_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.nocharges_distribution_id_seq', 4, true);


--
-- Name: nocharges_domain_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.nocharges_domain_id_seq', 3, true);


--
-- Name: nocharges_image10_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.nocharges_image10_id_seq', 1, false);


--
-- Name: nocharges_image1_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.nocharges_image1_id_seq', 1, false);


--
-- Name: nocharges_image2_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.nocharges_image2_id_seq', 1, false);


--
-- Name: nocharges_image3_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.nocharges_image3_id_seq', 1, false);


--
-- Name: nocharges_image4_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.nocharges_image4_id_seq', 1, false);


--
-- Name: nocharges_image5_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.nocharges_image5_id_seq', 1, false);


--
-- Name: nocharges_image6_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.nocharges_image6_id_seq', 1, false);


--
-- Name: nocharges_image7_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.nocharges_image7_id_seq', 1, false);


--
-- Name: nocharges_image8_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.nocharges_image8_id_seq', 1, false);


--
-- Name: nocharges_image9_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.nocharges_image9_id_seq', 1, false);


--
-- Name: nocharges_image_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.nocharges_image_id_seq', 2, true);


--
-- Name: nocharges_nocharge_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.nocharges_nocharge_id_seq', 119, true);


--
-- Name: profits_articletype_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.profits_articletype_id_seq', 1, true);


--
-- Name: profits_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.profits_category_id_seq', 1, true);


--
-- Name: profits_photo2_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.profits_photo2_id_seq', 1, false);


--
-- Name: profits_photo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.profits_photo_id_seq', 7, true);


--
-- Name: profits_profit_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.profits_profit_id_seq', 17, true);


--
-- Name: reservations_bookedday_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.reservations_bookedday_id_seq', 1, false);


--
-- Name: reservations_reservation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.reservations_reservation_id_seq', 1, false);


--
-- Name: reviews_review_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.reviews_review_id_seq', 1, false);


--
-- Name: rooms_amenity_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rooms_amenity_id_seq', 1, true);


--
-- Name: rooms_facility_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rooms_facility_id_seq', 1, true);


--
-- Name: rooms_houserule_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rooms_houserule_id_seq', 1, true);


--
-- Name: rooms_photo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rooms_photo_id_seq', 2, true);


--
-- Name: rooms_room_amenities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rooms_room_amenities_id_seq', 4, true);


--
-- Name: rooms_room_facilities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rooms_room_facilities_id_seq', 4, true);


--
-- Name: rooms_room_house_rules_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rooms_room_house_rules_id_seq', 4, true);


--
-- Name: rooms_room_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rooms_room_id_seq', 9, true);


--
-- Name: rooms_roomtype_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rooms_roomtype_id_seq', 1, true);


--
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.socialaccount_socialaccount_id_seq', 1, false);


--
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.socialaccount_socialapp_id_seq', 1, false);


--
-- Name: socialaccount_socialapp_sites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.socialaccount_socialapp_sites_id_seq', 1, false);


--
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.socialaccount_socialtoken_id_seq', 1, false);


--
-- Name: tiplists_tiplist_games_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tiplists_tiplist_games_id_seq', 6, true);


--
-- Name: tiplists_tiplistguide_guides_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tiplists_tiplistguide_guides_id_seq', 2, true);


--
-- Name: tiplists_tiplistguide_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tiplists_tiplistguide_id_seq', 1, true);


--
-- Name: tiplists_tiplistnew_news_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tiplists_tiplistnew_news_id_seq', 1, true);


--
-- Name: tiplists_tiplistprofit_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tiplists_tiplistprofit_id_seq', 1, true);


--
-- Name: tiplists_tiplistprofit_profits_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tiplists_tiplistprofit_profits_id_seq', 5, true);


--
-- Name: tips_photo2_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tips_photo2_id_seq', 1, false);


--
-- Name: tips_photo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tips_photo_id_seq', 14, true);


--
-- Name: tips_tip_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tips_tip_id_seq', 4, true);


--
-- Name: tips_tiptype_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tips_tiptype_id_seq', 1, true);


--
-- Name: tutorials_articletype_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tutorials_articletype_id_seq', 1, true);


--
-- Name: tutorials_photo2_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tutorials_photo2_id_seq', 1, false);


--
-- Name: tutorials_photo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tutorials_photo_id_seq', 1, false);


--
-- Name: tutorials_tutorial_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tutorials_tutorial_id_seq', 3, true);


--
-- Name: users_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_user_groups_id_seq', 1, false);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_user_id_seq', 11, true);


--
-- Name: users_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_user_user_permissions_id_seq', 304, true);


--
-- Name: account_emailaddress account_emailaddress_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_email_key UNIQUE (email);


--
-- Name: account_emailaddress account_emailaddress_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_pkey PRIMARY KEY (id);


--
-- Name: account_emailconfirmation account_emailconfirmation_key_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_key_key UNIQUE (key);


--
-- Name: account_emailconfirmation account_emailconfirmation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_pkey PRIMARY KEY (id);


--
-- Name: announcements_announcement announcements_announcement_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.announcements_announcement
    ADD CONSTRAINT announcements_announcement_pkey PRIMARY KEY (id);


--
-- Name: announcements_image10 announcements_image10_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.announcements_image10
    ADD CONSTRAINT announcements_image10_pkey PRIMARY KEY (id);


--
-- Name: announcements_image1 announcements_image1_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.announcements_image1
    ADD CONSTRAINT announcements_image1_pkey PRIMARY KEY (id);


--
-- Name: announcements_image2 announcements_image2_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.announcements_image2
    ADD CONSTRAINT announcements_image2_pkey PRIMARY KEY (id);


--
-- Name: announcements_image3 announcements_image3_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.announcements_image3
    ADD CONSTRAINT announcements_image3_pkey PRIMARY KEY (id);


--
-- Name: announcements_image4 announcements_image4_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.announcements_image4
    ADD CONSTRAINT announcements_image4_pkey PRIMARY KEY (id);


--
-- Name: announcements_image5 announcements_image5_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.announcements_image5
    ADD CONSTRAINT announcements_image5_pkey PRIMARY KEY (id);


--
-- Name: announcements_image6 announcements_image6_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.announcements_image6
    ADD CONSTRAINT announcements_image6_pkey PRIMARY KEY (id);


--
-- Name: announcements_image7 announcements_image7_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.announcements_image7
    ADD CONSTRAINT announcements_image7_pkey PRIMARY KEY (id);


--
-- Name: announcements_image8 announcements_image8_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.announcements_image8
    ADD CONSTRAINT announcements_image8_pkey PRIMARY KEY (id);


--
-- Name: announcements_image9 announcements_image9_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.announcements_image9
    ADD CONSTRAINT announcements_image9_pkey PRIMARY KEY (id);


--
-- Name: announcements_image announcements_image_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.announcements_image
    ADD CONSTRAINT announcements_image_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: authtoken_token authtoken_token_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_pkey PRIMARY KEY (key);


--
-- Name: authtoken_token authtoken_token_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_key UNIQUE (user_id);


--
-- Name: conversations_conversation_participants conversations_conversati_conversation_id_user_id_9f1ca2f1_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.conversations_conversation_participants
    ADD CONSTRAINT conversations_conversati_conversation_id_user_id_9f1ca2f1_uniq UNIQUE (conversation_id, user_id);


--
-- Name: conversations_conversation_participants conversations_conversation_participants_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.conversations_conversation_participants
    ADD CONSTRAINT conversations_conversation_participants_pkey PRIMARY KEY (id);


--
-- Name: conversations_conversation conversations_conversation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.conversations_conversation
    ADD CONSTRAINT conversations_conversation_pkey PRIMARY KEY (id);


--
-- Name: conversations_message conversations_message_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.conversations_message
    ADD CONSTRAINT conversations_message_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: django_site django_site_domain_a2e37b91_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_domain_a2e37b91_uniq UNIQUE (domain);


--
-- Name: django_site django_site_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);


--
-- Name: favorites_favoritenorcharge_nocharges favorites_favoritenorcha_favoritenorcharge_id_noc_d8a1d375_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.favorites_favoritenorcharge_nocharges
    ADD CONSTRAINT favorites_favoritenorcha_favoritenorcharge_id_noc_d8a1d375_uniq UNIQUE (favoritenorcharge_id, nocharge_id);


--
-- Name: favorites_favoritenorcharge_nocharges favorites_favoritenorcharge_nocharges_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.favorites_favoritenorcharge_nocharges
    ADD CONSTRAINT favorites_favoritenorcharge_nocharges_pkey PRIMARY KEY (id);


--
-- Name: favorites_favoritenorcharge favorites_favoritenorcharge_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.favorites_favoritenorcharge
    ADD CONSTRAINT favorites_favoritenorcharge_pkey PRIMARY KEY (id);


--
-- Name: favorites_favoritenorcharge favorites_favoritenorcharge_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.favorites_favoritenorcharge
    ADD CONSTRAINT favorites_favoritenorcharge_user_id_key UNIQUE (user_id);


--
-- Name: games_game games_game_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.games_game
    ADD CONSTRAINT games_game_pkey PRIMARY KEY (id);


--
-- Name: games_gametype games_gametype_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.games_gametype
    ADD CONSTRAINT games_gametype_pkey PRIMARY KEY (id);


--
-- Name: games_photo2 games_photo2_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.games_photo2
    ADD CONSTRAINT games_photo2_pkey PRIMARY KEY (id);


--
-- Name: games_photo games_photo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.games_photo
    ADD CONSTRAINT games_photo_pkey PRIMARY KEY (id);


--
-- Name: guides_articletype guides_articletype_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.guides_articletype
    ADD CONSTRAINT guides_articletype_pkey PRIMARY KEY (id);


--
-- Name: guides_guide guides_guide_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.guides_guide
    ADD CONSTRAINT guides_guide_pkey PRIMARY KEY (id);


--
-- Name: guides_photo2 guides_photo2_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.guides_photo2
    ADD CONSTRAINT guides_photo2_pkey PRIMARY KEY (id);


--
-- Name: guides_photo guides_photo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.guides_photo
    ADD CONSTRAINT guides_photo_pkey PRIMARY KEY (id);


--
-- Name: lists_list lists_list_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lists_list
    ADD CONSTRAINT lists_list_pkey PRIMARY KEY (id);


--
-- Name: lists_list_rooms lists_list_rooms_list_id_room_id_dc670748_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lists_list_rooms
    ADD CONSTRAINT lists_list_rooms_list_id_room_id_dc670748_uniq UNIQUE (list_id, room_id);


--
-- Name: lists_list_rooms lists_list_rooms_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lists_list_rooms
    ADD CONSTRAINT lists_list_rooms_pkey PRIMARY KEY (id);


--
-- Name: lists_list lists_list_user_id_2731f1b1_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lists_list
    ADD CONSTRAINT lists_list_user_id_2731f1b1_uniq UNIQUE (user_id);


--
-- Name: news_articletype news_articletypenew_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.news_articletype
    ADD CONSTRAINT news_articletypenew_pkey PRIMARY KEY (id);


--
-- Name: news_new news_new_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.news_new
    ADD CONSTRAINT news_new_pkey PRIMARY KEY (id);


--
-- Name: news_photo2 news_photo2_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.news_photo2
    ADD CONSTRAINT news_photo2_pkey PRIMARY KEY (id);


--
-- Name: news_photo news_photo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.news_photo
    ADD CONSTRAINT news_photo_pkey PRIMARY KEY (id);


--
-- Name: nocharges_categoryapp nocharges_categoryapp_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_categoryapp
    ADD CONSTRAINT nocharges_categoryapp_pkey PRIMARY KEY (id);


--
-- Name: nocharges_categorydomain nocharges_categorydomain_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_categorydomain
    ADD CONSTRAINT nocharges_categorydomain_pkey PRIMARY KEY (id);


--
-- Name: nocharges_categoryfree nocharges_categoryfree_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_categoryfree
    ADD CONSTRAINT nocharges_categoryfree_pkey PRIMARY KEY (id);


--
-- Name: nocharges_categoryos nocharges_categoryos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_categoryos
    ADD CONSTRAINT nocharges_categoryos_pkey PRIMARY KEY (id);


--
-- Name: nocharges_developer nocharges_developer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_developer
    ADD CONSTRAINT nocharges_developer_pkey PRIMARY KEY (id);


--
-- Name: nocharges_distribution nocharges_distribution_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_distribution
    ADD CONSTRAINT nocharges_distribution_pkey PRIMARY KEY (id);


--
-- Name: nocharges_domain nocharges_domain_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_domain
    ADD CONSTRAINT nocharges_domain_pkey PRIMARY KEY (id);


--
-- Name: nocharges_image10 nocharges_image10_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_image10
    ADD CONSTRAINT nocharges_image10_pkey PRIMARY KEY (id);


--
-- Name: nocharges_image1 nocharges_image1_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_image1
    ADD CONSTRAINT nocharges_image1_pkey PRIMARY KEY (id);


--
-- Name: nocharges_image2 nocharges_image2_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_image2
    ADD CONSTRAINT nocharges_image2_pkey PRIMARY KEY (id);


--
-- Name: nocharges_image3 nocharges_image3_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_image3
    ADD CONSTRAINT nocharges_image3_pkey PRIMARY KEY (id);


--
-- Name: nocharges_image4 nocharges_image4_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_image4
    ADD CONSTRAINT nocharges_image4_pkey PRIMARY KEY (id);


--
-- Name: nocharges_image5 nocharges_image5_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_image5
    ADD CONSTRAINT nocharges_image5_pkey PRIMARY KEY (id);


--
-- Name: nocharges_image6 nocharges_image6_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_image6
    ADD CONSTRAINT nocharges_image6_pkey PRIMARY KEY (id);


--
-- Name: nocharges_image7 nocharges_image7_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_image7
    ADD CONSTRAINT nocharges_image7_pkey PRIMARY KEY (id);


--
-- Name: nocharges_image8 nocharges_image8_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_image8
    ADD CONSTRAINT nocharges_image8_pkey PRIMARY KEY (id);


--
-- Name: nocharges_image9 nocharges_image9_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_image9
    ADD CONSTRAINT nocharges_image9_pkey PRIMARY KEY (id);


--
-- Name: nocharges_image nocharges_image_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_image
    ADD CONSTRAINT nocharges_image_pkey PRIMARY KEY (id);


--
-- Name: nocharges_nocharge nocharges_nocharge_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_nocharge
    ADD CONSTRAINT nocharges_nocharge_pkey PRIMARY KEY (id);


--
-- Name: profits_articletype profits_articletype_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profits_articletype
    ADD CONSTRAINT profits_articletype_pkey PRIMARY KEY (id);


--
-- Name: profits_category profits_category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profits_category
    ADD CONSTRAINT profits_category_pkey PRIMARY KEY (id);


--
-- Name: profits_category profits_category_url_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profits_category
    ADD CONSTRAINT profits_category_url_key UNIQUE (url);


--
-- Name: profits_photo2 profits_photo2_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profits_photo2
    ADD CONSTRAINT profits_photo2_pkey PRIMARY KEY (id);


--
-- Name: profits_photo profits_photo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profits_photo
    ADD CONSTRAINT profits_photo_pkey PRIMARY KEY (id);


--
-- Name: profits_profit profits_profit_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profits_profit
    ADD CONSTRAINT profits_profit_pkey PRIMARY KEY (id);


--
-- Name: reservations_bookedday reservations_bookedday_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reservations_bookedday
    ADD CONSTRAINT reservations_bookedday_pkey PRIMARY KEY (id);


--
-- Name: reservations_reservation reservations_reservation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reservations_reservation
    ADD CONSTRAINT reservations_reservation_pkey PRIMARY KEY (id);


--
-- Name: rest_framework_api_key_apikey rest_framework_api_key_apikey_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rest_framework_api_key_apikey
    ADD CONSTRAINT rest_framework_api_key_apikey_pkey PRIMARY KEY (id);


--
-- Name: rest_framework_api_key_apikey rest_framework_api_key_apikey_prefix_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rest_framework_api_key_apikey
    ADD CONSTRAINT rest_framework_api_key_apikey_prefix_key UNIQUE (prefix);


--
-- Name: reviews_review reviews_review_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reviews_review
    ADD CONSTRAINT reviews_review_pkey PRIMARY KEY (id);


--
-- Name: rooms_amenity rooms_amenity_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rooms_amenity
    ADD CONSTRAINT rooms_amenity_pkey PRIMARY KEY (id);


--
-- Name: rooms_facility rooms_facility_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rooms_facility
    ADD CONSTRAINT rooms_facility_pkey PRIMARY KEY (id);


--
-- Name: rooms_houserule rooms_houserule_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rooms_houserule
    ADD CONSTRAINT rooms_houserule_pkey PRIMARY KEY (id);


--
-- Name: rooms_photo rooms_photo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rooms_photo
    ADD CONSTRAINT rooms_photo_pkey PRIMARY KEY (id);


--
-- Name: rooms_room_amenities rooms_room_amenities_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rooms_room_amenities
    ADD CONSTRAINT rooms_room_amenities_pkey PRIMARY KEY (id);


--
-- Name: rooms_room_amenities rooms_room_amenities_room_id_amenity_id_de123f77_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rooms_room_amenities
    ADD CONSTRAINT rooms_room_amenities_room_id_amenity_id_de123f77_uniq UNIQUE (room_id, amenity_id);


--
-- Name: rooms_room_facilities rooms_room_facilities_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rooms_room_facilities
    ADD CONSTRAINT rooms_room_facilities_pkey PRIMARY KEY (id);


--
-- Name: rooms_room_facilities rooms_room_facilities_room_id_facility_id_515551fb_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rooms_room_facilities
    ADD CONSTRAINT rooms_room_facilities_room_id_facility_id_515551fb_uniq UNIQUE (room_id, facility_id);


--
-- Name: rooms_room_house_rules rooms_room_house_rules_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rooms_room_house_rules
    ADD CONSTRAINT rooms_room_house_rules_pkey PRIMARY KEY (id);


--
-- Name: rooms_room_house_rules rooms_room_house_rules_room_id_houserule_id_28060e19_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rooms_room_house_rules
    ADD CONSTRAINT rooms_room_house_rules_room_id_houserule_id_28060e19_uniq UNIQUE (room_id, houserule_id);


--
-- Name: rooms_room rooms_room_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rooms_room
    ADD CONSTRAINT rooms_room_pkey PRIMARY KEY (id);


--
-- Name: rooms_roomtype rooms_roomtype_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rooms_roomtype
    ADD CONSTRAINT rooms_roomtype_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialaccount socialaccount_socialaccount_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialaccount socialaccount_socialaccount_provider_uid_fc810c6e_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_provider_uid_fc810c6e_uniq UNIQUE (provider, uid);


--
-- Name: socialaccount_socialapp_sites socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq UNIQUE (socialapp_id, site_id);


--
-- Name: socialaccount_socialapp socialaccount_socialapp_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialapp
    ADD CONSTRAINT socialaccount_socialapp_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialapp_sites socialaccount_socialapp_sites_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_socialapp_sites_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialtoken socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq UNIQUE (app_id, account_id);


--
-- Name: socialaccount_socialtoken socialaccount_socialtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_pkey PRIMARY KEY (id);


--
-- Name: tiplists_tiplist_games tiplists_tiplist_games_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tiplists_tiplist_games
    ADD CONSTRAINT tiplists_tiplist_games_pkey PRIMARY KEY (id);


--
-- Name: tiplists_tiplist_games tiplists_tiplist_games_tiplist_id_game_id_0e981b9f_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tiplists_tiplist_games
    ADD CONSTRAINT tiplists_tiplist_games_tiplist_id_game_id_0e981b9f_uniq UNIQUE (tiplist_id, game_id);


--
-- Name: tiplists_tiplistguide_guides tiplists_tiplistguide_gu_tiplistguide_id_guide_id_2b7a4633_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tiplists_tiplistguide_guides
    ADD CONSTRAINT tiplists_tiplistguide_gu_tiplistguide_id_guide_id_2b7a4633_uniq UNIQUE (tiplistguide_id, guide_id);


--
-- Name: tiplists_tiplistguide_guides tiplists_tiplistguide_guides_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tiplists_tiplistguide_guides
    ADD CONSTRAINT tiplists_tiplistguide_guides_pkey PRIMARY KEY (id);


--
-- Name: tiplists_tiplistguide tiplists_tiplistguide_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tiplists_tiplistguide
    ADD CONSTRAINT tiplists_tiplistguide_pkey PRIMARY KEY (id);


--
-- Name: tiplists_tiplistguide tiplists_tiplistguide_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tiplists_tiplistguide
    ADD CONSTRAINT tiplists_tiplistguide_user_id_key UNIQUE (user_id);


--
-- Name: tiplists_tiplistnew_news tiplists_tiplistnew_news_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tiplists_tiplistnew_news
    ADD CONSTRAINT tiplists_tiplistnew_news_pkey PRIMARY KEY (id);


--
-- Name: tiplists_tiplistnew_news tiplists_tiplistnew_news_tiplistnew_id_new_id_68a5fd82_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tiplists_tiplistnew_news
    ADD CONSTRAINT tiplists_tiplistnew_news_tiplistnew_id_new_id_68a5fd82_uniq UNIQUE (tiplistnew_id, new_id);


--
-- Name: tiplists_tiplistprofit_profits tiplists_tiplistprofit_p_tiplistprofit_id_profit__8ffc5a13_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tiplists_tiplistprofit_profits
    ADD CONSTRAINT tiplists_tiplistprofit_p_tiplistprofit_id_profit__8ffc5a13_uniq UNIQUE (tiplistprofit_id, profit_id);


--
-- Name: tiplists_tiplistprofit tiplists_tiplistprofit_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tiplists_tiplistprofit
    ADD CONSTRAINT tiplists_tiplistprofit_pkey PRIMARY KEY (id);


--
-- Name: tiplists_tiplistprofit_profits tiplists_tiplistprofit_profits_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tiplists_tiplistprofit_profits
    ADD CONSTRAINT tiplists_tiplistprofit_profits_pkey PRIMARY KEY (id);


--
-- Name: tiplists_tiplistprofit tiplists_tiplistprofit_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tiplists_tiplistprofit
    ADD CONSTRAINT tiplists_tiplistprofit_user_id_key UNIQUE (user_id);


--
-- Name: tiplists_tiplisttutorial_tutorials tiplists_tiplisttutorial_tutorials_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tiplists_tiplisttutorial_tutorials
    ADD CONSTRAINT tiplists_tiplisttutorial_tutorials_pkey PRIMARY KEY (id);


--
-- Name: tips_photo2 tips_photo2_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tips_photo2
    ADD CONSTRAINT tips_photo2_pkey PRIMARY KEY (id);


--
-- Name: tips_photo tips_photo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tips_photo
    ADD CONSTRAINT tips_photo_pkey PRIMARY KEY (id);


--
-- Name: tips_tip tips_tip_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tips_tip
    ADD CONSTRAINT tips_tip_pkey PRIMARY KEY (id);


--
-- Name: tips_tiptype tips_tiptype_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tips_tiptype
    ADD CONSTRAINT tips_tiptype_pkey PRIMARY KEY (id);


--
-- Name: tutorials_articletype tutorials_articletype_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tutorials_articletype
    ADD CONSTRAINT tutorials_articletype_pkey PRIMARY KEY (id);


--
-- Name: tutorials_photo2 tutorials_photo2_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tutorials_photo2
    ADD CONSTRAINT tutorials_photo2_pkey PRIMARY KEY (id);


--
-- Name: tutorials_photo tutorials_photo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tutorials_photo
    ADD CONSTRAINT tutorials_photo_pkey PRIMARY KEY (id);


--
-- Name: tutorials_tutorial tutorials_tutorial_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tutorials_tutorial
    ADD CONSTRAINT tutorials_tutorial_pkey PRIMARY KEY (id);


--
-- Name: users_user_groups users_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_pkey PRIMARY KEY (id);


--
-- Name: users_user_groups users_user_groups_user_id_group_id_b88eab82_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_user_id_group_id_b88eab82_uniq UNIQUE (user_id, group_id);


--
-- Name: users_user users_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_pkey PRIMARY KEY (id);


--
-- Name: users_user_user_permissions users_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: users_user_user_permissions users_user_user_permissions_user_id_permission_id_43338c45_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permissions_user_id_permission_id_43338c45_uniq UNIQUE (user_id, permission_id);


--
-- Name: users_user users_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_username_key UNIQUE (username);


--
-- Name: account_emailaddress_email_03be32b2_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX account_emailaddress_email_03be32b2_like ON public.account_emailaddress USING btree (email varchar_pattern_ops);


--
-- Name: account_emailaddress_user_id_2c513194; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX account_emailaddress_user_id_2c513194 ON public.account_emailaddress USING btree (user_id);


--
-- Name: account_emailconfirmation_email_address_id_5b7f8c58; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX account_emailconfirmation_email_address_id_5b7f8c58 ON public.account_emailconfirmation USING btree (email_address_id);


--
-- Name: account_emailconfirmation_key_f43612bd_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX account_emailconfirmation_key_f43612bd_like ON public.account_emailconfirmation USING btree (key varchar_pattern_ops);


--
-- Name: announcements_announcement_host_id_067dec6b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX announcements_announcement_host_id_067dec6b ON public.announcements_announcement USING btree (host_id);


--
-- Name: announcements_announcement_slug_0d6b62a8; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX announcements_announcement_slug_0d6b62a8 ON public.announcements_announcement USING btree (slug);


--
-- Name: announcements_announcement_slug_0d6b62a8_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX announcements_announcement_slug_0d6b62a8_like ON public.announcements_announcement USING btree (slug varchar_pattern_ops);


--
-- Name: announcements_image10_announcement_id_7a914ac8; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX announcements_image10_announcement_id_7a914ac8 ON public.announcements_image10 USING btree (announcement_id);


--
-- Name: announcements_image1_announcement_id_1b10c40e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX announcements_image1_announcement_id_1b10c40e ON public.announcements_image1 USING btree (announcement_id);


--
-- Name: announcements_image2_announcement_id_309819d4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX announcements_image2_announcement_id_309819d4 ON public.announcements_image2 USING btree (announcement_id);


--
-- Name: announcements_image3_announcement_id_bd9b11c1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX announcements_image3_announcement_id_bd9b11c1 ON public.announcements_image3 USING btree (announcement_id);


--
-- Name: announcements_image4_announcement_id_b218526b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX announcements_image4_announcement_id_b218526b ON public.announcements_image4 USING btree (announcement_id);


--
-- Name: announcements_image5_announcement_id_84d3003d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX announcements_image5_announcement_id_84d3003d ON public.announcements_image5 USING btree (announcement_id);


--
-- Name: announcements_image6_announcement_id_29e3df00; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX announcements_image6_announcement_id_29e3df00 ON public.announcements_image6 USING btree (announcement_id);


--
-- Name: announcements_image7_announcement_id_67f09109; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX announcements_image7_announcement_id_67f09109 ON public.announcements_image7 USING btree (announcement_id);


--
-- Name: announcements_image8_announcement_id_19d7a9ae; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX announcements_image8_announcement_id_19d7a9ae ON public.announcements_image8 USING btree (announcement_id);


--
-- Name: announcements_image9_announcement_id_987f4f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX announcements_image9_announcement_id_987f4f2c ON public.announcements_image9 USING btree (announcement_id);


--
-- Name: announcements_image_announcement_id_01ce9f86; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX announcements_image_announcement_id_01ce9f86 ON public.announcements_image USING btree (announcement_id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: authtoken_token_key_10f0b77e_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX authtoken_token_key_10f0b77e_like ON public.authtoken_token USING btree (key varchar_pattern_ops);


--
-- Name: conversations_conversation_conversation_id_35dc4d12; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX conversations_conversation_conversation_id_35dc4d12 ON public.conversations_conversation_participants USING btree (conversation_id);


--
-- Name: conversations_conversation_participants_user_id_ce81e395; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX conversations_conversation_participants_user_id_ce81e395 ON public.conversations_conversation_participants USING btree (user_id);


--
-- Name: conversations_message_conversation_id_f1a2d5e9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX conversations_message_conversation_id_f1a2d5e9 ON public.conversations_message USING btree (conversation_id);


--
-- Name: conversations_message_user_id_a91d73be; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX conversations_message_user_id_a91d73be ON public.conversations_message USING btree (user_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: django_site_domain_a2e37b91_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_site_domain_a2e37b91_like ON public.django_site USING btree (domain varchar_pattern_ops);


--
-- Name: favorites_favoritenorcharg_favoritenorcharge_id_96b08ce7; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX favorites_favoritenorcharg_favoritenorcharge_id_96b08ce7 ON public.favorites_favoritenorcharge_nocharges USING btree (favoritenorcharge_id);


--
-- Name: favorites_favoritenorcharge_nocharges_nocharge_id_729647d1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX favorites_favoritenorcharge_nocharges_nocharge_id_729647d1 ON public.favorites_favoritenorcharge_nocharges USING btree (nocharge_id);


--
-- Name: games_game_game_type_id_2fefd73e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX games_game_game_type_id_2fefd73e ON public.games_game USING btree (game_type_id);


--
-- Name: games_game_host_id_651375fe; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX games_game_host_id_651375fe ON public.games_game USING btree (host_id);


--
-- Name: games_photo2_game_id_12f7b859; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX games_photo2_game_id_12f7b859 ON public.games_photo2 USING btree (game_id);


--
-- Name: games_photo_game_id_4af7db4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX games_photo_game_id_4af7db4b ON public.games_photo USING btree (game_id);


--
-- Name: guides_guide_article_type_id_dd49ac9d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX guides_guide_article_type_id_dd49ac9d ON public.guides_guide USING btree (article_type_id);


--
-- Name: guides_guide_host_id_ed32d382; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX guides_guide_host_id_ed32d382 ON public.guides_guide USING btree (host_id);


--
-- Name: guides_photo2_guide_id_d7a8e342; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX guides_photo2_guide_id_d7a8e342 ON public.guides_photo2 USING btree (guide_id);


--
-- Name: guides_photo_guide_id_58b40b04; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX guides_photo_guide_id_58b40b04 ON public.guides_photo USING btree (guide_id);


--
-- Name: lists_list_rooms_list_id_a4eea0a4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX lists_list_rooms_list_id_a4eea0a4 ON public.lists_list_rooms USING btree (list_id);


--
-- Name: lists_list_rooms_room_id_94f17871; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX lists_list_rooms_room_id_94f17871 ON public.lists_list_rooms USING btree (room_id);


--
-- Name: news_new_article_type_new_id_c257de28; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX news_new_article_type_new_id_c257de28 ON public.news_new USING btree (article_type_id);


--
-- Name: news_new_host_id_a041e633; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX news_new_host_id_a041e633 ON public.news_new USING btree (host_id);


--
-- Name: news_photo2_new_id_18c5a141; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX news_photo2_new_id_18c5a141 ON public.news_photo2 USING btree (new_id);


--
-- Name: news_photo_new_id_24f488cb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX news_photo_new_id_24f488cb ON public.news_photo USING btree (new_id);


--
-- Name: nocharges_image10_nocharge_id_fbee1eba; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX nocharges_image10_nocharge_id_fbee1eba ON public.nocharges_image10 USING btree (nocharge_id);


--
-- Name: nocharges_image1_nocharge_id_54fea75b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX nocharges_image1_nocharge_id_54fea75b ON public.nocharges_image1 USING btree (nocharge_id);


--
-- Name: nocharges_image2_nocharge_id_874d3853; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX nocharges_image2_nocharge_id_874d3853 ON public.nocharges_image2 USING btree (nocharge_id);


--
-- Name: nocharges_image3_nocharge_id_a8559834; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX nocharges_image3_nocharge_id_a8559834 ON public.nocharges_image3 USING btree (nocharge_id);


--
-- Name: nocharges_image4_nocharge_id_c2658122; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX nocharges_image4_nocharge_id_c2658122 ON public.nocharges_image4 USING btree (nocharge_id);


--
-- Name: nocharges_image5_nocharge_id_49de4a38; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX nocharges_image5_nocharge_id_49de4a38 ON public.nocharges_image5 USING btree (nocharge_id);


--
-- Name: nocharges_image6_nocharge_id_7fd9d349; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX nocharges_image6_nocharge_id_7fd9d349 ON public.nocharges_image6 USING btree (nocharge_id);


--
-- Name: nocharges_image7_nocharge_id_d6a9283b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX nocharges_image7_nocharge_id_d6a9283b ON public.nocharges_image7 USING btree (nocharge_id);


--
-- Name: nocharges_image8_nocharge_id_b373b23c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX nocharges_image8_nocharge_id_b373b23c ON public.nocharges_image8 USING btree (nocharge_id);


--
-- Name: nocharges_image9_nocharge_id_6c317edb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX nocharges_image9_nocharge_id_6c317edb ON public.nocharges_image9 USING btree (nocharge_id);


--
-- Name: nocharges_image_nocharge_id_19ea669b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX nocharges_image_nocharge_id_19ea669b ON public.nocharges_image USING btree (nocharge_id);


--
-- Name: nocharges_nocharge_category_app_id_11a85cf1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX nocharges_nocharge_category_app_id_11a85cf1 ON public.nocharges_nocharge USING btree (category_app_id);


--
-- Name: nocharges_nocharge_category_domain_id_9965da8c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX nocharges_nocharge_category_domain_id_9965da8c ON public.nocharges_nocharge USING btree (category_domain_id);


--
-- Name: nocharges_nocharge_category_free_id_dc039ebe; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX nocharges_nocharge_category_free_id_dc039ebe ON public.nocharges_nocharge USING btree (category_free_id);


--
-- Name: nocharges_nocharge_category_os_id_8f34f357; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX nocharges_nocharge_category_os_id_8f34f357 ON public.nocharges_nocharge USING btree (category_os_id);


--
-- Name: nocharges_nocharge_developer_id_ed7b9e85; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX nocharges_nocharge_developer_id_ed7b9e85 ON public.nocharges_nocharge USING btree (developer_id);


--
-- Name: nocharges_nocharge_distribution_id_44c4640b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX nocharges_nocharge_distribution_id_44c4640b ON public.nocharges_nocharge USING btree (distribution_id);


--
-- Name: nocharges_nocharge_domain_id_bc95828b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX nocharges_nocharge_domain_id_bc95828b ON public.nocharges_nocharge USING btree (domain_id);


--
-- Name: nocharges_nocharge_host_id_bd62a5db; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX nocharges_nocharge_host_id_bd62a5db ON public.nocharges_nocharge USING btree (host_id);


--
-- Name: nocharges_nocharge_slug_03ba6f12; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX nocharges_nocharge_slug_03ba6f12 ON public.nocharges_nocharge USING btree (slug);


--
-- Name: nocharges_nocharge_slug_03ba6f12_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX nocharges_nocharge_slug_03ba6f12_like ON public.nocharges_nocharge USING btree (slug varchar_pattern_ops);


--
-- Name: profits_category_url_69145e34_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX profits_category_url_69145e34_like ON public.profits_category USING btree (url varchar_pattern_ops);


--
-- Name: profits_photo2_profit_id_4a14bb95; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX profits_photo2_profit_id_4a14bb95 ON public.profits_photo2 USING btree (profit_id);


--
-- Name: profits_photo_profit_id_afc84df6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX profits_photo_profit_id_afc84df6 ON public.profits_photo USING btree (profit_id);


--
-- Name: profits_profit_article_type_id_b892dce8; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX profits_profit_article_type_id_b892dce8 ON public.profits_profit USING btree (article_type_id);


--
-- Name: profits_profit_category_id_7b480c17; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX profits_profit_category_id_7b480c17 ON public.profits_profit USING btree (category_id);


--
-- Name: profits_profit_host_id_68d2516a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX profits_profit_host_id_68d2516a ON public.profits_profit USING btree (host_id);


--
-- Name: reservations_bookedday_reservation_id_d65f8ff7; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX reservations_bookedday_reservation_id_d65f8ff7 ON public.reservations_bookedday USING btree (reservation_id);


--
-- Name: reservations_reservation_guest_id_c59ab314; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX reservations_reservation_guest_id_c59ab314 ON public.reservations_reservation USING btree (guest_id);


--
-- Name: reservations_reservation_room_id_f7d9ba76; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX reservations_reservation_room_id_f7d9ba76 ON public.reservations_reservation USING btree (room_id);


--
-- Name: rest_framework_api_key_apikey_created_c61872d9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX rest_framework_api_key_apikey_created_c61872d9 ON public.rest_framework_api_key_apikey USING btree (created);


--
-- Name: rest_framework_api_key_apikey_id_6e07e68e_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX rest_framework_api_key_apikey_id_6e07e68e_like ON public.rest_framework_api_key_apikey USING btree (id varchar_pattern_ops);


--
-- Name: rest_framework_api_key_apikey_prefix_4e0db5f8_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX rest_framework_api_key_apikey_prefix_4e0db5f8_like ON public.rest_framework_api_key_apikey USING btree (prefix varchar_pattern_ops);


--
-- Name: reviews_review_room_id_88f19e2a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX reviews_review_room_id_88f19e2a ON public.reviews_review USING btree (room_id);


--
-- Name: reviews_review_user_id_875caff2; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX reviews_review_user_id_875caff2 ON public.reviews_review USING btree (user_id);


--
-- Name: rooms_photo_room_id_fce0d443; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX rooms_photo_room_id_fce0d443 ON public.rooms_photo USING btree (room_id);


--
-- Name: rooms_room_amenities_amenity_id_70bec57a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX rooms_room_amenities_amenity_id_70bec57a ON public.rooms_room_amenities USING btree (amenity_id);


--
-- Name: rooms_room_amenities_room_id_62a7a61d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX rooms_room_amenities_room_id_62a7a61d ON public.rooms_room_amenities USING btree (room_id);


--
-- Name: rooms_room_facilities_facility_id_ad19e8df; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX rooms_room_facilities_facility_id_ad19e8df ON public.rooms_room_facilities USING btree (facility_id);


--
-- Name: rooms_room_facilities_room_id_ef83b10e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX rooms_room_facilities_room_id_ef83b10e ON public.rooms_room_facilities USING btree (room_id);


--
-- Name: rooms_room_host_id_7f45f18c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX rooms_room_host_id_7f45f18c ON public.rooms_room USING btree (host_id);


--
-- Name: rooms_room_house_rules_houserule_id_06fd6f92; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX rooms_room_house_rules_houserule_id_06fd6f92 ON public.rooms_room_house_rules USING btree (houserule_id);


--
-- Name: rooms_room_house_rules_room_id_bfccab7a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX rooms_room_house_rules_room_id_bfccab7a ON public.rooms_room_house_rules USING btree (room_id);


--
-- Name: rooms_room_room_type_id_d6bd9615; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX rooms_room_room_type_id_d6bd9615 ON public.rooms_room USING btree (room_type_id);


--
-- Name: socialaccount_socialaccount_user_id_8146e70c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX socialaccount_socialaccount_user_id_8146e70c ON public.socialaccount_socialaccount USING btree (user_id);


--
-- Name: socialaccount_socialapp_sites_site_id_2579dee5; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX socialaccount_socialapp_sites_site_id_2579dee5 ON public.socialaccount_socialapp_sites USING btree (site_id);


--
-- Name: socialaccount_socialapp_sites_socialapp_id_97fb6e7d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX socialaccount_socialapp_sites_socialapp_id_97fb6e7d ON public.socialaccount_socialapp_sites USING btree (socialapp_id);


--
-- Name: socialaccount_socialtoken_account_id_951f210e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX socialaccount_socialtoken_account_id_951f210e ON public.socialaccount_socialtoken USING btree (account_id);


--
-- Name: socialaccount_socialtoken_app_id_636a42d7; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX socialaccount_socialtoken_app_id_636a42d7 ON public.socialaccount_socialtoken USING btree (app_id);


--
-- Name: tiplists_tiplist_games_game_id_17b6a93b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tiplists_tiplist_games_game_id_17b6a93b ON public.tiplists_tiplist_games USING btree (game_id);


--
-- Name: tiplists_tiplist_games_tiplist_id_e226dd86; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tiplists_tiplist_games_tiplist_id_e226dd86 ON public.tiplists_tiplist_games USING btree (tiplist_id);


--
-- Name: tiplists_tiplistguide_guides_guide_id_6cd0fc0e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tiplists_tiplistguide_guides_guide_id_6cd0fc0e ON public.tiplists_tiplistguide_guides USING btree (guide_id);


--
-- Name: tiplists_tiplistguide_guides_tiplistguide_id_8b76674c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tiplists_tiplistguide_guides_tiplistguide_id_8b76674c ON public.tiplists_tiplistguide_guides USING btree (tiplistguide_id);


--
-- Name: tiplists_tiplistnew_news_new_id_ce407b99; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tiplists_tiplistnew_news_new_id_ce407b99 ON public.tiplists_tiplistnew_news USING btree (new_id);


--
-- Name: tiplists_tiplistnew_news_tiplistnew_id_14860870; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tiplists_tiplistnew_news_tiplistnew_id_14860870 ON public.tiplists_tiplistnew_news USING btree (tiplistnew_id);


--
-- Name: tiplists_tiplistprofit_profits_profit_id_515a10b7; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tiplists_tiplistprofit_profits_profit_id_515a10b7 ON public.tiplists_tiplistprofit_profits USING btree (profit_id);


--
-- Name: tiplists_tiplistprofit_profits_tiplistprofit_id_53ff82f0; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tiplists_tiplistprofit_profits_tiplistprofit_id_53ff82f0 ON public.tiplists_tiplistprofit_profits USING btree (tiplistprofit_id);


--
-- Name: tips_photo2_tip_id_2fa2a39b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tips_photo2_tip_id_2fa2a39b ON public.tips_photo2 USING btree (tip_id);


--
-- Name: tips_photo_Tip_id_c7536887; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "tips_photo_Tip_id_c7536887" ON public.tips_photo USING btree (tip_id);


--
-- Name: tips_tip_host_id_a78aa2e6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tips_tip_host_id_a78aa2e6 ON public.tips_tip USING btree (host_id);


--
-- Name: tips_tip_tip_type_id_cc5c65bd; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tips_tip_tip_type_id_cc5c65bd ON public.tips_tip USING btree (tip_type_id);


--
-- Name: tutorials_photo2_tutorial_id_e43bd209; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tutorials_photo2_tutorial_id_e43bd209 ON public.tutorials_photo2 USING btree (tutorial_id);


--
-- Name: tutorials_photo_tutorial_id_6154737e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tutorials_photo_tutorial_id_6154737e ON public.tutorials_photo USING btree (tutorial_id);


--
-- Name: tutorials_tutorial_article_type_id_5437c3c1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tutorials_tutorial_article_type_id_5437c3c1 ON public.tutorials_tutorial USING btree (article_type_id);


--
-- Name: tutorials_tutorial_host_id_70d8b06d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tutorials_tutorial_host_id_70d8b06d ON public.tutorials_tutorial USING btree (host_id);


--
-- Name: users_user_groups_group_id_9afc8d0e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_user_groups_group_id_9afc8d0e ON public.users_user_groups USING btree (group_id);


--
-- Name: users_user_groups_user_id_5f6f5a90; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_user_groups_user_id_5f6f5a90 ON public.users_user_groups USING btree (user_id);


--
-- Name: users_user_user_permissions_permission_id_0b93982e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_user_user_permissions_permission_id_0b93982e ON public.users_user_user_permissions USING btree (permission_id);


--
-- Name: users_user_user_permissions_user_id_20aca447; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_user_user_permissions_user_id_20aca447 ON public.users_user_user_permissions USING btree (user_id);


--
-- Name: users_user_username_06e46fe6_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_user_username_06e46fe6_like ON public.users_user USING btree (username varchar_pattern_ops);


--
-- Name: account_emailaddress account_emailaddress_user_id_2c513194_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_user_id_2c513194_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: account_emailconfirmation account_emailconfirm_email_address_id_5b7f8c58_fk_account_e; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirm_email_address_id_5b7f8c58_fk_account_e FOREIGN KEY (email_address_id) REFERENCES public.account_emailaddress(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: announcements_announcement announcements_announcement_host_id_067dec6b_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.announcements_announcement
    ADD CONSTRAINT announcements_announcement_host_id_067dec6b_fk_users_user_id FOREIGN KEY (host_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: announcements_image1 announcements_image1_announcement_id_1b10c40e_fk_announcem; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.announcements_image1
    ADD CONSTRAINT announcements_image1_announcement_id_1b10c40e_fk_announcem FOREIGN KEY (announcement_id) REFERENCES public.announcements_announcement(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: announcements_image10 announcements_image1_announcement_id_7a914ac8_fk_announcem; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.announcements_image10
    ADD CONSTRAINT announcements_image1_announcement_id_7a914ac8_fk_announcem FOREIGN KEY (announcement_id) REFERENCES public.announcements_announcement(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: announcements_image2 announcements_image2_announcement_id_309819d4_fk_announcem; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.announcements_image2
    ADD CONSTRAINT announcements_image2_announcement_id_309819d4_fk_announcem FOREIGN KEY (announcement_id) REFERENCES public.announcements_announcement(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: announcements_image3 announcements_image3_announcement_id_bd9b11c1_fk_announcem; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.announcements_image3
    ADD CONSTRAINT announcements_image3_announcement_id_bd9b11c1_fk_announcem FOREIGN KEY (announcement_id) REFERENCES public.announcements_announcement(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: announcements_image4 announcements_image4_announcement_id_b218526b_fk_announcem; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.announcements_image4
    ADD CONSTRAINT announcements_image4_announcement_id_b218526b_fk_announcem FOREIGN KEY (announcement_id) REFERENCES public.announcements_announcement(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: announcements_image5 announcements_image5_announcement_id_84d3003d_fk_announcem; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.announcements_image5
    ADD CONSTRAINT announcements_image5_announcement_id_84d3003d_fk_announcem FOREIGN KEY (announcement_id) REFERENCES public.announcements_announcement(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: announcements_image6 announcements_image6_announcement_id_29e3df00_fk_announcem; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.announcements_image6
    ADD CONSTRAINT announcements_image6_announcement_id_29e3df00_fk_announcem FOREIGN KEY (announcement_id) REFERENCES public.announcements_announcement(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: announcements_image7 announcements_image7_announcement_id_67f09109_fk_announcem; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.announcements_image7
    ADD CONSTRAINT announcements_image7_announcement_id_67f09109_fk_announcem FOREIGN KEY (announcement_id) REFERENCES public.announcements_announcement(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: announcements_image8 announcements_image8_announcement_id_19d7a9ae_fk_announcem; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.announcements_image8
    ADD CONSTRAINT announcements_image8_announcement_id_19d7a9ae_fk_announcem FOREIGN KEY (announcement_id) REFERENCES public.announcements_announcement(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: announcements_image9 announcements_image9_announcement_id_987f4f2c_fk_announcem; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.announcements_image9
    ADD CONSTRAINT announcements_image9_announcement_id_987f4f2c_fk_announcem FOREIGN KEY (announcement_id) REFERENCES public.announcements_announcement(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: announcements_image announcements_image_announcement_id_01ce9f86_fk_announcem; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.announcements_image
    ADD CONSTRAINT announcements_image_announcement_id_01ce9f86_fk_announcem FOREIGN KEY (announcement_id) REFERENCES public.announcements_announcement(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: authtoken_token authtoken_token_user_id_35299eff_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_35299eff_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: conversations_conversation_participants conversations_conver_conversation_id_35dc4d12_fk_conversat; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.conversations_conversation_participants
    ADD CONSTRAINT conversations_conver_conversation_id_35dc4d12_fk_conversat FOREIGN KEY (conversation_id) REFERENCES public.conversations_conversation(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: conversations_conversation_participants conversations_conver_user_id_ce81e395_fk_users_use; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.conversations_conversation_participants
    ADD CONSTRAINT conversations_conver_user_id_ce81e395_fk_users_use FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: conversations_message conversations_messag_conversation_id_f1a2d5e9_fk_conversat; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.conversations_message
    ADD CONSTRAINT conversations_messag_conversation_id_f1a2d5e9_fk_conversat FOREIGN KEY (conversation_id) REFERENCES public.conversations_conversation(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: conversations_message conversations_message_user_id_a91d73be_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.conversations_message
    ADD CONSTRAINT conversations_message_user_id_a91d73be_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: favorites_favoritenorcharge_nocharges favorites_favoriteno_favoritenorcharge_id_96b08ce7_fk_favorites; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.favorites_favoritenorcharge_nocharges
    ADD CONSTRAINT favorites_favoriteno_favoritenorcharge_id_96b08ce7_fk_favorites FOREIGN KEY (favoritenorcharge_id) REFERENCES public.favorites_favoritenorcharge(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: favorites_favoritenorcharge_nocharges favorites_favoriteno_nocharge_id_729647d1_fk_nocharges; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.favorites_favoritenorcharge_nocharges
    ADD CONSTRAINT favorites_favoriteno_nocharge_id_729647d1_fk_nocharges FOREIGN KEY (nocharge_id) REFERENCES public.nocharges_nocharge(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: favorites_favoritenorcharge favorites_favoritenorcharge_user_id_38faffe5_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.favorites_favoritenorcharge
    ADD CONSTRAINT favorites_favoritenorcharge_user_id_38faffe5_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: games_game games_game_game_type_id_2fefd73e_fk_games_gametype_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.games_game
    ADD CONSTRAINT games_game_game_type_id_2fefd73e_fk_games_gametype_id FOREIGN KEY (game_type_id) REFERENCES public.games_gametype(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: games_game games_game_host_id_651375fe_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.games_game
    ADD CONSTRAINT games_game_host_id_651375fe_fk_users_user_id FOREIGN KEY (host_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: games_photo2 games_photo2_game_id_12f7b859_fk_games_game_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.games_photo2
    ADD CONSTRAINT games_photo2_game_id_12f7b859_fk_games_game_id FOREIGN KEY (game_id) REFERENCES public.games_game(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: games_photo games_photo_game_id_4af7db4b_fk_games_game_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.games_photo
    ADD CONSTRAINT games_photo_game_id_4af7db4b_fk_games_game_id FOREIGN KEY (game_id) REFERENCES public.games_game(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: guides_guide guides_guide_article_type_id_dd49ac9d_fk_guides_articletype_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.guides_guide
    ADD CONSTRAINT guides_guide_article_type_id_dd49ac9d_fk_guides_articletype_id FOREIGN KEY (article_type_id) REFERENCES public.guides_articletype(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: guides_guide guides_guide_host_id_ed32d382_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.guides_guide
    ADD CONSTRAINT guides_guide_host_id_ed32d382_fk_users_user_id FOREIGN KEY (host_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: guides_photo2 guides_photo2_guide_id_d7a8e342_fk_guides_guide_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.guides_photo2
    ADD CONSTRAINT guides_photo2_guide_id_d7a8e342_fk_guides_guide_id FOREIGN KEY (guide_id) REFERENCES public.guides_guide(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: guides_photo guides_photo_guide_id_58b40b04_fk_guides_guide_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.guides_photo
    ADD CONSTRAINT guides_photo_guide_id_58b40b04_fk_guides_guide_id FOREIGN KEY (guide_id) REFERENCES public.guides_guide(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: lists_list_rooms lists_list_rooms_list_id_a4eea0a4_fk_lists_list_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lists_list_rooms
    ADD CONSTRAINT lists_list_rooms_list_id_a4eea0a4_fk_lists_list_id FOREIGN KEY (list_id) REFERENCES public.lists_list(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: lists_list_rooms lists_list_rooms_room_id_94f17871_fk_rooms_room_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lists_list_rooms
    ADD CONSTRAINT lists_list_rooms_room_id_94f17871_fk_rooms_room_id FOREIGN KEY (room_id) REFERENCES public.rooms_room(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: lists_list lists_list_user_id_2731f1b1_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lists_list
    ADD CONSTRAINT lists_list_user_id_2731f1b1_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: news_new news_new_article_type_id_1504c689_fk_news_articletype_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.news_new
    ADD CONSTRAINT news_new_article_type_id_1504c689_fk_news_articletype_id FOREIGN KEY (article_type_id) REFERENCES public.news_articletype(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: news_new news_new_host_id_a041e633_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.news_new
    ADD CONSTRAINT news_new_host_id_a041e633_fk_users_user_id FOREIGN KEY (host_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: news_photo2 news_photo2_new_id_18c5a141_fk_news_new_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.news_photo2
    ADD CONSTRAINT news_photo2_new_id_18c5a141_fk_news_new_id FOREIGN KEY (new_id) REFERENCES public.news_new(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: news_photo news_photo_new_id_24f488cb_fk_news_new_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.news_photo
    ADD CONSTRAINT news_photo_new_id_24f488cb_fk_news_new_id FOREIGN KEY (new_id) REFERENCES public.news_new(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: nocharges_image10 nocharges_image10_nocharge_id_fbee1eba_fk_nocharges_nocharge_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_image10
    ADD CONSTRAINT nocharges_image10_nocharge_id_fbee1eba_fk_nocharges_nocharge_id FOREIGN KEY (nocharge_id) REFERENCES public.nocharges_nocharge(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: nocharges_image1 nocharges_image1_nocharge_id_54fea75b_fk_nocharges_nocharge_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_image1
    ADD CONSTRAINT nocharges_image1_nocharge_id_54fea75b_fk_nocharges_nocharge_id FOREIGN KEY (nocharge_id) REFERENCES public.nocharges_nocharge(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: nocharges_image2 nocharges_image2_nocharge_id_874d3853_fk_nocharges_nocharge_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_image2
    ADD CONSTRAINT nocharges_image2_nocharge_id_874d3853_fk_nocharges_nocharge_id FOREIGN KEY (nocharge_id) REFERENCES public.nocharges_nocharge(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: nocharges_image3 nocharges_image3_nocharge_id_a8559834_fk_nocharges_nocharge_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_image3
    ADD CONSTRAINT nocharges_image3_nocharge_id_a8559834_fk_nocharges_nocharge_id FOREIGN KEY (nocharge_id) REFERENCES public.nocharges_nocharge(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: nocharges_image4 nocharges_image4_nocharge_id_c2658122_fk_nocharges_nocharge_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_image4
    ADD CONSTRAINT nocharges_image4_nocharge_id_c2658122_fk_nocharges_nocharge_id FOREIGN KEY (nocharge_id) REFERENCES public.nocharges_nocharge(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: nocharges_image5 nocharges_image5_nocharge_id_49de4a38_fk_nocharges_nocharge_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_image5
    ADD CONSTRAINT nocharges_image5_nocharge_id_49de4a38_fk_nocharges_nocharge_id FOREIGN KEY (nocharge_id) REFERENCES public.nocharges_nocharge(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: nocharges_image6 nocharges_image6_nocharge_id_7fd9d349_fk_nocharges_nocharge_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_image6
    ADD CONSTRAINT nocharges_image6_nocharge_id_7fd9d349_fk_nocharges_nocharge_id FOREIGN KEY (nocharge_id) REFERENCES public.nocharges_nocharge(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: nocharges_image7 nocharges_image7_nocharge_id_d6a9283b_fk_nocharges_nocharge_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_image7
    ADD CONSTRAINT nocharges_image7_nocharge_id_d6a9283b_fk_nocharges_nocharge_id FOREIGN KEY (nocharge_id) REFERENCES public.nocharges_nocharge(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: nocharges_image8 nocharges_image8_nocharge_id_b373b23c_fk_nocharges_nocharge_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_image8
    ADD CONSTRAINT nocharges_image8_nocharge_id_b373b23c_fk_nocharges_nocharge_id FOREIGN KEY (nocharge_id) REFERENCES public.nocharges_nocharge(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: nocharges_image9 nocharges_image9_nocharge_id_6c317edb_fk_nocharges_nocharge_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_image9
    ADD CONSTRAINT nocharges_image9_nocharge_id_6c317edb_fk_nocharges_nocharge_id FOREIGN KEY (nocharge_id) REFERENCES public.nocharges_nocharge(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: nocharges_image nocharges_image_nocharge_id_19ea669b_fk_nocharges_nocharge_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_image
    ADD CONSTRAINT nocharges_image_nocharge_id_19ea669b_fk_nocharges_nocharge_id FOREIGN KEY (nocharge_id) REFERENCES public.nocharges_nocharge(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: nocharges_nocharge nocharges_nocharge_category_app_id_11a85cf1_fk_nocharges; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_nocharge
    ADD CONSTRAINT nocharges_nocharge_category_app_id_11a85cf1_fk_nocharges FOREIGN KEY (category_app_id) REFERENCES public.nocharges_categoryapp(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: nocharges_nocharge nocharges_nocharge_category_domain_id_9965da8c_fk_nocharges; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_nocharge
    ADD CONSTRAINT nocharges_nocharge_category_domain_id_9965da8c_fk_nocharges FOREIGN KEY (category_domain_id) REFERENCES public.nocharges_categorydomain(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: nocharges_nocharge nocharges_nocharge_category_free_id_dc039ebe_fk_nocharges; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_nocharge
    ADD CONSTRAINT nocharges_nocharge_category_free_id_dc039ebe_fk_nocharges FOREIGN KEY (category_free_id) REFERENCES public.nocharges_categoryfree(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: nocharges_nocharge nocharges_nocharge_category_os_id_8f34f357_fk_nocharges; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_nocharge
    ADD CONSTRAINT nocharges_nocharge_category_os_id_8f34f357_fk_nocharges FOREIGN KEY (category_os_id) REFERENCES public.nocharges_categoryos(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: nocharges_nocharge nocharges_nocharge_developer_id_ed7b9e85_fk_nocharges; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_nocharge
    ADD CONSTRAINT nocharges_nocharge_developer_id_ed7b9e85_fk_nocharges FOREIGN KEY (developer_id) REFERENCES public.nocharges_developer(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: nocharges_nocharge nocharges_nocharge_distribution_id_44c4640b_fk_nocharges; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_nocharge
    ADD CONSTRAINT nocharges_nocharge_distribution_id_44c4640b_fk_nocharges FOREIGN KEY (distribution_id) REFERENCES public.nocharges_distribution(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: nocharges_nocharge nocharges_nocharge_domain_id_bc95828b_fk_nocharges_domain_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_nocharge
    ADD CONSTRAINT nocharges_nocharge_domain_id_bc95828b_fk_nocharges_domain_id FOREIGN KEY (domain_id) REFERENCES public.nocharges_domain(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: nocharges_nocharge nocharges_nocharge_host_id_bd62a5db_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nocharges_nocharge
    ADD CONSTRAINT nocharges_nocharge_host_id_bd62a5db_fk_users_user_id FOREIGN KEY (host_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: profits_photo2 profits_photo2_profit_id_4a14bb95_fk_profits_profit_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profits_photo2
    ADD CONSTRAINT profits_photo2_profit_id_4a14bb95_fk_profits_profit_id FOREIGN KEY (profit_id) REFERENCES public.profits_profit(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: profits_photo profits_photo_profit_id_afc84df6_fk_profits_profit_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profits_photo
    ADD CONSTRAINT profits_photo_profit_id_afc84df6_fk_profits_profit_id FOREIGN KEY (profit_id) REFERENCES public.profits_profit(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: profits_profit profits_profit_article_type_id_b892dce8_fk_profits_a; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profits_profit
    ADD CONSTRAINT profits_profit_article_type_id_b892dce8_fk_profits_a FOREIGN KEY (article_type_id) REFERENCES public.profits_articletype(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: profits_profit profits_profit_category_id_7b480c17_fk_profits_category_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profits_profit
    ADD CONSTRAINT profits_profit_category_id_7b480c17_fk_profits_category_id FOREIGN KEY (category_id) REFERENCES public.profits_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: profits_profit profits_profit_host_id_68d2516a_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profits_profit
    ADD CONSTRAINT profits_profit_host_id_68d2516a_fk_users_user_id FOREIGN KEY (host_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: reservations_bookedday reservations_bookedd_reservation_id_d65f8ff7_fk_reservati; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reservations_bookedday
    ADD CONSTRAINT reservations_bookedd_reservation_id_d65f8ff7_fk_reservati FOREIGN KEY (reservation_id) REFERENCES public.reservations_reservation(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: reservations_reservation reservations_reservation_guest_id_c59ab314_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reservations_reservation
    ADD CONSTRAINT reservations_reservation_guest_id_c59ab314_fk_users_user_id FOREIGN KEY (guest_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: reservations_reservation reservations_reservation_room_id_f7d9ba76_fk_rooms_room_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reservations_reservation
    ADD CONSTRAINT reservations_reservation_room_id_f7d9ba76_fk_rooms_room_id FOREIGN KEY (room_id) REFERENCES public.rooms_room(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: reviews_review reviews_review_room_id_88f19e2a_fk_rooms_room_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reviews_review
    ADD CONSTRAINT reviews_review_room_id_88f19e2a_fk_rooms_room_id FOREIGN KEY (room_id) REFERENCES public.rooms_room(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: reviews_review reviews_review_user_id_875caff2_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reviews_review
    ADD CONSTRAINT reviews_review_user_id_875caff2_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: rooms_photo rooms_photo_room_id_fce0d443_fk_rooms_room_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rooms_photo
    ADD CONSTRAINT rooms_photo_room_id_fce0d443_fk_rooms_room_id FOREIGN KEY (room_id) REFERENCES public.rooms_room(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: rooms_room_amenities rooms_room_amenities_amenity_id_70bec57a_fk_rooms_amenity_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rooms_room_amenities
    ADD CONSTRAINT rooms_room_amenities_amenity_id_70bec57a_fk_rooms_amenity_id FOREIGN KEY (amenity_id) REFERENCES public.rooms_amenity(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: rooms_room_amenities rooms_room_amenities_room_id_62a7a61d_fk_rooms_room_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rooms_room_amenities
    ADD CONSTRAINT rooms_room_amenities_room_id_62a7a61d_fk_rooms_room_id FOREIGN KEY (room_id) REFERENCES public.rooms_room(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: rooms_room_facilities rooms_room_facilities_facility_id_ad19e8df_fk_rooms_facility_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rooms_room_facilities
    ADD CONSTRAINT rooms_room_facilities_facility_id_ad19e8df_fk_rooms_facility_id FOREIGN KEY (facility_id) REFERENCES public.rooms_facility(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: rooms_room_facilities rooms_room_facilities_room_id_ef83b10e_fk_rooms_room_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rooms_room_facilities
    ADD CONSTRAINT rooms_room_facilities_room_id_ef83b10e_fk_rooms_room_id FOREIGN KEY (room_id) REFERENCES public.rooms_room(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: rooms_room rooms_room_host_id_7f45f18c_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rooms_room
    ADD CONSTRAINT rooms_room_host_id_7f45f18c_fk_users_user_id FOREIGN KEY (host_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: rooms_room_house_rules rooms_room_house_rul_houserule_id_06fd6f92_fk_rooms_hou; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rooms_room_house_rules
    ADD CONSTRAINT rooms_room_house_rul_houserule_id_06fd6f92_fk_rooms_hou FOREIGN KEY (houserule_id) REFERENCES public.rooms_houserule(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: rooms_room_house_rules rooms_room_house_rules_room_id_bfccab7a_fk_rooms_room_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rooms_room_house_rules
    ADD CONSTRAINT rooms_room_house_rules_room_id_bfccab7a_fk_rooms_room_id FOREIGN KEY (room_id) REFERENCES public.rooms_room(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: rooms_room rooms_room_room_type_id_d6bd9615_fk_rooms_roomtype_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rooms_room
    ADD CONSTRAINT rooms_room_room_type_id_d6bd9615_fk_rooms_roomtype_id FOREIGN KEY (room_type_id) REFERENCES public.rooms_roomtype(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialtoken socialaccount_social_account_id_951f210e_fk_socialacc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_social_account_id_951f210e_fk_socialacc FOREIGN KEY (account_id) REFERENCES public.socialaccount_socialaccount(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialtoken socialaccount_social_app_id_636a42d7_fk_socialacc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_social_app_id_636a42d7_fk_socialacc FOREIGN KEY (app_id) REFERENCES public.socialaccount_socialapp(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialapp_sites socialaccount_social_site_id_2579dee5_fk_django_si; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_social_site_id_2579dee5_fk_django_si FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialapp_sites socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc FOREIGN KEY (socialapp_id) REFERENCES public.socialaccount_socialapp(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialaccount socialaccount_socialaccount_user_id_8146e70c_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_user_id_8146e70c_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: tiplists_tiplist_games tiplists_tiplist_games_game_id_17b6a93b_fk_games_game_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tiplists_tiplist_games
    ADD CONSTRAINT tiplists_tiplist_games_game_id_17b6a93b_fk_games_game_id FOREIGN KEY (game_id) REFERENCES public.games_game(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: tiplists_tiplistguide_guides tiplists_tiplistguid_guide_id_6cd0fc0e_fk_guides_gu; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tiplists_tiplistguide_guides
    ADD CONSTRAINT tiplists_tiplistguid_guide_id_6cd0fc0e_fk_guides_gu FOREIGN KEY (guide_id) REFERENCES public.guides_guide(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: tiplists_tiplistguide_guides tiplists_tiplistguid_tiplistguide_id_8b76674c_fk_tiplists_; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tiplists_tiplistguide_guides
    ADD CONSTRAINT tiplists_tiplistguid_tiplistguide_id_8b76674c_fk_tiplists_ FOREIGN KEY (tiplistguide_id) REFERENCES public.tiplists_tiplistguide(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: tiplists_tiplistguide tiplists_tiplistguide_user_id_2d369ff8_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tiplists_tiplistguide
    ADD CONSTRAINT tiplists_tiplistguide_user_id_2d369ff8_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: tiplists_tiplistnew_news tiplists_tiplistnew_news_new_id_ce407b99_fk_news_new_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tiplists_tiplistnew_news
    ADD CONSTRAINT tiplists_tiplistnew_news_new_id_ce407b99_fk_news_new_id FOREIGN KEY (new_id) REFERENCES public.news_new(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: tiplists_tiplistprofit_profits tiplists_tiplistprof_profit_id_515a10b7_fk_profits_p; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tiplists_tiplistprofit_profits
    ADD CONSTRAINT tiplists_tiplistprof_profit_id_515a10b7_fk_profits_p FOREIGN KEY (profit_id) REFERENCES public.profits_profit(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: tiplists_tiplistprofit_profits tiplists_tiplistprof_tiplistprofit_id_53ff82f0_fk_tiplists_; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tiplists_tiplistprofit_profits
    ADD CONSTRAINT tiplists_tiplistprof_tiplistprofit_id_53ff82f0_fk_tiplists_ FOREIGN KEY (tiplistprofit_id) REFERENCES public.tiplists_tiplistprofit(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: tiplists_tiplistprofit tiplists_tiplistprofit_user_id_d5e1305d_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tiplists_tiplistprofit
    ADD CONSTRAINT tiplists_tiplistprofit_user_id_d5e1305d_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: tips_photo2 tips_photo2_tip_id_2fa2a39b_fk_tips_tip_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tips_photo2
    ADD CONSTRAINT tips_photo2_tip_id_2fa2a39b_fk_tips_tip_id FOREIGN KEY (tip_id) REFERENCES public.tips_tip(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: tips_photo tips_photo_tip_id_a055919e_fk_tips_tip_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tips_photo
    ADD CONSTRAINT tips_photo_tip_id_a055919e_fk_tips_tip_id FOREIGN KEY (tip_id) REFERENCES public.tips_tip(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: tips_tip tips_tip_host_id_a78aa2e6_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tips_tip
    ADD CONSTRAINT tips_tip_host_id_a78aa2e6_fk_users_user_id FOREIGN KEY (host_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: tips_tip tips_tip_tip_type_id_cc5c65bd_fk_tips_tiptype_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tips_tip
    ADD CONSTRAINT tips_tip_tip_type_id_cc5c65bd_fk_tips_tiptype_id FOREIGN KEY (tip_type_id) REFERENCES public.tips_tiptype(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: tutorials_photo2 tutorials_photo2_tutorial_id_e43bd209_fk_tutorials_tutorial_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tutorials_photo2
    ADD CONSTRAINT tutorials_photo2_tutorial_id_e43bd209_fk_tutorials_tutorial_id FOREIGN KEY (tutorial_id) REFERENCES public.tutorials_tutorial(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: tutorials_photo tutorials_photo_tutorial_id_6154737e_fk_tutorials_tutorial_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tutorials_photo
    ADD CONSTRAINT tutorials_photo_tutorial_id_6154737e_fk_tutorials_tutorial_id FOREIGN KEY (tutorial_id) REFERENCES public.tutorials_tutorial(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: tutorials_tutorial tutorials_tutorial_article_type_id_5437c3c1_fk_tutorials; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tutorials_tutorial
    ADD CONSTRAINT tutorials_tutorial_article_type_id_5437c3c1_fk_tutorials FOREIGN KEY (article_type_id) REFERENCES public.tutorials_articletype(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: tutorials_tutorial tutorials_tutorial_host_id_70d8b06d_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tutorials_tutorial
    ADD CONSTRAINT tutorials_tutorial_host_id_70d8b06d_fk_users_user_id FOREIGN KEY (host_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_user_groups users_user_groups_group_id_9afc8d0e_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_group_id_9afc8d0e_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_user_groups users_user_groups_user_id_5f6f5a90_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_user_id_5f6f5a90_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_user_user_permissions users_user_user_perm_permission_id_0b93982e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_perm_permission_id_0b93982e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_user_user_permissions users_user_user_permissions_user_id_20aca447_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permissions_user_id_20aca447_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

