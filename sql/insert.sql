INSERT INTO compte (login,mdp) VALUES ('ppeko','boei09');
INSERT INTO compte (login,mdp) VALUES ('mligneaux','doudou1234');
INSERT INTO compte (login,mdp) VALUES ('jrollant','jutcjj!');
INSERT INTO compte (login,mdp) VALUES ('mpoitou','JEsuisuneVACHE');
INSERT INTO compte (login,mdp) VALUES ('jbarre','DamienSIZE');
INSERT INTO compte (login,mdp) VALUES ('jpinteau','dbzirl!');

INSERT INTO adherent (compte,carte,naissance,tel,nom,prenom,adresse,email) VALUES ('ppeko','IU901',TO_DATE('1996/11/15','YYYY/MM/DD'),0678965545,'Peko','Paolo','08113 Stanley Mountains Suite 061\nJonesfurt, AZ 90784','ppeko@gmail.com');
INSERT INTO adherent (compte,carte,naissance,tel,nom,prenom,adresse,email) VALUES ('mligneaux','ED991',TO_DATE('2000/01/15','YYYY/MM/DD'),0789098755,'Ligneaux','Marie','7224 Harrison Orchard Apt. 662\nSouth Roberto, DC 16107','mligneaux@yahoo.fr');
INSERT INTO adherent (compte,carte,naissance,tel,nom,prenom,adresse,email) VALUES ('jrollant','EU887',TO_DATE('1957/10/17','YYYY/MM/DD'),0654567690,'Rollant','Jules','970 Rodriguez Lakes\nEast Jesus, ID 37555','jules109@gmail.com');

INSERT INTO membre (compte,nom,prenom,adresse,email, role_employe) VALUES ('mpoitou','Poitou','Michel', '2461 Butler Via Apt. 182\nEast Aaronburgh, NC 52216','michel.poitou@gmail.com', 'directeur');
INSERT INTO membre (compte,nom,prenom,adresse,email, role_employe) VALUES ('jbarre','Barre','Jean','PSC 2335, Box 6751\nAPO AA 04379','barre.jean@gmail.com', 'acceuil');
INSERT INTO membre (compte,nom,prenom,adresse,email, role_employe) VALUES ('jpinteau','Pinteau','Jeanne','018 Sheila Freeway Suite 784\nWagnerhaven, SC 92177','jeannepointeau@gmail.com', 'acceuil');

INSERT INTO ressource (titre, date, genre, classification) VALUES ('Manos: The Hands of Fate', TO_DATE('1966/11/15','YYYY/MM/DD'), 'horreur', 'F-WA');
INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('Box Office 3D - Il film dei film',TO_DATE('2011/09/09','YYYY/MM/DD'),'Valentina Mariani','comédie','F-GR');
INSERT INTO ressource (titre, date, genre, classification) VALUES ('Romina', TO_DATE('2018/07/13','YYYY/MM/DD'), 'horreur', 'F-CO');
INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('Les P''tits génies 2', TO_DATE('2004/08/27','YYYY/MM/DD'), 'Stan Cole', 'comédie', 'F-CL');
INSERT INTO ressource (titre, date, genre, classification) VALUES ('The App', TO_DATE('2019/12/26','YYYY/MM/DD'),'science-fiction', 'F-FU');
INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('Birdemic: Shock and Terror', TO_DATE('2010/02/27', 'YYYY/MM/DD'), 'Kim Chow', 'science-fiction', 'F-NG');
 
INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('Le Monde sans fin, miracle énergétique et dérive climatique', TO_DATE('2021/10/29','YYYY/MM/DD'),'Dargaud','Bande dessinée','L-JA');
INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('La plus secrète mémoire des hommes', TO_DATE('2021/08/19','YYYY/MM/DD'),'Philippe Rey','Roman','L-MB');
INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('La Clé de votre énergie', TO_DATE('2020/01/08','YYYY/MM/DD'),'Philippe Rey','Roman','L-MB');
INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('Tchoupi - Danse avec tchoupi !', TO_DATE('2020/02/07','YYYY/MM/DD'),'Albin Michel','Jeunesse','L-CO');
INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('Tchoupi celebra el seu aniversari ', TO_DATE('2020/09/10','YYYY/MM/DD'),'Albin Michel','Jeunesse','L-CO');
INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('La France sous nos yeux. Economie, paysages, nouveaux modes de vie', TO_DATE('2021/10/29','YYYY/MM/DD'),'Seuil','Etude','L-FO');
INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('Warbreaker', TO_DATE('2014/09/17','YYYY/MM/DD'),'Lgf','Roman','L-SA');
INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('Warbreaker', TO_DATE('2014/09/17','YYYY/MM/DD'),'Lgf','Roman','L-SA');

INSERT INTO ressource (titre, date, editeur, genre, classification) VALUES ('16', TO_DATE('2021/09/26','YYYY/MM/DD'),'Universal Musique','New Experimental French Zumba ','M-CH');

INSERT INTO film(code,duree,synopsis,langue) VALUES (1,70,'Une famille en vacances dans le désert du Texas est capturée par une secte païenne. Ils cherchent à s''enfuir pendant que les membres de la secte devisent de leur sort.','en');
INSERT INTO film(code,duree,synopsis,langue) VALUES (2,102,'Box Office 3D est une parodie de certains des blockbusters américains de ces dernières années, parmi lesquels Da Vinci Code, Gladiator, la saga Harry Potter, Avatar et la saga Twilight, Fast & Furious, 007, Zorro transformé en Code Teomondo Scrofalo, Gladiator, Harry Sphotter et l''âge de la retraite, Twinight, Run Fast I''m Furious, Viagratar, Old Old Seventies','it');
INSERT INTO film(code,duree,synopsis,langue) VALUES (3,77,'L''escapade camping en pleine nature d''une bande d''adolescents se transforme en terrible cauchemar lors d''une rencontre fortuite avec une de leurs camarades de lycée. ','it');
INSERT INTO film(code,duree,synopsis,langue) VALUES (4,88,'Quatre bébé peuvent communiquer par le "parler bébé", et ont connaissance de grands secrets. Les "bébés génies" se retrouvent impliqués dans le plan d''un magnat de la presse Bill Biscane (Jon Voight), connu pour enlever des enfants, qui veut utiliser un système satellite pour laver le cerveau de la population mondiale et les forcer à regarder la télévision pour le restant de leur vie.','en');
INSERT INTO film(code,duree,synopsis,langue) VALUES (5,77,'La vie a tout donné à Niccolò Melzi d''Eril, descendant de la plus grande famille d''industriels italiens : intelligence, beauté, richesse, possibilités... et solitude.','en');
INSERT INTO film(code,duree,synopsis,langue) VALUES (6,96,'Birdemic est un film divisé en deux grandes parties. Dans la première partie, le film nous narre l''histoire d''amour grandissante entre Rod et Nathalie. Dans sa seconde partie, le film débute sa partie horreur avec l''attaque des oiseaux mutants sur la ville. ','en');

INSERT INTO livre (code,isbn,resume,langue) VALUES ('7','9782205089318', 'La rencontre entre un auteur majeur de la bande dessinée et un éminent spécialiste des questions énergétiques et de l''impact sur le climat a abouti à ce projet, comme une évidence, une nécessité de témoigner sur des sujets qui nous concernent tous. Intelligent, limpide, non dénué d''humour, cet ouvrage explique sous forme de chapitres les changements profonds que notre planète vit actuellement et quelles conséquences, déjà observées, ces changements parfois radicaux signifient. Jean-Marc Jancovici étaye sa vision remarquablement argumentée en plaçant la question de l''énergie et du changement climatique au coeur de sa réflexion tout en évoquant les enjeux économiques (la course à la croissance à tout prix est-elle un leurre ?), écologiques et sociétaux. Ce témoignage éclairé s''avère précieux, passionnant et invite à la réflexion sur des sujets parfois clivants, notamment celui de la transition énergétique. Christophe Blain se place dans le rôle du candide, à la façon de son livre "En cuisine avec Alain Passard" et de "Quai d''Orsay" signé avec l''expertise d''un coauteur : un pavé de 120 pages indispensable pour mieux comprendre notre monde, tout simplement !','fr');
INSERT INTO livre (code,isbn,resume,langue) VALUES ('8','9782848768861','En 2018, Diégane Latyr Faye, jeune écrivain sénégalais, découvre à Paris un livre mythique, paru en 1938 : Le Labyrinthe de l''inhumain. On a perdu la trace de son auteur, qualifié en son temps de " Rimbaud nègre ", depuis le scandale que déclencha la parution de son texte. Diégane s''engage alors, fasciné, sur la piste du mystérieux T. C. Elimane, où il affronte les grandes tragédies que sont le colonialisme ou la Shoah. Du Sénégal à la France en passant par l''Argentine, quelle vérité l''attend au centre de ce labyrinthe ? Sans jamais perdre le fil de cette quête qui l''accapare, Diégane, à Paris, fréquente un groupe de jeunes auteurs africains : tous s''observent, discutent, boivent, font beaucoup l''amour, et s''interrogent sur la nécessité de la création à partir de l''exil. Il va surtout s''attacher à deux femmes : la sulfureuse Siga, détentrice de secrets, et la fugace photojournaliste Aïda...','fr');
INSERT INTO livre (code,isbn,resume,langue) VALUES ('9','9782226445605','« Je suis vidé » : qui n''a jamais ressenti cette perte d''énergie ? Et si nos problèmes de santé étaient l''expression d''émotions douloureuses ? Et si les épreuves que nous traversons étaient dues à nos peurs, nos blocages, nos culpabilités ? Et si nos blessures remontaient à notre passé, proche ou lointain, voire à un héritage ? (un événement antérieur à notre naissance) Cela peut cesser et cela va cesser ! Je vous en donne la clé. Grâce à ces 22 protocoles (grâce aux 22 protocoles que vous trouverez dans ce livre), vous allez réactiver votre potentiel et enfin retrouver votre pleine énergie.','fr');
INSERT INTO livre (code,isbn,resume,langue) VALUES ('10','7832021400837','Un livre musical pour danser avec Tchoupi et ses amis sur des musiques variées !Des rythmes endiablés et des airs irrésistibles ont envahi les rues de Rio, La Havane, Veracruz, New York et Paris... Les musiciens font sonner leurs instruments et Tchoupi danse avec ses amis. Avec 5 ambiances musicales très entraînantes : Rockn roll Salsa Bamba Twist Batucada Et des instruments à découvrir au fil des pages : maracas, congas, timbales, guitares','fr');
INSERT INTO livre (code,isbn,resume,langue) VALUES ('11','0938762887978','Històries que expliquen la vida dels nens de 2 a 4 anys, les grans alegries, els moments més destacats de la vida familiar i les petites preocupacions de la vida quotidiana. Gràcies a Tchoupi, molts petits problemes troben la seva solució molt suaument.','ca');
INSERT INTO livre (code,isbn,resume,langue) VALUES ('12','9782021481570','Qu''ont donc en commun les plateformes logistiques d''Amazon, les émissions de Stéphane Plaza, les restaurants de kebabs, les villages de néo-ruraux dans la Drôme, l''univers des coaches et les boulangeries de rond-point ? Rien, bien sûr, sinon que chacune de ces réalités économiques, culturelles et sociales occupe le quotidien ou nourrit l''imaginaire d''un segment de la France contemporaine. Or, nul atlas ne permet de se repérer dans cette France nouvelle où chacun ignore ce que fait l''autre. L''écart entre la réalité du pays et les représentations dont nous avons hérité est dès lors abyssal, et, près d''un demi-siècle après l''achèvement des Trente glorieuses, nous continuons à parler de la France comme si elle venait d''en sortir. Pourtant, depuis le milieu des années 1980, notre société s''est métamorphosée en profondeur, entrant pleinement dans l''univers des services, de la mobilité, de la consommation, de l''image et des loisirs. C''est de la vie quotidienne dans cette France nouvelle et ignorée d''elle-même que ce livre entend rendre compte à hauteur d''hommes et de territoires.','fr');
INSERT INTO livre (code,isbn,resume,langue) VALUES ('13','9780765320308','Voici l''histoire de deux sœurs : Siri, une jeune fille rebelle envoyée par son père pour épouser le tyrannique Dieu-Roi, et Vivenna, qui va tenter de la sauver de son sort. C’est aussi l''histoire de Chanteflamme, un autre dieu qui n''aime pas son travail, celle de Vasher, un immortel qui essaie de réparer les erreurs qu''il a commises autrefois, et de Saignenuit, sa mystérieuse épée. Dans leur monde, celui qui meurt auréolé de gloire devient un dieu et vit dans le panthéon du royaume d''Hallandren. C’est un monde transformé par la magie biochromatique, la magie du Souffle. Un Souffle qu''on ne récupère définitivement que sur un individu à la fois… Brandon Sanderson prouve une fois encore qu’il excelle dans la création d’un imaginaire avec ses mythes et sa magie propres.','fr');
INSERT INTO livre (code,isbn,resume,langue) VALUES ('14','9780765320308','Here is the story of two sisters: Siri, a rebellious girl sent by her father to marry the tyrannical God-King, and Vivenna, who will try to save her from her fate. It is also the story of Flameong, another god who dislikes his work, that of Vasher, an immortal who tries to right the mistakes he once made, and of Nightblood, his mysterious sword. In their world, the one who dies with a halo of glory becomes a god and lives in the pantheon of the kingdom of Hallandren. It is a world transformed by biochromatic magic, the magic of Breath. A Breath that is definitely only recovered from one individual at a time ... Brandon Sanderson proves once again that he excels in creating an imaginary world with his own myths and magic.','en');

INSERT INTO musique (code,duree) VALUES(15,126);

INSERT INTO contributeur (nom,prenom,naissance,nationalite) VALUES ('Jancovici','Jean-Marc',TO_DATE('1962/02/13','YYYY/MM/DD'),'française');
INSERT INTO contributeur (nom,prenom,naissance,nationalite) VALUES ('Mbougar Sarr','Mohamed',TO_DATE('1990/06/20','YYYY/MM/DD'),'sénégalaise');
INSERT INTO contributeur (nom,prenom,naissance,nationalite) VALUES ('Calestrémé','Natacha',TO_DATE('1966/06/27','YYYY/MM/DD'),'française');
INSERT INTO contributeur (nom,prenom,naissance,nationalite) VALUES ('Fourquet','Jérôme',TO_DATE('1973/02/08','YYYY/MM/DD'),'américaine');
INSERT INTO contributeur (nom,prenom,naissance,nationalite) VALUES ('Sanderson','Brandon',TO_DATE('1975/12/19','YYYY/MM/DD'),'française');
INSERT INTO contributeur (nom,prenom,naissance,nationalite) VALUES ('Thierry','Courtin',TO_DATE('1954/01/31','YYYY/MM/DD'),'française');
INSERT INTO contributeur (nom,prenom,naissance,nationalite) VALUES ('Chaïb','Wejdene',TO_DATE('2004/04/23','YYYY/MM/DD'),'française');
INSERT INTO contributeur (nom,prenom,naissance,nationalite) VALUES ('Warren','Harold',TO_DATE('1923/08/23','YYYY/MM/DD'),'américaine');
INSERT INTO contributeur (nom,prenom,naissance,nationalite) VALUES ('Gerggio','Ezio',TO_DATE('1954/04/30','YYYY/MM/DD'),'italienne');
INSERT INTO contributeur (nom,prenom,naissance,nationalite) VALUES ('Cohen','Diego',TO_DATE('1987/09/09','YYYY/MM/DD'),'américaine');
INSERT INTO contributeur (nom,prenom,naissance,nationalite) VALUES ('Clark','Bob',TO_DATE('1939/08/05','YYYY/MM/DD'),'américaine');
INSERT INTO contributeur (nom,prenom,naissance,nationalite) VALUES ('Fuksas','Elisa ',TO_DATE('1980/09/17','YYYY/MM/DD'),'italienne');
INSERT INTO contributeur (nom,prenom,naissance,nationalite) VALUES ('Nguyen','James',TO_DATE('1966/09/01','YYYY/MM/DD'),'vietnamienne');

INSERT INTO realisateur (code,id) VALUES ('1','8');
INSERT INTO realisateur (code,id) VALUES ('2','9');
INSERT INTO realisateur (code,id) VALUES ('3','10');
INSERT INTO realisateur (code,id) VALUES ('4','11');
INSERT INTO realisateur (code,id) VALUES ('5','12');
INSERT INTO realisateur (code,id) VALUES ('6','13');

INSERT INTO auteur (code,id) VALUES ('7','1');
INSERT INTO auteur (code,id) VALUES ('8','2');
INSERT INTO auteur (code,id) VALUES ('9','3');
INSERT INTO auteur (code,id) VALUES ('10','6');
INSERT INTO auteur (code,id) VALUES ('11','6');
INSERT INTO auteur (code,id) VALUES ('12','4');
INSERT INTO auteur (code,id) VALUES ('13','5');
INSERT INTO auteur (code,id) VALUES ('14','5');


INSERT INTO exemplaire(code, etat, dispo) VALUES ('7', true, false);
INSERT INTO exemplaire(code, etat, dispo) VALUES ('15', true, false);


INSERT INTO pret (num, compte, date, duree, estRendu) VALUES ('1', 'jrollant', TO_DATE('2021/11/28','YYYY/MM/DD'), '21', FALSE);


INSERT INTO interprete (code,id) VALUES ('15','7');
