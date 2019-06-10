--
-- PostgreSQL database dump
--

-- Dumped from database version 11.1
-- Dumped by pg_dump version 11.1

-- Started on 2019-06-10 19:50:38

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 6 (class 2615 OID 16650)
-- Name: mon_schemas; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA mon_schemas;


ALTER SCHEMA mon_schemas OWNER TO postgres;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 207 (class 1259 OID 16823)
-- Name: apropos; Type: TABLE; Schema: mon_schemas; Owner: postgres
--

CREATE TABLE mon_schemas.apropos (
    id_apropos character varying(2),
    description character varying(10000)
);


ALTER TABLE mon_schemas.apropos OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 16829)
-- Name: competenceclef; Type: TABLE; Schema: mon_schemas; Owner: postgres
--

CREATE TABLE mon_schemas.competenceclef (
    competence1 character varying(10000),
    competence2 character varying(10000),
    competence3 character varying(10000),
    id character varying
);


ALTER TABLE mon_schemas.competenceclef OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 16835)
-- Name: contact; Type: TABLE; Schema: mon_schemas; Owner: postgres
--

CREATE TABLE mon_schemas.contact (
    message character varying(10000),
    email character varying(10000),
    id_contact character varying(2),
    nom character varying(10000),
    prenom character varying(10000)
);


ALTER TABLE mon_schemas.contact OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 16841)
-- Name: experience; Type: TABLE; Schema: mon_schemas; Owner: postgres
--

CREATE TABLE mon_schemas.experience (
    id_experiences character varying(2),
    experience3 character varying(10000),
    experience1 character varying(10000),
    experience2 character varying(10000)
);


ALTER TABLE mon_schemas.experience OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 16844)
-- Name: formation; Type: TABLE; Schema: mon_schemas; Owner: postgres
--

CREATE TABLE mon_schemas.formation (
    id_formation character varying(2),
    formation1 character varying(10000),
    formation2 character varying(10000),
    formation3 character varying(10000)
);


ALTER TABLE mon_schemas.formation OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16862)
-- Name: langue; Type: TABLE; Schema: mon_schemas; Owner: postgres
--

CREATE TABLE mon_schemas.langue (
    langue1 character varying(10000),
    langue2 character varying(10000),
    langue3 character varying(10000),
    id character varying(2)
);


ALTER TABLE mon_schemas.langue OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 16847)
-- Name: loisirs; Type: TABLE; Schema: mon_schemas; Owner: postgres
--

CREATE TABLE mon_schemas.loisirs (
    id_loisirs character varying(2),
    loisir1 character varying(10000),
    loisir2 character varying(10000),
    loisir3 character varying(10000)
);


ALTER TABLE mon_schemas.loisirs OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 16850)
-- Name: projet; Type: TABLE; Schema: mon_schemas; Owner: postgres
--

CREATE TABLE mon_schemas.projet (
    id character varying(2),
    projet1 character varying(10000),
    projet2 character varying(10000),
    projet3 character(10000)
);


ALTER TABLE mon_schemas.projet OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16853)
-- Name: techno; Type: TABLE; Schema: mon_schemas; Owner: postgres
--

CREATE TABLE mon_schemas.techno (
    id_techno character varying(2),
    techno1 character varying(10000),
    techno2 character varying(10000),
    techno3 character varying(10000)
);


ALTER TABLE mon_schemas.techno OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 16605)
-- Name: apropos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.apropos (
    id_apropos character varying(2),
    nom_apropos character varying(50),
    prenom_apropos character varying(50),
    photo_apropos boolean,
    description character varying(1000)
);


ALTER TABLE public.apropos OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 16599)
-- Name: competenceclef; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.competenceclef (
    competence1 character varying(2),
    competence2 character varying(50),
    competence3 character varying(50),
    id character varying
);


ALTER TABLE public.competenceclef OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 16562)
-- Name: contact; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.contact (
    id_contact integer NOT NULL,
    prenom character(100),
    nom character(200),
    message character varying(1000),
    email character varying(100)
);


ALTER TABLE public.contact OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 16765)
-- Name: description; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.description (
);


ALTER TABLE public.description OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16602)
-- Name: experience; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.experience (
    id_experiences character varying(2),
    experience1 date,
    experience2 date,
    experience3 character varying(100)
);


ALTER TABLE public.experience OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16590)
-- Name: formation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.formation (
    id_formation character varying(2),
    formation1 character varying(50),
    formation2 character varying(100),
    formation3 character varying(200)
);


ALTER TABLE public.formation OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 16568)
-- Name: formulaire; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.formulaire (
    id_formulaire character varying(2) NOT NULL,
    nom_formulaie character varying(50),
    prenom_formulaire character varying(70),
    email_formulaire character varying(80),
    message_formulaire character varying(150)
);


ALTER TABLE public.formulaire OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 16581)
-- Name: loisirs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.loisirs (
    id_loisirs character varying(2),
    loisir1 character varying(100),
    loisir2 character varying(100),
    loisir3 character varying(100)
);


ALTER TABLE public.loisirs OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 16543)
-- Name: projet; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.projet (
    id character varying(2) NOT NULL,
    projet1 character(100),
    projet2 character varying(100),
    techno_id character(1),
    projet3 character(100)
);


ALTER TABLE public.projet OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 16546)
-- Name: techno; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.techno (
    id_techno character varying NOT NULL,
    techno1 character varying(100),
    techno2 character varying(100),
    techno3 character varying(100)
);


ALTER TABLE public.techno OWNER TO postgres;

--
-- TOC entry 2909 (class 0 OID 16823)
-- Dependencies: 207
-- Data for Name: apropos; Type: TABLE DATA; Schema: mon_schemas; Owner: postgres
--

COPY mon_schemas.apropos (id_apropos, description) FROM stdin;
\N	test2
\N	test3
\N	\t    <p class="text1">\r\n\t\tJe suis étudiante , actuellement inscrite en bachelor 1 Ynov informatique à Nantes Ynov Campus. <br/><br/>\r\n\t\t\r\n\t    Je désire poursuivre mes études dans un cycle bachelor , dans le but d’obtenir un mastère en ingénierie de la \r\nsécurité informatique.<br/><br/> Ayant la volonté d’apprendre et\r\nla passion de l’informatique j'aime travailler en équipe\r\net apprendre de nouvelles choses.<br/><br/>\r\nJe souhaite travailler à mes heures libres , afin d’acquérir une nouvelle expérience dans le milieu du travail.<br><br/>\r\nJ’ai déjà eu à travailler dans le passé ce qui ma permis d’acquérir des compétences , notamment\r\ndans le milieu de la restauration et la vente.<br/><br/>\r\n De plus, je suis déterminée à réussir toutes les tâches qui me seront confiées et veiller au bon déroulement de la mission .\r\n\t</p>
\.


--
-- TOC entry 2910 (class 0 OID 16829)
-- Dependencies: 208
-- Data for Name: competenceclef; Type: TABLE DATA; Schema: mon_schemas; Owner: postgres
--

COPY mon_schemas.competenceclef (competence1, competence2, competence3, id) FROM stdin;
           <p>                   \t                      Java script <br/><br/>                        Python <br/><br/>                       Langage C <br/><br/>                       HTML & CSS <br/><br/>                     </p>			\N
\.


--
-- TOC entry 2911 (class 0 OID 16835)
-- Dependencies: 209
-- Data for Name: contact; Type: TABLE DATA; Schema: mon_schemas; Owner: postgres
--

COPY mon_schemas.contact (message, email, id_contact, nom, prenom) FROM stdin;
test	witneykonate@gmail.com	\N	\N	\N
		\N	\N	\N
mmm	witneykonate@gmail.com	\N	\N	\N
mmm	ashleykonate7@gmail.com	\N	\N	\N
ooo	witneykonate@gmail.com	\N	\N	\N
Bonjour ceci est un test	witneykonate@gmail.com	\N	\N	\N
\.


--
-- TOC entry 2912 (class 0 OID 16841)
-- Dependencies: 210
-- Data for Name: experience; Type: TABLE DATA; Schema: mon_schemas; Owner: postgres
--

COPY mon_schemas.experience (id_experiences, experience3, experience1, experience2) FROM stdin;
\N		               <p > \t\t<strong> WERTERN UNION (BURKINA FASO) </strong> : <strong> -Juin 2018 </strong> <br/><br/> \t\tWestern Union est un spécialiste du transfert d'argent de particulier à particulier.<br/><br/> Moyennant une commission, vous pouvez envoyer de l'argent à vos proches partout dans le monde. <br/><br/> \t\tJ'ai fais un stage à Wertern Union au cours duquel, je m'occupais des tranfères d'argent.<br/><br/> \t               </p>	
\.


--
-- TOC entry 2913 (class 0 OID 16844)
-- Dependencies: 211
-- Data for Name: formation; Type: TABLE DATA; Schema: mon_schemas; Owner: postgres
--

COPY mon_schemas.formation (id_formation, formation1, formation2, formation3) FROM stdin;
\N	test		
\N	test		
\N	\t<strong>Nantes Ynov Campus</strong>\t<br/>  Formation : bachelor 1 Ynov informatique à Nantes Ynov Campus - <strong>Septembre 2018 -Juillet 2019</strong>  <br/><br/>   <strong>Goethe Institut (OUAGADOUGOU)</strong> <br/> CERTIFICAT A1 d'apprentissaage de la langue allemande - <strong>Novembre 2017 - Decembre 2017</strong>  <br/><br/>  <strong>Collège Horizon International (OUAGADOUGOU)</strong> <br/> BACCALAUREAT scientifique (Mathématiques et sciences naturelles) - <strong>Septembre 2016-juillet 2017</strong> <br/><br/>		
\.


--
-- TOC entry 2917 (class 0 OID 16862)
-- Dependencies: 215
-- Data for Name: langue; Type: TABLE DATA; Schema: mon_schemas; Owner: postgres
--

COPY mon_schemas.langue (langue1, langue2, langue3, id) FROM stdin;
        <p>                   Français :\tLangue maternelle <br/><br/>                Anglais\t :  Assez bien <br/><br/>                 Allemand :\tAssez bien <br/><br/>  \t               </p>			\N
\.


--
-- TOC entry 2914 (class 0 OID 16847)
-- Dependencies: 212
-- Data for Name: loisirs; Type: TABLE DATA; Schema: mon_schemas; Owner: postgres
--

COPY mon_schemas.loisirs (id_loisirs, loisir1, loisir2, loisir3) FROM stdin;
\.


--
-- TOC entry 2915 (class 0 OID 16850)
-- Dependencies: 213
-- Data for Name: projet; Type: TABLE DATA; Schema: mon_schemas; Owner: postgres
--

COPY mon_schemas.projet (id, projet1, projet2, projet3) FROM stdin;
\N	m		                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
\N	\t\t\t<div class="sous1"> \t\t\t\t \t\t\t\t<h2> Projet Y Days </h2>  \t               <p>  \t<strong>Nantes Ynov Campus</strong>\t<br/><br><br> Objectif : Dans le cadre de ma formation au sein d'Ynov Campus ,<br> je participe à un travail en équipe pour le développement d'un site web dans l'immobilier  - <strong>Octobre 2018 -Juillet 2019</strong>  <br/><br/>  \t                </p> \t\t\t\t \t\t\t</div>  \t\t\t<div class="sous2">  \t\t       <h2> Projet Workshop</h2> \t               <p > \t\t<strong> Nantes Ynov Campus </strong> : <strong>Janvier 2019 -Fevrier 2019 </strong> <br/><br/><br> \t\tDans le cadre de ma formation au sein d'Ynov Campus , <br> j'ai participé à un travail d'équipe pour répondre aux problématiques (sur l'E-sport par exemple) <br>  posées par l'annonceur (ATOS)  . \t\t \t               </p> \t\t\t</div>   \t\t\t<div class="sous3"> \t\t\t   <h2> Projet Connected flowers  </h2>                   <p > \t\t<strong> Nantes Ynov Campus </strong> : <strong>Janvier 2019 -Juin 2019 </strong> <br/><br/><br> \t\tDans le cadre de ma formation au sein d'Ynov Campus ,<br> je participe à un travail d'équipe dans le but de créer un logiciel<br> qui permettra de à qui le veut , de planter une plante. <br>Ce logiciel accompagnera l'utilisateur dans l'entretient de cette plante. \t\t \t               </p> \t\t\t</div>		                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
\.


--
-- TOC entry 2916 (class 0 OID 16853)
-- Dependencies: 214
-- Data for Name: techno; Type: TABLE DATA; Schema: mon_schemas; Owner: postgres
--

COPY mon_schemas.techno (id_techno, techno1, techno2, techno3) FROM stdin;
\N	test		
\N	<strong> GIT <br> Angular <br> VueJS <br> Adobe XD <br> </strong>	<strong>Adobe XD <br> Wordpress <br> </strong>	<strong>Adobe XD <br> Arduino <br> Raspberry <br> Langage C <br> Python <br>  </strong>
\.


--
-- TOC entry 2907 (class 0 OID 16605)
-- Dependencies: 205
-- Data for Name: apropos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.apropos (id_apropos, nom_apropos, prenom_apropos, photo_apropos, description) FROM stdin;
\.


--
-- TOC entry 2905 (class 0 OID 16599)
-- Dependencies: 203
-- Data for Name: competenceclef; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.competenceclef (competence1, competence2, competence3, id) FROM stdin;
\.


--
-- TOC entry 2901 (class 0 OID 16562)
-- Dependencies: 199
-- Data for Name: contact; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.contact (id_contact, prenom, nom, message, email) FROM stdin;
\.


--
-- TOC entry 2908 (class 0 OID 16765)
-- Dependencies: 206
-- Data for Name: description; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.description  FROM stdin;
\.


--
-- TOC entry 2906 (class 0 OID 16602)
-- Dependencies: 204
-- Data for Name: experience; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.experience (id_experiences, experience1, experience2, experience3) FROM stdin;
\.


--
-- TOC entry 2904 (class 0 OID 16590)
-- Dependencies: 202
-- Data for Name: formation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.formation (id_formation, formation1, formation2, formation3) FROM stdin;
\.


--
-- TOC entry 2902 (class 0 OID 16568)
-- Dependencies: 200
-- Data for Name: formulaire; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.formulaire (id_formulaire, nom_formulaie, prenom_formulaire, email_formulaire, message_formulaire) FROM stdin;
\.


--
-- TOC entry 2903 (class 0 OID 16581)
-- Dependencies: 201
-- Data for Name: loisirs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.loisirs (id_loisirs, loisir1, loisir2, loisir3) FROM stdin;
\.


--
-- TOC entry 2899 (class 0 OID 16543)
-- Dependencies: 197
-- Data for Name: projet; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.projet (id, projet1, projet2, techno_id, projet3) FROM stdin;
\.


--
-- TOC entry 2900 (class 0 OID 16546)
-- Dependencies: 198
-- Data for Name: techno; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.techno (id_techno, techno1, techno2, techno3) FROM stdin;
\.


--
-- TOC entry 2776 (class 2606 OID 16572)
-- Name: formulaire formulaire_clef; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.formulaire
    ADD CONSTRAINT formulaire_clef PRIMARY KEY (id_formulaire);


--
-- TOC entry 2771 (class 2606 OID 16553)
-- Name: projet projet_clef; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projet
    ADD CONSTRAINT projet_clef PRIMARY KEY (id);


--
-- TOC entry 2773 (class 2606 OID 16555)
-- Name: techno techno_clef; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.techno
    ADD CONSTRAINT techno_clef PRIMARY KEY (id_techno);


--
-- TOC entry 2774 (class 1259 OID 16776)
-- Name: fki_formulaire_too_contact; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_formulaire_too_contact ON public.contact USING btree (prenom);


--
-- TOC entry 2769 (class 1259 OID 16561)
-- Name: fki_techno_too_projet; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_techno_too_projet ON public.projet USING btree (techno_id);


--
-- TOC entry 2777 (class 2606 OID 16556)
-- Name: projet techno_too_projet; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projet
    ADD CONSTRAINT techno_too_projet FOREIGN KEY (techno_id) REFERENCES public.techno(id_techno);


-- Completed on 2019-06-10 19:50:39

--
-- PostgreSQL database dump complete
--

