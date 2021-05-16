
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";



-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Mihir', 'mihir13@gmail.com', 70000),
(2, 'Vishal', 'vishu18@gmail.com', 60000),
(3, 'Jay', 'jmangade@gmail.com', 20000),
(4, 'Sriniwas', 'reddysri25@gmail.com', 40000),
(5, 'Darshan', 'darshbonde27@gmail.com', 90000),
(6, 'Kaustubh', 'kaustubh27@gmail.com', 60000),
(7, 'Aishwarya', 'arajankar23@gmail.com', 50000),
(8, 'Sakshi', 'sakshibulbule27@gmail.com', 30000),
(9, 'Renuka', 'renudeshmukh@gmail.com', 10000),
(10, 'Rudra', 'rudutambe@gmail.com', 80000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT = 11;
COMMIT;
