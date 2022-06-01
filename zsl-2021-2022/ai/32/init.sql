create database if not exists `baza`;
use `baza`;
create table if not exists `zwierzeta` (
    `id` int not null auto_increment,
    `gromady_id` int not null,
    `odzywianie_id` int not null,
    `gatunek` text,
    `wystepowanie` text,
    `czy_zagrozony` bool,
    `obraz` text,
    primary key (id)
);
INSERT INTO `zwierzeta` (`id`, `Gromady_id`, `Odzywianie_id`, `gatunek`, `wystepowanie`, `czy_zagrozony`, `obraz`) VALUES
(1, 1, 1, 'Sum pospolity', 'Eurazja', 0, 'sum.jpg'),
(2, 1, 1, 'Jesiotr zachodni', 'Europa', 1, 'jesiotr.jpg'),
(3, 4, 4, 'Wrona siwa', 'Europa', 0, 'wrona.jpg'),
(4, 4, 1, 'Puszczyk zwyczajny', 'Eurazja', 0, 'puszczyk.jpg'),
(5, 4, 4, 'Sroka zwyczajna', 'Eurazja', 0, 'sroka.jpg'),
(6, 5, 1, 'Wilk szary', 'Europa, Ameryka', 0, 'wilk.jpg'),
(7, 5, 3, 'Hiena brunatna', 'Afryka', 0, 'hiena.jpg'),
(8, 5, 2, 'Sarna europejska', 'Europa', 0, 'sarna.jpg'),
(9, 5, 1, 'Dingo australijski', 'Australia', 1, 'dingo.jpg');
create table if not exists `gromady` (
    `id` int not null auto_increment,
    `nazwa` text,
    primary key (id)
);
INSERT INTO `gromady` (`id`, `nazwa`) VALUES
(1, 'ryby'),
(2, 'plazy'),
(3, 'gady'),
(4, 'ptaki'),
(5, 'ssaki');
create table if not exists `odzywianie` (
    `id` int not null auto_increment,
    `rodzaj` text,
    primary key (id)
);
INSERT INTO `odzywianie` (`id`, `rodzaj`) VALUES
(1, 'drapieznik'),
(2, 'roslinozerny'),
(3, 'padlinozerny'),
(4, 'wszystkozerny');