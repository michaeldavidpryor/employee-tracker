# TABLE STRUCTURE FOR: department
#

DROP TABLE IF EXISTS `department`;

CREATE TABLE `department` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO `department` (`id`, `name`) VALUES (1, 'fugit');
INSERT INTO `department` (`id`, `name`) VALUES (2, 'voluptas');
INSERT INTO `department` (`id`, `name`) VALUES (3, 'dicta');
INSERT INTO `department` (`id`, `name`) VALUES (4, 'velit');
INSERT INTO `department` (`id`, `name`) VALUES (5, 'cum');


#
# TABLE STRUCTURE FOR: employee
#

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
  `id` int(9) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `role_id` int(11) NOT NULL,
  `manager_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

INSERT INTO `employee` (`id`, `first_name`, `last_name`, `role_id`, `manager_id`) VALUES (1, 'Cory', 'Kuhic', 1, 5);
INSERT INTO `employee` (`id`, `first_name`, `last_name`, `role_id`, `manager_id`) VALUES (2, 'Aditya', 'Farrell', 2, 1);
INSERT INTO `employee` (`id`, `first_name`, `last_name`, `role_id`, `manager_id`) VALUES (3, 'Holden', 'Bins', 3, 5);
INSERT INTO `employee` (`id`, `first_name`, `last_name`, `role_id`, `manager_id`) VALUES (4, 'Jacquelyn', 'Klocko', 4, 5);
INSERT INTO `employee` (`id`, `first_name`, `last_name`, `role_id`, `manager_id`) VALUES (5, 'Roslyn', 'Farrell', 5, 3);
INSERT INTO `employee` (`id`, `first_name`, `last_name`, `role_id`, `manager_id`) VALUES (6, 'Lavern', 'Breitenberg', 1, 4);
INSERT INTO `employee` (`id`, `first_name`, `last_name`, `role_id`, `manager_id`) VALUES (7, 'Pietro', 'Jerde', 2, 2);
INSERT INTO `employee` (`id`, `first_name`, `last_name`, `role_id`, `manager_id`) VALUES (8, 'Trevion', 'Dach', 3, 5);
INSERT INTO `employee` (`id`, `first_name`, `last_name`, `role_id`, `manager_id`) VALUES (9, 'Jackson', 'Gutkowski', 4, 3);
INSERT INTO `employee` (`id`, `first_name`, `last_name`, `role_id`, `manager_id`) VALUES (10, 'Gregg', 'Gutmann', 5, 5);


#
# TABLE STRUCTURE FOR: role
#

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `id` int(9) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `salary` decimal(10,2) unsigned NOT NULL,
  `department_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO `role` (`id`, `title`, `salary`, `department_id`) VALUES (1, 'voluptatem', '66789.00', 1);
INSERT INTO `role` (`id`, `title`, `salary`, `department_id`) VALUES (2, 'modi', '97352.00', 2);
INSERT INTO `role` (`id`, `title`, `salary`, `department_id`) VALUES (3, 'dignissimos', '53235.00', 3);
INSERT INTO `role` (`id`, `title`, `salary`, `department_id`) VALUES (4, 'qui', '93434.00', 4);
INSERT INTO `role` (`id`, `title`, `salary`, `department_id`) VALUES (5, 'maxime', '72493.00', 5);

SELECT * FROM departments;
select * from role;
select * from employee;

