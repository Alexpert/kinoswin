insert into users values
	("admin", "$2b$12$u1k68nCQcNskkNOo0GhcUOGi55KHwXNCGwdPp5D8h8AyAmSsbnfCC", "admin"),
	("bob", "$2b$12$u1k68nCQcNskkNOo0GhcUOGi55KHwXNCGwdPp5D8h8AyAmSsbnfCC", "admin"),
	("billy", "$2b$12$u1k68nCQcNskkNOo0GhcUOGi55KHwXNCGwdPp5D8h8AyAmSsbnfCC", "admin"),
	("joseph", "$2b$12$u1k68nCQcNskkNOo0GhcUOGi55KHwXNCGwdPp5D8h8AyAmSsbnfCC", "bob"),
	("myriam", "$2b$12$u1k68nCQcNskkNOo0GhcUOGi55KHwXNCGwdPp5D8h8AyAmSsbnfCC", "bob");
--BTW, password is "admin"

insert into medias values
	("58B1BBDE-BD8D-45E8-86AD-84ED6B4A2290", "Le Daim", 1560902400, 1611680148, "Accenderat super his incitatum propositum ad nocendum aliqua mulier vilis, quae ad palatium ut poposcerat intromissa insidias ei latenter obtendi prodiderat a militibus obscurissimis. quam Constantina exultans ut in tuto iam locata mariti salute muneratam vehiculoque inpositam per regiae ianuas emisit in publicum, ut his inlecebris alios quoque ad indicanda proliceret paria vel maiora."),
	("58B1BBDE-BD8D-45E8-86AD-84ED6B4A2291", "I, Robot", 1090972800, 1600680148, "Accenderat super his incitatum propositum ad nocendum aliqua mulier vilis, quae ad palatium ut poposcerat intromissa insidias ei latenter obtendi prodiderat a militibus obscurissimis. quam Constantina exultans ut in tuto iam locata mariti salute muneratam vehiculoque inpositam per regiae ianuas emisit in publicum, ut his inlecebris alios quoque ad indicanda proliceret paria vel maiora."),
	("58B1BBDE-BD8D-45E8-86AD-84ED6B4A2292", "Dark City", 895622400, 1601680148, "Accenderat super his incitatum propositum ad nocendum aliqua mulier vilis, quae ad palatium ut poposcerat intromissa insidias ei latenter obtendi prodiderat a militibus obscurissimis. quam Constantina exultans ut in tuto iam locata mariti salute muneratam vehiculoque inpositam per regiae ianuas emisit in publicum, ut his inlecebris alios quoque ad indicanda proliceret paria vel maiora."),
	("58B1BBDE-BD8D-45E8-86AD-84ED6B4A2293", "Les tontons flingueurs", -192412800, 1601670148, "Accenderat super his incitatum propositum ad nocendum aliqua mulier vilis, quae ad palatium ut poposcerat intromissa insidias ei latenter obtendi prodiderat a militibus obscurissimis. quam Constantina exultans ut in tuto iam locata mariti salute muneratam vehiculoque inpositam per regiae ianuas emisit in publicum, ut his inlecebris alios quoque ad indicanda proliceret paria vel maiora."),
	("58B1BBDE-BD8D-45E8-86AD-84ED6B4A2294", "L'Etrange couleur des larmes de ton corps", 1394582400, 1601380148, "Accenderat super his incitatum propositum ad nocendum aliqua mulier vilis, quae ad palatium ut poposcerat intromissa insidias ei latenter obtendi prodiderat a militibus obscurissimis. quam Constantina exultans ut in tuto iam locata mariti salute muneratam vehiculoque inpositam per regiae ianuas emisit in publicum, ut his inlecebris alios quoque ad indicanda proliceret paria vel maiora.");

insert into tags values
	("killer"), ("style"), ("ai"), ("robot"), ("police"), ("cyberpunk"),
	("retrofuturism"), ("alien"), ("detective"), ("wife"), ("investigation"),
	("paris"), ("french"), ("gangster"), 
	("Quentin"), ("DUPIEUX"), ("Alex"), ("PROYAS"),
	("George"), ("LAUTNER"), ("Hélène"), ("CATTET"),
	("Bruno"), ("FORZANI"), ("Sci-Fi"), ("dafuq");

insert into directors values
	("Quentin", "DUPIEUX", "FR", 135129600),
	("Alex", "PROYAS", "AU", -198028800),
	("Hélène", "CATTET", "FR", 189302400),
	("George", "LAUTNER", "FR", -1386547200),
	("Bruno", "FORZANI", "FR", 189302400);

insert into playlists values
	("pure gold", "bob", true),
	("Alex PROYAS", "admin", false),
	("Hélène CATTET", "admin", false),
	("George LAUTNER", "admin", false),
	("Bruno FORZANI", "admin", false),
	("Quentin DUPIEUX", "admin", false),
	("Sci Fi", "billy", false);

insert into playlist_positions values
	("pure gold", "bob", "58B1BBDE-BD8D-45E8-86AD-84ED6B4A2292", 0),
	("pure gold", "bob", "58B1BBDE-BD8D-45E8-86AD-84ED6B4A2294", 1),
	("Alex PROYAS", "admin", "58B1BBDE-BD8D-45E8-86AD-84ED6B4A2292", 0),
	("Alex PROYAS", "admin", "58B1BBDE-BD8D-45E8-86AD-84ED6B4A2291", 1),
	("Hélène CATTET", "admin", "58B1BBDE-BD8D-45E8-86AD-84ED6B4A2294", 0),
	("George LAUTNER", "admin", "58B1BBDE-BD8D-45E8-86AD-84ED6B4A2293", 0),
	("Bruno FORZANI", "admin", "58B1BBDE-BD8D-45E8-86AD-84ED6B4A2294", 0),
	("Quentin DUPIEUX", "admin", "58B1BBDE-BD8D-45E8-86AD-84ED6B4A2290", 0),
	("Sci Fi", "billy", "58B1BBDE-BD8D-45E8-86AD-84ED6B4A2291", 0),
	("Sci Fi", "billy", "58B1BBDE-BD8D-45E8-86AD-84ED6B4A2292", 1);

insert into playlist_tags values
	("pure gold", "bob", "dafuq"),
	("Alex PROYAS", "admin", "Alex"),
	("Alex PROYAS", "admin", "PROYAS"),
	("Hélène CATTET", "admin", "Hélène"),
	("Hélène CATTET", "admin", "CATTET"),
	("George LAUTNER", "admin", "George"),
	("George LAUTNER", "admin", "LAUTNER"),
	("Bruno FORZANI", "admin", "Bruno"),
	("Bruno FORZANI", "admin", "FORZANI"),
	("Quentin DUPIEUX", "admin", "Quentin"),
	("Quentin DUPIEUX", "admin", "DUPIEUX"),
	("Sci Fi", "billy", "Sci-Fi");

insert into media_tags values
	("58B1BBDE-BD8D-45E8-86AD-84ED6B4A2290", "killer"),
	("58B1BBDE-BD8D-45E8-86AD-84ED6B4A2290", "style"),
	("58B1BBDE-BD8D-45E8-86AD-84ED6B4A2290", "Quentin"),
	("58B1BBDE-BD8D-45E8-86AD-84ED6B4A2290", "DUPIEUX"),
	("58B1BBDE-BD8D-45E8-86AD-84ED6B4A2291", "ai"),
	("58B1BBDE-BD8D-45E8-86AD-84ED6B4A2291", "robot"),
	("58B1BBDE-BD8D-45E8-86AD-84ED6B4A2291", "police"),
	("58B1BBDE-BD8D-45E8-86AD-84ED6B4A2291", "Alex"),
	("58B1BBDE-BD8D-45E8-86AD-84ED6B4A2291", "PROYAS"),
	("58B1BBDE-BD8D-45E8-86AD-84ED6B4A2292", "cyberpunk"),
	("58B1BBDE-BD8D-45E8-86AD-84ED6B4A2292", "retrofuturism"),
	("58B1BBDE-BD8D-45E8-86AD-84ED6B4A2292", "alien"),
	("58B1BBDE-BD8D-45E8-86AD-84ED6B4A2292", "Alex"),
	("58B1BBDE-BD8D-45E8-86AD-84ED6B4A2292", "PROYAS"),
	("58B1BBDE-BD8D-45E8-86AD-84ED6B4A2293", "paris"),
	("58B1BBDE-BD8D-45E8-86AD-84ED6B4A2293", "french"),
	("58B1BBDE-BD8D-45E8-86AD-84ED6B4A2293", "gangster"),
	("58B1BBDE-BD8D-45E8-86AD-84ED6B4A2293", "George"),
	("58B1BBDE-BD8D-45E8-86AD-84ED6B4A2293", "LAUTNER"),
	("58B1BBDE-BD8D-45E8-86AD-84ED6B4A2294", "detective"),
	("58B1BBDE-BD8D-45E8-86AD-84ED6B4A2294", "wife"),
	("58B1BBDE-BD8D-45E8-86AD-84ED6B4A2294", "investigation"),
	("58B1BBDE-BD8D-45E8-86AD-84ED6B4A2294", "Hélène"),
	("58B1BBDE-BD8D-45E8-86AD-84ED6B4A2294", "CATTET"),
	("58B1BBDE-BD8D-45E8-86AD-84ED6B4A2294", "Bruno"),
	("58B1BBDE-BD8D-45E8-86AD-84ED6B4A2294", "FORZANI");


insert into viewings values
	("admin", "58B1BBDE-BD8D-45E8-86AD-84ED6B4A2293", 1611681997),
	("admin", "58B1BBDE-BD8D-45E8-86AD-84ED6B4A2293", 1611481997),
	("admin", "58B1BBDE-BD8D-45E8-86AD-84ED6B4A2293", 1610881997),
	("admin", "58B1BBDE-BD8D-45E8-86AD-84ED6B4A2293", 1610681997),
	("billy", "58B1BBDE-BD8D-45E8-86AD-84ED6B4A2293", 1610681997),
	("bob", "58B1BBDE-BD8D-45E8-86AD-84ED6B4A2293", 1610681997),
	("joseph", "58B1BBDE-BD8D-45E8-86AD-84ED6B4A2290", 1610681997),
	("joseph", "58B1BBDE-BD8D-45E8-86AD-84ED6B4A2292", 1610691997),
	("joseph", "58B1BBDE-BD8D-45E8-86AD-84ED6B4A2293", 1610481997),
	("myriam", "58B1BBDE-BD8D-45E8-86AD-84ED6B4A2290", 1610661997),
	("myriam", "58B1BBDE-BD8D-45E8-86AD-84ED6B4A2294", 1610680997);

insert into media_directors values
	("58B1BBDE-BD8D-45E8-86AD-84ED6B4A2290", "Quentin", "DUPIEUX"),
	("58B1BBDE-BD8D-45E8-86AD-84ED6B4A2291", "Alex", "PROYAS"),
	("58B1BBDE-BD8D-45E8-86AD-84ED6B4A2292", "Alex", "PROYAS"),
	("58B1BBDE-BD8D-45E8-86AD-84ED6B4A2293", "George", "LAUTNER"),
	("58B1BBDE-BD8D-45E8-86AD-84ED6B4A2294", "Hélène", "CATTET"),
	("58B1BBDE-BD8D-45E8-86AD-84ED6B4A2294", "Bruno", "FORZANI");

