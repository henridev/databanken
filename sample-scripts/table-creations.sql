CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8;

CREATE TABLE IF NOT EXISTS `mydb`.`category` (
  `category_id` INT NOT NULL,
  `name` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`category_id`));
  
  CREATE TABLE IF NOT EXISTS `mydb`.`products` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `category_id` INT NOT NULL,
  `price` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_products_1_idx` (`category_id` ASC) VISIBLE,
  CONSTRAINT `fk_products_1`
    FOREIGN KEY (`category_id`)
    REFERENCES `mydb`.`category` (`category_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `mydb`.`user` (
  `username` VARCHAR(16) NOT NULL,
  `email` VARCHAR(255) NULL,
  `password` VARCHAR(32) NOT NULL,
  `create_time` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP);