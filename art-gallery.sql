-- MySQL Workbench Forward Engineering
-- Last Modified by Robin, 04/07/2016

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema art_gallery_schema
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema art_gallery_schema
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `art_gallery_schema` DEFAULT CHARACTER SET utf8 ;
USE `art_gallery_schema` ;

-- -----------------------------------------------------
-- Table `art_gallery_schema`.`artist`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `art_gallery_schema`.`artist` (
  `artist_id` INT(10) UNSIGNED NOT NULL,
  `first_name` VARCHAR(45) NULL DEFAULT NULL,
  `last_name` VARCHAR(45) NULL DEFAULT NULL,
  `gender` ENUM('male', 'female') NULL DEFAULT NULL,
  `status` ENUM('alive', 'dead') NULL DEFAULT NULL,
  `country` VARCHAR(45) NULL DEFAULT NULL,
  `age` SMALLINT(3) NULL DEFAULT NULL,
  `background` TEXT NULL DEFAULT NULL,
  `phone_no` VARCHAR(50) NULL DEFAULT NULL,
  `email` VARCHAR(320) NULL DEFAULT NULL,
  PRIMARY KEY (`artist_id`),
  UNIQUE INDEX `artist_id_UNIQUE` (`artist_id` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `art_gallery_schema`.`image`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `art_gallery_schema`.`image` (
  `img_id` INT(10) UNSIGNED NOT NULL,
  `src` TEXT NULL DEFAULT NULL,
  PRIMARY KEY (`img_id`),
  UNIQUE INDEX `img_id_UNIQUE` (`img_id` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `art_gallery_schema`.`country`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `art_gallery_schema`.`country` (
  `country_id` INT(10) UNSIGNED NOT NULL,
  `country_name` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`country_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `art_gallery_schema`.`seller`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `art_gallery_schema`.`seller` (
  `seller_id` INT(10) UNSIGNED NOT NULL,
  `seller_type` ENUM('Person', 'Orangization') NULL DEFAULT NULL,
  `organization_name` VARCHAR(50) NULL DEFAULT NULL,
  `first_name` VARCHAR(20) NULL DEFAULT NULL,
  `last_name` VARCHAR(20) NULL DEFAULT NULL,
  `phone_number` VARCHAR(50) NULL DEFAULT NULL,
  `address` VARCHAR(200) NULL DEFAULT NULL,
  `email` VARCHAR(256) NULL DEFAULT NULL,
  `country` INT(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`seller_id`),
  INDEX `country_id_idx` (`country` ASC),
  CONSTRAINT `country_id`
    FOREIGN KEY (`country`)
    REFERENCES `art_gallery_schema`.`country` (`country_id`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `art_gallery_schema`.`artwork`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `art_gallery_schema`.`artwork` (
  `artwork_id` INT(10) UNSIGNED NOT NULL,
  `title` TEXT NULL DEFAULT NULL,
  `price` FLOAT NULL DEFAULT NULL,
  `date` DATETIME NULL DEFAULT NULL,
  `descprition` TEXT NULL DEFAULT NULL,
  `period` VARCHAR(256) NULL DEFAULT NULL,
  `edition` INT(11) NULL DEFAULT NULL,
  `type` VARCHAR(45) NULL DEFAULT NULL,
  `size` VARCHAR(45) NULL DEFAULT NULL,
  `authentic` ENUM('yes', 'no') NULL DEFAULT NULL,
  `stock` INT(11) NULL DEFAULT NULL,
  `origin` TEXT NULL DEFAULT NULL,
  `subject` VARCHAR(50) NULL DEFAULT NULL,
  `artwork_artist_id` INT(10) UNSIGNED NOT NULL,
  `artwork_seller_id` INT(10) UNSIGNED NOT NULL,
  `artwork_image_id` INT(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`artwork_id`),
  UNIQUE INDEX `artwork_id_UNIQUE` (`artwork_id` ASC),
  INDEX `artwork_artist_id_idx` (`artwork_artist_id` ASC),
  INDEX `artwork_seller_id_idx` (`artwork_seller_id` ASC),
  INDEX `artwork_image_id_idx` (`artwork_image_id` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `art_gallery_schema`.`artwork_artist_map`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `art_gallery_schema`.`artwork_artist_map` (
  `artwork_artist_id` INT(10) UNSIGNED NOT NULL,
  `artwork_id` INT(10) UNSIGNED NOT NULL,
  `artist_id` INT(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`artwork_artist_id`),
  UNIQUE INDEX `artwork_artist_id_UNIQUE` (`artwork_artist_id` ASC),
  INDEX `artwork_id_idx` (`artwork_id` ASC),
  CONSTRAINT `artwork_id`
    FOREIGN KEY (`artwork_id`)
    REFERENCES `art_gallery_schema`.`artwork` (`artwork_id`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `art_gallery_schema`.`artwork_image_map`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `art_gallery_schema`.`artwork_image_map` (
  `artwork_image_id` INT(10) UNSIGNED NOT NULL,
  `artwork_id` INT(10) UNSIGNED NOT NULL,
  `image_id` INT(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`artwork_image_id`),
  UNIQUE INDEX `artwork_image_id_UNIQUE` (`artwork_image_id` ASC),
  INDEX `image_id_idx` (`image_id` ASC),
  CONSTRAINT `image_id`
    FOREIGN KEY (`image_id`)
    REFERENCES `art_gallery_schema`.`image` (`img_id`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `art_gallery_schema`.`artwork_seller_map`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `art_gallery_schema`.`artwork_seller_map` (
  `artwork_seller_id` INT(10) UNSIGNED NOT NULL,
  `artwork_id` INT(10) UNSIGNED NOT NULL,
  `seller_id` INT(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`artwork_seller_id`),
  UNIQUE INDEX `artwork_seller_id_UNIQUE` (`artwork_seller_id` ASC),
  INDEX `seller_id_idx` (`seller_id` ASC),
  CONSTRAINT `seller_id`
    FOREIGN KEY (`seller_id`)
    REFERENCES `art_gallery_schema`.`seller` (`seller_id`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Update Table `art_gallery_schema`.`artwork`
-- -----------------------------------------------------
ALTER TABLE `art_gallery_schema`.`artwork` 
  ADD CONSTRAINT `artwork_artist_id`
    FOREIGN KEY (`artwork_artist_id`)
    REFERENCES `art_gallery_schema`.`artwork_artist_map` (`artwork_artist_id`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  ADD CONSTRAINT `artwork_image_id`
    FOREIGN KEY (`artwork_image_id`)
    REFERENCES `art_gallery_schema`.`artwork_image_map` (`artwork_image_id`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  ADD CONSTRAINT `artwork_seller_id`
    FOREIGN KEY (`artwork_seller_id`)
    REFERENCES `art_gallery_schema`.`artwork_seller_map` (`artwork_seller_id`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE;
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
