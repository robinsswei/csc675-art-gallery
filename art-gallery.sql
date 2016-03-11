-- MySQL Workbench Forward Engineering

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
-- Table `art_gallery_schema`.`Artwork_Artist_Map`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `art_gallery_schema`.`Artwork_Artist_Map` (
  `artwork_artist_id` INT UNSIGNED NOT NULL,
  `artwork_id` INT UNSIGNED NOT NULL,
  `artist_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`artwork_artist_id`),
  UNIQUE INDEX `artwork_artist_id_UNIQUE` (`artwork_artist_id` ASC),
  INDEX `artwork_id_idx` (`artwork_id` ASC),
  CONSTRAINT `artwork_id`
    FOREIGN KEY (`artwork_id`)
    REFERENCES `art_gallery_schema`.`Artwork` (`artwork_id`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB
PACK_KEYS = Default;


-- -----------------------------------------------------
-- Table `art_gallery_schema`.`Country`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `art_gallery_schema`.`Country` (
  `country_id` INT UNSIGNED NOT NULL,
  `country_name` VARCHAR(50) NULL,
  PRIMARY KEY (`country_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `art_gallery_schema`.`Seller`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `art_gallery_schema`.`Seller` (
  `seller_id` INT UNSIGNED NOT NULL,
  `seller_type` ENUM('Person', 'Orangization') NULL,
  `organization_name` VARCHAR(50) NULL,
  `first_name` VARCHAR(20) NULL,
  `last_name` VARCHAR(20) NULL,
  `phone_number` VARCHAR(50) NULL,
  `address` VARCHAR(200) NULL,
  `email` VARCHAR(256) NULL,
  `country` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`seller_id`),
  INDEX `country_id_idx` (`country` ASC),
  CONSTRAINT `country_id`
    FOREIGN KEY (`country`)
    REFERENCES `art_gallery_schema`.`Country` (`country_id`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `art_gallery_schema`.`Artwork_Seller_Map`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `art_gallery_schema`.`Artwork_Seller_Map` (
  `artwork_seller_id` INT UNSIGNED NOT NULL,
  `artwork_id` INT UNSIGNED NOT NULL,
  `seller_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`artwork_seller_id`),
  UNIQUE INDEX `artwork_seller_id_UNIQUE` (`artwork_seller_id` ASC),
  INDEX `seller_id_idx` (`seller_id` ASC),
  CONSTRAINT `seller_id`
    FOREIGN KEY (`seller_id`)
    REFERENCES `art_gallery_schema`.`Seller` (`seller_id`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `art_gallery_schema`.`Image`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `art_gallery_schema`.`Image` (
  `img_id` INT UNSIGNED NOT NULL,
  `src` TEXT(250) NULL,
  PRIMARY KEY (`img_id`),
  UNIQUE INDEX `img_id_UNIQUE` (`img_id` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `art_gallery_schema`.`Artwork_Image_Map`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `art_gallery_schema`.`Artwork_Image_Map` (
  `artwork_image_id` INT UNSIGNED NOT NULL,
  `artwork_id` INT UNSIGNED NOT NULL,
  `image_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`artwork_image_id`),
  UNIQUE INDEX `artwork_image_id_UNIQUE` (`artwork_image_id` ASC),
  INDEX `image_id_idx` (`image_id` ASC),
  CONSTRAINT `image_id`
    FOREIGN KEY (`image_id`)
    REFERENCES `art_gallery_schema`.`Image` (`img_id`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `art_gallery_schema`.`Artwork`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `art_gallery_schema`.`Artwork` (
  `artwork_id` INT UNSIGNED NOT NULL,
  `title` TEXT NULL,
  `price` FLOAT NULL,
  `date` DATETIME NULL,
  `descprition` TEXT NULL,
  `period` VARCHAR(256) NULL,
  `edition` INT NULL,
  `type` VARCHAR(45) NULL,
  `size` VARCHAR(45) NULL,
  `authentic` ENUM('yes', 'no') NULL,
  `stock` INT NULL,
  `origin` TEXT NULL,
  `subject` VARCHAR(50) NULL,
  `artwork_artist_id` INT UNSIGNED NOT NULL,
  `artwork_seller_id` INT UNSIGNED NOT NULL,
  `artwork_image_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`artwork_id`),
  INDEX `artwork_artist_id_idx` (`artwork_artist_id` ASC),
  INDEX `artwork_seller_id_idx` (`artwork_seller_id` ASC),
  INDEX `artwork_image_id_idx` (`artwork_image_id` ASC),
  UNIQUE INDEX `artwork_id_UNIQUE` (`artwork_id` ASC),
  CONSTRAINT `artwork_artist_id`
    FOREIGN KEY (`artwork_artist_id`)
    REFERENCES `art_gallery_schema`.`Artwork_Artist_Map` (`artwork_artist_id`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `artwork_seller_id`
    FOREIGN KEY (`artwork_seller_id`)
    REFERENCES `art_gallery_schema`.`Artwork_Seller_Map` (`artwork_seller_id`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `artwork_image_id`
    FOREIGN KEY (`artwork_image_id`)
    REFERENCES `art_gallery_schema`.`Artwork_Image_Map` (`artwork_image_id`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `art_gallery_schema`.`Artist`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `art_gallery_schema`.`Artist` (
  `artist_id` INT UNSIGNED NOT NULL,
  `first_name` VARCHAR(50) NULL,
  `last_name` VARCHAR(50) NULL,
  `sex` ENUM('male', 'female') NULL,
  `status` ENUM('alive', 'dead') NULL,
  `data_of_birth` DATETIME NULL,
  `background` TEXT(250) NULL,
  `phone_number` VARCHAR(50) NULL,
  `email` VARCHAR(256) NULL,
  `country` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`artist_id`),
  UNIQUE INDEX `artist_id_UNIQUE` (`artist_id` ASC),
  INDEX `country_id_idx` (`country` ASC),
  CONSTRAINT `country_id`
    FOREIGN KEY (`country`)
    REFERENCES `art_gallery_schema`.`Country` (`country_id`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
