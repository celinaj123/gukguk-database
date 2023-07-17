-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2022 at 02:56 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gukguk`
--

-- --------------------------------------------------------

--
-- Table structure for table `adoptiondetail`
--

CREATE TABLE `adoptiondetail` (
  `adoption_id` char(5) NOT NULL,
  `dog_id` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adoptiondetail`
--

INSERT INTO `adoptiondetail` (`adoption_id`, `dog_id`) VALUES
('AD001', 'DO060'),
('AD002', 'DO011'),
('AD002', 'DO067'),
('AD003', 'DO029'),
('AD004', 'DO050'),
('AD004', 'DO073'),
('AD005', 'DO023'),
('AD005', 'DO027'),
('AD005', 'DO048'),
('AD006', 'DO006'),
('AD007', 'DO011'),
('AD008', 'DO031'),
('AD008', 'DO072'),
('AD009', 'DO022'),
('AD010', 'DO019'),
('AD010', 'DO045'),
('AD010', 'DO073'),
('AD011', 'DO026'),
('AD011', 'DO042'),
('AD012', 'DO072'),
('AD013', 'DO041'),
('AD014', 'DO031'),
('AD014', 'DO034'),
('AD015', 'DO032'),
('AD015', 'DO053');

-- --------------------------------------------------------

--
-- Table structure for table `adoptionheader`
--

CREATE TABLE `adoptionheader` (
  `adoption_id` char(5) NOT NULL CHECK (`adoption_id` regexp '^AD[0-9]{3}$'),
  `user_id` char(5) NOT NULL,
  `staff_id` char(5) NOT NULL,
  `adoption_status` varchar(10) NOT NULL,
  `adoption_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adoptionheader`
--

INSERT INTO `adoptionheader` (`adoption_id`, `user_id`, `staff_id`, `adoption_status`, `adoption_date`) VALUES
('AD001', 'US006', 'ST006', 'Success', '2022-10-23'),
('AD002', 'US010', 'ST004', 'Success', '2022-10-18'),
('AD003', 'US010', 'ST005', 'Pending', '2022-10-18'),
('AD004', 'US002', 'ST008', 'Success', '2022-10-19'),
('AD005', 'US009', 'ST005', 'Cancelled', '2022-10-24'),
('AD006', 'US004', 'ST006', 'Cancelled', '2022-10-26'),
('AD007', 'US005', 'ST001', 'Success', '2022-10-18'),
('AD008', 'US008', 'ST007', 'Cancelled', '2022-10-17'),
('AD009', 'US006', 'ST009', 'Pending', '2022-10-21'),
('AD010', 'US010', 'ST010', 'Success', '2022-10-19'),
('AD011', 'US004', 'ST006', 'Pending', '2022-10-20'),
('AD012', 'US010', 'ST009', 'Cancelled', '2022-10-22'),
('AD013', 'US010', 'ST004', 'Cancelled', '2022-10-27'),
('AD014', 'US001', 'ST008', 'Pending', '2022-10-20'),
('AD015', 'US009', 'ST004', 'Pending', '2022-10-18');

-- --------------------------------------------------------

--
-- Table structure for table `breed`
--

CREATE TABLE `breed` (
  `breed_id` char(5) NOT NULL CHECK (`breed_id` regexp '^BR[0-9]{3}$'),
  `breed_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `breed`
--

INSERT INTO `breed` (`breed_id`, `breed_name`) VALUES
('BR001', 'Airedale Terrier'),
('BR002', 'Afghan Hound'),
('BR003', 'Akita'),
('BR004', 'Alaskan Malamute'),
('BR005', 'American Cocker Spaniel'),
('BR006', 'Australian Cattle'),
('BR007', 'Australian Kelpie'),
('BR008', 'Australian Shepherd'),
('BR009', 'Australian Silky Terrier'),
('BR010', 'Australian Stumpy Tail Cattle Dog'),
('BR011', 'Australian Terrier'),
('BR012', 'Basenji'),
('BR013', 'Basset Fauve De Bretagne'),
('BR014', 'Basset Hound'),
('BR015', 'Beagle'),
('BR016', 'Bearded Collie'),
('BR017', 'Bedlington Terrier'),
('BR018', 'Belgian Shepherd Dog'),
('BR019', 'Bernese Mountain'),
('BR020', 'Bichon Frise'),
('BR021', 'Bloodhound'),
('BR022', 'Border Collie'),
('BR023', 'Border Terrier'),
('BR024', 'Borzoi'),
('BR025', 'Boston Terrier'),
('BR026', 'Bouvier Des Flandres'),
('BR027', 'Boxer'),
('BR028', 'Briard'),
('BR029', 'British Bulldog'),
('BR030', 'Brittany'),
('BR031', 'Bull Terrier'),
('BR032', 'Bullmastiff'),
('BR033', 'Cairn Terrier'),
('BR034', 'Cavalier King Charles Spaniel'),
('BR035', 'Chesapeake Bay Retriever'),
('BR036', 'Chihuahua'),
('BR037', 'Chinese Crested Dog'),
('BR038', 'Chow Chow'),
('BR039', 'Clumber Spaniel'),
('BR040', 'Cocker Spaniel'),
('BR041', 'Collie'),
('BR042', 'Curly Coated Retriever'),
('BR043', 'Dachshund'),
('BR044', 'Dalmatian'),
('BR045', 'Dandie Dinmont Terrier'),
('BR046', 'Deerhound'),
('BR047', 'Dobermann'),
('BR048', 'Dogue De Bordeaux'),
('BR049', 'English Setter'),
('BR050', 'English Springer Spaniel'),
('BR051', 'English Toy Terrier'),
('BR052', 'Field Spaniel'),
('BR053', 'Finnish Spitz'),
('BR054', 'Flat Coated Retriever '),
('BR055', 'Fox Terrier'),
('BR056', 'Foxhound'),
('BR057', 'French Bulldog'),
('BR058', 'German Shepherd'),
('BR059', 'German Short-Haired Pointer'),
('BR060', 'German Wirehaired Pointer'),
('BR061', 'Golden Retriever'),
('BR062', 'Gordon Setter'),
('BR063', 'Great Dane'),
('BR064', 'Greyhound'),
('BR065', 'Griffon Bruxellois'),
('BR066', 'Hungarian Vizsla'),
('BR067', 'Irish Setter'),
('BR068', 'Irish Terrier'),
('BR069', 'Irish Water Spaniel'),
('BR070', 'Irish Wolfhound'),
('BR071', 'Italian Greyhound'),
('BR072', 'Jack Russell'),
('BR073', 'Akita'),
('BR074', 'Japanese Chin'),
('BR075', 'Japanese Spitz'),
('BR076', 'Keeshond'),
('BR077', 'King Charles Spaniel '),
('BR078', 'Labrador'),
('BR079', 'Lakeland Terrier'),
('BR080', 'Lhasa Apso'),
('BR081', 'Lowchen'),
('BR082', 'Maltese'),
('BR083', 'Maremma Sheepdog'),
('BR084', 'Mastiff'),
('BR085', 'Miniature Pinscher'),
('BR086', 'Munsterlander'),
('BR087', 'Newfoundland'),
('BR088', 'Norfolk Terrier'),
('BR089', 'Norwich Terrier'),
('BR090', 'Nova Scotia Duck Tolling Retriever'),
('BR091', 'Old English Sheep'),
('BR092', 'Papillon'),
('BR093', 'Pekingese'),
('BR094', 'Petit Basset Griffon Vendéen'),
('BR095', 'Pharaoh Hound'),
('BR096', 'Pointer'),
('BR097', 'Pomeranian'),
('BR098', 'Poodle'),
('BR099', 'Portuguese Water Dog'),
('BR100', 'Pug'),
('BR101', 'Puli'),
('BR102', 'Pyrenean Mountain'),
('BR103', 'Rhodesian Ridgeback'),
('BR104', 'Rottweiler'),
('BR105', 'Saint Bernard'),
('BR106', 'Saluki'),
('BR107', 'Samoyed'),
('BR108', 'Schipperke'),
('BR109', 'Schnauzer'),
('BR110', 'Scottish Terrier'),
('BR111', 'Sealyham Terrier'),
('BR112', 'Shar-Pei'),
('BR113', 'Shetland Sheep'),
('BR114', 'Shih Tzu'),
('BR115', 'Siberian Husky'),
('BR116', 'Skye Terrier'),
('BR117', 'Soft-Coated'),
('BR118', 'Staffordshire Bull Terrier'),
('BR119', 'Sussex Spaniel'),
('BR120', 'Swedish Vallhund'),
('BR121', 'Tibetan Spaniel'),
('BR122', 'Tibetan Terrier'),
('BR123', 'Weimaraner'),
('BR124', 'Welsh Corgi'),
('BR125', 'Welsh Springer Spaniel'),
('BR126', 'West Highland White Terrier'),
('BR127', 'Whippet'),
('BR128', 'Yorkshire Terrier');

-- --------------------------------------------------------

--
-- Table structure for table `dog`
--

CREATE TABLE `dog` (
  `dog_id` char(5) NOT NULL CHECK (`dog_id` regexp '^DO[0-9]{3}$'),
  `breed_id` char(5) NOT NULL,
  `dog_name` varchar(50) NOT NULL,
  `dog_gender` varchar(10) NOT NULL,
  `dog_description` varchar(255) NOT NULL,
  `dog_birth_date` date NOT NULL,
  `dog_rescued_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dog`
--

INSERT INTO `dog` (`dog_id`, `breed_id`, `dog_name`, `dog_gender`, `dog_description`, `dog_birth_date`, `dog_rescued_date`) VALUES
('DO001', 'BR098', 'Max', 'female', 'Max is the happiest when they have a job to do. They can be wonderful family companions if their intelligence and energy are channeled into dog sports or activities.', '2020-11-13', '2020-12-24'),
('DO002', 'BR042', 'Kobe', 'male', 'Small, compact, and hardy, Kobe are active companions for kids and adults alike. They are merry and fun loving, but being hounds, they can also be stubborn and require patient, creative training techniques.', '2020-02-22', '2020-05-11'),
('DO003', 'BR077', 'Oscar', 'male', 'Oscar is the happiest when they have a job to do. They can be wonderful family companions if their intelligence and energy are channeled into dog sports or activities.', '2013-06-23', '2014-02-02'),
('DO004', 'BR030', 'Cooper', 'female', 'Small, compact, and hardy, Cooper are active companions for kids and adults alike. They are merry and fun loving, but being hounds, they can also be stubborn and require patient, creative training techniques.', '2013-06-26', '2019-09-14'),
('DO005', 'BR029', 'Oakley', 'male', 'Oakley is the happiest when they have a job to do. They can be wonderful family companions if their intelligence and energy are channeled into dog sports or activities.', '2017-07-29', '2017-10-16'),
('DO006', 'BR054', 'Mac', 'male', 'Small, compact, and hardy, Mac are active companions for kids and adults alike. They are merry and fun loving, but being hounds, they can also be stubborn and require patient, creative training techniques.', '2018-07-08', '2021-02-04'),
('DO007', 'BR053', 'Charlie', 'female', 'Charlie is the happiest when they have a job to do. They can be wonderful family companions if their intelligence and energy are channeled into dog sports or activities.', '2017-06-05', '2021-04-25'),
('DO008', 'BR121', 'Rex', 'male', 'Small, compact, and hardy, Rex are active companions for kids and adults alike. They are merry and fun loving, but being hounds, they can also be stubborn and require patient, creative training techniques.', '2018-02-26', '2018-06-02'),
('DO009', 'BR085', 'Rudy', 'male', 'Rudy is the happiest when they have a job to do. They can be wonderful family companions if their intelligence and energy are channeled into dog sports or activities.', '2015-09-09', '2020-12-23'),
('DO010', 'BR096', 'Teddy', 'female', 'Small, compact, and hardy, Teddy are active companions for kids and adults alike. They are merry and fun loving, but being hounds, they can also be stubborn and require patient, creative training techniques.', '2015-05-14', '2017-02-08'),
('DO011', 'BR118', 'Bailey', 'male', 'Bailey is the happiest when they have a job to do. They can be wonderful family companions if their intelligence and energy are channeled into dog sports or activities.', '2019-07-04', '2021-12-28'),
('DO012', 'BR098', 'Chip', 'male', 'Small, compact, and hardy, Chip are active companions for kids and adults alike. They are merry and fun loving, but being hounds, they can also be stubborn and require patient, creative training techniques.', '2016-03-18', '2020-02-15'),
('DO013', 'BR074', 'Bear', 'female', 'Bear is the happiest when they have a job to do. They can be wonderful family companions if their intelligence and energy are channeled into dog sports or activities.', '2017-04-03', '2020-10-13'),
('DO014', 'BR128', 'Cash', 'male', 'Small, compact, and hardy, Cash are active companions for kids and adults alike. They are merry and fun loving, but being hounds, they can also be stubborn and require patient, creative training techniques.', '2019-01-09', '2022-02-24'),
('DO015', 'BR118', 'Walter', 'male', 'Walter is the happiest when they have a job to do. They can be wonderful family companions if their intelligence and energy are channeled into dog sports or activities.', '2013-08-22', '2017-01-01'),
('DO016', 'BR022', 'Milo', 'female', 'Small, compact, and hardy, Milo are active companions for kids and adults alike. They are merry and fun loving, but being hounds, they can also be stubborn and require patient, creative training techniques.', '2017-09-03', '2017-12-01'),
('DO017', 'BR128', 'Jasper', 'male', 'Jasper is the happiest when they have a job to do. They can be wonderful family companions if their intelligence and energy are channeled into dog sports or activities.', '2021-11-19', '2022-07-07'),
('DO018', 'BR057', 'Blaze', 'male', 'Small, compact, and hardy, Blaze are active companions for kids and adults alike. They are merry and fun loving, but being hounds, they can also be stubborn and require patient, creative training techniques.', '2018-10-14', '2018-11-21'),
('DO019', 'BR087', 'Bentley', 'female', 'Bentley is the happiest when they have a job to do. They can be wonderful family companions if their intelligence and energy are channeled into dog sports or activities.', '2018-04-22', '2022-04-16'),
('DO020', 'BR020', 'Bo', 'male', 'Small, compact, and hardy, Bo are active companions for kids and adults alike. They are merry and fun loving, but being hounds, they can also be stubborn and require patient, creative training techniques.', '2016-08-07', '2019-01-11'),
('DO021', 'BR089', 'Ozzy', 'male', 'Ozzy is the happiest when they have a job to do. They can be wonderful family companions if their intelligence and energy are channeled into dog sports or activities.', '2016-02-13', '2022-05-26'),
('DO022', 'BR003', 'Ollie', 'female', 'Small, compact, and hardy, Ollie are active companions for kids and adults alike. They are merry and fun loving, but being hounds, they can also be stubborn and require patient, creative training techniques.', '2013-04-02', '2017-04-17'),
('DO023', 'BR089', 'Boomer', 'male', 'Boomer is the happiest when they have a job to do. They can be wonderful family companions if their intelligence and energy are channeled into dog sports or activities.', '2016-06-14', '2019-08-17'),
('DO024', 'BR098', 'Odin', 'male', 'Small, compact, and hardy, Odin are active companions for kids and adults alike. They are merry and fun loving, but being hounds, they can also be stubborn and require patient, creative training techniques.', '2016-07-25', '2017-11-01'),
('DO025', 'BR098', 'Buddy', 'female', 'Buddy is the happiest when they have a job to do. They can be wonderful family companions if their intelligence and energy are channeled into dog sports or activities.', '2022-05-09', '2022-06-22'),
('DO026', 'BR103', 'Lucky', 'male', 'Small, compact, and hardy, Lucky are active companions for kids and adults alike. They are merry and fun loving, but being hounds, they can also be stubborn and require patient, creative training techniques.', '2016-06-07', '2022-10-19'),
('DO027', 'BR043', 'Axel', 'male', 'Axel is the happiest when they have a job to do. They can be wonderful family companions if their intelligence and energy are channeled into dog sports or activities.', '2018-08-08', '2019-09-12'),
('DO028', 'BR002', 'Rocky', 'female', 'Small, compact, and hardy, Rocky are active companions for kids and adults alike. They are merry and fun loving, but being hounds, they can also be stubborn and require patient, creative training techniques.', '2016-04-10', '2021-10-04'),
('DO029', 'BR030', 'Ruger', 'male', 'Ruger is the happiest when they have a job to do. They can be wonderful family companions if their intelligence and energy are channeled into dog sports or activities.', '2014-06-10', '2017-05-20'),
('DO030', 'BR122', 'Bruce', 'male', 'Small, compact, and hardy, Bruce are active companions for kids and adults alike. They are merry and fun loving, but being hounds, they can also be stubborn and require patient, creative training techniques.', '2021-01-25', '2022-09-02'),
('DO031', 'BR070', 'Leo', 'female', 'Leo is the happiest when they have a job to do. They can be wonderful family companions if their intelligence and energy are channeled into dog sports or activities.', '2015-05-05', '2020-01-02'),
('DO032', 'BR118', 'Beau', 'male', 'Small, compact, and hardy, Beau are active companions for kids and adults alike. They are merry and fun loving, but being hounds, they can also be stubborn and require patient, creative training techniques.', '2021-10-08', '2022-08-05'),
('DO033', 'BR121', 'Odie', 'male', 'Odie is the happiest when they have a job to do. They can be wonderful family companions if their intelligence and energy are channeled into dog sports or activities.', '2014-05-03', '2020-03-15'),
('DO034', 'BR027', 'Zeus', 'female', 'Small, compact, and hardy, Zeus are active companions for kids and adults alike. They are merry and fun loving, but being hounds, they can also be stubborn and require patient, creative training techniques.', '2012-11-23', '2014-01-26'),
('DO035', 'BR014', 'Baxter', 'male', 'Baxter is the happiest when they have a job to do. They can be wonderful family companions if their intelligence and energy are channeled into dog sports or activities.', '2019-06-06', '2020-09-01'),
('DO036', 'BR092', 'Arlo', 'male', 'Small, compact, and hardy, Arlo are active companions for kids and adults alike. They are merry and fun loving, but being hounds, they can also be stubborn and require patient, creative training techniques.', '2013-09-04', '2018-11-15'),
('DO037', 'BR021', 'Duke', 'female', 'Duke is the happiest when they have a job to do. They can be wonderful family companions if their intelligence and energy are channeled into dog sports or activities.', '2013-09-19', '2022-10-01'),
('DO038', 'BR080', 'Oreo', 'male', 'Small, compact, and hardy, Oreo are active companions for kids and adults alike. They are merry and fun loving, but being hounds, they can also be stubborn and require patient, creative training techniques.', '2019-07-26', '2022-08-20'),
('DO039', 'BR097', 'Echo', 'male', 'Echo is the happiest when they have a job to do. They can be wonderful family companions if their intelligence and energy are channeled into dog sports or activities.', '2016-02-23', '2019-03-27'),
('DO040', 'BR070', 'Finn', 'female', 'Small, compact, and hardy, Finn are active companions for kids and adults alike. They are merry and fun loving, but being hounds, they can also be stubborn and require patient, creative training techniques.', '2013-10-27', '2014-04-24'),
('DO041', 'BR053', 'Gunner', 'male', 'Gunner is the happiest when they have a job to do. They can be wonderful family companions if their intelligence and energy are channeled into dog sports or activities.', '2020-06-06', '2021-10-23'),
('DO042', 'BR029', 'Tank', 'male', 'Small, compact, and hardy, Tank are active companions for kids and adults alike. They are merry and fun loving, but being hounds, they can also be stubborn and require patient, creative training techniques.', '2020-11-18', '2021-03-17'),
('DO043', 'BR089', 'Apollo', 'female', 'Apollo is the happiest when they have a job to do. They can be wonderful family companions if their intelligence and energy are channeled into dog sports or activities.', '2018-07-14', '2019-03-04'),
('DO044', 'BR023', 'Henry', 'male', 'Small, compact, and hardy, Henry are active companions for kids and adults alike. They are merry and fun loving, but being hounds, they can also be stubborn and require patient, creative training techniques.', '2017-02-01', '2021-02-18'),
('DO045', 'BR052', 'Romeo', 'male', 'Romeo is the happiest when they have a job to do. They can be wonderful family companions if their intelligence and energy are channeled into dog sports or activities.', '2015-07-14', '2021-07-22'),
('DO046', 'BR033', 'Murphy', 'female', 'Small, compact, and hardy, Murphy are active companions for kids and adults alike. They are merry and fun loving, but being hounds, they can also be stubborn and require patient, creative training techniques.', '2018-05-22', '2020-03-06'),
('DO047', 'BR046', 'Simba', 'male', 'Simba is the happiest when they have a job to do. They can be wonderful family companions if their intelligence and energy are channeled into dog sports or activities.', '2021-06-25', '2022-08-02'),
('DO048', 'BR094', 'Porter', 'male', 'Small, compact, and hardy, Porter are active companions for kids and adults alike. They are merry and fun loving, but being hounds, they can also be stubborn and require patient, creative training techniques.', '2017-11-05', '2020-03-16'),
('DO049', 'BR114', 'Diesel', 'female', 'Diesel is the happiest when they have a job to do. They can be wonderful family companions if their intelligence and energy are channeled into dog sports or activities.', '2022-10-19', '2022-10-25'),
('DO050', 'BR018', 'George', 'male', 'Small, compact, and hardy, George are active companions for kids and adults alike. They are merry and fun loving, but being hounds, they can also be stubborn and require patient, creative training techniques.', '2017-02-06', '2021-12-26'),
('DO051', 'BR109', 'Harley', 'male', 'Harley is the happiest when they have a job to do. They can be wonderful family companions if their intelligence and energy are channeled into dog sports or activities.', '2017-01-30', '2018-06-10'),
('DO052', 'BR128', 'Toby', 'female', 'Small, compact, and hardy, Toby are active companions for kids and adults alike. They are merry and fun loving, but being hounds, they can also be stubborn and require patient, creative training techniques.', '2014-03-31', '2020-08-14'),
('DO053', 'BR111', 'Coco', 'male', 'Coco is the happiest when they have a job to do. They can be wonderful family companions if their intelligence and energy are channeled into dog sports or activities.', '2014-09-11', '2016-02-22'),
('DO054', 'BR053', 'Otis', 'male', 'Small, compact, and hardy, Otis are active companions for kids and adults alike. They are merry and fun loving, but being hounds, they can also be stubborn and require patient, creative training techniques.', '2021-11-18', '2022-06-17'),
('DO055', 'BR007', 'Louie', 'female', 'Louie is the happiest when they have a job to do. They can be wonderful family companions if their intelligence and energy are channeled into dog sports or activities.', '2021-04-01', '2021-06-14'),
('DO056', 'BR070', 'Rocket', 'male', 'Small, compact, and hardy, Rocket are active companions for kids and adults alike. They are merry and fun loving, but being hounds, they can also be stubborn and require patient, creative training techniques.', '2012-12-29', '2015-08-05'),
('DO057', 'BR073', 'Rocco', 'male', 'Rocco is the happiest when they have a job to do. They can be wonderful family companions if their intelligence and energy are channeled into dog sports or activities.', '2017-04-12', '2017-09-27'),
('DO058', 'BR004', 'Tucker', 'female', 'Small, compact, and hardy, Tucker are active companions for kids and adults alike. They are merry and fun loving, but being hounds, they can also be stubborn and require patient, creative training techniques.', '2016-01-12', '2021-03-19'),
('DO059', 'BR021', 'Ziggy', 'male', 'Ziggy is the happiest when they have a job to do. They can be wonderful family companions if their intelligence and energy are channeled into dog sports or activities.', '2016-04-21', '2022-02-27'),
('DO060', 'BR082', 'Remi', 'male', 'Small, compact, and hardy, Remi are active companions for kids and adults alike. They are merry and fun loving, but being hounds, they can also be stubborn and require patient, creative training techniques.', '2014-08-12', '2015-01-26'),
('DO061', 'BR098', 'Jax', 'female', 'Jax is the happiest when they have a job to do. They can be wonderful family companions if their intelligence and energy are channeled into dog sports or activities.', '2018-09-25', '2020-12-24'),
('DO062', 'BR035', 'Prince', 'male', 'Small, compact, and hardy, Prince are active companions for kids and adults alike. They are merry and fun loving, but being hounds, they can also be stubborn and require patient, creative training techniques.', '2016-06-18', '2022-09-27'),
('DO063', 'BR035', 'Whiskey', 'male', 'Whiskey is the happiest when they have a job to do. They can be wonderful family companions if their intelligence and energy are channeled into dog sports or activities.', '2014-09-24', '2015-01-22'),
('DO064', 'BR009', 'Ace', 'female', 'Small, compact, and hardy, Ace are active companions for kids and adults alike. They are merry and fun loving, but being hounds, they can also be stubborn and require patient, creative training techniques.', '2015-06-19', '2021-04-02'),
('DO065', 'BR020', 'Shadow', 'male', 'Shadow is the happiest when they have a job to do. They can be wonderful family companions if their intelligence and energy are channeled into dog sports or activities.', '2019-03-02', '2019-10-14'),
('DO066', 'BR006', 'Sam', 'male', 'Small, compact, and hardy, Sam are active companions for kids and adults alike. They are merry and fun loving, but being hounds, they can also be stubborn and require patient, creative training techniques.', '2016-07-13', '2017-02-25'),
('DO067', 'BR032', 'Jack', 'female', 'Jack is the happiest when they have a job to do. They can be wonderful family companions if their intelligence and energy are channeled into dog sports or activities.', '2019-02-02', '2019-06-30'),
('DO068', 'BR056', 'Riley', 'male', 'Small, compact, and hardy, Riley are active companions for kids and adults alike. They are merry and fun loving, but being hounds, they can also be stubborn and require patient, creative training techniques.', '2021-08-07', '2021-09-29'),
('DO069', 'BR021', 'Buster', 'male', 'Buster is the happiest when they have a job to do. They can be wonderful family companions if their intelligence and energy are channeled into dog sports or activities.', '2022-04-12', '2022-08-11'),
('DO070', 'BR078', 'Koda', 'female', 'Small, compact, and hardy, Koda are active companions for kids and adults alike. They are merry and fun loving, but being hounds, they can also be stubborn and require patient, creative training techniques.', '2016-09-11', '2022-06-21'),
('DO071', 'BR055', 'Copper', 'male', 'Copper is the happiest when they have a job to do. They can be wonderful family companions if their intelligence and energy are channeled into dog sports or activities.', '2022-10-04', '2022-10-08'),
('DO072', 'BR124', 'Bubba', 'male', 'Small, compact, and hardy, Bubba are active companions for kids and adults alike. They are merry and fun loving, but being hounds, they can also be stubborn and require patient, creative training techniques.', '2021-02-09', '2021-05-23'),
('DO073', 'BR050', 'Winston', 'female', 'Winston is the happiest when they have a job to do. They can be wonderful family companions if their intelligence and energy are channeled into dog sports or activities.', '2016-02-23', '2017-12-15'),
('DO074', 'BR047', 'Luke', 'male', 'Small, compact, and hardy, Luke are active companions for kids and adults alike. They are merry and fun loving, but being hounds, they can also be stubborn and require patient, creative training techniques.', '2022-01-28', '2022-05-26'),
('DO075', 'BR057', 'Jake', 'male', 'Jake is the happiest when they have a job to do. They can be wonderful family companions if their intelligence and energy are channeled into dog sports or activities.', '2014-05-29', '2016-09-20'),
('DO076', 'BR020', 'Oliver', 'female', 'Small, compact, and hardy, Oliver are active companions for kids and adults alike. They are merry and fun loving, but being hounds, they can also be stubborn and require patient, creative training techniques.', '2021-10-09', '2021-11-20'),
('DO077', 'BR053', 'Marley', 'male', 'Marley is the happiest when they have a job to do. They can be wonderful family companions if their intelligence and energy are channeled into dog sports or activities.', '2020-08-17', '2022-08-19'),
('DO078', 'BR077', 'Benny', 'male', 'Small, compact, and hardy, Benny are active companions for kids and adults alike. They are merry and fun loving, but being hounds, they can also be stubborn and require patient, creative training techniques.', '2014-03-07', '2017-11-27'),
('DO079', 'BR041', 'Gus', 'female', 'Gus is the happiest when they have a job to do. They can be wonderful family companions if their intelligence and energy are channeled into dog sports or activities.', '2021-09-05', '2022-10-14'),
('DO080', 'BR098', 'Zeke', 'male', 'Small, compact, and hardy, Zeke are active companions for kids and adults alike. They are merry and fun loving, but being hounds, they can also be stubborn and require patient, creative training techniques.', '2021-10-16', '2022-04-10'),
('DO081', 'BR091', 'Bowie', 'male', 'Bowie is the happiest when they have a job to do. They can be wonderful family companions if their intelligence and energy are channeled into dog sports or activities.', '2016-08-22', '2022-05-03'),
('DO082', 'BR022', 'Loki', 'female', 'Small, compact, and hardy, Loki are active companions for kids and adults alike. They are merry and fun loving, but being hounds, they can also be stubborn and require patient, creative training techniques.', '2022-03-24', '2022-09-12'),
('DO083', 'BR121', 'Levi', 'male', 'Levi is the happiest when they have a job to do. They can be wonderful family companions if their intelligence and energy are channeled into dog sports or activities.', '2020-11-30', '2022-08-18'),
('DO084', 'BR112', 'Dozer', 'male', 'Small, compact, and hardy, Dozer are active companions for kids and adults alike. They are merry and fun loving, but being hounds, they can also be stubborn and require patient, creative training techniques.', '2018-01-06', '2020-04-23'),
('DO085', 'BR118', 'Moose', 'female', 'Moose is the happiest when they have a job to do. They can be wonderful family companions if their intelligence and energy are channeled into dog sports or activities.', '2020-03-26', '2020-09-02'),
('DO086', 'BR031', 'Benji', 'male', 'Small, compact, and hardy, Benji are active companions for kids and adults alike. They are merry and fun loving, but being hounds, they can also be stubborn and require patient, creative training techniques.', '2014-02-05', '2016-05-13'),
('DO087', 'BR113', 'Rusty', 'male', 'Rusty is the happiest when they have a job to do. They can be wonderful family companions if their intelligence and energy are channeled into dog sports or activities.', '2015-03-21', '2021-01-18'),
('DO088', 'BR084', 'Archie', 'female', 'Small, compact, and hardy, Archie are active companions for kids and adults alike. They are merry and fun loving, but being hounds, they can also be stubborn and require patient, creative training techniques.', '2022-09-24', '2022-10-04'),
('DO089', 'BR028', 'Ranger', 'male', 'Ranger is the happiest when they have a job to do. They can be wonderful family companions if their intelligence and energy are channeled into dog sports or activities.', '2012-12-25', '2019-11-25'),
('DO090', 'BR088', 'Joey', 'male', 'Small, compact, and hardy, Joey are active companions for kids and adults alike. They are merry and fun loving, but being hounds, they can also be stubborn and require patient, creative training techniques.', '2019-10-28', '2021-03-22'),
('DO091', 'BR080', 'Bandit', 'female', 'Bandit is the happiest when they have a job to do. They can be wonderful family companions if their intelligence and energy are channeled into dog sports or activities.', '2015-09-27', '2021-02-23'),
('DO092', 'BR105', 'Remy', 'male', 'Small, compact, and hardy, Remy are active companions for kids and adults alike. They are merry and fun loving, but being hounds, they can also be stubborn and require patient, creative training techniques.', '2017-11-19', '2019-10-24'),
('DO093', 'BR077', 'Kylo', 'male', 'Kylo is the happiest when they have a job to do. They can be wonderful family companions if their intelligence and energy are channeled into dog sports or activities.', '2021-03-29', '2022-08-18'),
('DO094', 'BR023', 'Scout', 'female', 'Small, compact, and hardy, Scout are active companions for kids and adults alike. They are merry and fun loving, but being hounds, they can also be stubborn and require patient, creative training techniques.', '2016-02-04', '2018-05-01'),
('DO095', 'BR039', 'Dexter', 'male', 'Dexter is the happiest when they have a job to do. They can be wonderful family companions if their intelligence and energy are channeled into dog sports or activities.', '2014-05-15', '2018-12-13'),
('DO096', 'BR077', 'Ryder', 'male', 'Small, compact, and hardy, Ryder are active companions for kids and adults alike. They are merry and fun loving, but being hounds, they can also be stubborn and require patient, creative training techniques.', '2014-06-14', '2014-11-27'),
('DO097', 'BR069', 'Thor', 'female', 'Thor is the happiest when they have a job to do. They can be wonderful family companions if their intelligence and energy are channeled into dog sports or activities.', '2017-03-17', '2019-05-03'),
('DO098', 'BR120', 'Gizmo', 'male', 'Small, compact, and hardy, Gizmo are active companions for kids and adults alike. They are merry and fun loving, but being hounds, they can also be stubborn and require patient, creative training techniques.', '2021-05-27', '2022-08-29'),
('DO099', 'BR098', 'Tyson', 'male', 'Tyson is the happiest when they have a job to do. They can be wonderful family companions if their intelligence and energy are channeled into dog sports or activities.', '2015-12-23', '2016-08-13'),
('DO100', 'BR091', 'Bruno', 'female', 'Small, compact, and hardy, Bruno are active companions for kids and adults alike. They are merry and fun loving, but being hounds, they can also be stubborn and require patient, creative training techniques.', '2022-01-07', '2022-08-01'),
('DO101', 'BR067', 'Chase', 'male', 'Chase is the happiest when they have a job to do. They can be wonderful family companions if their intelligence and energy are channeled into dog sports or activities.', '2019-07-11', '2022-08-15'),
('DO102', 'BR084', 'Samson', 'male', 'Small, compact, and hardy, Samson are active companions for kids and adults alike. They are merry and fun loving, but being hounds, they can also be stubborn and require patient, creative training techniques.', '2015-08-06', '2016-06-15'),
('DO103', 'BR071', 'King', 'female', 'King is the happiest when they have a job to do. They can be wonderful family companions if their intelligence and energy are channeled into dog sports or activities.', '2019-01-04', '2022-03-10'),
('DO104', 'BR032', 'Cody', 'male', 'Small, compact, and hardy, Cody are active companions for kids and adults alike. They are merry and fun loving, but being hounds, they can also be stubborn and require patient, creative training techniques.', '2016-04-21', '2018-11-27'),
('DO105', 'BR026', 'Rambo', 'male', 'Rambo is the happiest when they have a job to do. They can be wonderful family companions if their intelligence and energy are channeled into dog sports or activities.', '2021-09-28', '2021-11-11'),
('DO106', 'BR044', 'Blue', 'female', 'Small, compact, and hardy, Blue are active companions for kids and adults alike. They are merry and fun loving, but being hounds, they can also be stubborn and require patient, creative training techniques.', '2013-03-19', '2021-06-01'),
('DO107', 'BR062', 'Sarge', 'male', 'Sarge is the happiest when they have a job to do. They can be wonderful family companions if their intelligence and energy are channeled into dog sports or activities.', '2013-11-17', '2016-05-16'),
('DO108', 'BR066', 'Harry', 'male', 'Small, compact, and hardy, Harry are active companions for kids and adults alike. They are merry and fun loving, but being hounds, they can also be stubborn and require patient, creative training techniques.', '2018-06-19', '2020-01-22'),
('DO109', 'BR029', 'Atlas', 'female', 'Atlas is the happiest when they have a job to do. They can be wonderful family companions if their intelligence and energy are channeled into dog sports or activities.', '2018-03-11', '2020-09-16'),
('DO110', 'BR024', 'Chester', 'male', 'Small, compact, and hardy, Chester are active companions for kids and adults alike. They are merry and fun loving, but being hounds, they can also be stubborn and require patient, creative training techniques.', '2021-07-06', '2022-06-04'),
('DO111', 'BR102', 'Gucci', 'male', 'Gucci is the happiest when they have a job to do. They can be wonderful family companions if their intelligence and energy are channeled into dog sports or activities.', '2014-05-11', '2022-03-08'),
('DO112', 'BR043', 'Theo', 'female', 'Small, compact, and hardy, Theo are active companions for kids and adults alike. They are merry and fun loving, but being hounds, they can also be stubborn and require patient, creative training techniques.', '2016-04-11', '2016-08-13'),
('DO113', 'BR084', 'Maverick', 'male', 'Maverick is the happiest when they have a job to do. They can be wonderful family companions if their intelligence and energy are channeled into dog sports or activities.', '2020-12-23', '2022-09-12'),
('DO114', 'BR107', 'Miles', 'male', 'Small, compact, and hardy, Miles are active companions for kids and adults alike. They are merry and fun loving, but being hounds, they can also be stubborn and require patient, creative training techniques.', '2021-05-26', '2022-07-04'),
('DO115', 'BR123', 'Jackson', 'female', 'Jackson is the happiest when they have a job to do. They can be wonderful family companions if their intelligence and energy are channeled into dog sports or activities.', '2022-06-05', '2022-08-08'),
('DO116', 'BR026', 'Lincoln', 'male', 'Small, compact, and hardy, Lincoln are active companions for kids and adults alike. They are merry and fun loving, but being hounds, they can also be stubborn and require patient, creative training techniques.', '2020-06-20', '2022-02-01'),
('DO117', 'BR027', 'Watson', 'male', 'Watson is the happiest when they have a job to do. They can be wonderful family companions if their intelligence and energy are channeled into dog sports or activities.', '2020-07-21', '2021-08-04'),
('DO118', 'BR081', 'Hank', 'female', 'Small, compact, and hardy, Hank are active companions for kids and adults alike. They are merry and fun loving, but being hounds, they can also be stubborn and require patient, creative training techniques.', '2016-08-05', '2022-01-20'),
('DO119', 'BR088', 'Wally', 'male', 'Wally is the happiest when they have a job to do. They can be wonderful family companions if their intelligence and energy are channeled into dog sports or activities.', '2017-12-21', '2020-11-27'),
('DO120', 'BR010', 'Peanut', 'male', 'Small, compact, and hardy, Peanut are active companions for kids and adults alike. They are merry and fun loving, but being hounds, they can also be stubborn and require patient, creative training techniques.', '2019-06-22', '2020-08-29'),
('DO121', 'BR091', 'Titan', 'female', 'Titan is the happiest when they have a job to do. They can be wonderful family companions if their intelligence and energy are channeled into dog sports or activities.', '2015-06-17', '2020-09-02');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staff_id` char(5) NOT NULL CHECK (`staff_id` regexp '^ST[0-9]{3}$'),
  `staff_name` varchar(50) NOT NULL,
  `staff_email` varchar(50) NOT NULL,
  `staff_position` varchar(50) NOT NULL,
  `staff_salary` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_id`, `staff_name`, `staff_email`, `staff_position`, `staff_salary`) VALUES
('ST001', 'Lucius Auer', 'lucius.auer@gukguk.com', 'Customer Service', 6285206),
('ST002', 'Leta Marks', 'leta.marks@gmail.com', 'Manager', 5655017),
('ST003', 'Oma Howell', 'oma.howell@example.com', 'Caretaker', 6113721),
('ST004', 'Gustave Bruen', 'gustave.bruen@mail.com', 'Customer Service', 5788450),
('ST005', 'Frida Kuhic', 'frida.kuhic@yahoo.com', 'Manager', 6643031),
('ST006', 'Ollie Lang', 'ollie.lang@mail.com', 'Caretaker', 6293485),
('ST007', 'Remington Ankunding', 'remington.ankunding@gmail.com', 'Customer Service', 6598202),
('ST008', 'Ariane Schuster', 'ariane.schuster@gukguk.com', 'Manager', 5900278),
('ST009', 'Elinore Gislason', 'elinore.gislason@example.org', 'Caretaker', 5636512),
('ST010', 'Edward Simonis', 'edward.simonis@gukguk.com', 'Customer Service', 6345866);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` char(5) NOT NULL CHECK (`user_id` regexp '^US[0-9]{3}$'),
  `user_name` varchar(50) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_address` varchar(255) NOT NULL,
  `user_birth_date` date NOT NULL,
  `user_gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_email`, `user_address`, `user_birth_date`, `user_gender`) VALUES
('US001', 'Mikel Bergstrom', 'mikel.bergstrom@yahoo.com', '918 Julius Field', '1970-07-10', 'male'),
('US002', 'Sallie Marvin', 'sallie.marvin@hotmail.com', '4993 Glover Summit', '1975-07-12', 'female'),
('US003', 'Augustine Kessler', 'augustine.kessler@hotmail.com', '61954 Schuppe Center', '1985-11-19', 'female'),
('US004', 'Jarret Orn', 'jarret.orn@orn.biz', '836 Keebler Mill', '1998-02-06', 'male'),
('US005', 'Bette Roberts', 'bette.roberts@yahoo.com', '3968 Dietrich Fall', '1970-10-31', 'female'),
('US006', 'Kari Parisian', 'kari.parisian@kreiger.com', '859 Merle Ports Suite 042', '1985-07-13', 'female'),
('US007', 'Tommie Block', 'tommie.block@connelly.com', '912 Orn Summit', '1977-11-05', 'male'),
('US008', 'Augustine Rice', 'augustine.rice@gmail.com', '1187 Bogisich Mission', '1987-11-28', 'female'),
('US009', 'Meagan Lindgren', 'meagan.lindgren@reilly.biz', '7255 Ryley Mount', '1992-02-24', 'female'),
('US010', 'Ezequiel Ryan', 'ezequiel.ryan@yahoo.com', '91264 Leila Locks Suite 883', '1990-04-07', 'male');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adoptiondetail`
--
ALTER TABLE `adoptiondetail`
  ADD PRIMARY KEY (`adoption_id`,`dog_id`),
  ADD KEY `dog_id` (`dog_id`);

--
-- Indexes for table `adoptionheader`
--
ALTER TABLE `adoptionheader`
  ADD PRIMARY KEY (`adoption_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Indexes for table `breed`
--
ALTER TABLE `breed`
  ADD PRIMARY KEY (`breed_id`);

--
-- Indexes for table `dog`
--
ALTER TABLE `dog`
  ADD PRIMARY KEY (`dog_id`),
  ADD KEY `breed_id` (`breed_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `adoptiondetail`
--
ALTER TABLE `adoptiondetail`
  ADD CONSTRAINT `adoptiondetail_ibfk_1` FOREIGN KEY (`adoption_id`) REFERENCES `adoptionheader` (`adoption_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `adoptiondetail_ibfk_2` FOREIGN KEY (`dog_id`) REFERENCES `dog` (`dog_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `adoptionheader`
--
ALTER TABLE `adoptionheader`
  ADD CONSTRAINT `adoptionheader_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `adoptionheader_ibfk_2` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `dog`
--
ALTER TABLE `dog`
  ADD CONSTRAINT `dog_ibfk_1` FOREIGN KEY (`breed_id`) REFERENCES `breed` (`breed_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
