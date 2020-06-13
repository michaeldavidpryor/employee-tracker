DROP DATABASE IF EXISTS employee_db;
CREATE DATABASE employee_db;

USE employee_db;


CREATE TABLE `department` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30)  NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
)

INSERT INTO `department` (`name`) VALUES ('boh');
INSERT INTO `department` (`id`, `name`) VALUES ('foh');
INSERT INTO `department` (`id`, `name`) VALUES ('salary');


CREATE TABLE `role` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `salary` decimal unsigned NOT NULL,
  `department_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`),
  KEY `dep_ind` (`department_id`),
  CONSTRAINT `fk_department` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`) ON DELETE CASCADE
) 

INSERT INTO `role` (`title`, `salary`, `department_id`) VALUES ('chef', '66789', 1);
INSERT INTO `role` (`title`, `salary`, `department_id`) VALUES ('cook', '23000', 1);
INSERT INTO `role` (`title`, `salary`, `department_id`) VALUES ('captain', '70000', 2);
INSERT INTO `role` (`title`, `salary`, `department_id`) VALUES ('server', '45000', 2);
INSERT INTO `role` (`title`, `salary`, `department_id`) VALUES ('gm', '72493', 3);
INSERT INTO `role` (`title`, `salary`, `department_id`) VALUES ('asst_gm', '50000', 3);


CREATE TABLE `employee` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `role_id` int unsigned NOT NULL,
  `manager_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_ind` (`role_id`),
  KEY `man_ind` (`manager_id`),
  CONSTRAINT `fk_manager` FOREIGN KEY (`manager_id`) REFERENCES `employee` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_role` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE CASCADE
)

INSERT INTO `employee` (`first_name`, `last_name`, `role_id`, `manager_id`) VALUES ('Cory', 'Kuhic', 1, 1);
INSERT INTO `employee` (`first_name`, `last_name`, `role_id`, `manager_id`) VALUES ('Aditya', 'Farrell', 2, NULL);
INSERT INTO `employee` (`first_name`, `last_name`, `role_id`, `manager_id`) VALUES ('Holden', 'Bins', 3, NULL);
INSERT INTO `employee` (`first_name`, `last_name`, `role_id`, `manager_id`) VALUES ('Jacquelyn', 'Klocko', 4, NULL);
INSERT INTO `employee` (`first_name`, `last_name`, `role_id`, `manager_id`) VALUES ('Roslyn', 'Farrell', 5, 5);
INSERT INTO `employee` (`first_name`, `last_name`, `role_id`, `manager_id`) VALUES ('Lavern', 'Breitenberg', 6, 6);

