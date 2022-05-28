DROP DATABASE IF EXISTS contact;

CREATE DATABASE contact CHARACTER SET utf8 COLLATE utf8_general_ci;

USE contact;

create table contact
(
    id               int auto_increment
        primary key,
    correo           varchar(255) null,
    fecha_nacimiento date         not null,
    nombre           varchar(255) null,
    telefono         varchar(255) null,
    deleted_at       timestamp    null
);

################################################################################

INSERT INTO contact(id, nombre, correo, telefono, fecha_nacimiento)
VALUES (1, 'Delilah', 'Evaleen.Ax@yopmail.com', 3072530421, '1980-01-06')
     , (2, 'Cordi', 'Zsa Zsa.Cottle@yopmail.com', 3313111585, '1999-11-03')
     , (3, 'Lolita', 'Mariann.Tillford@yopmail.com', 3115271260, '1980-01-06')
     , (4, 'Roseline', 'June.Talia@yopmail.com', 3827451218, '1999-11-03')
     , (5, 'Allis', 'Cassandra.Dom@yopmail.com', 3793894289, '1999-11-03')
     , (6, 'Kittie', 'Cam.Knowling@yopmail.com', 3390253837, '1999-11-03')
     , (7, 'Annecorinne', 'Dione.Parette@yopmail.com', 3098715857, '1999-11-03')
     , (8, 'Vinita', 'Kary.Delacourt@yopmail.com', 3781426911, '1999-11-03')
     , (9, 'Yetty', 'Gusella.Vorster@yopmail.com', 3770931934, '1980-01-06')
     , (10, 'Mariele', 'Grier.Ax@yopmail.com', 3214431947, '1999-11-03')
     , (11, 'Darci', 'Moyna.Chesna@yopmail.com', 3130593573, '1999-11-03')
     , (12, 'Marcelline', 'Ida.Liebermann@yopmail.com', 3121815111, '1999-11-03')
     , (13, 'Dorthy', 'Vere.Brenn@yopmail.com', 3682558295, '1999-11-03')
     , (14, 'Eve', 'Gui.Sheng@yopmail.com', 3754884995, '1980-01-06')
     , (15, 'Sharlene', 'Charmaine.Bergman@yopmail.com', 3587377838, '1980-01-06')
     , (16, 'Abbie', 'Eugine.Terrence@yopmail.com', 3068686310, '1999-11-03')
     , (17, 'Aubrie', 'Jaime.Fosque@yopmail.com', 3518714756, '1999-11-03')
     , (18, 'Dede', 'Alia.Crudden@yopmail.com', 3779516302, '1980-01-06')
     , (19, 'Pearline', 'Elsie.Whiffen@yopmail.com', 3893311599, '1999-11-03')
     , (20, 'Judy', 'Kelly.Hubert@yopmail.com', 3649479185, '1980-01-06')
     , (21, 'Demetris', 'Oralee.Lane@yopmail.com', 3820946112, '1999-11-03')
     , (22, 'Lexine', 'Elfreda.Nelsen@yopmail.com', 3691428962, '1999-11-03')
     , (23, 'June', 'Atlanta.Ricki@yopmail.com', 3711728567, '1980-01-06')
     , (24, 'Inga', 'Delilah.Cyrie@yopmail.com', 3656399716, '1999-11-03')
     , (25, 'Catrina', 'Vita.An@yopmail.com', 3229574337, '1999-11-03')
     , (26, 'Tiffie', 'Nollie.Schonfeld@yopmail.com', 3243460656, '1999-11-03')
     , (27, 'Codie', 'Alyda.Mullane@yopmail.com', 3367020936, '1980-01-06')
     , (28, 'Elora', 'Sissy.Franza@yopmail.com', 3428723743, '1980-01-06')
     , (29, 'Tobe', 'Blondelle.Fleeta@yopmail.com', 3396434603, '1999-11-03')
     , (30, 'Gilligan', 'Beatriz.Dudley@yopmail.com', 3117041972, '1999-11-03')
     , (31, 'Nickie', 'Luci.Emerson@yopmail.com', 3739857102, '1999-11-03')
     , (32, 'Hyacinthe', 'Genovera.Edvard@yopmail.com', 3182011735, '1999-11-03')
     , (33, 'Beverley', 'Nonnah.Klemperer@yopmail.com', 3281003220, '1999-11-03')
     , (34, 'Shaine', 'Rosaline.Lilas@yopmail.com', 3162812400, '1980-01-06')
     , (35, 'Jorry', 'Danika.Merriott@yopmail.com', 3752904400, '1980-01-06')
     , (36, 'Lulita', 'Elfreda.Sammons@yopmail.com', 3756882390, '1980-01-06')
     , (37, 'Louella', 'Deloria.Thad@yopmail.com', 3921618661, '1980-01-06')
     , (38, 'Robinia', 'Sara-Ann.Kylander@yopmail.com', 3475291507, '1999-11-03')
     , (39, 'Priscilla', 'Annora.Brian@yopmail.com', 3380452936, '1980-01-06')
     , (40, 'Carlie', 'Tina.Jalbert@yopmail.com', 3035004178, '1999-11-03')
     , (41, 'Shaylyn', 'Dagmar.Slifka@yopmail.com', 3146826877, '1980-01-06')
     , (42, 'Etta', 'Jennica.Evangelia@yopmail.com', 3370300208, '1999-11-03')
     , (43, 'Glenda', 'Joeann.Grosz@yopmail.com', 3119421254, '1980-01-06')
     , (44, 'Lusa', 'Imojean.Travax@yopmail.com', 3070880455, '1999-11-03')
     , (45, 'Ardys', 'Wanda.Infield@yopmail.com', 3645289037, '1980-01-06')
     , (46, 'Gilda', 'Adriana.Corabella@yopmail.com', 3345487600, '1980-01-06')
     , (47, 'Carol-Jean', 'Jenda.Deny@yopmail.com', 3112496263, '1980-01-06')
     , (48, 'Marika', 'Vinita.Desai@yopmail.com', 3816501531, '1999-11-03')
     , (49, 'Beatriz', 'Modestia.Liva@yopmail.com', 3184951383, '1999-11-03')
     , (50, 'Sallie', 'Clary.Burnside@yopmail.com', 3481863798, '1980-01-06')
     , (51, 'Tiffie', 'Ana.Erb@yopmail.com', 3825874860, '1980-01-06')
     , (52, 'Sallie', 'Rhoda.Gerge@yopmail.com', 3718419577, '1980-01-06')
     , (53, 'Lindie', 'Mellicent.Abbot@yopmail.com', 3271916135, '1999-11-03')
     , (54, 'Rebeca', 'Courtnay.Palocz@yopmail.com', 3765532689, '1980-01-06')
     , (55, 'Hermione', 'Jenda.Posner@yopmail.com', 3950292020, '1999-11-03')
     , (56, 'Emma', 'Abbie.Jobi@yopmail.com', 3196066274, '1999-11-03')
     , (57, 'Maisey', 'Morganica.Smitt@yopmail.com', 3852902132, '1980-01-06')
     , (58, 'Sherrie', 'Belva.Chobot@yopmail.com', 3209643123, '1980-01-06')
     , (59, 'Beth', 'Brianna.Peg@yopmail.com', 3742029082, '1980-01-06')
     , (60, 'Daphne', 'Candi.Pulsifer@yopmail.com', 3236660929, '1999-11-03')
     , (61, 'Averyl', 'Cristabel.Charity@yopmail.com', 3230498555, '1980-01-06')
     , (62, 'Marcy', 'Malina.Gregrory@yopmail.com', 3907493248, '1999-11-03')
     , (63, 'Stacey', 'Sheree.Hoban@yopmail.com', 3957225024, '1980-01-06')
     , (64, 'Fina', 'Nita.Heisel@yopmail.com', 3292355835, '1980-01-06')
     , (65, 'Glynnis', 'Ericka.Rugen@yopmail.com', 3714072951, '1999-11-03')
     , (66, 'Olwen', 'Cissiee.Bertold@yopmail.com', 3462643464, '1980-01-06')
     , (67, 'Annaliese', 'Margarette.Hepsibah@yopmail.com', 3534100762, '1980-01-06')
     , (68, 'Ardeen', 'Patricia.Gilbertson@yopmail.com', 3015343225, '1999-11-03')
     , (69, 'Carmela', 'Elfreda.Brenn@yopmail.com', 3574469524, '1999-11-03')
     , (70, 'Tani', 'Dulcinea.Stuart@yopmail.com', 3155417462, '1999-11-03')
     , (71, 'Gratia', 'Shirlee.Gilmour@yopmail.com', 3024007821, '1980-01-06')
     , (72, 'Margalo', 'Corina.Bahr@yopmail.com', 3592390557, '1980-01-06')
     , (73, 'Fanchon', 'Christy.Stevy@yopmail.com', 3659911534, '1999-11-03')
     , (74, 'Myriam', 'Aurelie.Taima@yopmail.com', 3107852014, '1980-01-06')
     , (75, 'Tonia', 'Rebeca.Rossner@yopmail.com', 3087408563, '1980-01-06')
     , (76, 'Isa', 'Monika.Katrine@yopmail.com', 3526453083, '1980-01-06')
     , (77, 'Nita', 'Larine.Schroth@yopmail.com', 3549258424, '1999-11-03')
     , (78, 'Ernesta', 'Karina.Boycey@yopmail.com', 3036120683, '1999-11-03')
     , (79, 'Gwyneth', 'Elbertina.Delila@yopmail.com', 3143027001, '1999-11-03')
     , (80, 'Sallie', 'Clo.Grobe@yopmail.com', 3787781894, '1999-11-03')
     , (81, 'Lauryn', 'Elora.Grobe@yopmail.com', 3922222506, '1999-11-03')
     , (82, 'Justinn', 'Tatiania.Daegal@yopmail.com', 3822305247, '1980-01-06')
     , (83, 'Loree', 'Roberta.Bouchard@yopmail.com', 3468554372, '1999-11-03')
     , (84, 'Hildegaard', 'Josephine.Magnolia@yopmail.com', 3710818810, '1999-11-03')
     , (85, 'Barbara', 'Shirlee.Sidonius@yopmail.com', 3927199980, '1980-01-06')
     , (86, 'Charissa', 'Isa.Faust@yopmail.com', 3107370911, '1999-11-03')
     , (87, 'Gloria', 'Jolyn.Margret@yopmail.com', 3819659964, '1980-01-06')
     , (88, 'Jessy', 'Drucie.Decato@yopmail.com', 3390858786, '1980-01-06')
     , (89, 'Sharlene', 'Bee.Marijo@yopmail.com', 3964334434, '1999-11-03')
     , (90, 'Helena', 'Di.Reinke@yopmail.com', 3829097448, '1999-11-03')
     , (91, 'Deloria', 'Florie.Mathilde@yopmail.com', 3944789429, '1980-01-06')
     , (92, 'Rozele', 'Bernie.Dex@yopmail.com', 3812489529, '1980-01-06')
     , (93, 'Tatiania', 'Tonia.Carmena@yopmail.com', 3805218561, '1999-11-03')
     , (94, 'Joeann', 'Dawn.Abram@yopmail.com', 3800714885, '1980-01-06')
     , (95, 'Esmeralda', 'Estell.Pyle@yopmail.com', 3462530956, '1999-11-03')
     , (96, 'Emylee', 'Cherilyn.Korey@yopmail.com', 3255563803, '1999-11-03')
     , (97, 'Blinni', 'Sonni.Ethban@yopmail.com', 3239487569, '1999-11-03')
     , (98, 'Roseline', 'Caressa.Louanna@yopmail.com', 3778739751, '1999-11-03')
     , (99, 'Maryellen', 'Jean.Vivle@yopmail.com', 3010725661, '1999-11-03')
     , (100, 'Quintina', 'Kathi.Leler@yopmail.com', 3702346317, '1999-11-03');
