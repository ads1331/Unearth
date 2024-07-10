-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 10 2024 г., 18:02
-- Версия сервера: 8.0.30
-- Версия PHP: 8.0.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `met`
--

-- --------------------------------------------------------

--
-- Структура таблицы `comment`
--

CREATE TABLE `comment` (
  `id` int NOT NULL,
  `id_user` int NOT NULL,
  `text` text COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `comment`
--

INSERT INTO `comment` (`id`, `id_user`, `text`) VALUES
(1, 2, 'Это место просто поражает своей красотой! Невероятные виды, горы, покрытые снегом и долины, утопающие в зелени - природа в своей величайшей красе.'),
(2, 2, 'Когда стоишь на вершине этой горы, понимаешь, насколько малы перед природой. Это мощь и красота, способные изменить твой взгляд на мир..'),
(3, 2, 'Прогулка по этому национальному парку - настоящее погружение в дивный мир природы. Встреча с великолепными озерами, древними лесами и многообразием животных и птиц оставляет незабываемые впечатления.'),
(4, 2, 'Вечерний закат на этом озере - просто сказка. Отражение закатного неба в спокойной воде, шум листвы и запах свежести создают атмосферу мечты.'),
(5, 2, 'Это место - настоящий рай для фотографов! Здесь каждый уголок - это новая картинка, которая передает всю гармонию и прекрасие природы.');

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int NOT NULL,
  `name` text COLLATE utf8mb4_general_ci NOT NULL,
  `email` text COLLATE utf8mb4_general_ci NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `name`, `email`, `comment`) VALUES
(2, '123', '123@123', '123123123'),
(4, '123', '123@mail.ru', '123'),
(5, '123', '123@123', '123123');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `press`
--

CREATE TABLE `press` (
  `id` int NOT NULL,
  `id_user` int NOT NULL,
  `head_img` text COLLATE utf8mb4_general_ci NOT NULL,
  `img` text COLLATE utf8mb4_general_ci NOT NULL,
  `date` text COLLATE utf8mb4_general_ci NOT NULL,
  `name` text COLLATE utf8mb4_general_ci NOT NULL,
  `text` text COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `press`
--

INSERT INTO `press` (`id`, `id_user`, `head_img`, `img`, `date`, `name`, `text`) VALUES
(1, 2, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWSKabdMRPg9S3VSZDnGZHeTQoI296oNZj_g&s', '123', 'APRIL 9TH, 2019', 'HOW TO FIND GOLD IN MINING', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda nihil aspernatur nemo sunt, qui, harum repudiandae quisquam eaque dolore itaque quod tenetur quo quos labore?1\r\n\r\n\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Quae expedita cumque necessitatibus ducimus debitis totam, quasi praesentium eveniet tempore possimus illo esse, facilis? Corrupti possimus quae ipsa pariatur cumque, accusantium tenetur voluptatibus incidunt reprehenderit, quidem repellat sapiente, id, earum obcaecati.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Provident vero tempora aliquam excepturi labore, ad soluta voluptate necessitatibus. Nulla error beatae, quam, facilis suscipit quaerat aperiam minima eveniet quis placeat.\r\n\r\nEveniet deleniti accusantium nulla natus nobis nam asperiores ipsa minima laudantium vero cumque cupiditate ipsum ratione dicta, expedita quae, officiis provident harum nisi! Esse eligendi ab molestias, quod nostrum hic saepe repudiandae non. Suscipit reiciendis tempora ut, saepe temporibus nemo.\r\n\r\nAccusamus, temporibus, ullam. Voluptate consectetur laborum totam sunt culpa repellat, dolore voluptas. Quaerat cum ducimus aut distinctio sit, facilis corporis ab vel alias, voluptas aliquam, expedita molestias quisquam sequi eligendi nobis ea error omnis consequatur iste deleniti illum, dolorum odit.\r\n\r\nIn adipisci corporis at delectus! Cupiditate, voluptas, in architecto odit id error reprehenderit quam quibusdam excepturi distinctio dicta laborum deserunt qui labore dignissimos necessitatibus reiciendis tenetur corporis quas explicabo exercitationem suscipit. Nisi quo nulla, nihil harum obcaecati vel atque quos.\r\n\r\nAmet sint explicabo maxime accusantium qui dicta enim quia, nostrum id libero voluptates quae suscipit dolor quam tenetur dolores inventore illo laborum, corporis non ex, debitis quidem obcaecati! Praesentium maiores illo atque error! Earum, et, fugit. Sint, delectus molestiae. Totam.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Culpa iste, repudiandae facere aperiam sapiente, officia delectus soluta molestiae nihil corporis animi quos ratione qui labore? Sint eaque perspiciatis minus illum.\r\n\r\nConsectetur porro odio quod iure quaerat cupiditate similique, dolor reprehenderit molestias provident, esse dolorum omnis architecto magni amet corrupti neque ratione sunt beatae perspiciatis? Iste pariatur omnis sed ut itaque.\r\n\r\nId similique, rem ipsam accusantium iusto dolores sit velit ex quas ea atque, molestiae. Sint, sed. Quisquam, suscipit! Quisquam quibusdam maiores fugiat eligendi eius consequuntur, molestiae saepe commodi expedita nemo!'),
(2, 2, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWSKabdMRPg9S3VSZDnGZHeTQoI296oNZj_g&s', 'https://img.freepik.com/premium-photo/high-desert-mountains-rocky-ridge-valley-nevada-mountain-range-sand-canyon-amazing-landscape-peaks-large-stone-cliff-rock-3d-illustration_86390-7653.jpg', 'APRIL 12TH, 2019', 'BITCOIN GOD DEAM', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda nihil aspernatur nemo sunt, qui, harum repudiandae quisquam eaque dolore itaque quod tenetur quo quos labore?\r\n\r\n\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Quae expedita cumque necessitatibus ducimus debitis totam, quasi praesentium eveniet tempore possimus illo esse, facilis? Corrupti possimus quae ipsa pariatur cumque, accusantium tenetur voluptatibus incidunt reprehenderit, quidem repellat sapiente, id, earum obcaecati.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Provident vero tempora aliquam excepturi labore, ad soluta voluptate necessitatibus. Nulla error beatae, quam, facilis suscipit quaerat aperiam minima eveniet quis placeat.\r\n\r\nEveniet deleniti accusantium nulla natus nobis nam asperiores ipsa minima laudantium vero cumque cupiditate ipsum ratione dicta, expedita quae, officiis provident harum nisi! Esse eligendi ab molestias, quod nostrum hic saepe repudiandae non. Suscipit reiciendis tempora ut, saepe temporibus nemo.\r\n\r\nAccusamus, temporibus, ullam. Voluptate consectetur laborum totam sunt culpa repellat, dolore voluptas. Quaerat cum ducimus aut distinctio sit, facilis corporis ab vel alias, voluptas aliquam, expedita molestias quisquam sequi eligendi nobis ea error omnis consequatur iste deleniti illum, dolorum odit.\r\n\r\nIn adipisci corporis at delectus! Cupiditate, voluptas, in architecto odit id error reprehenderit quam quibusdam excepturi distinctio dicta laborum deserunt qui labore dignissimos necessitatibus reiciendis tenetur corporis quas explicabo exercitationem suscipit. Nisi quo nulla, nihil harum obcaecati vel atque quos.\r\n\r\nAmet sint explicabo maxime accusantium qui dicta enim quia, nostrum id libero voluptates quae suscipit dolor quam tenetur dolores inventore illo laborum, corporis non ex, debitis quidem obcaecati! Praesentium maiores illo atque error! Earum, et, fugit. Sint, delectus molestiae. Totam.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Culpa iste, repudiandae facere aperiam sapiente, officia delectus soluta molestiae nihil corporis animi quos ratione qui labore? Sint eaque perspiciatis minus illum.\r\n\r\nConsectetur porro odio quod iure quaerat cupiditate similique, dolor reprehenderit molestias provident, esse dolorum omnis architecto magni amet corrupti neque ratione sunt beatae perspiciatis? Iste pariatur omnis sed ut itaque.\r\n\r\nId similique, rem ipsam accusantium iusto dolores sit velit ex quas ea atque, molestiae. Sint, sed. Quisquam, suscipit! Quisquam quibusdam maiores fugiat eligendi eius consequuntur, molestiae saepe commodi expedita nemo!'),
(3, 2, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQK1C7noMh5xA9ducpNfMm_07zAXa-nPVRmVg&s', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9R25vwLctKdnpcUNDOOOSVBdKqTH_9th07w&s', 'JULE 02Th, 2024', 'Золотая Роза простирается на просторах', 'Серебряный Шпиль расположен в самом сердце древнего леса, где могучие сосны и ели с легкостью пробиваются сквозь толщу вековых камней. Гора обладает своими тайнами, встречающими тех, кто решит взойти на её вершину. У подножия её возвышенного пика раскинулся сад камней, свидетельствующий о веках, проведённых веками в пределах этого места.\r\n\r\nНа вершине Горы Серебряный Шпиль открывается вид, который оставляет без слов - горные вершины, покрытые мантией вечного снега, бескрайние просторы лесов и долин, утопающих в мягком тумане. Здесь время кажется замедленным, словно сама гора хранит в себе вечность и мудрость веков.\r\n\r\nПодняться на Гору Серебряный Шпиль значит войти в мир, где человек становится частью великой природы, ощущая связь с ней в каждом вдохе и взгляде.'),
(4, 2, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQK1C7noMh5xA9ducpNfMm_07zAXa-nPVRmVg&s', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9R25vwLctKdnpcUNDOOOSVBdKqTH_9th07w&s', 'JULE 02Th, 2024', 'Величие гор всегда поражало человечество', 'Серебряный Шпиль расположен в самом сердце древнего леса, где могучие сосны и ели с легкостью пробиваются сквозь толщу вековых камней. Гора обладает своими тайнами, встречающими тех, кто решит взойти на её вершину. У подножия её возвышенного пика раскинулся сад камней, свидетельствующий о веках, проведённых веками в пределах этого места.\r\n\r\nНа вершине Горы Серебряный Шпиль открывается вид, который оставляет без слов - горные вершины, покрытые мантией вечного снега, бескрайние просторы лесов и долин, утопающих в мягком тумане. Здесь время кажется замедленным, словно сама гора хранит в себе вечность и мудрость веков.\r\n\r\nПодняться на Гору Серебряный Шпиль значит войти в мир, где человек становится частью великой природы, ощущая связь с ней в каждом вдохе и взгляде.'),
(5, 2, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQK1C7noMh5xA9ducpNfMm_07zAXa-nPVRmVg&s', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9R25vwLctKdnpcUNDOOOSVBdKqTH_9th07w&s', 'JULE 02Th, 2024', 'В недрах южной пустыни скрыты тайны', '2Серебряный Шпиль расположен в самом сердце древнего леса, где могучие сосны и ели с легкостью пробиваются сквозь толщу вековых камней. Гора обладает своими тайнами, встречающими тех, кто решит взойти на её вершину. У подножия её возвышенного пика раскинулся сад камней, свидетельствующий о веках, проведённых веками в пределах этого места.\r\n\r\nНа вершине Горы Серебряный Шпиль открывается вид, который оставляет без слов - горные вершины, покрытые мантией вечного снега, бескрайние просторы лесов и долин, утопающих в мягком тумане. Здесь время кажется замедленным, словно сама гора хранит в себе вечность и мудрость веков.\r\n\r\nПодняться на Гору Серебряный Шпиль значит войти в мир, где человек становится частью великой природы, ощущая связь с ней в каждом вдохе и взгляде.');

-- --------------------------------------------------------

--
-- Структура таблицы `pricings`
--

CREATE TABLE `pricings` (
  `id` int NOT NULL,
  `price` int NOT NULL,
  `name` text COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `questions`
--

CREATE TABLE `questions` (
  `id` int NOT NULL,
  `question` text COLLATE utf8mb4_general_ci NOT NULL,
  `answer` text COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `questions`
--

INSERT INTO `questions` (`id`, `question`, `answer`) VALUES
(2, 'Какой доступен период возврата?123', 'Какой доступен период возврата?123'),
(3, 'WHAT IS YOUR OPENING TIME?1', '\r\n\r\nКАКОЕ ВРЕМЯ РАБОТЫ У ВАС?'),
(4, '!', '@');

-- --------------------------------------------------------

--
-- Структура таблицы `teams`
--

CREATE TABLE `teams` (
  `id` int NOT NULL,
  `name` text COLLATE utf8mb4_general_ci NOT NULL,
  `img` text COLLATE utf8mb4_general_ci NOT NULL,
  `status` text COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `teams`
--

INSERT INTO `teams` (`id`, `name`, `img`, `status`) VALUES
(3, 'troninak', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAARcAAAC0CAMAAACJ8pgSAAAA7VBMVEX////dPkDAwMDQ0NAAAAD7+/vdOz34+Pj19fWrq6v8/Pzi4uK9vb2Li4vu7u7cODqcnJzMzMzv7+/c3NyAgIC1tbW2trbW1tbo6OiioqJ7e3vh4eFQUFDOzs5BQUHHx8dZWVkxMTFvb2+WlpZ/f39ISEg2NjYqKiqIiIjbLjBhYWFpaWlKSkpycnIhISH98/PohIXbJSjYAADrkZLmeXr53Nzzw8MUFBTytbbgTlD76eniXV72zc3kZWfupKUaGhrmc3Tqi4z2yMj41NXMlJXhUVPzurvir7C/IiWJZmbaHSDsnJ3jX2COExWGkpEV3nmsAAAP3UlEQVR4nO2dC1+i3LfHlyACclVALiKgqNzEy5OVVjZN869zzvSc8/5fztnUNJNF3shRiu+Hiryx98+11177CkBBQUFBQUFBQcEaNACKevzzBMscMjXHQ08DwwXVfP4/tg+ZmuOBo2FggU4D5uPAsg1Z5DBQVcClJubqVcD9GnboNB6ClsEbnbojsRHT552oKXeaPZXWwaUbQ6mjaENJjg6dxkNA9WmFZttgcrRjhyoYNrCyooNIN1xQOIUG9UvqAj2zznsR9BQcJ5xHXRo+UkOnG1yii/JVdXEtgKEOdCjJmolD7OBWze7hA1rhgJa1c9zoHDqJB4HBAWqomsZ8DGwecJtDNRLN2QyjAjpUV/+a9rIaysSsouZOQVOah05CQUHu0JVDp+AowTiudeg0HCWYeugUHCcYfugUHCeFLukUuqRT6JJOoUs6hS7pFLqkU+iSTqFLOoUu6RS6pFPokk6hSzqFLukUuqRT6JJOoUs6hS7pFLqkU+iSTqFLOrnQpZ78osi/ecmsulR5vr7uNYz0fEZQu1yDKCdjXGV9m/e41V2u9Iesutie4YRrXsP+zpHqA7f9NYhyhC6EdGF0DPgaSwNoIgbA6zUbqrQClN2gqwpNAqk3gMcVBdgyvf11XpJZF5TPTq1lY2CLPBA6TQCfpFkTk3k2ogoSrrAu3UCFQbeBV/Hy9gO/ZN/kwTR0ysOjhlpmY5fw8I4O56w8AFMRZa3Mcuesz0EP40S1jBmiOmSz5etDdMEdB1c6rTZKJG1Wh3hI833VxNlIHdbdNsZ6NYcmvFrcsGPtm721hZP9hlg3aRHwRpdTQ5AikBqyjMVAmdoQU75JJjAhaKFqsXRbjUA1oL1Tif1DZl3K1jAGUwKPxiwp9FWC+KZo4HYw3wCsYbVEGpDhawPbwVwHN8DbvuCTbej7mK5rfUl0H3Xh26ruYzLSRUKyt5omNENgotoAY3E8AvwIdHn0F6YKQ4XFqGotDoFqWCzXxbCmbjBOS9QTXfgBG2OsZO+myzeQv4Eo1gYMEt5Bukh9JjKIb6powrCmiowFkgNNp+qpLRoJ14rBq2XLV1Zd0JeG6Kkgc5pb91TV09qaKEuWpqiyKw1rLtLFkgyOH0o2a8cwxLcWporsjQUcB7rLYjwL6FC6LAtqlzaB9/0mpUCdTQ5N5nj0Ug15OzljvjLqwjzOxlN4AD1O0uVr0DJcApmyWCVdTmniKjRZWQSQZJdkMMDlD4tDItUQP+qzXpOLuO4dND1jYVlBnnVZRVXKVlFn1IVu/NXofHNoS1r/ohVk1EXxjnT9kqSIXJaqOpMuNbmpH6m9AA91kd5dmQzz6yQfFWFi57f/BTR5p1bSxY/b2//85/bqx8UObyY5+qg1eULrbuV+q6ez8XwyCYJAQD/BZDL/PrvYKt6iuWMtQK9oyRuvd/hxcjcJhErpBRWkz+XJ6aafoHBH6m7TwONNfGh1dvdKkxfa3M02MRrJyFnQ03DXVdqjayFIFeWXNEFpts5r8H7+ps5X6Vhb9fx9aZUqT8rMb1degjvamnk1osi/99TFv5M1qjwqM1mM3v30hpGxX+NwUK6YXhTOBGG9KglC6Sr9o2tyrlcT1FNDi5N1ReilyVynfKxm5H6Fn+Q3Xj90E2yqSkIwfv1+XtxqnOJYkbrLymwny1thdHftMFFOwOUXUca2srwSBjNWVnM5g+0+u8mTrWVBwvz2MSqXe8fyCpZ7/J7vJ9vLUipNnmol/q2v+gSIHA8XO8lSqlRQHEOK79T6eYfU/+9mw7jlNcIUNZs/k2NZ5r/+ezdZkIv5n2ydpMfNfON47jWVu0OnfY/MXtdFFcRzSUlKWEUopXc8IIM5O3Tq98drc6nM7+7mT1oJ0+9CqXL5UJnepQsjLA6d+r3x47W5BDP06K2ATEWY3J7+FIQxCNUTQQjSvHOwcRde3hi/zm4wu/inBN/HN8L3y7PTh5NgTFTGl8H0fpoiTPBw6PTviVHpdQlBuvwswfh0Nhk93MM9XE9HwujkO8zeSviJPe/pm5gOlaMqKl1Il4uHs9N/ZqeJLt9/3P+cLlKczGSXMZQc8KY2SuxlPg8mp7N/XumyuEzR5bPWSG/LRjAbTSql4HZ0Dw9nqPRcTwGVo3F6Ofq0DuatDQjTk8f8Xz98X0ynyO+ievphEUxnqX0Rws2hc7Af3rjdX8EcsgRBqAhJdf0U16XX06XKv4fOwX7YoeNlWZdPWiEtV0fIQJ7t508v+Mphgsr80DnYD0u6VBY3N3e/mgC3T7UyKj5JY+DL6bJUjoIRjFDNXUmmMaDaJ/nzcPXz+j6Z1YCqqMTFJA8u6XJ56Bzsh6VWYzC6/ueBKF3eXv07gWnp/sd4flE9GT8EN1dnl8L9w48TdHa7eCnMZ205LvXVBaP7y9uLn8T9bBTA9P52DIurEWoklWB2dRHA2QxK1evr05dSCt8PnYP98BAs6TIioLSAq1u4g+n87AoWqBF5dnoymszRI4s5zK+QdEtSzg6dg/1wtqzL9Rymd/B9cSPAzcWs9EuXKRFcwhwWd3A3XZyNllzSj0PnYD+MlnQhZj/vR8EVcXqK/MvV6BSmJ3B9djEZXRD3E7i5hLvR6enpkr0cOgP74qUXrdxcCvPxPJiOUWtgXhkvpnfC+OZf5IPGU6EynpfGpdJ4/DJEFqaHTv++uH5pMCiqQ1F/KYnukuPpbyV5MHk0OSrLUV5wf+j074uLHQePngys9P4UobyT1j25KcLJoVO/P9722G1O8HnNJYvBBJ/YXDJ4mM/sXRLe9vFuaC6ftG/3mdb/7mQxwvT/PuPMl2eYLkbsMnQvzAFUI9cTU1dAJTc1gtPN56g+UxEeR44afm4nMq9C8Z+mUV5tK0zleWSa5DLuAHGE1PzfxWBLYSqVPwP2jPy57qDFd1/m50f6OEg6QmlpHoMdv7vmIHdQurv8wMXlxtV18GblxHtrDnKH8nbCYPVkk+UkyFjSVgfkcdXRW9T0hR9X8/VephJcps8Fkjp5n4Soce9+t9el1YWpEszf79ClM63UPjiuuCL5o+vgfQcsrFnGR3J72z9j77D+urrjbCGkrPysCEHlZvUSPoTW2d8WGvtE8je5bc/F/bg0CZIJDZUkVBGEIJiUxmcbtZ4xP38zwOtbVBoXZ9fjxd28VJrfLcaz2y2mi4luvursKr1Dgu0dGoZ1OU/tbEze5U56u+3ngcd5uWuftOOiTHbHjgR6rXs/Bih310ZvY9dgjXSPfB1oNdPmGjvrgtrZBg4Zd1vcI4Re4zIE6Bl0QYXQPd57ybJmps01MunCd/ws194rFJ0pNldytJHL34TOU/T6u5+Nt/TVK7opI+OllIy6aKieZ9d9RtPmX6ZT3TE2sMvPxu0q0F55UcLc7RK/yaoLJkPDWrfJkGQzvefzZrSzLiHHAR9DNW6WPanX8XSgorYCXBNElIuWCDatGY7FA+3F6/aQXkdWXWxObVehbrZZcGVP1occCvnaHO0ZQLdAV1mu3wFV10zgWIjbOmWVaQwDuh0SEHXaNcD6zoY7P/AWeKB5QA7BtaFtQ1/TVRhSoQqxlGxNA4ovtUExtCG0nGzZAjrjdhR2WEbKek3w+IiGvg79JqeDKYLJuCzImB5Dl8UMzdRRslmwJMkBUVcHYDtQprQBlJG0RH2T+EuP1Z7Nt4H0gMOQKMApVMc4ryNdDNQsYR91QdbYYTkgnWzZggxbAj5in+shoC8IdDuqQYijr46zgUNJVZ90oVHybYMvl1GIHBtDVXVAp/UGVIfVPpAWcD0R3HCTfgBL1N2Q8v7oYrQGEvT4CNlL89FeGokueKfWOQJdOIh0AmXaaL3UBX/Sxbd/6aJZdAQdFsInXRQ92Zy6DZRF1UDfLDjEE1d6zlty9A1kFoahjEQN5bJGm1wZ6VIvu+1kN2dUhCzZcbJlK7MuWBfgm6o7vgmODWYNItXHQG5BB7c9royJOvg0FmsWko82/TKulWuiCH2u14BzoNrgcaG7/jIIKklpnSBtnk/usVDna6jw4QxFgCTVE8/P43WKqAM6yFo96241WXUh0fspHpqoikFOok6gAyWaSv6ChNdJlBuKJKkqD+hQJfScpKH3EC0t2doTHUTtKLssPt/g88eQP12qf6UXNUe66N0uTQDbNjNu9b4RH6dLHYVuyJOAgiv7GWXqS1q3A5aGfPj++UBd2qAC64JE0ZtVMNtioQLkKWXL7oHteTXgzjtWcmZDchcOxoSo3aM0yyx/xK6mWb9a0exbFBjtvkb1wZGG5zaH0S6xulW3Gz2s1Y3A4lFbC8WRnvbYKEBn6IB+EixyKOblB4DCuuxk/WpdDkSXjaE1IPtgVVEI3mVpbrDJ6N62DFwRhcUW0xwwZcuyUOSE5EdnfRQq6A2HMBjQ2qhdiWK77GTWhQY1SuYJDAmkC9HgUCyKbP0DUvYG67EiSnShkIlQ0gDFzNS3p7tp1dsRcDSKdbVj0UUHhaN9YKzEXgg20YV2xX1UGd5jCDpkUJtZ9FClFFlmG2jP7CYP91ig+uFQS7oxBh9wsay6iMOwzFdN51xFX51HNss1o4EKem/fAwWoDaCSkvV09swHblW5w229lnDpx3T9bk2Qf2/suutkvKfEKrJ26IsHDAwz3lpuJcc70LEh/H7UyZEustV76Q2jpwFycz8DGjnSBTnZDgoINAqo5KaRUhVIpMmA0apAoQP90pCvo7TExaGzp3935W+0wT4IpIvPQhT3NSWOy6RDMb1OCKYTmRA2waF8s9MGyYs9hXBii3LNuL9751L3AxO+Z0zLOgfMADtCAungkBEOEW42wSSRLiHZRf9KnRrIiu6CrqOI09g9WsiRLsheFIPuh6ELmAlIF8sJQxX5l5AMGfTLaEIHR/9yDc4MQ8xtQHf3eV350kXvtlCjsMknTUWH7LRAgx6TWI4KFmlI0FENDFBg6QJFosaJ8SV06bTbDgV+31O53qAvGRQ16JlkpEFM4V7PIjgGfJXs9YYKaiL0kjvIursvhMmRLr94GVC/rXBUPBmUSHliS7KO+x8bvDH4kAg8f/byNyD0Tk5vT7NnqM5nuY1EQUFBQUF+eKx7qN8BY/3lUov6PnsFjxu+nPQTl3/P2ZKc5zMbf5yi9kXhyyi6VZAukmiDZtNqCLgELVHjw4ivkaqU3P/b1tW8rwfeFt7sV8GKFaavmjWsTKsdqU8onVpbi2XSYbherS3ZVm2Q30Wvu6E5utKMXAVajY6OdYGxhhT0dMyq6TSEms+CYcs4ZFtwkEM0s2rFKqfgpsTRmAHMeYeGNs1ilPhHF+kL6mJB1AdfUcKmKWIxSCF4jOtrHCXK4DB+A2KsETbDr6YLhTyuDbYEuszWGBvqLDAK0DELlNFkKfQE1oSGL381XTZBlfH+Z91TKhMt8esGMgUFBQVflf8Hl8BxY+L3PikAAAAASUVORK5CYII=', 'President');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` text COLLATE utf8mb4_general_ci NOT NULL,
  `img` text COLLATE utf8mb4_general_ci NOT NULL,
  `password` text COLLATE utf8mb4_general_ci NOT NULL,
  `email` text COLLATE utf8mb4_general_ci NOT NULL,
  `login` text COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `img`, `password`, `email`, `login`) VALUES
(1, 'denis papa', 'data:image/jpeg;base64,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', '12345678', 'email@email.com', 'ads'),
(2, 'denis papa', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQd3PHpr6ekxIL__t8qqo1hk2nd9PcyOU1j_A&s', '12345678', 'email@email.com', 'ads'),
(3, 'Admin', 'Admin', 'Admin', 'Admin@Admin', 'Admin');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_comment_user` (`id_user`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `press`
--
ALTER TABLE `press`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pricings`
--
ALTER TABLE `pricings`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `press`
--
ALTER TABLE `press`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `pricings`
--
ALTER TABLE `pricings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `fk_comment_user` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
