-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 13 2020 г., 14:33
-- Версия сервера: 5.5.53
-- Версия PHP: 7.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `test`
--

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `pass`) VALUES
(24, 'Dima', 'dimkabandittt@gmail.com', '$2y$10$gr.pEiQ0OR984jTUzeHlxuSoW16fyvBlBZOWHnLNK4NP.2SrkeQey'),
(25, 'sgfdsdf', 'gaydevmasters@gmail.com', '$2y$10$LxMa3RrR47OXdJIQ9afnL.ERJ0GfAkZ2ViFmS19dtGkpNKnHeAcmm'),
(26, 'лдапврдл', 'fghkfdgh@kjkj.com', '$2y$10$cUggwHx3ZdsyYO3dozUSbeMrBDggiSWkzKTV/G/zKU60w6/hDR6Vm'),
(27, 'hhh', 'dimkabanditt@gmail.com', '$2y$10$FmFmc5X5TTG6qpl6n2PijepNqF/b7VsEK8buVTTpQuPl0flBE5RuW'),
(28, 'fghfghfgh', 'dimkabandit@gmail.com', '$2y$10$bkiTRPRkAjB6ERVVzsFMJugoQWNp4JwkJucYt5wRuK6pZ0fThRTcK'),
(29, 'kkkkk', 'dimkabandi@gmail.com', '$2y$10$CP74vSsFm1e64sE74MkP/Olr1zQmJTanrfddzUALAN6LeUcNccWBq'),
(30, 'werwrwer', 'dimkaban@gmail.com', '$2y$10$4w8kxXNadCDu51coS9HUtuBXXRvs2pXwndEqY/Ezwf3HlaWyYLYgW'),
(31, 'rewtert', 'dimkaba@gmail.com', '$2y$10$FtXPQptcNZg.REIDQjcOW.FKPt3PLXP.EUE7a4T/vLd/YBUPhXPnG'),
(32, 'dfghfghfgh', 'dimka@gmail.com', '$2y$10$tIriHUS7F6HhDUev9xRlw./3UHcUYchF57GY3hYJzLsO7Gm/pVJZG'),
(33, 'sdfsd', 'dimk@gmail.com', '$2y$10$FfV/ThSkSTH.ubGEOlMPIegSU0mKsp3RXzRGg31pGd0WJRvy5aLeW');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
