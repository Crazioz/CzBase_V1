CREATE TABLE `blipsbuilder` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `coords` varchar(255) NOT NULL,
  `type` int(11) NOT NULL,
  `color` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `blipsbuilder`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `blipsbuilder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;