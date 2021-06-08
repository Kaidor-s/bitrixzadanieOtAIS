-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 08 2021 г., 11:05
-- Версия сервера: 5.7.29
-- Версия PHP: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `balita`
--

-- --------------------------------------------------------

--
-- Структура таблицы `b_admin_notify`
--

CREATE TABLE `b_admin_notify` (
  `ID` int(18) NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TAG` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MESSAGE` text COLLATE utf8_unicode_ci,
  `ENABLE_CLOSE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `PUBLIC_SECTION` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `NOTIFY_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'M'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_admin_notify_lang`
--

CREATE TABLE `b_admin_notify_lang` (
  `ID` int(18) NOT NULL,
  `NOTIFY_ID` int(18) NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `MESSAGE` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_agent`
--

CREATE TABLE `b_agent` (
  `ID` int(18) NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SORT` int(18) NOT NULL DEFAULT '100',
  `NAME` text COLLATE utf8_unicode_ci,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `LAST_EXEC` datetime DEFAULT NULL,
  `NEXT_EXEC` datetime NOT NULL,
  `DATE_CHECK` datetime DEFAULT NULL,
  `AGENT_INTERVAL` int(18) DEFAULT '86400',
  `IS_PERIOD` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `USER_ID` int(18) DEFAULT NULL,
  `RUNNING` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `RETRY_COUNT` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_agent`
--

INSERT INTO `b_agent` (`ID`, `MODULE_ID`, `SORT`, `NAME`, `ACTIVE`, `LAST_EXEC`, `NEXT_EXEC`, `DATE_CHECK`, `AGENT_INTERVAL`, `IS_PERIOD`, `USER_ID`, `RUNNING`, `RETRY_COUNT`) VALUES
(1, 'main', 100, '\\Bitrix\\Main\\Analytics\\CounterDataTable::submitData();', 'Y', '2021-06-08 11:02:22', '2021-06-08 11:03:22', NULL, 60, 'N', NULL, 'N', 0),
(2, 'main', 100, 'CCaptchaAgent::DeleteOldCaptcha(3600);', 'Y', '2021-06-08 11:02:22', '2021-06-08 12:02:22', NULL, 3600, 'N', NULL, 'N', 0),
(3, 'main', 100, 'CSiteCheckerTest::CommonTest();', 'Y', '2021-06-07 12:37:25', '2021-06-08 12:37:25', NULL, 86400, 'N', NULL, 'N', 0),
(4, 'main', 100, 'CEvent::CleanUpAgent();', 'Y', '2021-06-07 12:37:25', '2021-06-08 12:37:25', NULL, 86400, 'N', NULL, 'N', 0),
(5, 'main', 100, 'CUser::CleanUpHitAuthAgent();', 'Y', '2021-06-07 12:37:25', '2021-06-08 12:37:25', NULL, 86400, 'N', NULL, 'N', 0),
(6, 'main', 100, 'CUndo::CleanUpOld();', 'Y', '2021-06-07 12:37:25', '2021-06-08 12:37:25', NULL, 86400, 'N', NULL, 'N', 0),
(7, 'main', 100, 'CUserCounter::DeleteOld();', 'Y', '2021-06-07 12:37:25', '2021-06-08 12:37:25', NULL, 86400, 'N', NULL, 'N', 0),
(8, 'main', 100, '\\Bitrix\\Main\\UI\\Viewer\\FilePreviewTable::deleteOldAgent(22, 20);', 'Y', '2021-06-07 12:37:25', '2021-06-08 12:37:25', NULL, 86400, 'N', NULL, 'N', 0),
(9, 'main', 100, 'CUser::AuthActionsCleanUpAgent();', 'Y', '2021-06-07 12:37:25', '2021-06-08 12:37:25', NULL, 86400, 'N', NULL, 'N', 0),
(10, 'main', 100, 'CUser::CleanUpAgent();', 'Y', '2021-06-07 12:37:25', '2021-06-08 12:37:25', NULL, 86400, 'N', NULL, 'N', 0),
(11, 'main', 100, 'CUser::DeactivateAgent();', 'Y', '2021-06-07 12:37:25', '2021-06-08 12:37:25', NULL, 86400, 'N', NULL, 'N', 0),
(12, 'main', 100, 'CEventLog::CleanUpAgent();', 'Y', '2021-06-07 12:37:25', '2021-06-08 12:37:25', NULL, 86400, 'N', NULL, 'N', 0),
(13, 'clouds', 100, 'CCloudStorage::CleanUp();', 'Y', '2021-06-07 12:37:25', '2021-06-08 12:37:25', NULL, 86400, 'N', NULL, 'N', 0),
(14, 'landing', 100, 'Bitrix\\Landing\\Agent::clearRecycle();', 'Y', '2021-06-08 11:02:22', '2021-06-08 13:02:22', NULL, 7200, 'N', NULL, 'N', 0),
(15, 'landing', 100, 'Bitrix\\Landing\\Agent::clearFiles(30);', 'Y', '2021-06-08 11:02:22', '2021-06-08 12:02:22', NULL, 3600, 'N', NULL, 'N', 0),
(16, 'landing', 100, 'Bitrix\\Landing\\Agent::sendRestStatistic();', 'Y', '2021-06-07 12:37:25', '2021-06-08 12:37:25', NULL, 86400, 'N', NULL, 'N', 0),
(17, 'messageservice', 100, '\\Bitrix\\MessageService\\Queue::cleanUpAgent();', 'Y', '2021-06-08 11:02:22', '2021-06-09 00:00:00', NULL, 86400, 'Y', NULL, 'N', 0),
(18, 'rest', 100, 'Bitrix\\Rest\\Marketplace\\Client::getNumUpdates();', 'Y', '2021-06-07 12:37:25', '2021-06-08 12:37:25', NULL, 86400, 'N', NULL, 'N', 0),
(19, 'rest', 100, '\\Bitrix\\Rest\\EventOfflineTable::cleanProcessAgent();', 'Y', '2021-06-07 12:37:25', '2021-06-08 12:37:25', NULL, 86400, 'N', NULL, 'N', 0),
(20, 'rest', 100, '\\Bitrix\\Rest\\LogTable::cleanUpAgent();', 'Y', '2021-06-07 12:37:25', '2021-06-08 12:37:25', NULL, 86400, 'N', NULL, 'N', 0),
(21, 'rest', 100, '\\Bitrix\\Rest\\Configuration\\Helper::sendStatisticAgent();', 'Y', '2021-06-07 12:37:25', '2021-06-08 12:37:25', NULL, 86400, 'N', NULL, 'N', 0),
(22, 'rest', 100, '\\Bitrix\\Rest\\UsageStatTable::sendAgent();', 'Y', '2021-06-08 11:02:22', '2021-06-08 12:02:22', NULL, 3600, 'N', NULL, 'N', 0),
(23, 'rest', 100, '\\Bitrix\\Rest\\UsageStatTable::cleanUpAgent();', 'Y', '2021-06-08 11:02:22', '2021-06-08 12:02:22', NULL, 3600, 'N', NULL, 'N', 0),
(24, 'search', 10, 'CSearchSuggest::CleanUpAgent();', 'Y', '2021-06-07 12:37:25', '2021-06-08 12:37:25', NULL, 86400, 'N', NULL, 'N', 0),
(25, 'search', 10, 'CSearchStatistic::CleanUpAgent();', 'Y', '2021-06-07 12:37:25', '2021-06-08 12:37:25', NULL, 86400, 'N', NULL, 'N', 0),
(26, 'seo', 100, 'Bitrix\\Seo\\Engine\\YandexDirect::updateAgent();', 'Y', '2021-06-08 11:02:22', '2021-06-08 12:02:22', NULL, 3600, 'N', NULL, 'N', 0),
(27, 'seo', 100, 'Bitrix\\Seo\\Adv\\LogTable::clean();', 'Y', '2021-06-07 12:37:25', '2021-06-08 12:37:25', NULL, 86400, 'N', NULL, 'N', 0),
(28, 'seo', 100, 'Bitrix\\Seo\\Adv\\Auto::checkQuantityAgent();', 'Y', '2021-06-08 11:02:22', '2021-06-08 12:02:22', NULL, 3600, 'N', NULL, 'N', 0),
(30, 'main', 100, 'CRatings::Calculate(3);', 'Y', '2021-06-08 11:02:22', '2021-06-08 12:02:22', NULL, 3600, 'N', NULL, 'N', 0),
(31, 'main', 100, 'CRatings::Calculate(4);', 'Y', '2021-06-08 11:02:22', '2021-06-08 12:02:22', NULL, 3600, 'N', NULL, 'N', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `b_app_password`
--

CREATE TABLE `b_app_password` (
  `ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `APPLICATION_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PASSWORD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DIGEST_PASSWORD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DATE_CREATE` datetime DEFAULT NULL,
  `DATE_LOGIN` datetime DEFAULT NULL,
  `LAST_IP` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COMMENT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SYSCOMMENT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_b24connector_buttons`
--

CREATE TABLE `b_b24connector_buttons` (
  `ID` int(11) NOT NULL,
  `APP_ID` int(11) NOT NULL,
  `ADD_DATE` datetime NOT NULL,
  `ADD_BY` int(11) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SCRIPT` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_bitrixcloud_option`
--

CREATE TABLE `b_bitrixcloud_option` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SORT` int(11) NOT NULL,
  `PARAM_KEY` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PARAM_VALUE` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_bitrixcloud_option`
--

INSERT INTO `b_bitrixcloud_option` (`ID`, `NAME`, `SORT`, `PARAM_KEY`, `PARAM_VALUE`) VALUES
(1, 'backup_quota', 0, '0', '0'),
(2, 'backup_total_size', 0, '0', '0'),
(3, 'backup_last_backup_time', 0, '0', '1622651551'),
(4, 'monitoring_expire_time', 0, '0', '1623039590');

-- --------------------------------------------------------

--
-- Структура таблицы `b_cache_tag`
--

CREATE TABLE `b_cache_tag` (
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CACHE_SALT` char(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RELATIVE_PATH` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TAG` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_cache_tag`
--

INSERT INTO `b_cache_tag` (`SITE_ID`, `CACHE_SALT`, `RELATIVE_PATH`, `TAG`) VALUES
(NULL, NULL, '0:1623058745', '**'),
('ru', '/35f', 'landing', 'landing_blocks'),
('s1', '/e25', '/s1/bitrix/menu.sections/06f', 'iblock_id_5'),
('s1', '/e25', '/s1/bitrix/menu.sections/06f', 'iblock_id_1'),
('s1', '/b0e', '/s1/bitrix/menu.sections/06f', 'iblock_id_1');

-- --------------------------------------------------------

--
-- Структура таблицы `b_captcha`
--

CREATE TABLE `b_captcha` (
  `ID` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `CODE` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `IP` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `DATE_CREATE` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_checklist`
--

CREATE TABLE `b_checklist` (
  `ID` int(11) NOT NULL,
  `DATE_CREATE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TESTER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COMPANY_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PICTURE` int(11) DEFAULT NULL,
  `TOTAL` int(11) DEFAULT NULL,
  `SUCCESS` int(11) DEFAULT NULL,
  `FAILED` int(11) DEFAULT NULL,
  `PENDING` int(11) DEFAULT NULL,
  `SKIP` int(11) DEFAULT NULL,
  `STATE` longtext COLLATE utf8_unicode_ci,
  `REPORT_COMMENT` text COLLATE utf8_unicode_ci,
  `REPORT` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `EMAIL` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PHONE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SENDED_TO_BITRIX` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `HIDDEN` char(1) COLLATE utf8_unicode_ci DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_clouds_copy_queue`
--

CREATE TABLE `b_clouds_copy_queue` (
  `ID` int(32) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL,
  `OP` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `SOURCE_BUCKET_ID` int(11) NOT NULL,
  `SOURCE_FILE_PATH` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `TARGET_BUCKET_ID` int(11) NOT NULL,
  `TARGET_FILE_PATH` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `FILE_SIZE` int(11) NOT NULL DEFAULT '-1',
  `FILE_POS` int(11) NOT NULL DEFAULT '0',
  `FAIL_COUNTER` int(11) NOT NULL DEFAULT '0',
  `STATUS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ERROR_MESSAGE` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_clouds_delete_queue`
--

CREATE TABLE `b_clouds_delete_queue` (
  `ID` int(32) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL,
  `BUCKET_ID` int(11) NOT NULL,
  `FILE_PATH` varchar(500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_clouds_file_bucket`
--

CREATE TABLE `b_clouds_file_bucket` (
  `ID` int(11) NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `SORT` int(11) DEFAULT '500',
  `READ_ONLY` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `SERVICE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BUCKET` varchar(63) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LOCATION` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CNAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FILE_COUNT` int(11) DEFAULT '0',
  `FILE_SIZE` double DEFAULT '0',
  `LAST_FILE_ID` int(11) DEFAULT NULL,
  `PREFIX` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SETTINGS` text COLLATE utf8_unicode_ci,
  `FILE_RULES` text COLLATE utf8_unicode_ci,
  `FAILOVER_ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `FAILOVER_BUCKET_ID` int(11) DEFAULT NULL,
  `FAILOVER_COPY` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `FAILOVER_DELETE` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `FAILOVER_DELETE_DELAY` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_clouds_file_hash`
--

CREATE TABLE `b_clouds_file_hash` (
  `BUCKET_ID` int(11) NOT NULL,
  `FILE_PATH` varchar(600) COLLATE utf8_unicode_ci NOT NULL,
  `FILE_SIZE` bigint(20) DEFAULT NULL,
  `FILE_MTIME` datetime DEFAULT NULL,
  `FILE_HASH` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_clouds_file_resize`
--

CREATE TABLE `b_clouds_file_resize` (
  `ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL,
  `ERROR_CODE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `FILE_ID` int(11) DEFAULT NULL,
  `PARAMS` text COLLATE utf8_unicode_ci,
  `FROM_PATH` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TO_PATH` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_clouds_file_save`
--

CREATE TABLE `b_clouds_file_save` (
  `ID` int(32) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL,
  `BUCKET_ID` int(11) NOT NULL,
  `SUBDIR` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FILE_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `EXTERNAL_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FILE_SIZE` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_clouds_file_upload`
--

CREATE TABLE `b_clouds_file_upload` (
  `ID` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL,
  `FILE_PATH` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `FILE_SIZE` bigint(20) DEFAULT NULL,
  `TMP_FILE` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BUCKET_ID` int(11) NOT NULL,
  `PART_SIZE` int(11) NOT NULL,
  `PART_NO` int(11) NOT NULL,
  `PART_FAIL_COUNTER` int(11) NOT NULL,
  `NEXT_STEP` mediumtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_component_params`
--

CREATE TABLE `b_component_params` (
  `ID` int(11) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `COMPONENT_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TEMPLATE_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REAL_PATH` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SEF_MODE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `SEF_FOLDER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `START_CHAR` int(11) NOT NULL,
  `END_CHAR` int(11) NOT NULL,
  `PARAMETERS` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_component_params`
--

INSERT INTO `b_component_params` (`ID`, `SITE_ID`, `COMPONENT_NAME`, `TEMPLATE_NAME`, `REAL_PATH`, `SEF_MODE`, `SEF_FOLDER`, `START_CHAR`, `END_CHAR`, `PARAMETERS`) VALUES
(21, 's1', 'bitrix:menu', 'menu_balita', '/local/templates/balita/header.php', 'N', NULL, 3441, 3897, 'a:11:{s:18:\"ALLOW_MULTI_SELECT\";s:1:\"N\";s:15:\"CHILD_MENU_TYPE\";s:9:\"podrazdel\";s:5:\"DELAY\";s:1:\"N\";s:9:\"MAX_LEVEL\";s:1:\"2\";s:19:\"MENU_CACHE_GET_VARS\";N;s:15:\"MENU_CACHE_TIME\";s:4:\"3600\";s:15:\"MENU_CACHE_TYPE\";s:1:\"N\";s:21:\"MENU_CACHE_USE_GROUPS\";s:1:\"Y\";s:14:\"ROOT_MENU_TYPE\";s:4:\"main\";s:7:\"USE_EXT\";s:1:\"Y\";s:18:\"COMPONENT_TEMPLATE\";s:11:\"menu_balita\";}');

-- --------------------------------------------------------

--
-- Структура таблицы `b_composite_log`
--

CREATE TABLE `b_composite_log` (
  `ID` int(18) NOT NULL,
  `HOST` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `URI` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `TITLE` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CREATED` datetime NOT NULL,
  `TYPE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MESSAGE` longtext COLLATE utf8_unicode_ci,
  `AJAX` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `USER_ID` int(18) NOT NULL DEFAULT '0',
  `PAGE_ID` int(18) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_composite_page`
--

CREATE TABLE `b_composite_page` (
  `ID` int(18) NOT NULL,
  `CACHE_KEY` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `HOST` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `URI` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `TITLE` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CREATED` datetime NOT NULL,
  `CHANGED` datetime NOT NULL,
  `LAST_VIEWED` datetime NOT NULL,
  `VIEWS` int(18) NOT NULL DEFAULT '0',
  `REWRITES` int(18) NOT NULL DEFAULT '0',
  `SIZE` int(18) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_consent_agreement`
--

CREATE TABLE `b_consent_agreement` (
  `ID` int(18) NOT NULL,
  `CODE` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DATE_INSERT` datetime NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TYPE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DATA_PROVIDER` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AGREEMENT_TEXT` longtext COLLATE utf8_unicode_ci,
  `LABEL_TEXT` varchar(4000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SECURITY_CODE` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USE_URL` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IS_AGREEMENT_TEXT_HTML` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_consent_field`
--

CREATE TABLE `b_consent_field` (
  `ID` int(18) NOT NULL,
  `AGREEMENT_ID` int(18) NOT NULL,
  `CODE` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VALUE` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_consent_user_consent`
--

CREATE TABLE `b_consent_user_consent` (
  `ID` int(18) NOT NULL,
  `DATE_INSERT` datetime NOT NULL,
  `AGREEMENT_ID` int(18) NOT NULL,
  `USER_ID` int(18) DEFAULT NULL,
  `IP` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `URL` varchar(4000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ORIGIN_ID` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ORIGINATOR_ID` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_consent_user_consent_item`
--

CREATE TABLE `b_consent_user_consent_item` (
  `ID` int(18) NOT NULL,
  `USER_CONSENT_ID` int(18) NOT NULL,
  `VALUE` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_counter_data`
--

CREATE TABLE `b_counter_data` (
  `ID` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `TYPE` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `DATA` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_culture`
--

CREATE TABLE `b_culture` (
  `ID` int(11) NOT NULL,
  `CODE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORMAT_DATE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORMAT_DATETIME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORMAT_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WEEK_START` int(1) DEFAULT '1',
  `CHARSET` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DIRECTION` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `SHORT_DATE_FORMAT` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'n/j/Y',
  `MEDIUM_DATE_FORMAT` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'M j, Y',
  `LONG_DATE_FORMAT` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'F j, Y',
  `FULL_DATE_FORMAT` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'l, F j, Y',
  `DAY_MONTH_FORMAT` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'F j',
  `DAY_SHORT_MONTH_FORMAT` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'M j',
  `DAY_OF_WEEK_MONTH_FORMAT` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'l, F j',
  `SHORT_DAY_OF_WEEK_MONTH_FORMAT` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'D, F j',
  `SHORT_DAY_OF_WEEK_SHORT_MONTH_FORMAT` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'D, M j',
  `SHORT_TIME_FORMAT` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'g:i a',
  `LONG_TIME_FORMAT` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'g:i:s a',
  `AM_VALUE` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'am',
  `PM_VALUE` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'pm',
  `NUMBER_THOUSANDS_SEPARATOR` varchar(10) COLLATE utf8_unicode_ci DEFAULT ',',
  `NUMBER_DECIMAL_SEPARATOR` varchar(10) COLLATE utf8_unicode_ci DEFAULT '.',
  `NUMBER_DECIMALS` tinyint(4) DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_culture`
--

INSERT INTO `b_culture` (`ID`, `CODE`, `NAME`, `FORMAT_DATE`, `FORMAT_DATETIME`, `FORMAT_NAME`, `WEEK_START`, `CHARSET`, `DIRECTION`, `SHORT_DATE_FORMAT`, `MEDIUM_DATE_FORMAT`, `LONG_DATE_FORMAT`, `FULL_DATE_FORMAT`, `DAY_MONTH_FORMAT`, `DAY_SHORT_MONTH_FORMAT`, `DAY_OF_WEEK_MONTH_FORMAT`, `SHORT_DAY_OF_WEEK_MONTH_FORMAT`, `SHORT_DAY_OF_WEEK_SHORT_MONTH_FORMAT`, `SHORT_TIME_FORMAT`, `LONG_TIME_FORMAT`, `AM_VALUE`, `PM_VALUE`, `NUMBER_THOUSANDS_SEPARATOR`, `NUMBER_DECIMAL_SEPARATOR`, `NUMBER_DECIMALS`) VALUES
(1, 'ru', 'ru', 'DD.MM.YYYY', 'DD.MM.YYYY HH:MI:SS', '#NAME# #LAST_NAME#', 1, 'UTF-8', 'Y', 'd.m.Y', 'j M Y', 'j F Y', 'l, j F Y', 'j F', 'j M', 'l, j F', 'D, j F', 'D, j M', 'H:i', 'H:i:s', 'am', 'pm', ' ', ',', 2),
(2, 'en', 'en', 'MM/DD/YYYY', 'MM/DD/YYYY H:MI:SS T', '#NAME# #LAST_NAME#', 0, 'UTF-8', 'Y', 'n/j/Y', 'M j, Y', 'F j, Y', 'l, F j, Y', 'F j', 'M j', 'l, F j', 'D, F j', 'D, M j', 'g:i a', 'g:i:s a', 'am', 'pm', ',', '.', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `b_entity_usage`
--

CREATE TABLE `b_entity_usage` (
  `USER_ID` int(11) NOT NULL,
  `CONTEXT` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `ITEM_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ITEM_ID_INT` int(11) NOT NULL DEFAULT '0',
  `PREFIX` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `LAST_USE_DATE` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_event`
--

CREATE TABLE `b_event` (
  `ID` int(18) NOT NULL,
  `EVENT_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `MESSAGE_ID` int(18) DEFAULT NULL,
  `LID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `C_FIELDS` longtext COLLATE utf8_unicode_ci,
  `DATE_INSERT` datetime DEFAULT NULL,
  `DATE_EXEC` datetime DEFAULT NULL,
  `SUCCESS_EXEC` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `DUPLICATE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_event`
--

INSERT INTO `b_event` (`ID`, `EVENT_NAME`, `MESSAGE_ID`, `LID`, `C_FIELDS`, `DATE_INSERT`, `DATE_EXEC`, `SUCCESS_EXEC`, `DUPLICATE`, `LANGUAGE_ID`) VALUES
(1, 'FEEDBACK_FORM', 5, 's1', 'a:4:{s:6:\"AUTHOR\";s:14:\"kaidor saervis\";s:12:\"AUTHOR_EMAIL\";s:21:\"rusik1.rusik1@mail.ru\";s:8:\"EMAIL_TO\";s:12:\"my@email.com\";s:4:\"TEXT\";s:7:\"asdadad\";}', '2021-06-07 08:55:59', '2021-06-07 08:55:59', 'Y', 'N', 'ru');

-- --------------------------------------------------------

--
-- Структура таблицы `b_event_attachment`
--

CREATE TABLE `b_event_attachment` (
  `EVENT_ID` int(18) NOT NULL,
  `FILE_ID` int(18) NOT NULL,
  `IS_FILE_COPIED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_event_log`
--

CREATE TABLE `b_event_log` (
  `ID` int(18) NOT NULL,
  `TIMESTAMP_X` timestamp NULL DEFAULT NULL,
  `SEVERITY` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `AUDIT_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ITEM_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `REMOTE_ADDR` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_AGENT` text COLLATE utf8_unicode_ci,
  `REQUEST_URI` text COLLATE utf8_unicode_ci,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_ID` int(18) DEFAULT NULL,
  `GUEST_ID` int(18) DEFAULT NULL,
  `DESCRIPTION` mediumtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_event_log`
--

INSERT INTO `b_event_log` (`ID`, `TIMESTAMP_X`, `SEVERITY`, `AUDIT_TYPE_ID`, `MODULE_ID`, `ITEM_ID`, `REMOTE_ADDR`, `USER_AGENT`, `REQUEST_URI`, `SITE_ID`, `USER_ID`, `GUEST_ID`, `DESCRIPTION`) VALUES
(1, '2021-06-02 19:42:57', 'SECURITY', 'USER_AUTHORIZE', 'main', '1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36 OPR/75.0.3969.279 (Edition Yx GX)', '/bitrix/admin/?login=yes&lang=ru&back_url_pub=%2F', NULL, 1, NULL, NULL),
(2, '2021-06-02 20:07:44', 'SECURITY', 'USER_LOGIN', 'main', 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36 OPR/75.0.3969.279 (Edition Yx GX)', '/bitrix/admin/fileman_admin.php?login=yes&lang=ru&site=s1&logical=Y&path=%2F', NULL, NULL, NULL, 'Неверный логин или пароль.<br>'),
(3, '2021-06-02 20:08:00', 'SECURITY', 'USER_AUTHORIZE', 'main', '1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36 OPR/75.0.3969.279 (Edition Yx GX)', '/bitrix/admin/fileman_admin.php?login=yes&lang=ru&site=s1&logical=Y&path=%2F', NULL, 1, NULL, NULL),
(4, '2021-06-03 18:31:16', 'SECURITY', 'USER_AUTHORIZE', 'main', '1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36 OPR/75.0.3969.279 (Edition Yx GX)', '/bitrix/admin/clouds_storage_list.php?lang=ru', NULL, 1, NULL, NULL),
(5, '2021-06-03 18:31:17', 'WARNING', 'SITE_CHECKER_ERROR', 'main', 'CSiteCheckerTest::CommonTest();', '-', '-', '/bitrix/admin/clouds_storage_list.php?lang=ru', NULL, 1, NULL, ''),
(6, '2021-06-04 09:46:15', 'SECURITY', 'USER_AUTHORIZE', 'main', '1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36 OPR/75.0.3969.279 (Edition Yx GX)', '/bitrix/admin/clouds_storage_list.php?lang=ru', NULL, 1, NULL, NULL),
(7, '2021-06-06 09:37:08', 'SECURITY', 'USER_AUTHORIZE', 'main', '1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36 OPR/75.0.3969.279 (Edition Yx GX)', '/?back_url_admin=%2Fbitrix%2Fadmin%2Fclouds_storage_list.php%3Flang%3Dru', 's1', 1, NULL, NULL),
(8, '2021-06-06 09:37:08', 'WARNING', 'SITE_CHECKER_ERROR', 'main', 'CSiteCheckerTest::CommonTest();', '-', '-', '/?back_url_admin=%2Fbitrix%2Fadmin%2Fclouds_storage_list.php%3Flang%3Dru', 's1', 1, NULL, ''),
(9, '2021-06-06 13:19:35', 'SECURITY', 'USER_AUTHORIZE', 'main', '1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36 OPR/75.0.3969.279 (Edition Yx GX)', '/?back_url_admin=%2Fbitrix%2Fadmin%2Fsite_admin.php%3Flang%3Dru', 's1', 1, NULL, NULL),
(10, '2021-06-06 13:49:43', 'SECURITY', 'USER_AUTHORIZE', 'main', '1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36 OPR/75.0.3969.279 (Edition Yx GX)', '/?back_url_admin=%2Fbitrix%2Fadmin%2Fsite_admin.php%3Flang%3Dru', 's1', 1, NULL, NULL),
(11, '2021-06-06 14:29:19', 'SECURITY', 'USER_LOGIN', 'main', 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36 OPR/75.0.3969.279 (Edition Yx GX)', '/bitrix/admin/site_checker.php?login=yes&lang=ru&start_test=Y', NULL, NULL, NULL, 'Неверный логин или пароль.<br>'),
(12, '2021-06-06 14:29:50', 'SECURITY', 'USER_AUTHORIZE', 'main', '1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36 OPR/75.0.3969.279 (Edition Yx GX)', '/bitrix/admin/site_checker.php?login=yes&lang=ru&start_test=Y', NULL, 1, NULL, NULL),
(13, '2021-06-06 18:30:17', 'SECURITY', 'USER_AUTHORIZE', 'main', '1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36 OPR/75.0.3969.279 (Edition Yx GX)', '/bitrix/admin/public_file_property.php?lang=ru&site=s1&path=%2Findex.php&back_url=%2F%3Fback_url_admin%3D%252Fbitrix%252Fadmin%252Fsite_checker.php%253Flang%253Dru&siteTemplateId=balita&bxsender=core_window_cdialog', NULL, 1, NULL, NULL),
(14, '2021-06-06 18:45:18', 'UNKNOWN', 'PAGE_ADD', 'main', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36 OPR/75.0.3969.279 (Edition Yx GX)', '/bitrix/admin/public_file_new.php?bxsender=core_window_cdialog&lang=ru&site=s1&templateID=balita&path=%2F&back_url=%2F%3Fbitrix_include_areas%3DN%26clear_cache%3DY&siteTemplateId=balita', NULL, 1, NULL, 'a:1:{s:4:\"path\";s:20:\"novaya-stranitsa.php\";}'),
(15, '2021-06-06 18:45:18', 'UNKNOWN', 'MENU_EDIT', 'main', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36 OPR/75.0.3969.279 (Edition Yx GX)', '/bitrix/admin/public_file_new.php?bxsender=core_window_cdialog&lang=ru&site=s1&templateID=balita&path=%2F&back_url=%2F%3Fbitrix_include_areas%3DN%26clear_cache%3DY&siteTemplateId=balita', NULL, 1, NULL, 'a:2:{s:4:\"path\";s:0:\"\";s:9:\"menu_name\";s:23:\"Главное меню\";}'),
(16, '2021-06-06 18:45:25', 'UNKNOWN', 'PAGE_EDIT', 'main', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36 OPR/75.0.3969.279 (Edition Yx GX)', '/bitrix/admin/public_file_edit.php', 's1', 1, NULL, 'a:1:{s:4:\"path\";s:20:\"novaya-stranitsa.php\";}'),
(17, '2021-06-06 18:47:47', 'UNKNOWN', 'MENU_EDIT', 'fileman', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36 OPR/75.0.3969.279 (Edition Yx GX)', '/bitrix/admin/fileman_menu_edit.php?', NULL, 1, NULL, 'a:2:{s:9:\"menu_name\";s:23:\"Главное меню\";s:4:\"path\";s:0:\"\";}'),
(18, '2021-06-06 18:50:48', 'UNKNOWN', 'PAGE_ADD', 'main', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36 OPR/75.0.3969.279 (Edition Yx GX)', '/bitrix/admin/public_file_new.php?bxsender=core_window_cdialog&lang=ru&site=s1&templateID=balita&newFolder=Y&path=%2F&back_url=%2F%3Fbitrix_include_areas%3DY%26clear_cache%3DY&siteTemplateId=balita', NULL, 1, NULL, 'a:1:{s:4:\"path\";s:15:\"about/index.php\";}'),
(19, '2021-06-06 18:50:48', 'UNKNOWN', 'SECTION_ADD', 'main', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36 OPR/75.0.3969.279 (Edition Yx GX)', '/bitrix/admin/public_file_new.php?bxsender=core_window_cdialog&lang=ru&site=s1&templateID=balita&newFolder=Y&path=%2F&back_url=%2F%3Fbitrix_include_areas%3DY%26clear_cache%3DY&siteTemplateId=balita', NULL, 1, NULL, 'a:1:{s:4:\"path\";s:5:\"about\";}'),
(20, '2021-06-06 18:50:48', 'UNKNOWN', 'MENU_EDIT', 'main', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36 OPR/75.0.3969.279 (Edition Yx GX)', '/bitrix/admin/public_file_new.php?bxsender=core_window_cdialog&lang=ru&site=s1&templateID=balita&newFolder=Y&path=%2F&back_url=%2F%3Fbitrix_include_areas%3DY%26clear_cache%3DY&siteTemplateId=balita', NULL, 1, NULL, 'a:2:{s:4:\"path\";s:0:\"\";s:9:\"menu_name\";s:23:\"Главное меню\";}'),
(21, '2021-06-06 18:51:07', 'UNKNOWN', 'PAGE_EDIT', 'main', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36 OPR/75.0.3969.279 (Edition Yx GX)', '/bitrix/admin/public_file_edit.php', 's1', 1, NULL, 'a:1:{s:4:\"path\";s:15:\"about/index.php\";}'),
(22, '2021-06-06 18:53:46', 'UNKNOWN', 'MENU_EDIT', 'main', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36 OPR/75.0.3969.279 (Edition Yx GX)', '/bitrix/admin/public_menu_edit.php?bxsender=core_window_cdialog&lang=ru&site=s1&back_url=%2Fabout%2F%3Fclear_cache%3DY&path=%2F&name=main&siteTemplateId=balita', NULL, 1, NULL, 'a:2:{s:9:\"menu_name\";s:23:\"Главное меню\";s:4:\"path\";s:0:\"\";}'),
(23, '2021-06-06 18:54:23', 'UNKNOWN', 'MENU_EDIT', 'fileman', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36 OPR/75.0.3969.279 (Edition Yx GX)', '/bitrix/admin/fileman_menu_edit.php?', NULL, 1, NULL, 'a:2:{s:9:\"menu_name\";s:23:\"Главное меню\";s:4:\"path\";s:0:\"\";}'),
(24, '2021-06-06 18:59:21', 'UNKNOWN', 'PAGE_ADD', 'main', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36 OPR/75.0.3969.279 (Edition Yx GX)', '/bitrix/admin/public_file_new.php?bxsender=core_window_cdialog&lang=ru&site=s1&templateID=balita&newFolder=Y&path=%2F&back_url=%2F&siteTemplateId=balita', NULL, 1, NULL, 'a:1:{s:4:\"path\";s:17:\"contact/index.php\";}'),
(25, '2021-06-06 18:59:21', 'UNKNOWN', 'SECTION_ADD', 'main', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36 OPR/75.0.3969.279 (Edition Yx GX)', '/bitrix/admin/public_file_new.php?bxsender=core_window_cdialog&lang=ru&site=s1&templateID=balita&newFolder=Y&path=%2F&back_url=%2F&siteTemplateId=balita', NULL, 1, NULL, 'a:1:{s:4:\"path\";s:7:\"contact\";}'),
(26, '2021-06-06 18:59:21', 'UNKNOWN', 'MENU_EDIT', 'main', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36 OPR/75.0.3969.279 (Edition Yx GX)', '/bitrix/admin/public_file_new.php?bxsender=core_window_cdialog&lang=ru&site=s1&templateID=balita&newFolder=Y&path=%2F&back_url=%2F&siteTemplateId=balita', NULL, 1, NULL, 'a:2:{s:4:\"path\";s:0:\"\";s:9:\"menu_name\";s:23:\"Главное меню\";}'),
(27, '2021-06-06 18:59:31', 'UNKNOWN', 'PAGE_EDIT', 'main', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36 OPR/75.0.3969.279 (Edition Yx GX)', '/bitrix/admin/public_file_edit.php', 's1', 1, NULL, 'a:1:{s:4:\"path\";s:17:\"contact/index.php\";}'),
(28, '2021-06-06 19:17:15', 'UNKNOWN', 'PAGE_EDIT', 'main', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36 OPR/75.0.3969.279 (Edition Yx GX)', '/bitrix/admin/public_file_edit_src.php?bxsender=core_window_cdialog&lang=ru&site=ru&back_url=%2F%3Fclear_cache%3DY&path=%2Fbitrix%2Ftemplates%2F.default%2Fcomponents%2Fbitrix%2Fmenu%2Ftemplate1%2Ftemplate.php', 's1', 1, NULL, 'a:1:{s:4:\"path\";s:71:\"bitrix/templates/.default/components/bitrix/menu/template1/template.php\";}'),
(29, '2021-06-06 19:20:42', 'UNKNOWN', 'PAGE_EDIT', 'main', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36 OPR/75.0.3969.279 (Edition Yx GX)', '/bitrix/admin/public_file_edit_src.php?bxsender=core_window_cdialog&site=s1&path=%2Fbitrix%2Ftemplates%2F.default%2Fcomponents%2Fbitrix%2Fmenu%2Ftemplate1%2Ftemplate.php&back_url=%2F%3Fclear_cache%3DY&lang=ru&siteTemplateId=balita', 's1', 1, NULL, 'a:1:{s:4:\"path\";s:71:\"bitrix/templates/.default/components/bitrix/menu/template1/template.php\";}'),
(30, '2021-06-06 19:46:15', 'UNKNOWN', 'PAGE_EDIT', 'main', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36 OPR/75.0.3969.279 (Edition Yx GX)', '/bitrix/admin/public_file_edit_src.php?bxsender=core_window_cdialog&site=s1&path=%2Flocal%2Ftemplates%2Fbalita%2Fcomponents%2Fbitrix%2Fmenu%2Fmenu_balita%2Ftemplate.php&back_url=%2F%3Fclear_cache%3DY&lang=ru&siteTemplateId=balita', 's1', 1, NULL, 'a:1:{s:4:\"path\";s:70:\"local/templates/balita/components/bitrix/menu/menu_balita/template.php\";}'),
(31, '2021-06-06 19:55:18', 'UNKNOWN', 'PAGE_ADD', 'main', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36 OPR/75.0.3969.279 (Edition Yx GX)', '/bitrix/admin/public_file_new.php?bxsender=core_window_cdialog&lang=ru&site=s1&templateID=balita&newFolder=Y&path=%2F&back_url=%2F%3Fclear_cache%3DY&siteTemplateId=balita', NULL, 1, NULL, 'a:1:{s:4:\"path\";s:20:\"Categories/index.php\";}'),
(32, '2021-06-06 19:55:18', 'UNKNOWN', 'SECTION_ADD', 'main', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36 OPR/75.0.3969.279 (Edition Yx GX)', '/bitrix/admin/public_file_new.php?bxsender=core_window_cdialog&lang=ru&site=s1&templateID=balita&newFolder=Y&path=%2F&back_url=%2F%3Fclear_cache%3DY&siteTemplateId=balita', NULL, 1, NULL, 'a:1:{s:4:\"path\";s:10:\"Categories\";}'),
(33, '2021-06-06 19:55:18', 'UNKNOWN', 'MENU_EDIT', 'main', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36 OPR/75.0.3969.279 (Edition Yx GX)', '/bitrix/admin/public_file_new.php?bxsender=core_window_cdialog&lang=ru&site=s1&templateID=balita&newFolder=Y&path=%2F&back_url=%2F%3Fclear_cache%3DY&siteTemplateId=balita', NULL, 1, NULL, 'a:2:{s:4:\"path\";s:0:\"\";s:9:\"menu_name\";s:23:\"Главное меню\";}'),
(34, '2021-06-06 19:55:30', 'UNKNOWN', 'PAGE_EDIT', 'main', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36 OPR/75.0.3969.279 (Edition Yx GX)', '/bitrix/admin/public_file_edit.php', 's1', 1, NULL, 'a:1:{s:4:\"path\";s:20:\"Categories/index.php\";}'),
(35, '2021-06-06 19:56:53', 'UNKNOWN', 'MENU_EDIT', 'fileman', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36 OPR/75.0.3969.279 (Edition Yx GX)', '/bitrix/admin/fileman_menu_edit.php?', NULL, 1, NULL, 'a:2:{s:9:\"menu_name\";s:23:\"Главное меню\";s:4:\"path\";s:0:\"\";}'),
(36, '2021-06-06 20:20:25', 'SECURITY', 'USER_AUTHORIZE', 'main', '1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36 OPR/75.0.3969.279 (Edition Yx GX)', '/bitrix/tools/public_session.php?k=0b03c184a7b98622d8c7270d94092530.9b57358497c48de6b3234b2201d31b6e8b06c1bea4574e9e605e7eb973923892', 's1', 1, NULL, NULL),
(37, '2021-06-06 21:08:47', 'SECURITY', 'USER_AUTHORIZE', 'main', '1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36 OPR/75.0.3969.279 (Edition Yx GX)', '/', 's1', 1, NULL, NULL),
(38, '2021-06-07 03:42:31', 'SECURITY', 'USER_AUTHORIZE', 'main', '1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36 OPR/75.0.3969.279 (Edition Yx GX)', '/?&clear_cache=Y&_r=4832', 's1', 1, NULL, NULL),
(39, '2021-06-07 05:11:31', 'UNKNOWN', 'PAGE_ADD', 'main', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36 OPR/75.0.3969.279 (Edition Yx GX)', '/bitrix/admin/public_file_new.php?bxsender=core_window_cdialog&lang=ru&site=s1&templateID=balita&path=%2F&back_url=%2F&siteTemplateId=balita', NULL, 1, NULL, 'a:1:{s:4:\"path\";s:15:\"blog-single.php\";}'),
(40, '2021-06-07 05:12:27', 'UNKNOWN', 'PAGE_EDIT', 'main', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36 OPR/75.0.3969.279 (Edition Yx GX)', '/bitrix/admin/public_file_edit.php', 's1', 1, NULL, 'a:1:{s:4:\"path\";s:15:\"blog-single.php\";}'),
(41, '2021-06-07 05:59:45', 'UNKNOWN', 'IBLOCK_EDIT', 'iblock', '1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36 OPR/75.0.3969.279 (Edition Yx GX)', '/bitrix/admin/iblock_edit.php?type=Balita&lang=ru&admin=Y', NULL, 1, NULL, 'a:1:{s:4:\"NAME\";s:10:\"Categories\";}'),
(42, '2021-06-07 06:11:15', 'UNKNOWN', 'SECTION_RENAME', 'fileman', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36 OPR/75.0.3969.279 (Edition Yx GX)', '/bitrix/admin/fileman_admin.php?mode=frame&lang=ru&site=s1&path=%2F', NULL, 1, NULL, 'a:1:{s:4:\"path\";s:10:\"categories\";}'),
(43, '2021-06-07 06:14:39', 'UNKNOWN', 'SECTION_RENAME', 'fileman', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36 OPR/75.0.3969.279 (Edition Yx GX)', '/bitrix/admin/fileman_admin.php?mode=frame&lang=ru&path=%2F&back_url_pub=%2F%D1%81ategories%2F', NULL, 1, NULL, 'a:1:{s:4:\"path\";s:12:\"CГategories\";}'),
(44, '2021-06-07 06:15:41', 'UNKNOWN', 'SECTION_RENAME', 'fileman', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36 OPR/75.0.3969.279 (Edition Yx GX)', '/bitrix/admin/fileman_admin.php?mode=frame&lang=ru&path=%2F&back_url_pub=%2F%D1%81ategories%2F', NULL, 1, NULL, 'a:1:{s:4:\"path\";s:10:\"categories\";}'),
(45, '2021-06-07 06:32:23', 'UNKNOWN', 'MENU_EDIT', 'main', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36 OPR/75.0.3969.279 (Edition Yx GX)', '/bitrix/admin/public_menu_edit.php?bxsender=core_window_cdialog&lang=ru&site=s1&back_url=%2Fcategories%2F&path=%2F&name=main&siteTemplateId=balita', NULL, 1, NULL, 'a:2:{s:9:\"menu_name\";s:23:\"Главное меню\";s:4:\"path\";s:0:\"\";}'),
(46, '2021-06-07 07:04:40', 'UNKNOWN', 'IBLOCK_EDIT', 'iblock', '1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36 OPR/75.0.3969.279 (Edition Yx GX)', '/bitrix/admin/iblock_edit.php?type=Balita&lang=ru&admin=Y', NULL, 1, NULL, 'a:1:{s:4:\"NAME\";s:10:\"Categories\";}'),
(47, '2021-06-07 09:37:25', 'WARNING', 'SITE_CHECKER_ERROR', 'main', 'CSiteCheckerTest::CommonTest();', '-', '-', '/bitrix/tools/public_session.php?k=e43644778a41ae3e64be2652f4ffc142.e284cb4b3e074cc9010ea7728dfaa41f6a39e59307bd4d68a30c23934fb537c1', 's1', 1, NULL, ''),
(48, '2021-06-07 11:43:00', 'SECURITY', 'USER_AUTHORIZE', 'main', '1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36 OPR/75.0.3969.279 (Edition Yx GX)', '/', 's1', 1, NULL, NULL),
(49, '2021-06-08 08:02:21', 'SECURITY', 'USER_AUTHORIZE', 'main', '1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36 OPR/75.0.3969.282 (Edition Yx GX)', '/contact/', 's1', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `b_event_message`
--

CREATE TABLE `b_event_message` (
  `ID` int(18) NOT NULL,
  `TIMESTAMP_X` timestamp NULL DEFAULT NULL,
  `EVENT_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `EMAIL_FROM` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '#EMAIL_FROM#',
  `EMAIL_TO` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '#EMAIL_TO#',
  `SUBJECT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MESSAGE` longtext COLLATE utf8_unicode_ci,
  `MESSAGE_PHP` longtext COLLATE utf8_unicode_ci,
  `BODY_TYPE` varchar(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `BCC` text COLLATE utf8_unicode_ci,
  `REPLY_TO` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CC` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IN_REPLY_TO` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PRIORITY` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FIELD1_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FIELD1_VALUE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FIELD2_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FIELD2_VALUE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SITE_TEMPLATE_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ADDITIONAL_FIELD` text COLLATE utf8_unicode_ci,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_event_message`
--

INSERT INTO `b_event_message` (`ID`, `TIMESTAMP_X`, `EVENT_NAME`, `LID`, `ACTIVE`, `EMAIL_FROM`, `EMAIL_TO`, `SUBJECT`, `MESSAGE`, `MESSAGE_PHP`, `BODY_TYPE`, `BCC`, `REPLY_TO`, `CC`, `IN_REPLY_TO`, `PRIORITY`, `FIELD1_NAME`, `FIELD1_VALUE`, `FIELD2_NAME`, `FIELD2_VALUE`, `SITE_TEMPLATE_ID`, `ADDITIONAL_FIELD`, `LANGUAGE_ID`) VALUES
(1, '2021-06-02 16:29:44', 'NEW_USER', 's1', 'Y', '#DEFAULT_EMAIL_FROM#', '#DEFAULT_EMAIL_FROM#', '#SITE_NAME#: Зарегистрировался новый пользователь', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nНа сайте #SERVER_NAME# успешно зарегистрирован новый пользователь.\n\nДанные пользователя:\nID пользователя: #USER_ID#\n\nИмя: #NAME#\nФамилия: #LAST_NAME#\nE-Mail: #EMAIL#\n\nLogin: #LOGIN#\n\nПисьмо сгенерировано автоматически.', 'Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nНа сайте <?=$arParams[\"SERVER_NAME\"];?> успешно зарегистрирован новый пользователь.\n\nДанные пользователя:\nID пользователя: <?=$arParams[\"USER_ID\"];?>\n\n\nИмя: <?=$arParams[\"NAME\"];?>\n\nФамилия: <?=$arParams[\"LAST_NAME\"];?>\n\nE-Mail: <?=$arParams[\"EMAIL\"];?>\n\n\nLogin: <?=$arParams[\"LOGIN\"];?>\n\n\nПисьмо сгенерировано автоматически.', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ru'),
(2, '2021-06-02 16:29:44', 'USER_INFO', 's1', 'Y', '#DEFAULT_EMAIL_FROM#', '#EMAIL#', '#SITE_NAME#: Регистрационная информация', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n#NAME# #LAST_NAME#,\n\n#MESSAGE#\n\nВаша регистрационная информация:\n\nID пользователя: #USER_ID#\nСтатус профиля: #STATUS#\nLogin: #LOGIN#\n\nВы можете изменить пароль, перейдя по следующей ссылке:\nhttp://#SERVER_NAME#/auth/index.php?change_password=yes&lang=ru&USER_CHECKWORD=#CHECKWORD#&USER_LOGIN=#URL_LOGIN#\n\nСообщение сгенерировано автоматически.', 'Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n<?=$arParams[\"NAME\"];?> <?=$arParams[\"LAST_NAME\"];?>,\n\n<?=$arParams[\"MESSAGE\"];?>\n\n\nВаша регистрационная информация:\n\nID пользователя: <?=$arParams[\"USER_ID\"];?>\n\nСтатус профиля: <?=$arParams[\"STATUS\"];?>\n\nLogin: <?=$arParams[\"LOGIN\"];?>\n\n\nВы можете изменить пароль, перейдя по следующей ссылке:\nhttp://<?=$arParams[\"SERVER_NAME\"];?>/auth/index.php?change_password=yes&lang=ru&USER_CHECKWORD=<?=$arParams[\"CHECKWORD\"];?>&USER_LOGIN=<?=$arParams[\"URL_LOGIN\"];?>\n\n\nСообщение сгенерировано автоматически.', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ru'),
(3, '2021-06-02 16:29:44', 'USER_PASS_REQUEST', 's1', 'Y', '#DEFAULT_EMAIL_FROM#', '#EMAIL#', '#SITE_NAME#: Запрос на смену пароля', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n#NAME# #LAST_NAME#,\n\n#MESSAGE#\n\nДля смены пароля перейдите по следующей ссылке:\nhttp://#SERVER_NAME#/auth/index.php?change_password=yes&lang=ru&USER_CHECKWORD=#CHECKWORD#&USER_LOGIN=#URL_LOGIN#\n\nВаша регистрационная информация:\n\nID пользователя: #USER_ID#\nСтатус профиля: #STATUS#\nLogin: #LOGIN#\n\nСообщение сгенерировано автоматически.', 'Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n<?=$arParams[\"NAME\"];?> <?=$arParams[\"LAST_NAME\"];?>,\n\n<?=$arParams[\"MESSAGE\"];?>\n\n\nДля смены пароля перейдите по следующей ссылке:\nhttp://<?=$arParams[\"SERVER_NAME\"];?>/auth/index.php?change_password=yes&lang=ru&USER_CHECKWORD=<?=$arParams[\"CHECKWORD\"];?>&USER_LOGIN=<?=$arParams[\"URL_LOGIN\"];?>\n\n\nВаша регистрационная информация:\n\nID пользователя: <?=$arParams[\"USER_ID\"];?>\n\nСтатус профиля: <?=$arParams[\"STATUS\"];?>\n\nLogin: <?=$arParams[\"LOGIN\"];?>\n\n\nСообщение сгенерировано автоматически.', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ru'),
(4, '2021-06-02 16:29:44', 'USER_PASS_CHANGED', 's1', 'Y', '#DEFAULT_EMAIL_FROM#', '#EMAIL#', '#SITE_NAME#: Подтверждение смены пароля', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n#NAME# #LAST_NAME#,\n\n#MESSAGE#\n\nВаша регистрационная информация:\n\nID пользователя: #USER_ID#\nСтатус профиля: #STATUS#\nLogin: #LOGIN#\n\nСообщение сгенерировано автоматически.', 'Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n<?=$arParams[\"NAME\"];?> <?=$arParams[\"LAST_NAME\"];?>,\n\n<?=$arParams[\"MESSAGE\"];?>\n\n\nВаша регистрационная информация:\n\nID пользователя: <?=$arParams[\"USER_ID\"];?>\n\nСтатус профиля: <?=$arParams[\"STATUS\"];?>\n\nLogin: <?=$arParams[\"LOGIN\"];?>\n\n\nСообщение сгенерировано автоматически.', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ru'),
(5, '2021-06-02 16:29:44', 'NEW_USER_CONFIRM', 's1', 'Y', '#DEFAULT_EMAIL_FROM#', '#EMAIL#', '#SITE_NAME#: Подтверждение регистрации нового пользователя', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nЗдравствуйте,\n\nВы получили это сообщение, так как ваш адрес был использован при регистрации нового пользователя на сервере #SERVER_NAME#.\n\nВаш код для подтверждения регистрации: #CONFIRM_CODE#\n\nДля подтверждения регистрации перейдите по следующей ссылке:\nhttp://#SERVER_NAME#/auth/index.php?confirm_registration=yes&confirm_user_id=#USER_ID#&confirm_code=#CONFIRM_CODE#\n\nВы также можете ввести код для подтверждения регистрации на странице:\nhttp://#SERVER_NAME#/auth/index.php?confirm_registration=yes&confirm_user_id=#USER_ID#\n\nВнимание! Ваш профиль не будет активным, пока вы не подтвердите свою регистрацию.\n\n---------------------------------------------------------------------\n\nСообщение сгенерировано автоматически.', 'Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nЗдравствуйте,\n\nВы получили это сообщение, так как ваш адрес был использован при регистрации нового пользователя на сервере <?=$arParams[\"SERVER_NAME\"];?>.\n\nВаш код для подтверждения регистрации: <?=$arParams[\"CONFIRM_CODE\"];?>\n\n\nДля подтверждения регистрации перейдите по следующей ссылке:\nhttp://<?=$arParams[\"SERVER_NAME\"];?>/auth/index.php?confirm_registration=yes&confirm_user_id=<?=$arParams[\"USER_ID\"];?>&confirm_code=<?=$arParams[\"CONFIRM_CODE\"];?>\n\n\nВы также можете ввести код для подтверждения регистрации на странице:\nhttp://<?=$arParams[\"SERVER_NAME\"];?>/auth/index.php?confirm_registration=yes&confirm_user_id=<?=$arParams[\"USER_ID\"];?>\n\n\nВнимание! Ваш профиль не будет активным, пока вы не подтвердите свою регистрацию.\n\n---------------------------------------------------------------------\n\nСообщение сгенерировано автоматически.', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ru'),
(6, '2021-06-02 16:29:44', 'USER_INVITE', 's1', 'Y', '#DEFAULT_EMAIL_FROM#', '#EMAIL#', '#SITE_NAME#: Приглашение на сайт', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\nЗдравствуйте, #NAME# #LAST_NAME#!\n\nАдминистратором сайта вы добавлены в число зарегистрированных пользователей.\n\nПриглашаем Вас на наш сайт.\n\nВаша регистрационная информация:\n\nID пользователя: #ID#\nLogin: #LOGIN#\n\nРекомендуем вам сменить установленный автоматически пароль.\n\nДля смены пароля перейдите по следующей ссылке:\nhttp://#SERVER_NAME#/auth.php?change_password=yes&USER_LOGIN=#URL_LOGIN#&USER_CHECKWORD=#CHECKWORD#\n', 'Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\nЗдравствуйте, <?=$arParams[\"NAME\"];?> <?=$arParams[\"LAST_NAME\"];?>!\n\nАдминистратором сайта вы добавлены в число зарегистрированных пользователей.\n\nПриглашаем Вас на наш сайт.\n\nВаша регистрационная информация:\n\nID пользователя: <?=$arParams[\"ID\"];?>\n\nLogin: <?=$arParams[\"LOGIN\"];?>\n\n\nРекомендуем вам сменить установленный автоматически пароль.\n\nДля смены пароля перейдите по следующей ссылке:\nhttp://<?=$arParams[\"SERVER_NAME\"];?>/auth.php?change_password=yes&USER_LOGIN=<?=$arParams[\"URL_LOGIN\"];?>&USER_CHECKWORD=<?=$arParams[\"CHECKWORD\"];?>\n\n', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ru'),
(7, '2021-06-02 16:29:44', 'FEEDBACK_FORM', 's1', 'Y', '#DEFAULT_EMAIL_FROM#', '#EMAIL_TO#', '#SITE_NAME#: Сообщение из формы обратной связи', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nВам было отправлено сообщение через форму обратной связи\n\nАвтор: #AUTHOR#\nE-mail автора: #AUTHOR_EMAIL#\n\nТекст сообщения:\n#TEXT#\n\nСообщение сгенерировано автоматически.', 'Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nВам было отправлено сообщение через форму обратной связи\n\nАвтор: <?=$arParams[\"AUTHOR\"];?>\n\nE-mail автора: <?=$arParams[\"AUTHOR_EMAIL\"];?>\n\n\nТекст сообщения:\n<?=$arParams[\"TEXT\"];?>\n\n\nСообщение сгенерировано автоматически.', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ru'),
(8, '2021-06-02 16:29:44', 'MAIN_MAIL_CONFIRM_CODE', 's1', 'Y', '#DEFAULT_EMAIL_FROM#', '#EMAIL_TO#', '#MESSAGE_SUBJECT#', '<? EventMessageThemeCompiler::includeComponent(\'bitrix:main.mail.confirm\', \'\', $arParams); ?>', '<? EventMessageThemeCompiler::includeComponent(\'bitrix:main.mail.confirm\', \'\', $arParams); ?>', 'html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mail_join', NULL, NULL),
(9, '2021-06-02 16:29:44', 'EVENT_LOG_NOTIFICATION', 's1', 'Y', '#DEFAULT_EMAIL_FROM#', '#EMAIL#', 'Оповещение журнала событий: #NAME#', 'Зафиксированы события в журнале, соответствующие параметрам оповещения:\n\nТип события: #AUDIT_TYPE_ID#\nОбъект: #ITEM_ID#\nПользователь: #USER_ID# \nIP-адрес: #REMOTE_ADDR#\nБраузер: #USER_AGENT#\nСтраница: #REQUEST_URI# \n\nКоличество записей: #EVENT_COUNT# \n\n#ADDITIONAL_TEXT#\n\nПерейти в журнал событий:\nhttp://#SERVER_NAME#/bitrix/admin/event_log.php?set_filter=Y&find_audit_type_id=#AUDIT_TYPE_ID#', 'Зафиксированы события в журнале, соответствующие параметрам оповещения:\n\nТип события: <?=$arParams[\"AUDIT_TYPE_ID\"];?>\n\nОбъект: <?=$arParams[\"ITEM_ID\"];?>\n\nПользователь: <?=$arParams[\"USER_ID\"];?> \nIP-адрес: <?=$arParams[\"REMOTE_ADDR\"];?>\n\nБраузер: <?=$arParams[\"USER_AGENT\"];?>\n\nСтраница: <?=$arParams[\"REQUEST_URI\"];?> \n\nКоличество записей: <?=$arParams[\"EVENT_COUNT\"];?> \n\n<?=$arParams[\"ADDITIONAL_TEXT\"];?>\n\n\nПерейти в журнал событий:\nhttp://<?=$arParams[\"SERVER_NAME\"];?>/bitrix/admin/event_log.php?set_filter=Y&find_audit_type_id=<?=$arParams[\"AUDIT_TYPE_ID\"];?>', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ru'),
(10, '2021-06-02 16:29:44', 'USER_CODE_REQUEST', 's1', 'Y', '#DEFAULT_EMAIL_FROM#', '#EMAIL#', '#SITE_NAME#: Запрос кода авторизации', 'Используйте для авторизации код:\n\n#CHECKWORD#\n\nПосле авторизации вы сможете изменить свой пароль в редактировании профиля.\n\nВаша регистрационная информация:\n\nID пользователя: #USER_ID#\nСтатус профиля: #STATUS#\nЛогин: #LOGIN#\n\nСообщение создано автоматически.', 'Используйте для авторизации код:\n\n<?=$arParams[\"CHECKWORD\"];?>\n\n\nПосле авторизации вы сможете изменить свой пароль в редактировании профиля.\n\nВаша регистрационная информация:\n\nID пользователя: <?=$arParams[\"USER_ID\"];?>\n\nСтатус профиля: <?=$arParams[\"STATUS\"];?>\n\nЛогин: <?=$arParams[\"LOGIN\"];?>\n\n\nСообщение создано автоматически.', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ru');

-- --------------------------------------------------------

--
-- Структура таблицы `b_event_message_attachment`
--

CREATE TABLE `b_event_message_attachment` (
  `EVENT_MESSAGE_ID` int(18) NOT NULL,
  `FILE_ID` int(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_event_message_site`
--

CREATE TABLE `b_event_message_site` (
  `EVENT_MESSAGE_ID` int(11) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_event_message_site`
--

INSERT INTO `b_event_message_site` (`EVENT_MESSAGE_ID`, `SITE_ID`) VALUES
(1, 's1'),
(2, 's1'),
(3, 's1'),
(4, 's1'),
(5, 's1'),
(6, 's1'),
(7, 's1'),
(8, 's1'),
(9, 's1'),
(10, 's1');

-- --------------------------------------------------------

--
-- Структура таблицы `b_event_type`
--

CREATE TABLE `b_event_type` (
  `ID` int(18) NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `EVENT_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `SORT` int(18) NOT NULL DEFAULT '150',
  `EVENT_TYPE` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'email'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_event_type`
--

INSERT INTO `b_event_type` (`ID`, `LID`, `EVENT_NAME`, `NAME`, `DESCRIPTION`, `SORT`, `EVENT_TYPE`) VALUES
(1, 'ru', 'NEW_USER', 'Зарегистрировался новый пользователь', '\n\n#USER_ID# - ID пользователя\n#LOGIN# - Логин\n#EMAIL# - EMail\n#NAME# - Имя\n#LAST_NAME# - Фамилия\n#USER_IP# - IP пользователя\n#USER_HOST# - Хост пользователя\n', 1, 'email'),
(2, 'ru', 'USER_INFO', 'Информация о пользователе', '\n\n#USER_ID# - ID пользователя\n#STATUS# - Статус логина\n#MESSAGE# - Сообщение пользователю\n#LOGIN# - Логин\n#URL_LOGIN# - Логин, закодированный для использования в URL\n#CHECKWORD# - Контрольная строка для смены пароля\n#NAME# - Имя\n#LAST_NAME# - Фамилия\n#EMAIL# - E-Mail пользователя\n', 2, 'email'),
(3, 'ru', 'NEW_USER_CONFIRM', 'Подтверждение регистрации нового пользователя', '\n\n\n#USER_ID# - ID пользователя\n#LOGIN# - Логин\n#EMAIL# - EMail\n#NAME# - Имя\n#LAST_NAME# - Фамилия\n#USER_IP# - IP пользователя\n#USER_HOST# - Хост пользователя\n#CONFIRM_CODE# - Код подтверждения\n', 3, 'email'),
(4, 'ru', 'USER_PASS_REQUEST', 'Запрос на смену пароля', '\n\n#USER_ID# - ID пользователя\n#STATUS# - Статус логина\n#MESSAGE# - Сообщение пользователю\n#LOGIN# - Логин\n#URL_LOGIN# - Логин, закодированный для использования в URL\n#CHECKWORD# - Контрольная строка для смены пароля\n#NAME# - Имя\n#LAST_NAME# - Фамилия\n#EMAIL# - E-Mail пользователя\n', 4, 'email'),
(5, 'ru', 'USER_PASS_CHANGED', 'Подтверждение смены пароля', '\n\n#USER_ID# - ID пользователя\n#STATUS# - Статус логина\n#MESSAGE# - Сообщение пользователю\n#LOGIN# - Логин\n#URL_LOGIN# - Логин, закодированный для использования в URL\n#CHECKWORD# - Контрольная строка для смены пароля\n#NAME# - Имя\n#LAST_NAME# - Фамилия\n#EMAIL# - E-Mail пользователя\n', 5, 'email'),
(6, 'ru', 'USER_INVITE', 'Приглашение на сайт нового пользователя', '#ID# - ID пользователя\n#LOGIN# - Логин\n#URL_LOGIN# - Логин, закодированный для использования в URL\n#EMAIL# - EMail\n#NAME# - Имя\n#LAST_NAME# - Фамилия\n#PASSWORD# - пароль пользователя \n#CHECKWORD# - Контрольная строка для смены пароля\n#XML_ID# - ID пользователя для связи с внешними источниками\n', 6, 'email'),
(7, 'ru', 'FEEDBACK_FORM', 'Отправка сообщения через форму обратной связи', '#AUTHOR# - Автор сообщения\n#AUTHOR_EMAIL# - Email автора сообщения\n#TEXT# - Текст сообщения\n#EMAIL_FROM# - Email отправителя письма\n#EMAIL_TO# - Email получателя письма', 7, 'email'),
(8, 'ru', 'MAIN_MAIL_CONFIRM_CODE', 'Подтверждение email-адреса отправителя', '\n\n#EMAIL_TO# - Email-адрес для подтверждения\n#MESSAGE_SUBJECT# - Тема сообщения\n#CONFIRM_CODE# - Код подтверждения', 8, 'email'),
(9, 'ru', 'EVENT_LOG_NOTIFICATION', 'Оповещение журнала событий', '#EMAIL# - Email получателя\n#ADDITIONAL_TEXT# - Дополнительный текст действия\n#NAME# - Название оповещения\n#AUDIT_TYPE_ID# - Тип события\n#ITEM_ID# - Объект\n#USER_ID# - Пользователь\n#REMOTE_ADDR# - IP-адрес\n#USER_AGENT# - Браузер\n#REQUEST_URI# - Страница\n#EVENT_COUNT# - Количество записей', 9, 'email'),
(10, 'ru', 'USER_CODE_REQUEST', 'Запрос кода авторизации', '#USER_ID# - ID пользователя\n#STATUS# - Статус логина\n#LOGIN# - Логин\n#CHECKWORD# - Код для авторизации\n#NAME# - Имя\n#LAST_NAME# - Фамилия\n#EMAIL# - Email пользователя\n', 10, 'email'),
(11, 'ru', 'SMS_USER_CONFIRM_NUMBER', 'Подтверждение номера телефона по СМС', '#USER_PHONE# - номер телефона\n#CODE# - код подтверждения\n', 100, 'sms'),
(12, 'ru', 'SMS_USER_RESTORE_PASSWORD', 'Восстановление пароля через СМС', '#USER_PHONE# - номер телефона\n#CODE# - код для восстановления\n', 100, 'sms'),
(13, 'ru', 'SMS_EVENT_LOG_NOTIFICATION', 'Оповещение журнала событий', '#PHONE_NUMBER# - Номер телефона получателя\n#ADDITIONAL_TEXT# - Дополнительный текст действия\n#NAME# - Название оповещения\n#AUDIT_TYPE_ID# - Тип события\n#ITEM_ID# - Объект\n#USER_ID# - Пользователь\n#REMOTE_ADDR# - IP-адрес\n#USER_AGENT# - Браузер\n#REQUEST_URI# - Страница\n#EVENT_COUNT# - Количество записей', 100, 'sms'),
(14, 'en', 'NEW_USER', 'New user was registered', '\n\n#USER_ID# - User ID\n#LOGIN# - Login\n#EMAIL# - EMail\n#NAME# - Name\n#LAST_NAME# - Last Name\n#USER_IP# - User IP\n#USER_HOST# - User Host\n', 1, 'email'),
(15, 'en', 'USER_INFO', 'Account Information', '\n\n#USER_ID# - User ID\n#STATUS# - Account status\n#MESSAGE# - Message for user\n#LOGIN# - Login\n#URL_LOGIN# - Encoded login for use in URL\n#CHECKWORD# - Check string for password change\n#NAME# - Name\n#LAST_NAME# - Last Name\n#EMAIL# - User E-Mail\n', 2, 'email'),
(16, 'en', 'NEW_USER_CONFIRM', 'New user registration confirmation', '\n\n#USER_ID# - User ID\n#LOGIN# - Login\n#EMAIL# - E-mail\n#NAME# - First name\n#LAST_NAME# - Last name\n#USER_IP# - User IP\n#USER_HOST# - User host\n#CONFIRM_CODE# - Confirmation code\n', 3, 'email'),
(17, 'en', 'USER_PASS_REQUEST', 'Password Change Request', '\n\n#USER_ID# - User ID\n#STATUS# - Account status\n#MESSAGE# - Message for user\n#LOGIN# - Login\n#URL_LOGIN# - Encoded login for use in URL\n#CHECKWORD# - Check string for password change\n#NAME# - Name\n#LAST_NAME# - Last Name\n#EMAIL# - User E-Mail\n', 4, 'email'),
(18, 'en', 'USER_PASS_CHANGED', 'Password Change Confirmation', '\n\n#USER_ID# - User ID\n#STATUS# - Account status\n#MESSAGE# - Message for user\n#LOGIN# - Login\n#URL_LOGIN# - Encoded login for use in URL\n#CHECKWORD# - Check string for password change\n#NAME# - Name\n#LAST_NAME# - Last Name\n#EMAIL# - User E-Mail\n', 5, 'email'),
(19, 'en', 'USER_INVITE', 'Invitation of a new site user', '#ID# - User ID\n#LOGIN# - Login\n#URL_LOGIN# - Encoded login for use in URL\n#EMAIL# - EMail\n#NAME# - Name\n#LAST_NAME# - Last Name\n#PASSWORD# - User password \n#CHECKWORD# - Password check string\n#XML_ID# - User ID to link with external data sources\n\n', 6, 'email'),
(20, 'en', 'FEEDBACK_FORM', 'Sending a message using a feedback form', '#AUTHOR# - Message author\n#AUTHOR_EMAIL# - Author\'s e-mail address\n#TEXT# - Message text\n#EMAIL_FROM# - Sender\'s e-mail address\n#EMAIL_TO# - Recipient\'s e-mail address', 7, 'email'),
(21, 'en', 'MAIN_MAIL_CONFIRM_CODE', 'Confirm sender\'s email address', '\n\n#EMAIL_TO# - confirmation email address\n#MESSAGE_SUBJECT# - Message subject\n#CONFIRM_CODE# - Confirmation code', 8, 'email'),
(22, 'en', 'EVENT_LOG_NOTIFICATION', 'Event log notification', '#EMAIL# - Recipient email\n#ADDITIONAL_TEXT# - Action additional text\n#NAME# - Notification name\n#AUDIT_TYPE_ID# - Event type\n#ITEM_ID# - Object\n#USER_ID# - User\n#REMOTE_ADDR# - IP address\n#USER_AGENT# - Browser\n#REQUEST_URI# - Page URL\n#EVENT_COUNT# - Number of events', 9, 'email'),
(23, 'en', 'USER_CODE_REQUEST', 'Request for verification code', '#USER_ID# - user ID\n#STATUS# - Login status\n#LOGIN# - Login\n#CHECKWORD# - Verification code\n#NAME# - First name\n#LAST_NAME# - Last name\n#EMAIL# - User email\n', 10, 'email'),
(24, 'en', 'SMS_USER_CONFIRM_NUMBER', 'Verify phone number using SMS', '#USER_PHONE# - phone number\n#CODE# - confirmation code', 100, 'sms'),
(25, 'en', 'SMS_USER_RESTORE_PASSWORD', 'Recover password using SMS', '#USER_PHONE# - phone number\n#CODE# - recovery confirmation code', 100, 'sms'),
(26, 'en', 'SMS_EVENT_LOG_NOTIFICATION', 'Event log notification', '#PHONE_NUMBER# - Recipient phone number\n#ADDITIONAL_TEXT# - Action additional text\n#NAME# - Notification name\n#AUDIT_TYPE_ID# - Event type\n#ITEM_ID# - Object\n#USER_ID# - User\n#REMOTE_ADDR# - IP address\n#USER_AGENT# - Browser\n#REQUEST_URI# - Page URL\n#EVENT_COUNT# - Number of events', 100, 'sms');

-- --------------------------------------------------------

--
-- Структура таблицы `b_favorite`
--

CREATE TABLE `b_favorite` (
  `ID` int(18) NOT NULL,
  `TIMESTAMP_X` datetime DEFAULT NULL,
  `DATE_CREATE` datetime DEFAULT NULL,
  `C_SORT` int(18) NOT NULL DEFAULT '100',
  `MODIFIED_BY` int(18) DEFAULT NULL,
  `CREATED_BY` int(18) DEFAULT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `URL` text COLLATE utf8_unicode_ci,
  `COMMENTS` text COLLATE utf8_unicode_ci,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  `CODE_ID` int(18) DEFAULT NULL,
  `COMMON` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `MENU_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_file`
--

CREATE TABLE `b_file` (
  `ID` int(18) NOT NULL,
  `TIMESTAMP_X` timestamp NULL DEFAULT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HEIGHT` int(18) DEFAULT NULL,
  `WIDTH` int(18) DEFAULT NULL,
  `FILE_SIZE` bigint(20) DEFAULT NULL,
  `CONTENT_TYPE` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'IMAGE',
  `SUBDIR` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FILE_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ORIGINAL_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HANDLER_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EXTERNAL_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_file`
--

INSERT INTO `b_file` (`ID`, `TIMESTAMP_X`, `MODULE_ID`, `HEIGHT`, `WIDTH`, `FILE_SIZE`, `CONTENT_TYPE`, `SUBDIR`, `FILE_NAME`, `ORIGINAL_NAME`, `DESCRIPTION`, `HANDLER_ID`, `EXTERNAL_ID`) VALUES
(1, '2021-06-07 04:57:59', 'iblock', 534, 800, 63133, 'image/jpeg', 'iblock/d54', 'img_10.jpg', 'img_10.jpg', '', NULL, '04dab67616f849cde9931827905efa04'),
(2, '2021-06-07 05:05:19', 'iblock', 534, 800, 116339, 'image/jpeg', 'iblock/4a5', 'img_11.jpg', 'img_11.jpg', '', NULL, '2d083a07096632de5231a708e7bf680a');

-- --------------------------------------------------------

--
-- Структура таблицы `b_file_duplicate`
--

CREATE TABLE `b_file_duplicate` (
  `DUPLICATE_ID` int(11) NOT NULL,
  `ORIGINAL_ID` int(11) NOT NULL,
  `COUNTER` int(11) NOT NULL DEFAULT '1',
  `ORIGINAL_DELETED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_file_hash`
--

CREATE TABLE `b_file_hash` (
  `FILE_ID` int(11) NOT NULL,
  `FILE_SIZE` bigint(20) NOT NULL,
  `FILE_HASH` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_file_hash`
--

INSERT INTO `b_file_hash` (`FILE_ID`, `FILE_SIZE`, `FILE_HASH`) VALUES
(1, 63133, '7173a4d6ec39ba0ab041b0f6c1de9e59'),
(2, 116339, 'ef14fecf2aa0de05af8fb044b06675bc');

-- --------------------------------------------------------

--
-- Структура таблицы `b_file_preview`
--

CREATE TABLE `b_file_preview` (
  `ID` int(18) NOT NULL,
  `FILE_ID` int(18) NOT NULL,
  `PREVIEW_ID` int(18) DEFAULT NULL,
  `PREVIEW_IMAGE_ID` int(18) DEFAULT NULL,
  `CREATED_AT` datetime NOT NULL,
  `TOUCHED_AT` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_file_search`
--

CREATE TABLE `b_file_search` (
  `ID` int(11) NOT NULL,
  `SESS_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL,
  `F_PATH` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `B_DIR` int(11) NOT NULL DEFAULT '0',
  `F_SIZE` int(11) NOT NULL DEFAULT '0',
  `F_TIME` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_filters`
--

CREATE TABLE `b_filters` (
  `ID` int(18) NOT NULL,
  `USER_ID` int(18) DEFAULT NULL,
  `FILTER_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `FIELDS` text COLLATE utf8_unicode_ci NOT NULL,
  `COMMON` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PRESET` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PRESET_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SORT` int(18) DEFAULT NULL,
  `SORT_FIELD` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_finder_dest`
--

CREATE TABLE `b_finder_dest` (
  `USER_ID` int(11) NOT NULL,
  `CODE` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `CODE_USER_ID` int(11) DEFAULT NULL,
  `CODE_TYPE` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONTEXT` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `LAST_USE_DATE` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_geoip_handlers`
--

CREATE TABLE `b_geoip_handlers` (
  `ID` int(11) NOT NULL,
  `SORT` int(10) NOT NULL DEFAULT '100',
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `CLASS_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CONFIG` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_geoip_handlers`
--

INSERT INTO `b_geoip_handlers` (`ID`, `SORT`, `ACTIVE`, `CLASS_NAME`, `CONFIG`) VALUES
(1, 100, 'N', '\\Bitrix\\Main\\Service\\GeoIp\\MaxMind', NULL),
(2, 110, 'Y', '\\Bitrix\\Main\\Service\\GeoIp\\SypexGeo', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `b_group`
--

CREATE TABLE `b_group` (
  `ID` int(18) NOT NULL,
  `TIMESTAMP_X` timestamp NULL DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `C_SORT` int(18) NOT NULL DEFAULT '100',
  `ANONYMOUS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `IS_SYSTEM` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SECURITY_POLICY` text COLLATE utf8_unicode_ci,
  `STRING_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_group`
--

INSERT INTO `b_group` (`ID`, `TIMESTAMP_X`, `ACTIVE`, `C_SORT`, `ANONYMOUS`, `IS_SYSTEM`, `NAME`, `DESCRIPTION`, `SECURITY_POLICY`, `STRING_ID`) VALUES
(1, '2021-06-02 16:32:28', 'Y', 1, 'N', 'Y', 'Администраторы', 'Полный доступ к управлению сайтом.', 'a:12:{s:15:\"SESSION_TIMEOUT\";i:15;s:15:\"SESSION_IP_MASK\";s:15:\"255.255.255.255\";s:13:\"MAX_STORE_NUM\";i:1;s:13:\"STORE_IP_MASK\";s:15:\"255.255.255.255\";s:13:\"STORE_TIMEOUT\";i:4320;s:17:\"CHECKWORD_TIMEOUT\";i:60;s:15:\"PASSWORD_LENGTH\";i:10;s:18:\"PASSWORD_UPPERCASE\";s:1:\"Y\";s:18:\"PASSWORD_LOWERCASE\";s:1:\"Y\";s:15:\"PASSWORD_DIGITS\";s:1:\"Y\";s:20:\"PASSWORD_PUNCTUATION\";s:1:\"Y\";s:14:\"LOGIN_ATTEMPTS\";i:3;}', NULL),
(2, NULL, 'Y', 2, 'Y', 'Y', 'Все пользователи (в том числе неавторизованные)', 'Все пользователи, включая неавторизованных.', NULL, NULL),
(3, NULL, 'Y', 3, 'N', 'Y', 'Пользователи, имеющие право голосовать за рейтинг', 'В эту группу пользователи добавляются автоматически.', NULL, 'RATING_VOTE'),
(4, NULL, 'Y', 4, 'N', 'Y', 'Пользователи имеющие право голосовать за авторитет', 'В эту группу пользователи добавляются автоматически.', NULL, 'RATING_VOTE_AUTHORITY'),
(5, NULL, 'Y', 3, 'N', 'Y', 'Зарегистрированные пользователи', NULL, NULL, 'REGISTERED_USERS'),
(6, NULL, 'Y', 4, 'N', 'Y', 'Пользователи панели управления', NULL, NULL, 'CONTROL_PANEL_USERS');

-- --------------------------------------------------------

--
-- Структура таблицы `b_group_collection_task`
--

CREATE TABLE `b_group_collection_task` (
  `GROUP_ID` int(11) NOT NULL,
  `TASK_ID` int(11) NOT NULL,
  `COLLECTION_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_group_subordinate`
--

CREATE TABLE `b_group_subordinate` (
  `ID` int(18) NOT NULL,
  `AR_SUBGROUP_ID` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_group_task`
--

CREATE TABLE `b_group_task` (
  `GROUP_ID` int(18) NOT NULL,
  `TASK_ID` int(18) NOT NULL,
  `EXTERNAL_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_group_task`
--

INSERT INTO `b_group_task` (`GROUP_ID`, `TASK_ID`, `EXTERNAL_ID`) VALUES
(5, 2, ''),
(6, 2, '');

-- --------------------------------------------------------

--
-- Структура таблицы `b_hlblock_entity`
--

CREATE TABLE `b_hlblock_entity` (
  `ID` int(11) UNSIGNED NOT NULL,
  `NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `TABLE_NAME` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_hlblock_entity_lang`
--

CREATE TABLE `b_hlblock_entity_lang` (
  `ID` int(11) UNSIGNED NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_hlblock_entity_rights`
--

CREATE TABLE `b_hlblock_entity_rights` (
  `ID` int(11) UNSIGNED NOT NULL,
  `HL_ID` int(11) UNSIGNED NOT NULL,
  `TASK_ID` int(11) UNSIGNED NOT NULL,
  `ACCESS_CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_hot_keys`
--

CREATE TABLE `b_hot_keys` (
  `ID` int(18) NOT NULL,
  `KEYS_STRING` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `CODE_ID` int(18) NOT NULL,
  `USER_ID` int(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_hot_keys`
--

INSERT INTO `b_hot_keys` (`ID`, `KEYS_STRING`, `CODE_ID`, `USER_ID`) VALUES
(1, 'Ctrl+Alt+85', 139, 0),
(2, 'Ctrl+Alt+80', 17, 0),
(3, 'Ctrl+Alt+70', 120, 0),
(4, 'Ctrl+Alt+68', 117, 0),
(5, 'Ctrl+Alt+81', 3, 0),
(6, 'Ctrl+Alt+75', 106, 0),
(7, 'Ctrl+Alt+79', 133, 0),
(8, 'Ctrl+Alt+70', 121, 0),
(9, 'Ctrl+Alt+69', 118, 0),
(10, 'Ctrl+Shift+83', 87, 0),
(11, 'Ctrl+Shift+88', 88, 0),
(12, 'Ctrl+Shift+76', 89, 0),
(13, 'Ctrl+Alt+85', 139, 1),
(14, 'Ctrl+Alt+80', 17, 1),
(15, 'Ctrl+Alt+70', 120, 1),
(16, 'Ctrl+Alt+68', 117, 1),
(17, 'Ctrl+Alt+81', 3, 1),
(18, 'Ctrl+Alt+75', 106, 1),
(19, 'Ctrl+Alt+79', 133, 1),
(20, 'Ctrl+Alt+70', 121, 1),
(21, 'Ctrl+Alt+69', 118, 1),
(22, 'Ctrl+Shift+83', 87, 1),
(23, 'Ctrl+Shift+88', 88, 1),
(24, 'Ctrl+Shift+76', 89, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `b_hot_keys_code`
--

CREATE TABLE `b_hot_keys_code` (
  `ID` int(18) NOT NULL,
  `CLASS_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COMMENTS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TITLE_OBJ` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IS_CUSTOM` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_hot_keys_code`
--

INSERT INTO `b_hot_keys_code` (`ID`, `CLASS_NAME`, `CODE`, `NAME`, `COMMENTS`, `TITLE_OBJ`, `URL`, `IS_CUSTOM`) VALUES
(3, 'CAdminTabControl', 'NextTab();', 'HK_DB_CADMINTC', 'HK_DB_CADMINTC_C', 'tab-container', '', 0),
(5, 'btn_new', 'var d=BX (\'btn_new\'); if (d) location.href = d.href;', 'HK_DB_BUT_ADD', 'HK_DB_BUT_ADD_C', 'btn_new', '', 0),
(6, 'btn_excel', 'var d=BX(\'btn_excel\'); if (d) location.href = d.href;', 'HK_DB_BUT_EXL', 'HK_DB_BUT_EXL_C', 'btn_excel', '', 0),
(7, 'btn_settings', 'var d=BX(\'btn_settings\'); if (d) location.href = d.href;', 'HK_DB_BUT_OPT', 'HK_DB_BUT_OPT_C', 'btn_settings', '', 0),
(8, 'btn_list', 'var d=BX(\'btn_list\'); if (d) location.href = d.href;', 'HK_DB_BUT_LST', 'HK_DB_BUT_LST_C', 'btn_list', '', 0),
(9, 'Edit_Save_Button', 'var d=BX .findChild(document, {attribute: {\'name\': \'save\'}}, true );  if (d) d.click();', 'HK_DB_BUT_SAVE', 'HK_DB_BUT_SAVE_C', 'Edit_Save_Button', '', 0),
(10, 'btn_delete', 'var d=BX(\'btn_delete\'); if (d) location.href = d.href;', 'HK_DB_BUT_DEL', 'HK_DB_BUT_DEL_C', 'btn_delete', '', 0),
(12, 'CAdminFilter', 'var d=BX .findChild(document, {attribute: {\'name\': \'find\'}}, true ); if (d) d.focus();', 'HK_DB_FLT_FND', 'HK_DB_FLT_FND_C', 'find', '', 0),
(13, 'CAdminFilter', 'var d=BX .findChild(document, {attribute: {\'name\': \'set_filter\'}}, true );  if (d) d.click();', 'HK_DB_FLT_BUT_F', 'HK_DB_FLT_BUT_F_C', 'set_filter', '', 0),
(14, 'CAdminFilter', 'var d=BX .findChild(document, {attribute: {\'name\': \'del_filter\'}}, true );  if (d) d.click();', 'HK_DB_FLT_BUT_CNL', 'HK_DB_FLT_BUT_CNL_C', 'del_filter', '', 0),
(15, 'bx-panel-admin-button-help-icon-id', 'var d=BX(\'bx-panel-admin-button-help-icon-id\'); if (d) location.href = d.href;', 'HK_DB_BUT_HLP', 'HK_DB_BUT_HLP_C', 'bx-panel-admin-button-help-icon-id', '', 0),
(17, 'Global', 'BXHotKeys.ShowSettings();', 'HK_DB_SHW_L', 'HK_DB_SHW_L_C', 'bx-panel-hotkeys', '', 0),
(19, 'Edit_Apply_Button', 'var d=BX .findChild(document, {attribute: {\'name\': \'apply\'}}, true );  if (d) d.click();', 'HK_DB_BUT_APPL', 'HK_DB_BUT_APPL_C', 'Edit_Apply_Button', '', 0),
(20, 'Edit_Cancel_Button', 'var d=BX .findChild(document, {attribute: {\'name\': \'cancel\'}}, true );  if (d) d.click();', 'HK_DB_BUT_CANCEL', 'HK_DB_BUT_CANCEL_C', 'Edit_Cancel_Button', '', 0),
(54, 'top_panel_org_fav', '', '-=AUTONAME=-', NULL, 'top_panel_org_fav', NULL, 0),
(55, 'top_panel_module_settings', '', '-=AUTONAME=-', NULL, 'top_panel_module_settings', '', 0),
(56, 'top_panel_interface_settings', '', '-=AUTONAME=-', NULL, 'top_panel_interface_settings', '', 0),
(57, 'top_panel_help', '', '-=AUTONAME=-', NULL, 'top_panel_help', '', 0),
(58, 'top_panel_bizproc_tasks', '', '-=AUTONAME=-', NULL, 'top_panel_bizproc_tasks', '', 0),
(59, 'top_panel_add_fav', '', '-=AUTONAME=-', NULL, 'top_panel_add_fav', NULL, 0),
(60, 'top_panel_create_page', '', '-=AUTONAME=-', NULL, 'top_panel_create_page', '', 0),
(62, 'top_panel_create_folder', '', '-=AUTONAME=-', NULL, 'top_panel_create_folder', '', 0),
(63, 'top_panel_edit_page', '', '-=AUTONAME=-', NULL, 'top_panel_edit_page', '', 0),
(64, 'top_panel_page_prop', '', '-=AUTONAME=-', NULL, 'top_panel_page_prop', '', 0),
(65, 'top_panel_edit_page_html', '', '-=AUTONAME=-', NULL, 'top_panel_edit_page_html', '', 0),
(67, 'top_panel_edit_page_php', '', '-=AUTONAME=-', NULL, 'top_panel_edit_page_php', '', 0),
(68, 'top_panel_del_page', '', '-=AUTONAME=-', NULL, 'top_panel_del_page', '', 0),
(69, 'top_panel_folder_prop', '', '-=AUTONAME=-', NULL, 'top_panel_folder_prop', '', 0),
(70, 'top_panel_access_folder_new', '', '-=AUTONAME=-', NULL, 'top_panel_access_folder_new', '', 0),
(71, 'main_top_panel_struct_panel', '', '-=AUTONAME=-', NULL, 'main_top_panel_struct_panel', '', 0),
(72, 'top_panel_cache_page', '', '-=AUTONAME=-', NULL, 'top_panel_cache_page', '', 0),
(73, 'top_panel_cache_comp', '', '-=AUTONAME=-', NULL, 'top_panel_cache_comp', '', 0),
(74, 'top_panel_cache_not', '', '-=AUTONAME=-', NULL, 'top_panel_cache_not', '', 0),
(75, 'top_panel_edit_mode', '', '-=AUTONAME=-', NULL, 'top_panel_edit_mode', '', 0),
(76, 'top_panel_templ_site_css', '', '-=AUTONAME=-', NULL, 'top_panel_templ_site_css', '', 0),
(77, 'top_panel_templ_templ_css', '', '-=AUTONAME=-', NULL, 'top_panel_templ_templ_css', '', 0),
(78, 'top_panel_templ_site', '', '-=AUTONAME=-', NULL, 'top_panel_templ_site', '', 0),
(81, 'top_panel_debug_time', '', '-=AUTONAME=-', NULL, 'top_panel_debug_time', '', 0),
(82, 'top_panel_debug_incl', '', '-=AUTONAME=-', NULL, 'top_panel_debug_incl', '', 0),
(83, 'top_panel_debug_sql', '', '-=AUTONAME=-', NULL, 'top_panel_debug_sql', NULL, 0),
(84, 'top_panel_debug_compr', '', '-=AUTONAME=-', NULL, 'top_panel_debug_compr', '', 0),
(85, 'MTP_SHORT_URI1', '', '-=AUTONAME=-', NULL, 'MTP_SHORT_URI1', '', 0),
(86, 'MTP_SHORT_URI_LIST', '', '-=AUTONAME=-', NULL, 'MTP_SHORT_URI_LIST', '', 0),
(87, 'FMST_PANEL_STICKER_ADD', '', '-=AUTONAME=-', NULL, 'FMST_PANEL_STICKER_ADD', '', 0),
(88, 'FMST_PANEL_STICKERS_SHOW', '', '-=AUTONAME=-', NULL, 'FMST_PANEL_STICKERS_SHOW', '', 0),
(89, 'FMST_PANEL_CUR_STICKER_LIST', '', '-=AUTONAME=-', NULL, 'FMST_PANEL_CUR_STICKER_LIST', '', 0),
(90, 'FMST_PANEL_ALL_STICKER_LIST', '', '-=AUTONAME=-', NULL, 'FMST_PANEL_ALL_STICKER_LIST', '', 0),
(91, 'top_panel_menu', 'var d=BX(\"bx-panel-menu\"); if (d) d.click();', '-=AUTONAME=-', NULL, 'bx-panel-menu', '', 0),
(92, 'top_panel_admin', 'var d=BX(\'bx-panel-admin-tab\'); if (d) location.href = d.href;', '-=AUTONAME=-', NULL, 'bx-panel-admin-tab', '', 0),
(93, 'admin_panel_site', 'var d=BX(\'bx-panel-view-tab\'); if (d) location.href = d.href;', '-=AUTONAME=-', NULL, 'bx-panel-view-tab', '', 0),
(94, 'admin_panel_admin', 'var d=BX(\'bx-panel-admin-tab\'); if (d) location.href = d.href;', '-=AUTONAME=-', NULL, 'bx-panel-admin-tab', '', 0),
(96, 'top_panel_folder_prop_new', '', '-=AUTONAME=-', NULL, 'top_panel_folder_prop_new', '', 0),
(97, 'main_top_panel_structure', '', '-=AUTONAME=-', NULL, 'main_top_panel_structure', '', 0),
(98, 'top_panel_clear_cache', '', '-=AUTONAME=-', NULL, 'top_panel_clear_cache', '', 0),
(99, 'top_panel_templ', '', '-=AUTONAME=-', NULL, 'top_panel_templ', '', 0),
(100, 'top_panel_debug', '', '-=AUTONAME=-', NULL, 'top_panel_debug', '', 0),
(101, 'MTP_SHORT_URI', '', '-=AUTONAME=-', NULL, 'MTP_SHORT_URI', '', 0),
(102, 'FMST_PANEL_STICKERS', '', '-=AUTONAME=-', NULL, 'FMST_PANEL_STICKERS', '', 0),
(103, 'top_panel_settings', '', '-=AUTONAME=-', NULL, 'top_panel_settings', '', 0),
(104, 'top_panel_fav', '', '-=AUTONAME=-', NULL, 'top_panel_fav', '', 0),
(106, 'Global', 'location.href=\'/bitrix/admin/hot_keys_list.php?lang=ru\';', 'HK_DB_SHW_HK', '', '', '', 0),
(107, 'top_panel_edit_new', '', '-=AUTONAME=-', NULL, 'top_panel_edit_new', '', 0),
(108, 'FLOW_PANEL_CREATE_WITH_WF', '', '-=AUTONAME=-', NULL, 'FLOW_PANEL_CREATE_WITH_WF', '', 0),
(109, 'FLOW_PANEL_EDIT_WITH_WF', '', '-=AUTONAME=-', NULL, 'FLOW_PANEL_EDIT_WITH_WF', '', 0),
(110, 'FLOW_PANEL_HISTORY', '', '-=AUTONAME=-', NULL, 'FLOW_PANEL_HISTORY', '', 0),
(111, 'top_panel_create_new', '', '-=AUTONAME=-', NULL, 'top_panel_create_new', '', 0),
(112, 'top_panel_create_folder_new', '', '-=AUTONAME=-', NULL, 'top_panel_create_folder_new', '', 0),
(116, 'bx-panel-toggle', '', '-=AUTONAME=-', NULL, 'bx-panel-toggle', '', 0),
(117, 'bx-panel-small-toggle', '', '-=AUTONAME=-', NULL, 'bx-panel-small-toggle', '', 0),
(118, 'bx-panel-expander', 'var d=BX(\'bx-panel-expander\'); if (d) BX.fireEvent(d, \'click\');', '-=AUTONAME=-', NULL, 'bx-panel-expander', '', 0),
(119, 'bx-panel-hider', 'var d=BX(\'bx-panel-hider\'); if (d) d.click();', '-=AUTONAME=-', NULL, 'bx-panel-hider', '', 0),
(120, 'search-textbox-input', 'var d=BX(\'search-textbox-input\'); if (d) { d.click(); d.focus();}', '-=AUTONAME=-', '', 'search', '', 0),
(121, 'bx-search-input', 'var d=BX(\'bx-search-input\'); if (d) { d.click(); d.focus(); }', '-=AUTONAME=-', '', 'bx-search-input', '', 0),
(133, 'bx-panel-logout', 'var d=BX(\'bx-panel-logout\'); if (d) location.href = d.href;', '-=AUTONAME=-', '', 'bx-panel-logout', '', 0),
(135, 'CDialog', 'var d=BX(\'cancel\'); if (d) d.click();', 'HK_DB_D_CANCEL', '', 'cancel', '', 0),
(136, 'CDialog', 'var d=BX(\'close\'); if (d) d.click();', 'HK_DB_D_CLOSE', '', 'close', '', 0),
(137, 'CDialog', 'var d=BX(\'savebtn\'); if (d) d.click();', 'HK_DB_D_SAVE', '', 'savebtn', '', 0),
(138, 'CDialog', 'var d=BX(\'btn_popup_save\'); if (d) d.click();', 'HK_DB_D_EDIT_SAVE', '', 'btn_popup_save', '', 0),
(139, 'Global', 'location.href=\'/bitrix/admin/user_admin.php?lang=\'+phpVars.LANGUAGE_ID;', 'HK_DB_SHW_U', '', '', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock`
--

CREATE TABLE `b_iblock` (
  `ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `IBLOCK_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `CODE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `API_CODE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `SORT` int(11) NOT NULL DEFAULT '500',
  `LIST_PAGE_URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DETAIL_PAGE_URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SECTION_PAGE_URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CANONICAL_PAGE_URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PICTURE` int(18) DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `DESCRIPTION_TYPE` char(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `RSS_TTL` int(11) NOT NULL DEFAULT '24',
  `RSS_ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `RSS_FILE_ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `RSS_FILE_LIMIT` int(11) DEFAULT NULL,
  `RSS_FILE_DAYS` int(11) DEFAULT NULL,
  `RSS_YANDEX_ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TMP_ID` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `INDEX_ELEMENT` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `INDEX_SECTION` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `WORKFLOW` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `BIZPROC` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SECTION_CHOOSER` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LIST_MODE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RIGHTS_MODE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SECTION_PROPERTY` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PROPERTY_INDEX` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VERSION` int(11) NOT NULL DEFAULT '1',
  `LAST_CONV_ELEMENT` int(11) NOT NULL DEFAULT '0',
  `SOCNET_GROUP_ID` int(18) DEFAULT NULL,
  `EDIT_FILE_BEFORE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EDIT_FILE_AFTER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SECTIONS_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SECTION_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ELEMENTS_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ELEMENT_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_iblock`
--

INSERT INTO `b_iblock` (`ID`, `TIMESTAMP_X`, `IBLOCK_TYPE_ID`, `LID`, `CODE`, `API_CODE`, `NAME`, `ACTIVE`, `SORT`, `LIST_PAGE_URL`, `DETAIL_PAGE_URL`, `SECTION_PAGE_URL`, `CANONICAL_PAGE_URL`, `PICTURE`, `DESCRIPTION`, `DESCRIPTION_TYPE`, `RSS_TTL`, `RSS_ACTIVE`, `RSS_FILE_ACTIVE`, `RSS_FILE_LIMIT`, `RSS_FILE_DAYS`, `RSS_YANDEX_ACTIVE`, `XML_ID`, `TMP_ID`, `INDEX_ELEMENT`, `INDEX_SECTION`, `WORKFLOW`, `BIZPROC`, `SECTION_CHOOSER`, `LIST_MODE`, `RIGHTS_MODE`, `SECTION_PROPERTY`, `PROPERTY_INDEX`, `VERSION`, `LAST_CONV_ELEMENT`, `SOCNET_GROUP_ID`, `EDIT_FILE_BEFORE`, `EDIT_FILE_AFTER`, `SECTIONS_NAME`, `SECTION_NAME`, `ELEMENTS_NAME`, `ELEMENT_NAME`) VALUES
(1, '2021-06-07 05:59:45', 'Balita', 's1', 'categories', 'categories', 'Categories', 'Y', 500, '#SITE_DIR#/Balita/index.php?ID=#IBLOCK_ID#', '#SITE_DIR#/Balita/detail.php?ID=#ELEMENT_ID#', '#SITE_DIR#/Balita/list.php?SECTION_ID=#SECTION_ID#', '', NULL, '', 'text', 24, 'Y', 'N', NULL, NULL, 'N', NULL, '7615fe0fd2506953592f5d17dee58a8f', 'Y', 'Y', 'N', 'N', 'L', '', 'S', 'N', 'N', 1, 0, NULL, '', '', 'Категории', 'Категория', 'Статьи', 'Статья');

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock_cache`
--

CREATE TABLE `b_iblock_cache` (
  `CACHE_KEY` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `CACHE` longtext COLLATE utf8_unicode_ci NOT NULL,
  `CACHE_DATE` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock_element`
--

CREATE TABLE `b_iblock_element` (
  `ID` int(11) NOT NULL,
  `TIMESTAMP_X` datetime DEFAULT NULL,
  `MODIFIED_BY` int(18) DEFAULT NULL,
  `DATE_CREATE` datetime DEFAULT NULL,
  `CREATED_BY` int(18) DEFAULT NULL,
  `IBLOCK_ID` int(11) NOT NULL DEFAULT '0',
  `IBLOCK_SECTION_ID` int(11) DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ACTIVE_FROM` datetime DEFAULT NULL,
  `ACTIVE_TO` datetime DEFAULT NULL,
  `SORT` int(11) NOT NULL DEFAULT '500',
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PREVIEW_PICTURE` int(18) DEFAULT NULL,
  `PREVIEW_TEXT` text COLLATE utf8_unicode_ci,
  `PREVIEW_TEXT_TYPE` varchar(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `DETAIL_PICTURE` int(18) DEFAULT NULL,
  `DETAIL_TEXT` longtext COLLATE utf8_unicode_ci,
  `DETAIL_TEXT_TYPE` varchar(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `SEARCHABLE_CONTENT` text COLLATE utf8_unicode_ci,
  `WF_STATUS_ID` int(18) DEFAULT '1',
  `WF_PARENT_ELEMENT_ID` int(11) DEFAULT NULL,
  `WF_NEW` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WF_LOCKED_BY` int(18) DEFAULT NULL,
  `WF_DATE_LOCK` datetime DEFAULT NULL,
  `WF_COMMENTS` text COLLATE utf8_unicode_ci,
  `IN_SECTIONS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TAGS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TMP_ID` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WF_LAST_HISTORY_ID` int(11) DEFAULT NULL,
  `SHOW_COUNTER` int(18) DEFAULT NULL,
  `SHOW_COUNTER_START` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_iblock_element`
--

INSERT INTO `b_iblock_element` (`ID`, `TIMESTAMP_X`, `MODIFIED_BY`, `DATE_CREATE`, `CREATED_BY`, `IBLOCK_ID`, `IBLOCK_SECTION_ID`, `ACTIVE`, `ACTIVE_FROM`, `ACTIVE_TO`, `SORT`, `NAME`, `PREVIEW_PICTURE`, `PREVIEW_TEXT`, `PREVIEW_TEXT_TYPE`, `DETAIL_PICTURE`, `DETAIL_TEXT`, `DETAIL_TEXT_TYPE`, `SEARCHABLE_CONTENT`, `WF_STATUS_ID`, `WF_PARENT_ELEMENT_ID`, `WF_NEW`, `WF_LOCKED_BY`, `WF_DATE_LOCK`, `WF_COMMENTS`, `IN_SECTIONS`, `XML_ID`, `CODE`, `TAGS`, `TMP_ID`, `WF_LAST_HISTORY_ID`, `SHOW_COUNTER`, `SHOW_COUNTER_START`) VALUES
(1, '2021-06-07 07:57:59', 1, '2021-06-07 07:57:59', 1, 1, 1, 'Y', NULL, NULL, 500, 'There’s a Cool New Way for Men to Wear Socks and Sandals', 1, '<div class=\"text half-to-full\">\r\n	<div class=\"post-meta\">\r\n <span class=\"category\">Lifestyle</span> <span class=\"mr-2\">March 15, 2018 </span> • <span class=\"ml-2\"><span class=\"fa fa-comments\"></span> 3</span>\r\n	</div>\r\n	<h3>There’s a Cool New Way for Men to Wear Socks and Sandals</h3>\r\n	<p>\r\n		Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quidem nobis, ut dicta eaque ipsa laudantium!\r\n	</p>\r\n</div>\r\n<br>', 'html', NULL, '<div class=\"col-md-12 col-lg-8 main-content\">\r\n            <h1 class=\"mb-4\">There’s a Cool New Way for Men to Wear Socks and Sandals</h1>\r\n            <div class=\"post-meta\">\r\n                        <span class=\"category\">Food</span>\r\n                        <span class=\"mr-2\">March 15, 2018 </span> &bullet;\r\n                        <span class=\"ml-2\"><span class=\"fa fa-comments\"></span> 3</span>\r\n                      </div>\r\n            <div class=\"post-content-body\">\r\n              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Praesentium nam quas inventore, ut iure iste modi eos adipisci ad ea itaque labore earum autem nobis et numquam, minima eius. Nam eius, non unde ut aut sunt eveniet rerum repellendus porro.</p>\r\n            <p>Sint ab voluptates itaque, ipsum porro qui obcaecati cumque quas sit vel. Voluptatum provident id quis quo. Eveniet maiores perferendis officia veniam est laborum, expedita fuga doloribus natus repellendus dolorem ab similique sint eius cupiditate necessitatibus, magni nesciunt ex eos.</p>\r\n            <p>Quis eius aspernatur, eaque culpa cumque reiciendis, nobis at earum assumenda similique ut? Aperiam vel aut, ex exercitationem eos consequuntur eaque culpa totam, deserunt, aspernatur quae eveniet hic provident ullam tempora error repudiandae sapiente illum rerum itaque voluptatem. Commodi, sequi.</p>\r\n            <div class=\"row mb-5\">\r\n              <div class=\"col-md-12 mb-4 element-animate\">\r\n                <img src=\"<?=DEFAULT_TEMPLATE_PASS?>/images/img_7.jpg\" alt=\"Image placeholder\" class=\"img-fluid\">\r\n              </div>\r\n              <div class=\"col-md-6 mb-4 element-animate\">\r\n                <img src=\"<?=DEFAULT_TEMPLATE_PASS?>/images/img_9.jpg\" alt=\"Image placeholder\" class=\"img-fluid\">\r\n              </div>\r\n              <div class=\"col-md-6 mb-4 element-animate\">\r\n                <img src=\"<?=DEFAULT_TEMPLATE_PASS?>/images/img_11.jpg\" alt=\"Image placeholder\" class=\"img-fluid\">\r\n              </div>\r\n            </div>\r\n            <p>Quibusdam autem, quas molestias recusandae aperiam molestiae modi qui ipsam vel. Placeat tenetur veritatis tempore quos impedit dicta, error autem, quae sint inventore ipsa quidem. Quo voluptate quisquam reiciendis, minus, animi minima eum officia doloremque repellat eos, odio doloribus cum.</p>\r\n            <p>Temporibus quo dolore veritatis doloribus delectus dolores perspiciatis recusandae ducimus, nisi quod, incidunt ut quaerat, magnam cupiditate. Aut, laboriosam magnam, nobis dolore fugiat impedit necessitatibus nisi cupiditate, quas repellat itaque molestias sit libero voluptas eveniet omnis illo ullam dolorem minima.</p>\r\n            <p>Porro amet accusantium libero fugit totam, deserunt ipsa, dolorem, vero expedita illo similique saepe nisi deleniti. Cumque, laboriosam, porro! Facilis voluptatem sequi nulla quidem, provident eius quos pariatur maxime sapiente illo nostrum quibusdam aliquid fugiat! Earum quod fuga id officia.</p>\r\n            <p>Illo magnam at dolore ad enim fugiat ut maxime facilis autem, nulla cumque quis commodi eos nisi unde soluta, ipsa eius aspernatur sint atque! Nihil, eveniet illo ea, mollitia fuga accusamus dolor dolorem perspiciatis rerum hic, consectetur error rem aspernatur!</p>\r\n\r\n            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus magni explicabo id molestiae, minima quas assumenda consectetur, nobis neque rem, incidunt quam tempore perferendis provident obcaecati sapiente, animi vel expedita omnis quae ipsa! Obcaecati eligendi sed odio labore vero reiciendis facere accusamus molestias eaque impedit, consequuntur quae fuga vitae fugit?</p>\r\n            </div>\r\n\r\n            \r\n            <div class=\"pt-5\">\r\n              <p>Categories:  <a href=\"/\">Food</a>, <a href=\"/\">Travel</a></p>\r\n            </div>\r\n\r\n          </div>', 'html', 'THERE’S A COOL NEW WAY FOR MEN TO WEAR SOCKS AND SANDALS\r\nLIFESTYLE MARCH 15, 2018 • 3 THERE’S A COOL NEW WAY FOR MEN TO WEAR \r\nSOCKS AND SANDALS \r\n\r\nLOREM IPSUM DOLOR SIT AMET, CONSECTETUR ADIPISICING ELIT. QUIDEM NOBIS, \r\nUT DICTA EAQUE IPSA LAUDANTIUM!\r\nTHERE’S A COOL NEW WAY FOR MEN TO WEAR SOCKS AND SANDALS \r\nFOOD MARCH 15, 2018 &BULLET; 3 \r\n\r\n\r\nLOREM IPSUM DOLOR SIT AMET, CONSECTETUR ADIPISICING ELIT. PRAESENTIUM NAM \r\nQUAS INVENTORE, UT IURE ISTE MODI EOS ADIPISCI AD EA ITAQUE LABORE EARUM AUTEM NOBIS ET NUMQUAM, MINIMA EIUS. NAM EIUS, NON UNDE UT AUT SUNT EVENIET RERUM REPELLENDUS PORRO. \r\n\r\nSINT AB VOLUPTATES ITAQUE, IPSUM PORRO QUI OBCAECATI CUMQUE QUAS SIT VEL. \r\nVOLUPTATUM PROVIDENT ID QUIS QUO. EVENIET MAIORES PERFERENDIS OFFICIA VENIAM EST LABORUM, EXPEDITA FUGA DOLORIBUS NATUS REPELLENDUS DOLOREM AB SIMILIQUE SINT EIUS CUPIDITATE NECESSITATIBUS, MAGNI NESCIUNT EX EOS. \r\n\r\nQUIS EIUS ASPERNATUR, EAQUE CULPA CUMQUE REICIENDIS, NOBIS AT EARUM ASSUMENDA \r\nSIMILIQUE UT? APERIAM VEL AUT, EX EXERCITATIONEM EOS CONSEQUUNTUR EAQUE CULPA TOTAM, DESERUNT, ASPERNATUR QUAE EVENIET HIC PROVIDENT ULLAM TEMPORA ERROR REPUDIANDAE SAPIENTE ILLUM RERUM ITAQUE VOLUPTATEM. COMMODI, SEQUI. \r\n\r\n[ /IMAGES/IMG_7.JPG ] \r\n[ /IMAGES/IMG_9.JPG ] \r\n[ /IMAGES/IMG_11.JPG ] \r\n\r\nQUIBUSDAM AUTEM, QUAS MOLESTIAS RECUSANDAE APERIAM MOLESTIAE MODI QUI IPSAM \r\nVEL. PLACEAT TENETUR VERITATIS TEMPORE QUOS IMPEDIT DICTA, ERROR AUTEM, QUAE SINT INVENTORE IPSA QUIDEM. QUO VOLUPTATE QUISQUAM REICIENDIS, MINUS, ANIMI MINIMA EUM OFFICIA DOLOREMQUE REPELLAT EOS, ODIO DOLORIBUS CUM. \r\n\r\nTEMPORIBUS QUO DOLORE VERITATIS DOLORIBUS DELECTUS DOLORES PERSPICIATIS \r\nRECUSANDAE DUCIMUS, NISI QUOD, INCIDUNT UT QUAERAT, MAGNAM CUPIDITATE. AUT, LABORIOSAM MAGNAM, NOBIS DOLORE FUGIAT IMPEDIT NECESSITATIBUS NISI CUPIDITATE, QUAS REPELLAT ITAQUE MOLESTIAS SIT LIBERO VOLUPTAS EVENIET OMNIS ILLO ULLAM DOLOREM MINIMA. \r\n\r\nPORRO AMET ACCUSANTIUM LIBERO FUGIT TOTAM, DESERUNT IPSA, DOLOREM, VERO \r\nEXPEDITA ILLO SIMILIQUE SAEPE NISI DELENITI. CUMQUE, LABORIOSAM, PORRO! FACILIS VOLUPTATEM SEQUI NULLA QUIDEM, PROVIDENT EIUS QUOS PARIATUR MAXIME SAPIENTE ILLO NOSTRUM QUIBUSDAM ALIQUID FUGIAT! EARUM QUOD FUGA ID OFFICIA. \r\n\r\nILLO MAGNAM AT DOLORE AD ENIM FUGIAT UT MAXIME FACILIS AUTEM, NULLA CUMQUE \r\nQUIS COMMODI EOS NISI UNDE SOLUTA, IPSA EIUS ASPERNATUR SINT ATQUE! NIHIL, EVENIET ILLO EA, MOLLITIA FUGA ACCUSAMUS DOLOR DOLOREM PERSPICIATIS RERUM HIC, CONSECTETUR ERROR REM ASPERNATUR! \r\n\r\nLOREM IPSUM DOLOR SIT AMET, CONSECTETUR ADIPISICING ELIT. TEMPORIBUS MAGNI \r\nEXPLICABO ID MOLESTIAE, MINIMA QUAS ASSUMENDA CONSECTETUR, NOBIS NEQUE REM, INCIDUNT QUAM TEMPORE PERFERENDIS PROVIDENT OBCAECATI SAPIENTE, ANIMI VEL EXPEDITA OMNIS QUAE IPSA! OBCAECATI ELIGENDI SED ODIO LABORE VERO REICIENDIS FACERE ACCUSAMUS MOLESTIAS EAQUE IMPEDIT, CONSEQUUNTUR QUAE FUGA VITAE FUGIT? \r\n\r\n\r\nCATEGORIES: FOOD [ / ] , TRAVEL [ / ]', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '1', 'there-s-a-cool-new-way-for-men-to-wear-socks-and-sandals', '', '0', NULL, NULL, NULL),
(2, '2021-06-07 08:05:19', 1, '2021-06-07 08:05:19', 1, 1, 1, 'Y', NULL, NULL, 500, 'There’s a Cool New Way for Men to Wear Socks and Sandals 2', 2, '<div class=\"text half-to-full\">\r\n	<div class=\"post-meta\">\r\n <span class=\"category\">Lifestyle</span> <span class=\"mr-2\">March 15, 2018 </span> • <span class=\"ml-2\"><span class=\"fa fa-comments\"></span> 3</span>\r\n	</div>\r\n	<h3>There’s a Cool New Way for Men to Wear Socks and Sandals</h3>\r\n	<p>\r\n		Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quidem nobis, ut dicta eaque ipsa laudantium!\r\n	</p>\r\n</div>\r\n<br>', 'html', NULL, '<h1 class=\"mb-4\">There’s a Cool New Way for Men to Wear Socks and Sandals</h1>\r\n<div class=\"post-meta\">\r\n <span class=\"category\">Food</span> <span class=\"mr-2\">March 15, 2018 </span> • <span class=\"ml-2\"><span class=\"fa fa-comments\"></span> 3</span>\r\n</div>\r\n<div class=\"post-content-body\">\r\n	<p>\r\n		 Lorem ipsum dolor sit amet, consectetur adipisicing elit. Praesentium nam quas inventore, ut iure iste modi eos adipisci ad ea itaque labore earum autem nobis et numquam, minima eius. Nam eius, non unde ut aut sunt eveniet rerum repellendus porro.\r\n	</p>\r\n	<p>\r\n		 Sint ab voluptates itaque, ipsum porro qui obcaecati cumque quas sit vel. Voluptatum provident id quis quo. Eveniet maiores perferendis officia veniam est laborum, expedita fuga doloribus natus repellendus dolorem ab similique sint eius cupiditate necessitatibus, magni nesciunt ex eos.\r\n	</p>\r\n	<p>\r\n		 Quis eius aspernatur, eaque culpa cumque reiciendis, nobis at earum assumenda similique ut? Aperiam vel aut, ex exercitationem eos consequuntur eaque culpa totam, deserunt, aspernatur quae eveniet hic provident ullam tempora error repudiandae sapiente illum rerum itaque voluptatem. Commodi, sequi.\r\n	</p>\r\n	<div class=\"row mb-5\">\r\n		<div class=\"col-md-12 mb-4 element-animate\">\r\n <img alt=\"Image placeholder\" src=\"/images/img_7.jpg\" class=\"img-fluid\">\r\n		</div>\r\n		<div class=\"/col-md-6 mb-4 element-animate\">\r\n <img alt=\"Image placeholder\" src=\"/images/img_9.jpg\" class=\"img-fluid\">\r\n		</div>\r\n		<div class=\"col-md-6 mb-4 element-animate\">\r\n <img alt=\"Image placeholder\" src=\"/images/img_11.jpg\" class=\"img-fluid\">\r\n		</div>\r\n	</div>\r\n	<p>\r\n		 Quibusdam autem, quas molestias recusandae aperiam molestiae modi qui ipsam vel. Placeat tenetur veritatis tempore quos impedit dicta, error autem, quae sint inventore ipsa quidem. Quo voluptate quisquam reiciendis, minus, animi minima eum officia doloremque repellat eos, odio doloribus cum.\r\n	</p>\r\n	<p>\r\n		 Temporibus quo dolore veritatis doloribus delectus dolores perspiciatis recusandae ducimus, nisi quod, incidunt ut quaerat, magnam cupiditate. Aut, laboriosam magnam, nobis dolore fugiat impedit necessitatibus nisi cupiditate, quas repellat itaque molestias sit libero voluptas eveniet omnis illo ullam dolorem minima.\r\n	</p>\r\n	<p>\r\n		 Porro amet accusantium libero fugit totam, deserunt ipsa, dolorem, vero expedita illo similique saepe nisi deleniti. Cumque, laboriosam, porro! Facilis voluptatem sequi nulla quidem, provident eius quos pariatur maxime sapiente illo nostrum quibusdam aliquid fugiat! Earum quod fuga id officia.\r\n	</p>\r\n	<p>\r\n		 Illo magnam at dolore ad enim fugiat ut maxime facilis autem, nulla cumque quis commodi eos nisi unde soluta, ipsa eius aspernatur sint atque! Nihil, eveniet illo ea, mollitia fuga accusamus dolor dolorem perspiciatis rerum hic, consectetur error rem aspernatur!\r\n	</p>\r\n	<p>\r\n		 Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus magni explicabo id molestiae, minima quas assumenda consectetur, nobis neque rem, incidunt quam tempore perferendis provident obcaecati sapiente, animi vel expedita omnis quae ipsa! Obcaecati eligendi sed odio labore vero reiciendis facere accusamus molestias eaque impedit, consequuntur quae fuga vitae fugit?\r\n	</p>\r\n</div>\r\n<div class=\"pt-5\">\r\n	<p>\r\n		 Categories: <a href=\"/\">Food</a>, <a href=\"/\">Travel</a>\r\n	</p>\r\n</div>\r\n<br>', 'html', 'THERE’S A COOL NEW WAY FOR MEN TO WEAR SOCKS AND SANDALS 2\r\nLIFESTYLE MARCH 15, 2018 • 3 THERE’S A COOL NEW WAY FOR MEN TO WEAR \r\nSOCKS AND SANDALS \r\n\r\nLOREM IPSUM DOLOR SIT AMET, CONSECTETUR ADIPISICING ELIT. QUIDEM NOBIS, \r\nUT DICTA EAQUE IPSA LAUDANTIUM!\r\nTHERE’S A COOL NEW WAY FOR MEN TO WEAR SOCKS AND SANDALS \r\nFOOD MARCH 15, 2018 • 3 \r\n\r\n\r\nLOREM IPSUM DOLOR SIT AMET, CONSECTETUR ADIPISICING ELIT. PRAESENTIUM NAM \r\nQUAS INVENTORE, UT IURE ISTE MODI EOS ADIPISCI AD EA ITAQUE LABORE EARUM AUTEM NOBIS ET NUMQUAM, MINIMA EIUS. NAM EIUS, NON UNDE UT AUT SUNT EVENIET RERUM REPELLENDUS PORRO. \r\n\r\nSINT AB VOLUPTATES ITAQUE, IPSUM PORRO QUI OBCAECATI CUMQUE QUAS SIT VEL. \r\nVOLUPTATUM PROVIDENT ID QUIS QUO. EVENIET MAIORES PERFERENDIS OFFICIA VENIAM EST LABORUM, EXPEDITA FUGA DOLORIBUS NATUS REPELLENDUS DOLOREM AB SIMILIQUE SINT EIUS CUPIDITATE NECESSITATIBUS, MAGNI NESCIUNT EX EOS. \r\n\r\nQUIS EIUS ASPERNATUR, EAQUE CULPA CUMQUE REICIENDIS, NOBIS AT EARUM ASSUMENDA \r\nSIMILIQUE UT? APERIAM VEL AUT, EX EXERCITATIONEM EOS CONSEQUUNTUR EAQUE CULPA TOTAM, DESERUNT, ASPERNATUR QUAE EVENIET HIC PROVIDENT ULLAM TEMPORA ERROR REPUDIANDAE SAPIENTE ILLUM RERUM ITAQUE VOLUPTATEM. COMMODI, SEQUI. \r\n\r\n[ /IMAGES/IMG_7.JPG ] \r\n[ /IMAGES/IMG_9.JPG ] \r\n[ /IMAGES/IMG_11.JPG ] \r\n\r\nQUIBUSDAM AUTEM, QUAS MOLESTIAS RECUSANDAE APERIAM MOLESTIAE MODI QUI IPSAM \r\nVEL. PLACEAT TENETUR VERITATIS TEMPORE QUOS IMPEDIT DICTA, ERROR AUTEM, QUAE SINT INVENTORE IPSA QUIDEM. QUO VOLUPTATE QUISQUAM REICIENDIS, MINUS, ANIMI MINIMA EUM OFFICIA DOLOREMQUE REPELLAT EOS, ODIO DOLORIBUS CUM. \r\n\r\nTEMPORIBUS QUO DOLORE VERITATIS DOLORIBUS DELECTUS DOLORES PERSPICIATIS \r\nRECUSANDAE DUCIMUS, NISI QUOD, INCIDUNT UT QUAERAT, MAGNAM CUPIDITATE. AUT, LABORIOSAM MAGNAM, NOBIS DOLORE FUGIAT IMPEDIT NECESSITATIBUS NISI CUPIDITATE, QUAS REPELLAT ITAQUE MOLESTIAS SIT LIBERO VOLUPTAS EVENIET OMNIS ILLO ULLAM DOLOREM MINIMA. \r\n\r\nPORRO AMET ACCUSANTIUM LIBERO FUGIT TOTAM, DESERUNT IPSA, DOLOREM, VERO \r\nEXPEDITA ILLO SIMILIQUE SAEPE NISI DELENITI. CUMQUE, LABORIOSAM, PORRO! FACILIS VOLUPTATEM SEQUI NULLA QUIDEM, PROVIDENT EIUS QUOS PARIATUR MAXIME SAPIENTE ILLO NOSTRUM QUIBUSDAM ALIQUID FUGIAT! EARUM QUOD FUGA ID OFFICIA. \r\n\r\nILLO MAGNAM AT DOLORE AD ENIM FUGIAT UT MAXIME FACILIS AUTEM, NULLA CUMQUE \r\nQUIS COMMODI EOS NISI UNDE SOLUTA, IPSA EIUS ASPERNATUR SINT ATQUE! NIHIL, EVENIET ILLO EA, MOLLITIA FUGA ACCUSAMUS DOLOR DOLOREM PERSPICIATIS RERUM HIC, CONSECTETUR ERROR REM ASPERNATUR! \r\n\r\nLOREM IPSUM DOLOR SIT AMET, CONSECTETUR ADIPISICING ELIT. TEMPORIBUS MAGNI \r\nEXPLICABO ID MOLESTIAE, MINIMA QUAS ASSUMENDA CONSECTETUR, NOBIS NEQUE REM, INCIDUNT QUAM TEMPORE PERFERENDIS PROVIDENT OBCAECATI SAPIENTE, ANIMI VEL EXPEDITA OMNIS QUAE IPSA! OBCAECATI ELIGENDI SED ODIO LABORE VERO REICIENDIS FACERE ACCUSAMUS MOLESTIAS EAQUE IMPEDIT, CONSEQUUNTUR QUAE FUGA VITAE FUGIT? \r\n\r\n\r\nCATEGORIES: FOOD [ / ] , TRAVEL [ / ]', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '2', 'there-s-a-cool-new-way-for-men-to-wear-socks-and-sandals-2', '', '0', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock_element_iprop`
--

CREATE TABLE `b_iblock_element_iprop` (
  `IBLOCK_ID` int(11) NOT NULL,
  `SECTION_ID` int(11) NOT NULL,
  `ELEMENT_ID` int(11) NOT NULL,
  `IPROP_ID` int(11) NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock_element_lock`
--

CREATE TABLE `b_iblock_element_lock` (
  `IBLOCK_ELEMENT_ID` int(11) NOT NULL,
  `DATE_LOCK` datetime DEFAULT NULL,
  `LOCKED_BY` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock_element_property`
--

CREATE TABLE `b_iblock_element_property` (
  `ID` int(11) NOT NULL,
  `IBLOCK_PROPERTY_ID` int(11) NOT NULL,
  `IBLOCK_ELEMENT_ID` int(11) NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci NOT NULL,
  `VALUE_TYPE` char(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `VALUE_ENUM` int(11) DEFAULT NULL,
  `VALUE_NUM` decimal(18,4) DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_iblock_element_property`
--

INSERT INTO `b_iblock_element_property` (`ID`, `IBLOCK_PROPERTY_ID`, `IBLOCK_ELEMENT_ID`, `VALUE`, `VALUE_TYPE`, `VALUE_ENUM`, `VALUE_NUM`, `DESCRIPTION`) VALUES
(1, 1, 1, 'a:2:{s:4:\"TEXT\";s:39:\"<span class=\"category\">Lifestyle</span>\";s:4:\"TYPE\";s:4:\"HTML\";}', 'text', NULL, '0.0000', ''),
(2, 2, 1, 'a:2:{s:4:\"TEXT\";s:50:\"<span class=\"mr-2\">March 15, 2018 </span> &bullet;\";s:4:\"TYPE\";s:4:\"HTML\";}', 'text', NULL, '0.0000', ''),
(3, 3, 1, 'a:2:{s:4:\"TEXT\";s:64:\"<span class=\"ml-2\"><span class=\"fa fa-comments\"></span> 3</span>\";s:4:\"TYPE\";s:4:\"HTML\";}', 'text', NULL, '0.0000', ''),
(4, 1, 2, 'a:2:{s:4:\"TEXT\";s:39:\"<span class=\"category\">Lifestyle</span>\";s:4:\"TYPE\";s:4:\"HTML\";}', 'text', NULL, '0.0000', ''),
(5, 2, 2, 'a:2:{s:4:\"TEXT\";s:50:\"<span class=\"mr-2\">March 15, 2018 </span> &bullet;\";s:4:\"TYPE\";s:4:\"HTML\";}', 'text', NULL, '0.0000', ''),
(6, 3, 2, 'a:2:{s:4:\"TEXT\";s:64:\"<span class=\"ml-2\"><span class=\"fa fa-comments\"></span> 3</span>\";s:4:\"TYPE\";s:4:\"HTML\";}', 'text', NULL, '0.0000', '');

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock_element_right`
--

CREATE TABLE `b_iblock_element_right` (
  `IBLOCK_ID` int(11) NOT NULL,
  `SECTION_ID` int(11) NOT NULL,
  `ELEMENT_ID` int(11) NOT NULL,
  `RIGHT_ID` int(11) NOT NULL,
  `IS_INHERITED` char(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock_fields`
--

CREATE TABLE `b_iblock_fields` (
  `IBLOCK_ID` int(18) NOT NULL,
  `FIELD_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `IS_REQUIRED` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DEFAULT_VALUE` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_iblock_fields`
--

INSERT INTO `b_iblock_fields` (`IBLOCK_ID`, `FIELD_ID`, `IS_REQUIRED`, `DEFAULT_VALUE`) VALUES
(1, 'ACTIVE', 'Y', 'Y'),
(1, 'ACTIVE_FROM', 'N', ''),
(1, 'ACTIVE_TO', 'N', ''),
(1, 'CODE', 'Y', 'a:8:{s:6:\"UNIQUE\";s:1:\"Y\";s:15:\"TRANSLITERATION\";s:1:\"Y\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),
(1, 'DETAIL_PICTURE', 'N', 'a:17:{s:5:\"SCALE\";s:1:\"Y\";s:5:\"WIDTH\";i:700;s:6:\"HEIGHT\";i:487;s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(1, 'DETAIL_TEXT', 'N', ''),
(1, 'DETAIL_TEXT_TYPE', 'Y', 'text'),
(1, 'DETAIL_TEXT_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(1, 'IBLOCK_SECTION', 'Y', 'a:1:{s:22:\"KEEP_IBLOCK_SECTION_ID\";s:1:\"Y\";}'),
(1, 'LOG_ELEMENT_ADD', 'N', NULL),
(1, 'LOG_ELEMENT_DELETE', 'N', NULL),
(1, 'LOG_ELEMENT_EDIT', 'N', NULL),
(1, 'LOG_SECTION_ADD', 'N', NULL),
(1, 'LOG_SECTION_DELETE', 'N', NULL),
(1, 'LOG_SECTION_EDIT', 'N', NULL),
(1, 'NAME', 'Y', ''),
(1, 'PREVIEW_PICTURE', 'N', 'a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";i:700;s:6:\"HEIGHT\";i:487;s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(1, 'PREVIEW_TEXT', 'N', ''),
(1, 'PREVIEW_TEXT_TYPE', 'Y', 'text'),
(1, 'PREVIEW_TEXT_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(1, 'SECTION_CODE', 'Y', 'a:8:{s:6:\"UNIQUE\";s:1:\"Y\";s:15:\"TRANSLITERATION\";s:1:\"Y\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),
(1, 'SECTION_DESCRIPTION', 'N', ''),
(1, 'SECTION_DESCRIPTION_TYPE', 'Y', 'text'),
(1, 'SECTION_DESCRIPTION_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(1, 'SECTION_DETAIL_PICTURE', 'N', 'a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(1, 'SECTION_NAME', 'Y', 'Lifestyle'),
(1, 'SECTION_PICTURE', 'N', 'a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(1, 'SECTION_XML_ID', 'N', ''),
(1, 'SORT', 'N', '0'),
(1, 'TAGS', 'N', ''),
(1, 'XML_ID', 'Y', ''),
(1, 'XML_IMPORT_START_TIME', 'N', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock_group`
--

CREATE TABLE `b_iblock_group` (
  `IBLOCK_ID` int(11) NOT NULL,
  `GROUP_ID` int(11) NOT NULL,
  `PERMISSION` char(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_iblock_group`
--

INSERT INTO `b_iblock_group` (`IBLOCK_ID`, `GROUP_ID`, `PERMISSION`) VALUES
(1, 1, 'X'),
(1, 2, 'R');

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock_iblock_iprop`
--

CREATE TABLE `b_iblock_iblock_iprop` (
  `IBLOCK_ID` int(11) NOT NULL,
  `IPROP_ID` int(11) NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock_iproperty`
--

CREATE TABLE `b_iblock_iproperty` (
  `ID` int(11) NOT NULL,
  `IBLOCK_ID` int(11) NOT NULL,
  `CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `TEMPLATE` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock_messages`
--

CREATE TABLE `b_iblock_messages` (
  `IBLOCK_ID` int(18) NOT NULL,
  `MESSAGE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MESSAGE_TEXT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_iblock_messages`
--

INSERT INTO `b_iblock_messages` (`IBLOCK_ID`, `MESSAGE_ID`, `MESSAGE_TEXT`) VALUES
(1, 'ELEMENT_ADD', 'Добавить статью'),
(1, 'ELEMENT_DELETE', 'Удалить статью'),
(1, 'ELEMENT_EDIT', 'Изменить статью'),
(1, 'ELEMENT_NAME', 'Статья'),
(1, 'ELEMENTS_NAME', 'Статьи'),
(1, 'SECTION_ADD', 'Добавить категорию'),
(1, 'SECTION_DELETE', 'Удалить категорию'),
(1, 'SECTION_EDIT', 'Изменить категорию'),
(1, 'SECTION_NAME', 'Категория'),
(1, 'SECTIONS_NAME', 'Категории');

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock_offers_tmp`
--

CREATE TABLE `b_iblock_offers_tmp` (
  `ID` int(11) UNSIGNED NOT NULL,
  `PRODUCT_IBLOCK_ID` int(11) UNSIGNED NOT NULL,
  `OFFERS_IBLOCK_ID` int(11) UNSIGNED NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock_property`
--

CREATE TABLE `b_iblock_property` (
  `ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `IBLOCK_ID` int(11) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `SORT` int(11) NOT NULL DEFAULT '500',
  `CODE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DEFAULT_VALUE` text COLLATE utf8_unicode_ci,
  `PROPERTY_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `ROW_COUNT` int(11) NOT NULL DEFAULT '1',
  `COL_COUNT` int(11) NOT NULL DEFAULT '30',
  `LIST_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'L',
  `MULTIPLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `XML_ID` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FILE_TYPE` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MULTIPLE_CNT` int(11) DEFAULT NULL,
  `TMP_ID` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LINK_IBLOCK_ID` int(18) DEFAULT NULL,
  `WITH_DESCRIPTION` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEARCHABLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `FILTRABLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `IS_REQUIRED` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VERSION` int(11) NOT NULL DEFAULT '1',
  `USER_TYPE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_TYPE_SETTINGS` text COLLATE utf8_unicode_ci,
  `HINT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_iblock_property`
--

INSERT INTO `b_iblock_property` (`ID`, `TIMESTAMP_X`, `IBLOCK_ID`, `NAME`, `ACTIVE`, `SORT`, `CODE`, `DEFAULT_VALUE`, `PROPERTY_TYPE`, `ROW_COUNT`, `COL_COUNT`, `LIST_TYPE`, `MULTIPLE`, `XML_ID`, `FILE_TYPE`, `MULTIPLE_CNT`, `TMP_ID`, `LINK_IBLOCK_ID`, `WITH_DESCRIPTION`, `SEARCHABLE`, `FILTRABLE`, `IS_REQUIRED`, `VERSION`, `USER_TYPE`, `USER_TYPE_SETTINGS`, `HINT`) VALUES
(1, '2021-06-07 04:37:15', 1, 'Lifestyle', 'Y', 500, 'LIFESTYLE', 'a:2:{s:4:\"TEXT\";s:0:\"\";s:4:\"TYPE\";s:4:\"HTML\";}', 'S', 1, 30, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 1, 'HTML', 'a:1:{s:6:\"height\";i:200;}', ''),
(2, '2021-06-07 04:37:15', 1, 'Date', 'Y', 500, 'DATE', 'a:2:{s:4:\"TEXT\";s:0:\"\";s:4:\"TYPE\";s:4:\"HTML\";}', 'S', 1, 30, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 1, 'HTML', 'a:1:{s:6:\"height\";i:200;}', ''),
(3, '2021-06-07 04:22:17', 1, 'Comments', 'Y', 500, 'COMMENTS', 'a:2:{s:4:\"TEXT\";s:0:\"\";s:4:\"TYPE\";s:4:\"HTML\";}', 'S', 1, 30, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 1, 'HTML', 'a:1:{s:6:\"height\";i:200;}', '');

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock_property_enum`
--

CREATE TABLE `b_iblock_property_enum` (
  `ID` int(11) NOT NULL,
  `PROPERTY_ID` int(11) NOT NULL,
  `VALUE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DEF` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SORT` int(11) NOT NULL DEFAULT '500',
  `XML_ID` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `TMP_ID` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock_property_feature`
--

CREATE TABLE `b_iblock_property_feature` (
  `ID` int(11) NOT NULL,
  `PROPERTY_ID` int(11) NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `FEATURE_ID` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `IS_ENABLED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock_right`
--

CREATE TABLE `b_iblock_right` (
  `ID` int(11) NOT NULL,
  `IBLOCK_ID` int(11) NOT NULL,
  `GROUP_CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_TYPE` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `DO_INHERIT` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `TASK_ID` int(11) NOT NULL,
  `OP_SREAD` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `OP_EREAD` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `XML_ID` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock_rss`
--

CREATE TABLE `b_iblock_rss` (
  `ID` int(11) NOT NULL,
  `IBLOCK_ID` int(11) NOT NULL,
  `NODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `NODE_VALUE` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock_section`
--

CREATE TABLE `b_iblock_section` (
  `ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `MODIFIED_BY` int(18) DEFAULT NULL,
  `DATE_CREATE` datetime DEFAULT NULL,
  `CREATED_BY` int(18) DEFAULT NULL,
  `IBLOCK_ID` int(11) NOT NULL,
  `IBLOCK_SECTION_ID` int(11) DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `GLOBAL_ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `SORT` int(11) NOT NULL DEFAULT '500',
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PICTURE` int(18) DEFAULT NULL,
  `LEFT_MARGIN` int(18) DEFAULT NULL,
  `RIGHT_MARGIN` int(18) DEFAULT NULL,
  `DEPTH_LEVEL` int(18) DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `DESCRIPTION_TYPE` char(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `SEARCHABLE_CONTENT` text COLLATE utf8_unicode_ci,
  `CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TMP_ID` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DETAIL_PICTURE` int(18) DEFAULT NULL,
  `SOCNET_GROUP_ID` int(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_iblock_section`
--

INSERT INTO `b_iblock_section` (`ID`, `TIMESTAMP_X`, `MODIFIED_BY`, `DATE_CREATE`, `CREATED_BY`, `IBLOCK_ID`, `IBLOCK_SECTION_ID`, `ACTIVE`, `GLOBAL_ACTIVE`, `SORT`, `NAME`, `PICTURE`, `LEFT_MARGIN`, `RIGHT_MARGIN`, `DEPTH_LEVEL`, `DESCRIPTION`, `DESCRIPTION_TYPE`, `SEARCHABLE_CONTENT`, `CODE`, `XML_ID`, `TMP_ID`, `DETAIL_PICTURE`, `SOCNET_GROUP_ID`) VALUES
(1, '2021-06-07 04:26:27', 1, '2021-06-07 07:26:27', 1, 1, NULL, 'Y', 'Y', 500, 'Lifestyle', NULL, 7, 8, 1, '', 'text', 'LIFESTYLE\r\n', 'lifestyle', NULL, NULL, NULL, NULL),
(2, '2021-06-07 04:27:02', 1, '2021-06-07 07:27:02', 1, 1, NULL, 'Y', 'Y', 500, 'Food', NULL, 5, 6, 1, '', 'text', 'FOOD\r\n', 'food', NULL, NULL, NULL, NULL),
(3, '2021-06-07 04:30:48', 1, '2021-06-07 07:30:48', 1, 1, NULL, 'Y', 'Y', 500, 'Adventure', NULL, 1, 2, 1, '', 'text', 'ADVENTURE\r\n', 'adventure', NULL, NULL, NULL, NULL),
(4, '2021-06-07 04:31:03', 1, '2021-06-07 07:31:03', 1, 1, NULL, 'Y', 'Y', 500, 'Travel', NULL, 9, 10, 1, '', 'text', 'TRAVEL\r\n', 'travel', NULL, NULL, NULL, NULL),
(5, '2021-06-07 04:31:16', 1, '2021-06-07 07:31:16', 1, 1, NULL, 'Y', 'Y', 500, 'Business', NULL, 3, 4, 1, '', 'text', 'BUSINESS\r\n', 'business', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock_section_element`
--

CREATE TABLE `b_iblock_section_element` (
  `IBLOCK_SECTION_ID` int(11) NOT NULL,
  `IBLOCK_ELEMENT_ID` int(11) NOT NULL,
  `ADDITIONAL_PROPERTY_ID` int(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_iblock_section_element`
--

INSERT INTO `b_iblock_section_element` (`IBLOCK_SECTION_ID`, `IBLOCK_ELEMENT_ID`, `ADDITIONAL_PROPERTY_ID`) VALUES
(1, 1, NULL),
(1, 2, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock_section_iprop`
--

CREATE TABLE `b_iblock_section_iprop` (
  `IBLOCK_ID` int(11) NOT NULL,
  `SECTION_ID` int(11) NOT NULL,
  `IPROP_ID` int(11) NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock_section_property`
--

CREATE TABLE `b_iblock_section_property` (
  `IBLOCK_ID` int(11) NOT NULL,
  `SECTION_ID` int(11) NOT NULL,
  `PROPERTY_ID` int(11) NOT NULL,
  `SMART_FILTER` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DISPLAY_TYPE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DISPLAY_EXPANDED` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FILTER_HINT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock_section_right`
--

CREATE TABLE `b_iblock_section_right` (
  `IBLOCK_ID` int(11) NOT NULL,
  `SECTION_ID` int(11) NOT NULL,
  `RIGHT_ID` int(11) NOT NULL,
  `IS_INHERITED` char(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock_sequence`
--

CREATE TABLE `b_iblock_sequence` (
  `IBLOCK_ID` int(18) NOT NULL,
  `CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SEQ_VALUE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock_site`
--

CREATE TABLE `b_iblock_site` (
  `IBLOCK_ID` int(18) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_iblock_site`
--

INSERT INTO `b_iblock_site` (`IBLOCK_ID`, `SITE_ID`) VALUES
(1, 's1');

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock_type`
--

CREATE TABLE `b_iblock_type` (
  `ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SECTIONS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `EDIT_FILE_BEFORE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EDIT_FILE_AFTER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IN_RSS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SORT` int(18) NOT NULL DEFAULT '500'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_iblock_type`
--

INSERT INTO `b_iblock_type` (`ID`, `SECTIONS`, `EDIT_FILE_BEFORE`, `EDIT_FILE_AFTER`, `IN_RSS`, `SORT`) VALUES
('Balita', 'Y', '', '', 'N', 500);

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock_type_lang`
--

CREATE TABLE `b_iblock_type_lang` (
  `IBLOCK_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `SECTION_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ELEMENT_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_iblock_type_lang`
--

INSERT INTO `b_iblock_type_lang` (`IBLOCK_TYPE_ID`, `LID`, `NAME`, `SECTION_NAME`, `ELEMENT_NAME`) VALUES
('Balita', 'ru', 'Балита', '', ''),
('Balita', 'en', 'Balita', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `b_landing`
--

CREATE TABLE `b_landing` (
  `ID` int(18) NOT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `INITIATOR_APP_CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RULE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `DELETED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `PUBLIC` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `SYS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `VIEWS` int(18) NOT NULL DEFAULT '0',
  `TITLE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TPL_ID` int(18) DEFAULT NULL,
  `TPL_CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SITE_ID` int(18) NOT NULL,
  `SITEMAP` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `FOLDER` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `FOLDER_ID` int(18) DEFAULT NULL,
  `SEARCH_CONTENT` mediumtext COLLATE utf8_unicode_ci,
  `VERSION` int(18) NOT NULL DEFAULT '1',
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL,
  `DATE_PUBLIC` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_landing_binding`
--

CREATE TABLE `b_landing_binding` (
  `ID` int(18) NOT NULL,
  `ENTITY_ID` int(18) NOT NULL,
  `ENTITY_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `BINDING_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `BINDING_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_landing_block`
--

CREATE TABLE `b_landing_block` (
  `ID` int(18) NOT NULL,
  `PARENT_ID` int(18) DEFAULT NULL,
  `LID` int(18) NOT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `INITIATOR_APP_CODE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ANCHOR` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SORT` int(18) DEFAULT '500',
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `PUBLIC` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `DELETED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ACCESS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'X',
  `SOURCE_PARAMS` mediumtext COLLATE utf8_unicode_ci,
  `CONTENT` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `SEARCH_CONTENT` mediumtext COLLATE utf8_unicode_ci,
  `ASSETS` text COLLATE utf8_unicode_ci,
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_landing_chat`
--

CREATE TABLE `b_landing_chat` (
  `ID` int(18) NOT NULL,
  `CHAT_ID` int(18) NOT NULL,
  `TITLE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `AVATAR` int(18) DEFAULT NULL,
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_landing_chat_binding`
--

CREATE TABLE `b_landing_chat_binding` (
  `ID` int(18) NOT NULL,
  `INTERNAL_CHAT_ID` int(18) NOT NULL,
  `ENTITY_ID` int(18) NOT NULL,
  `ENTITY_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_landing_cookies_agreement`
--

CREATE TABLE `b_landing_cookies_agreement` (
  `ID` int(18) NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `SITE_ID` int(18) NOT NULL,
  `CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `TITLE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONTENT` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_landing_demo`
--

CREATE TABLE `b_landing_demo` (
  `ID` int(18) NOT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `APP_CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `TYPE` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `TPL_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `SHOW_IN_LIST` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `TITLE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PREVIEW_URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PREVIEW` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PREVIEW2X` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PREVIEW3X` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MANIFEST` mediumtext COLLATE utf8_unicode_ci,
  `LANG` text COLLATE utf8_unicode_ci,
  `SITE_TEMPLATE_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_landing_domain`
--

CREATE TABLE `b_landing_domain` (
  `ID` int(18) NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `DOMAIN` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PROTOCOL` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `PROVIDER` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_landing_domain`
--

INSERT INTO `b_landing_domain` (`ID`, `ACTIVE`, `DOMAIN`, `XML_ID`, `PROTOCOL`, `PROVIDER`, `CREATED_BY_ID`, `MODIFIED_BY_ID`, `DATE_CREATE`, `DATE_MODIFY`) VALUES
(1, 'Y', 'bitrixzadanieotais', NULL, 'http', NULL, 1, 1, '2021-06-02 20:08:49', '2021-06-02 20:08:49');

-- --------------------------------------------------------

--
-- Структура таблицы `b_landing_entity_rights`
--

CREATE TABLE `b_landing_entity_rights` (
  `ID` int(18) NOT NULL,
  `ENTITY_ID` int(18) NOT NULL,
  `ENTITY_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `TASK_ID` int(11) NOT NULL,
  `ACCESS_CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ROLE_ID` int(18) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_landing_file`
--

CREATE TABLE `b_landing_file` (
  `ID` int(18) NOT NULL,
  `ENTITY_ID` int(18) NOT NULL,
  `ENTITY_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `FILE_ID` int(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_landing_filter_block`
--

CREATE TABLE `b_landing_filter_block` (
  `ID` int(18) NOT NULL,
  `FILTER_ID` int(18) NOT NULL,
  `BLOCK_ID` int(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_landing_filter_entity`
--

CREATE TABLE `b_landing_filter_entity` (
  `ID` int(18) NOT NULL,
  `SOURCE_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `FILTER_HASH` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `FILTER` text COLLATE utf8_unicode_ci,
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_landing_hook_data`
--

CREATE TABLE `b_landing_hook_data` (
  `ID` int(18) NOT NULL,
  `ENTITY_ID` int(18) NOT NULL,
  `ENTITY_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `HOOK` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci,
  `PUBLIC` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_landing_placement`
--

CREATE TABLE `b_landing_placement` (
  `ID` int(18) NOT NULL,
  `APP_ID` int(18) DEFAULT NULL,
  `PLACEMENT` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PLACEMENT_HANDLER` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TITLE` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_landing_repo`
--

CREATE TABLE `b_landing_repo` (
  `ID` int(18) NOT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `APP_CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SECTIONS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SITE_TEMPLATE_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PREVIEW` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MANIFEST` text COLLATE utf8_unicode_ci,
  `CONTENT` text COLLATE utf8_unicode_ci NOT NULL,
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_landing_role`
--

CREATE TABLE `b_landing_role` (
  `ID` int(18) NOT NULL,
  `TITLE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TYPE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACCESS_CODES` text COLLATE utf8_unicode_ci,
  `ADDITIONAL_RIGHTS` text COLLATE utf8_unicode_ci,
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_landing_site`
--

CREATE TABLE `b_landing_site` (
  `ID` int(18) NOT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `DELETED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `TITLE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TYPE` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'PAGE',
  `TPL_ID` int(18) DEFAULT NULL,
  `TPL_CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DOMAIN_ID` int(18) NOT NULL,
  `SMN_SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LANDING_ID_INDEX` int(18) DEFAULT NULL,
  `LANDING_ID_404` int(18) DEFAULT NULL,
  `LANDING_ID_503` int(18) DEFAULT NULL,
  `LANG` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SPECIAL` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_landing_site`
--

INSERT INTO `b_landing_site` (`ID`, `CODE`, `ACTIVE`, `DELETED`, `TITLE`, `XML_ID`, `DESCRIPTION`, `TYPE`, `TPL_ID`, `TPL_CODE`, `DOMAIN_ID`, `SMN_SITE_ID`, `LANDING_ID_INDEX`, `LANDING_ID_404`, `LANDING_ID_503`, `LANG`, `SPECIAL`, `CREATED_BY_ID`, `MODIFIED_BY_ID`, `DATE_CREATE`, `DATE_MODIFY`) VALUES
(1, '/gqhingydbq/', 'Y', 'N', 'Моя компания', NULL, NULL, 'SMN', 0, NULL, 1, 's1', NULL, NULL, NULL, NULL, 'N', 1, 1, '2021-06-02 20:08:49', '2021-06-02 20:08:49');

-- --------------------------------------------------------

--
-- Структура таблицы `b_landing_syspage`
--

CREATE TABLE `b_landing_syspage` (
  `ID` int(18) NOT NULL,
  `SITE_ID` int(18) NOT NULL,
  `TYPE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `LANDING_ID` int(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_landing_template`
--

CREATE TABLE `b_landing_template` (
  `ID` int(18) NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `TITLE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SORT` int(18) DEFAULT '100',
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONTENT` text COLLATE utf8_unicode_ci NOT NULL,
  `AREA_COUNT` int(2) NOT NULL,
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_landing_template`
--

INSERT INTO `b_landing_template` (`ID`, `ACTIVE`, `TITLE`, `SORT`, `XML_ID`, `CONTENT`, `AREA_COUNT`, `CREATED_BY_ID`, `MODIFIED_BY_ID`, `DATE_CREATE`, `DATE_MODIFY`) VALUES
(1, 'Y', '#EMPTY#', 100, 'empty', '#CONTENT#', 0, 1, 1, '2021-06-02 16:30:30', '2021-06-02 16:30:30'),
(2, 'Y', '#SIDEBAR_LEFT#', 200, 'sidebar_left', '<div class=\"landing-layout-flex\">\n								<div class=\"landing-sidebar g-max-width-100x g-overflow-hidden\">#AREA_1#</div>\n								<div class=\"landing-main g-max-width-100x\">#CONTENT#</div>\n							</div>', 1, 1, 1, '2021-06-02 16:30:30', '2021-06-02 16:30:30'),
(3, 'Y', '#SIDEBAR_RIGHT#', 300, 'sidebar_right', '<div class=\"landing-layout-flex sidebar-right\">\n								<div class=\"landing-sidebar g-max-width-100x\">#AREA_1#</div>\n								<div class=\"landing-main g-max-width-100x\">#CONTENT#</div>\n							</div>', 1, 1, 1, '2021-06-02 16:30:30', '2021-06-02 16:30:30'),
(4, 'Y', '#HEADER_ONLY#', 400, 'header_only', '<div class=\"landing-header\">#AREA_1#</div> \n								<div class=\"landing-main\">#CONTENT#</div>', 1, 1, 1, '2021-06-02 16:30:30', '2021-06-02 16:30:30'),
(5, 'Y', '#HEADER_FOOTER#', 500, 'header_footer', '<div class=\"landing-header\">#AREA_1#</div> \n								<div class=\"landing-main\">#CONTENT#</div> \n							<div class=\"landing-footer\">#AREA_2#</div>', 2, 1, 1, '2021-06-02 16:30:30', '2021-06-02 16:30:30'),
(6, 'Y', '#WITHOUT_LEFT#', 600, 'without_left', '<div class=\"landing-header\">#AREA_1#</div>\n								<div class=\"landing-layout-flex without-left\">\n									<div class=\"landing-sidebar g-max-width-100x\">#AREA_2#</div>\n									<div class=\"landing-main g-max-width-100x\">#CONTENT#</div>\n								</div>\n							<div class=\"landing-footer\">#AREA_3#</div>', 3, 1, 1, '2021-06-02 16:30:30', '2021-06-02 16:30:30'),
(7, 'Y', '#WITHOUT_RIGHT#', 700, 'without_right', '<div class=\"landing-header\">#AREA_1#</div>\n								<div class=\"landing-layout-flex\">\n									<div class=\"landing-sidebar g-max-width-100x\">#AREA_2#</div>\n									<div class=\"landing-main g-max-width-100x\">#CONTENT#</div>\n								</div>\n							<div class=\"landing-footer\">#AREA_3#</div>', 3, 1, 1, '2021-06-02 16:30:30', '2021-06-02 16:30:30');

-- --------------------------------------------------------

--
-- Структура таблицы `b_landing_template_ref`
--

CREATE TABLE `b_landing_template_ref` (
  `ID` int(18) NOT NULL,
  `ENTITY_ID` int(18) NOT NULL,
  `ENTITY_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `AREA` int(2) NOT NULL,
  `LANDING_ID` int(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_landing_update_block`
--

CREATE TABLE `b_landing_update_block` (
  `ID` int(18) NOT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `LAST_BLOCK_ID` int(18) DEFAULT '0',
  `PARAMS` text COLLATE utf8_unicode_ci,
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_landing_urlrewrite`
--

CREATE TABLE `b_landing_urlrewrite` (
  `ID` int(18) NOT NULL,
  `SITE_ID` int(18) NOT NULL,
  `RULE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `LANDING_ID` int(18) NOT NULL,
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_landing_view`
--

CREATE TABLE `b_landing_view` (
  `ID` int(18) NOT NULL,
  `LID` int(18) NOT NULL,
  `USER_ID` int(18) NOT NULL,
  `VIEWS` int(18) NOT NULL,
  `FIRST_VIEW` datetime NOT NULL,
  `LAST_VIEW` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_lang`
--

CREATE TABLE `b_lang` (
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `SORT` int(18) NOT NULL DEFAULT '100',
  `DEF` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `DIR` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `FORMAT_DATE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORMAT_DATETIME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORMAT_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WEEK_START` int(11) DEFAULT NULL,
  `CHARSET` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `DOC_ROOT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DOMAIN_LIMITED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SERVER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SITE_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EMAIL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CULTURE_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_lang`
--

INSERT INTO `b_lang` (`LID`, `SORT`, `DEF`, `ACTIVE`, `NAME`, `DIR`, `FORMAT_DATE`, `FORMAT_DATETIME`, `FORMAT_NAME`, `WEEK_START`, `CHARSET`, `LANGUAGE_ID`, `DOC_ROOT`, `DOMAIN_LIMITED`, `SERVER_NAME`, `SITE_NAME`, `EMAIL`, `CULTURE_ID`) VALUES
('s1', 1, 'Y', 'Y', 'Моя компания', '/', NULL, NULL, NULL, NULL, NULL, 'ru', '', 'N', '', '', '', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `b_language`
--

CREATE TABLE `b_language` (
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `SORT` int(11) NOT NULL DEFAULT '100',
  `DEF` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `FORMAT_DATE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORMAT_DATETIME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORMAT_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WEEK_START` int(11) DEFAULT NULL,
  `CHARSET` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DIRECTION` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CULTURE_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_language`
--

INSERT INTO `b_language` (`LID`, `SORT`, `DEF`, `ACTIVE`, `NAME`, `FORMAT_DATE`, `FORMAT_DATETIME`, `FORMAT_NAME`, `WEEK_START`, `CHARSET`, `DIRECTION`, `CULTURE_ID`) VALUES
('en', 2, 'N', 'Y', 'English', NULL, NULL, NULL, NULL, NULL, NULL, 2),
('ru', 1, 'Y', 'Y', 'Russian', NULL, NULL, NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `b_lang_domain`
--

CREATE TABLE `b_lang_domain` (
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `DOMAIN` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_log_notification`
--

CREATE TABLE `b_log_notification` (
  `ID` int(10) UNSIGNED NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AUDIT_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ITEM_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  `REMOTE_ADDR` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_AGENT` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REQUEST_URI` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CHECK_INTERVAL` int(11) DEFAULT NULL,
  `ALERT_COUNT` int(11) DEFAULT NULL,
  `DATE_CHECKED` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_log_notification_action`
--

CREATE TABLE `b_log_notification_action` (
  `ID` int(10) UNSIGNED NOT NULL,
  `NOTIFICATION_ID` int(10) UNSIGNED NOT NULL,
  `NOTIFICATION_TYPE` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `RECIPIENT` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ADDITIONAL_TEXT` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_main_mail_blacklist`
--

CREATE TABLE `b_main_mail_blacklist` (
  `ID` int(11) NOT NULL,
  `DATE_INSERT` datetime NOT NULL,
  `CATEGORY_ID` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_main_mail_sender`
--

CREATE TABLE `b_main_mail_sender` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `EMAIL` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `IS_CONFIRMED` tinyint(4) NOT NULL DEFAULT '0',
  `IS_PUBLIC` tinyint(4) NOT NULL DEFAULT '0',
  `OPTIONS` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_medialib_collection`
--

CREATE TABLE `b_medialib_collection` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `DATE_UPDATE` datetime NOT NULL,
  `OWNER_ID` int(11) DEFAULT NULL,
  `PARENT_ID` int(11) DEFAULT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `KEYWORDS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ITEMS_COUNT` int(11) DEFAULT NULL,
  `ML_TYPE` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_medialib_collection_item`
--

CREATE TABLE `b_medialib_collection_item` (
  `COLLECTION_ID` int(11) NOT NULL,
  `ITEM_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_medialib_item`
--

CREATE TABLE `b_medialib_item` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ITEM_TYPE` char(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `DATE_CREATE` datetime NOT NULL,
  `DATE_UPDATE` datetime NOT NULL,
  `SOURCE_ID` int(11) NOT NULL,
  `KEYWORDS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEARCHABLE_CONTENT` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_medialib_type`
--

CREATE TABLE `b_medialib_type` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `EXT` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SYSTEM` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `DESCRIPTION` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_medialib_type`
--

INSERT INTO `b_medialib_type` (`ID`, `NAME`, `CODE`, `EXT`, `SYSTEM`, `DESCRIPTION`) VALUES
(1, 'image_name', 'image', 'jpg,jpeg,gif,png', 'Y', 'image_desc'),
(2, 'video_name', 'video', 'flv,mp4,wmv', 'Y', 'video_desc'),
(3, 'sound_name', 'sound', 'mp3,wma,aac', 'Y', 'sound_desc');

-- --------------------------------------------------------

--
-- Структура таблицы `b_messageservice_message`
--

CREATE TABLE `b_messageservice_message` (
  `ID` int(18) NOT NULL,
  `TYPE` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `SENDER_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `AUTHOR_ID` int(18) NOT NULL DEFAULT '0',
  `MESSAGE_FROM` varchar(260) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MESSAGE_TO` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MESSAGE_HEADERS` longtext COLLATE utf8_unicode_ci,
  `MESSAGE_BODY` longtext COLLATE utf8_unicode_ci NOT NULL,
  `DATE_INSERT` datetime DEFAULT NULL,
  `DATE_EXEC` datetime DEFAULT NULL,
  `NEXT_EXEC` datetime DEFAULT NULL,
  `SUCCESS_EXEC` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `EXEC_ERROR` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `STATUS_ID` int(18) NOT NULL DEFAULT '0',
  `EXTERNAL_ID` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_messageservice_rest_app`
--

CREATE TABLE `b_messageservice_rest_app` (
  `ID` int(18) NOT NULL,
  `APP_ID` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `CODE` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `TYPE` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `HANDLER` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `DATE_ADD` datetime DEFAULT NULL,
  `AUTHOR_ID` int(18) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_messageservice_rest_app_lang`
--

CREATE TABLE `b_messageservice_rest_app_lang` (
  `ID` int(18) NOT NULL,
  `APP_ID` int(18) NOT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `APP_NAME` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_module`
--

CREATE TABLE `b_module` (
  `ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `DATE_ACTIVE` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_module`
--

INSERT INTO `b_module` (`ID`, `DATE_ACTIVE`) VALUES
('b24connector', NULL),
('bitrix.sitecorporate', NULL),
('bitrixcloud', NULL),
('clouds', NULL),
('fileman', NULL),
('highloadblock', NULL),
('iblock', NULL),
('landing', NULL),
('main', NULL),
('messageservice', NULL),
('perfmon', NULL),
('rest', NULL),
('search', NULL),
('seo', NULL),
('socialservices', NULL),
('translate', NULL),
('ui', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `b_module_group`
--

CREATE TABLE `b_module_group` (
  `ID` int(11) NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `GROUP_ID` int(11) NOT NULL,
  `G_ACCESS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_module_group`
--

INSERT INTO `b_module_group` (`ID`, `MODULE_ID`, `GROUP_ID`, `G_ACCESS`, `SITE_ID`) VALUES
(1, 'main', 5, 'P', NULL),
(2, 'main', 6, 'P', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `b_module_to_module`
--

CREATE TABLE `b_module_to_module` (
  `ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NULL DEFAULT NULL,
  `SORT` int(18) NOT NULL DEFAULT '100',
  `FROM_MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MESSAGE_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TO_MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `TO_PATH` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TO_CLASS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TO_METHOD` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TO_METHOD_ARG` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VERSION` int(18) DEFAULT NULL,
  `UNIQUE_ID` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_module_to_module`
--

INSERT INTO `b_module_to_module` (`ID`, `TIMESTAMP_X`, `SORT`, `FROM_MODULE_ID`, `MESSAGE_ID`, `TO_MODULE_ID`, `TO_PATH`, `TO_CLASS`, `TO_METHOD`, `TO_METHOD_ARG`, `VERSION`, `UNIQUE_ID`) VALUES
(1, NULL, 100, 'iblock', 'OnIBlockPropertyBuildList', 'main', '/modules/main/tools/prop_userid.php', 'CIBlockPropertyUserID', 'GetUserTypeDescription', '', 1, '2b30c309bf87645959b9bfbed51b49c6'),
(2, NULL, 100, 'main', 'OnUserDelete', 'main', '/modules/main/classes/mysql/favorites.php', 'CFavorites', 'OnUserDelete', '', 1, 'f437e170e4daf957766b0b0579f08fb4'),
(3, NULL, 100, 'main', 'OnLanguageDelete', 'main', '/modules/main/classes/mysql/favorites.php', 'CFavorites', 'OnLanguageDelete', '', 1, '9211999c5cfc3a4d374e4f957d5079f6'),
(4, NULL, 100, 'main', 'OnUserDelete', 'main', '', 'CUserOptions', 'OnUserDelete', '', 1, '9ef4e969f975b6425c7113444d210a90'),
(5, NULL, 100, 'main', 'OnChangeFile', 'main', '', 'CMain', 'OnChangeFileComponent', '', 1, '332179402f77c4d41c6c2e524acde4d0'),
(6, NULL, 100, 'main', 'OnUserTypeRightsCheck', 'main', '', 'CUser', 'UserTypeRightsCheck', '', 1, 'e1aae03ea8eb08e7bbb6d8d42cbc2ebe'),
(7, NULL, 100, 'main', 'OnUserLogin', 'main', '', 'UpdateTools', 'CheckUpdates', '', 1, 'a2986b9f6e9a99c0351c2ba858dafc85'),
(8, NULL, 100, 'main', 'OnModuleUpdate', 'main', '', 'UpdateTools', 'SetUpdateResult', '', 1, 'f9b70c6a75b6341063b23bde5d32e582'),
(9, NULL, 100, 'main', 'OnUpdateCheck', 'main', '', 'UpdateTools', 'SetUpdateError', '', 1, 'a0aecef95a192ec3dd134f71f0f4f175'),
(10, NULL, 100, 'main', 'OnPanelCreate', 'main', '', 'CUndo', 'CheckNotifyMessage', '', 1, '6476f96ffba6ab2b4a7dbe644f42edf6'),
(11, NULL, 100, 'main', 'OnAfterAddRating', 'main', '', 'CRatingsComponentsMain', 'OnAfterAddRating', '', 1, '6122bee2ad083f8f72e35655cee48859'),
(12, NULL, 100, 'main', 'OnAfterUpdateRating', 'main', '', 'CRatingsComponentsMain', 'OnAfterUpdateRating', '', 1, 'f8f806e33dc35737bdbe6b9bc42626a4'),
(13, NULL, 100, 'main', 'OnSetRatingsConfigs', 'main', '', 'CRatingsComponentsMain', 'OnSetRatingConfigs', '', 1, '9244ca7fd6964757ca191c9407cb1218'),
(14, NULL, 100, 'main', 'OnGetRatingsConfigs', 'main', '', 'CRatingsComponentsMain', 'OnGetRatingConfigs', '', 1, 'd8ae8e1f8889b1fbb6af276fb14c8411'),
(15, NULL, 100, 'main', 'OnGetRatingsObjects', 'main', '', 'CRatingsComponentsMain', 'OnGetRatingObject', '', 1, '129315715250c195ee115002b445a156'),
(16, NULL, 100, 'main', 'OnGetRatingContentOwner', 'main', '', 'CRatingsComponentsMain', 'OnGetRatingContentOwner', '', 1, 'bf1f5deaa1532fe9a28acd6d19d23a80'),
(17, NULL, 100, 'main', 'OnAfterAddRatingRule', 'main', '', 'CRatingRulesMain', 'OnAfterAddRatingRule', '', 1, '298e763431f7f7d6c3af9798663f410d'),
(18, NULL, 100, 'main', 'OnAfterUpdateRatingRule', 'main', '', 'CRatingRulesMain', 'OnAfterUpdateRatingRule', '', 1, '4ecdc4a15e24c49f0fa8f44064bf1511'),
(19, NULL, 100, 'main', 'OnGetRatingRuleObjects', 'main', '', 'CRatingRulesMain', 'OnGetRatingRuleObjects', '', 1, '6ac10928b76183004ba0e88ace0a1b5b'),
(20, NULL, 100, 'main', 'OnGetRatingRuleConfigs', 'main', '', 'CRatingRulesMain', 'OnGetRatingRuleConfigs', '', 1, '06769c4f6bbba4fad79c1619a874ee97'),
(21, NULL, 100, 'main', 'OnAfterUserAdd', 'main', '', 'CRatings', 'OnAfterUserRegister', '', 1, 'ecb9ae0476db69da6c95b06bcb3aebbb'),
(22, NULL, 100, 'main', 'OnUserDelete', 'main', '', 'CRatings', 'OnUserDelete', '', 1, '9fe6984fd29b7ab9508ac02c23690094'),
(23, NULL, 100, 'main', 'OnAfterGroupAdd', 'main', '', 'CGroupAuthProvider', 'OnAfterGroupAdd', '', 1, '02f2fe70b9068a6b307192321fe74430'),
(24, NULL, 100, 'main', 'OnBeforeGroupUpdate', 'main', '', 'CGroupAuthProvider', 'OnBeforeGroupUpdate', '', 1, 'ef0f2e4d0ae7bbf59d0798e8078143f9'),
(25, NULL, 100, 'main', 'OnBeforeGroupDelete', 'main', '', 'CGroupAuthProvider', 'OnBeforeGroupDelete', '', 1, 'd3ec9527c0e77709402a05ae4249afca'),
(26, NULL, 100, 'main', 'OnAfterSetUserGroup', 'main', '', 'CGroupAuthProvider', 'OnAfterSetUserGroup', '', 1, '0de6c5b48e9382f6e857d79f76d95f25'),
(27, NULL, 100, 'main', 'OnUserLogin', 'main', '', 'CGroupAuthProvider', 'OnUserLogin', '', 1, '954e2c4ca8624f90f1aee6f40183d5fc'),
(28, NULL, 100, 'main', 'OnUserLogin', 'main', '', 'CUserAuthProvider', 'OnUserLogin', '', 1, 'ab2cca8754737b6c630dfaa7f4ca5d32'),
(29, NULL, 100, 'main', 'OnEventLogGetAuditTypes', 'main', '', 'CEventMain', 'GetAuditTypes', '', 1, 'ac0b8b7a5e703131a3bd41b4399bc032'),
(30, NULL, 100, 'main', 'OnEventLogGetAuditHandlers', 'main', '', 'CEventMain', 'MakeMainObject', '', 1, '1ddb38ccf35a8a9da5d3b2bc80591ad6'),
(31, NULL, 100, 'perfmon', 'OnGetTableSchema', 'main', '', 'CTableSchema', 'OnGetTableSchema', '', 1, 'c1f65f88d449e8b8a3b7af9d54ef3f50'),
(32, NULL, 100, 'sender', 'OnConnectorList', 'main', '', '\\Bitrix\\Main\\SenderEventHandler', 'onConnectorListUser', '', 1, '8af99568465a1ccdb6a84e868cf5aad8'),
(33, NULL, 110, 'main', 'OnUserTypeBuildList', 'main', '', 'CUserTypeString', 'GetUserTypeDescription', '', 1, '09f8200652932044934bd3c522e920c5'),
(34, NULL, 120, 'main', 'OnUserTypeBuildList', 'main', '', 'CUserTypeInteger', 'GetUserTypeDescription', '', 1, '71ef247b3eb3b07e4bd6940791b89497'),
(35, NULL, 130, 'main', 'OnUserTypeBuildList', 'main', '', 'CUserTypeDouble', 'GetUserTypeDescription', '', 1, '4fe2008255fe567423cc0c2f080ca741'),
(36, NULL, 140, 'main', 'OnUserTypeBuildList', 'main', '', 'CUserTypeDateTime', 'GetUserTypeDescription', '', 1, '686c0679e60bee52dbcc27f5502277b6'),
(37, NULL, 145, 'main', 'OnUserTypeBuildList', 'main', '', 'CUserTypeDate', 'GetUserTypeDescription', '', 1, '7e19b5fc5fc48b1cd317a6ac44d84236'),
(38, NULL, 150, 'main', 'OnUserTypeBuildList', 'main', '', 'CUserTypeBoolean', 'GetUserTypeDescription', '', 1, '4d5e1dd2369089f2db9480549241205f'),
(39, NULL, 155, 'main', 'OnUserTypeBuildList', 'main', '', 'CUserTypeUrl', 'GetUserTypeDescription', '', 1, '79fcd650625b296abf13216cd5af2428'),
(40, NULL, 160, 'main', 'OnUserTypeBuildList', 'main', '', 'CUserTypeFile', 'GetUserTypeDescription', '', 1, '67b9a4fbc45240a7887b73e3a246eba0'),
(41, NULL, 170, 'main', 'OnUserTypeBuildList', 'main', '', 'CUserTypeEnum', 'GetUserTypeDescription', '', 1, 'fbebdb289fe38c1fbfeda4d3d8ee43ef'),
(42, NULL, 180, 'main', 'OnUserTypeBuildList', 'main', '', 'CUserTypeIBlockSection', 'GetUserTypeDescription', '', 1, '2065f8305645790970bac0b99f127f47'),
(43, NULL, 190, 'main', 'OnUserTypeBuildList', 'main', '', 'CUserTypeIBlockElement', 'GetUserTypeDescription', '', 1, '65bda5818e3545f1683a3ff5271cc891'),
(44, NULL, 200, 'main', 'OnUserTypeBuildList', 'main', '', 'CUserTypeStringFormatted', 'GetUserTypeDescription', '', 1, '47e3cf1c280e01dbaed43f9989a6747b'),
(45, NULL, 210, 'main', 'OnUserTypeBuildList', 'main', '', '\\Bitrix\\Main\\UrlPreview\\UrlPreviewUserType', 'getUserTypeDescription', '', 1, '719d15ee5f60f6348d2bd6a8911aeed1'),
(46, NULL, 100, 'main', 'OnBeforeEndBufferContent', 'main', '', '\\Bitrix\\Main\\Analytics\\Counter', 'onBeforeEndBufferContent', '', 1, 'ff5eb984fe6ce3e8d769bf3ba646b902'),
(47, NULL, 100, 'main', 'OnBeforeRestartBuffer', 'main', '', '\\Bitrix\\Main\\Analytics\\Counter', 'onBeforeRestartBuffer', '', 1, '0782f5a6df6dd52d834caea88c3ba3a7'),
(48, NULL, 100, 'main', 'OnFileDelete', 'main', '', '\\Bitrix\\Main\\UI\\Viewer\\FilePreviewTable', 'onFileDelete', '', 1, '54c80cd94412db221338aeb59902f059'),
(49, NULL, 100, 'socialnetwork', 'OnSocNetLogDelete', 'main', '', 'CUserCounter', 'OnSocNetLogDelete', '', 1, '33e603755a0bc07abd51a1f8ed52966e'),
(50, NULL, 100, 'socialnetwork', 'OnSocNetLogCommentDelete', 'main', '', 'CUserCounter', 'OnSocNetLogCommentDelete', '', 1, '51ee2214895be904a880046f43e84138'),
(51, NULL, 100, 'main', 'OnAdminInformerInsertItems', 'main', '', 'CMpNotifications', 'OnAdminInformerInsertItemsHandlerMP', '', 1, 'c89c0e94ac1110c334a24c70e1773daa'),
(52, NULL, 100, 'rest', 'OnRestServiceBuildDescription', 'main', '', '\\Bitrix\\Main\\Rest\\Handlers', 'onRestServiceBuildDescription', '', 1, 'c0b0c358a21b648d4f9c5d29d17a5ab2'),
(53, NULL, 100, 'sale', 'OnSaleBasketItemSaved', 'main', '', '\\Bitrix\\Main\\Analytics\\Catalog', 'catchCatalogBasket', '', 2, 'fa4fc3924ff2585e92f8bdabaf287864'),
(54, NULL, 100, 'sale', 'OnSaleOrderSaved', 'main', '', '\\Bitrix\\Main\\Analytics\\Catalog', 'catchCatalogOrder', '', 2, '6b358bb17b30da91b105fb1451ed9aaa'),
(55, NULL, 100, 'sale', 'OnSaleOrderPaid', 'main', '', '\\Bitrix\\Main\\Analytics\\Catalog', 'catchCatalogOrderPayment', '', 2, '8f5ca6e1c5136cb4bbf30474f0ff4183'),
(56, NULL, 1000, 'sale', 'onBuildDiscountConditionInterfaceControls', 'main', '', '\\Bitrix\\Main\\Discount\\UserConditionControl', 'onBuildDiscountConditionInterfaceControls', '', 1, '9f0d91c081704e52b52f540b3acaf52e'),
(57, NULL, 100, 'main', 'OnBeforePhpMail', 'main', '', '\\Bitrix\\Main\\Mail\\Sender', 'applyCustomSmtp', '', 2, '10fbf5b8dec05a02d8d7010e594f16ec'),
(58, NULL, 100, 'main', 'OnBuildFilterFactoryMethods', 'main', '', '\\Bitrix\\Main\\Filter\\FactoryMain', 'onBuildFilterFactoryMethods', '', 2, '19f10c2686a955bd8b8116ea1f1ad829'),
(59, NULL, 100, 'main', 'OnBeforeUserTypeAdd', 'main', '', '\\Bitrix\\Main\\UserField\\Internal\\UserFieldHelper', 'OnBeforeUserTypeAdd', '', 1, 'e204684efc0764af9431ca94b950619a'),
(60, NULL, 100, 'main', 'OnAfterUserTypeAdd', 'main', '', '\\Bitrix\\Main\\UserField\\Internal\\UserFieldHelper', 'onAfterUserTypeAdd', '', 1, '50932fb244caf7af686fac906caf3e73'),
(61, NULL, 100, 'main', 'OnBeforeUserTypeDelete', 'main', '', '\\Bitrix\\Main\\UserField\\Internal\\UserFieldHelper', 'OnBeforeUserTypeDelete', '', 1, 'd22a86deba0ff4bd031d022e331033b4'),
(62, NULL, 100, 'main', 'onGetUserFieldValues', 'main', '', '\\Bitrix\\Main\\UserField\\Internal\\UserFieldHelper', 'onGetUserFieldValues', '', 2, '7f9a5e25d638a6bff29f0bf4666da1a9'),
(63, NULL, 100, 'main', 'onUpdateUserFieldValues', 'main', '', '\\Bitrix\\Main\\UserField\\Internal\\UserFieldHelper', 'onUpdateUserFieldValues', '', 2, 'd78761f994d74258421d271810f03ebf'),
(64, NULL, 100, 'main', 'onDeleteUserFieldValues', 'main', '', '\\Bitrix\\Main\\UserField\\Internal\\UserFieldHelper', 'onDeleteUserFieldValues', '', 2, '074b2e25238a00ffc809ad12b609db2c'),
(65, NULL, 100, 'main', 'OnAuthProvidersBuildList', 'main', '', '\\Bitrix\\Main\\Access\\Auth\\AccessAuthProvider', 'getProviders', '', 1, '3a2839dac113bf47bce01812903e768a'),
(66, NULL, 100, 'iblock', 'OnBeforeIBlockSectionUpdate', 'main', '', '\\Bitrix\\Main\\Access\\Auth\\AccessEventHandler', 'onBeforeIBlockSectionUpdate', '', 1, 'dde505dba68c59bd4661b7680c329485'),
(67, NULL, 100, 'iblock', 'OnBeforeIBlockSectionAdd', 'main', '', '\\Bitrix\\Main\\Access\\Auth\\AccessEventHandler', 'onBeforeIBlockSectionAdd', '', 1, 'd3a665b1890dabbba32ff01e3e46ec57'),
(68, NULL, 100, 'iblock', 'OnBeforeIBlockSectionDelete', 'main', '', '\\Bitrix\\Main\\Access\\Auth\\AccessEventHandler', 'onBeforeIBlockSectionDelete', '', 1, '157add4b02621a60fabf1369c3e7ea9b'),
(69, NULL, 100, 'main', 'OnBuildGlobalMenu', 'b24connector', '', '\\Bitrix\\B24Connector\\Helper', 'onBuildGlobalMenu', '', 1, '9c4452a442bacc2d4d70635962485be1'),
(70, NULL, 100, 'main', 'OnBeforeProlog', 'b24connector', '', '\\Bitrix\\B24Connector\\Helper', 'onBeforeProlog', '', 1, '641053ff6ee8ff57518d7c30724530e5'),
(71, NULL, 100, 'main', 'OnBeforeProlog', 'bitrix.sitecorporate', '', 'CSiteCorporate', 'ShowPanel', '', 1, 'bc7c322534797a9ed3493c40e1b8fdac'),
(72, NULL, 100, 'main', 'OnAdminInformerInsertItems', 'bitrixcloud', '', 'CBitrixCloudBackup', 'OnAdminInformerInsertItems', '', 1, '5499039afdd0fdb38d4b245c8b886dcb'),
(73, NULL, 100, 'mobileapp', 'OnBeforeAdminMobileMenuBuild', 'bitrixcloud', '', 'CBitrixCloudMobile', 'OnBeforeAdminMobileMenuBuild', '', 1, '5828a8cdb2cc45e2724ef1c76139df88'),
(74, NULL, 100, 'main', 'OnEventLogGetAuditTypes', 'clouds', '', 'CCloudStorage', 'GetAuditTypes', '', 1, 'da69722ba95497cf263381b46e24df40'),
(75, NULL, 90, 'main', 'OnBeforeProlog', 'clouds', '', 'CCloudStorage', 'OnBeforeProlog', '', 1, 'f8c39ff182ad873715f10a7091f928a4'),
(76, NULL, 100, 'main', 'OnAdminListDisplay', 'clouds', '', 'CCloudStorage', 'OnAdminListDisplay', '', 1, '8ddf4f578e7229a63cba4d2124c7643c'),
(77, NULL, 100, 'main', 'OnBuildGlobalMenu', 'clouds', '', 'CCloudStorage', 'OnBuildGlobalMenu', '', 1, 'd6d308843a6521ad50bfa230a2fcef8f'),
(78, NULL, 100, 'main', 'OnFileSave', 'clouds', '', 'CCloudStorage', 'OnFileSave', '', 1, '1e4f94a842d6166359ed1789a6f21245'),
(79, NULL, 100, 'main', 'OnAfterFileSave', 'clouds', '', 'CCloudStorage', 'OnAfterFileSave', '', 1, 'c36bae07a3080f9b5bc5d422ec96933f'),
(80, NULL, 100, 'main', 'OnGetFileSRC', 'clouds', '', 'CCloudStorage', 'OnGetFileSRC', '', 1, '7ec03b3b7ad3f2f54c1e438a1172e5a8'),
(81, NULL, 100, 'main', 'OnFileCopy', 'clouds', '', 'CCloudStorage', 'OnFileCopy', '', 1, '6880b56c76f7d3c5d09f887fca6341ca'),
(82, NULL, 100, 'main', 'OnPhysicalFileDelete', 'clouds', '', 'CCloudStorage', 'OnFileDelete', '', 1, '3151c487c747a57d7817f68e97fd1c94'),
(83, NULL, 100, 'main', 'OnMakeFileArray', 'clouds', '', 'CCloudStorage', 'OnMakeFileArray', '', 1, '713ea8a7a25764b1af60f7a1ec3032d5'),
(84, NULL, 100, 'main', 'OnBeforeResizeImage', 'clouds', '', 'CCloudStorage', 'OnBeforeResizeImage', '', 1, '705cd310c52f9c7e8e0c8a0578a22667'),
(85, NULL, 100, 'main', 'OnAfterResizeImage', 'clouds', '', 'CCloudStorage', 'OnAfterResizeImage', '', 1, 'a403ad2328227153475df0c478a465cc'),
(86, NULL, 100, 'clouds', 'OnGetStorageService', 'clouds', '', 'CCloudStorageService_AmazonS3', 'GetObjectInstance', '', 1, 'a4eb7ed1f50b5931474c565f448a4069'),
(87, NULL, 100, 'clouds', 'OnGetStorageService', 'clouds', '', 'CCloudStorageService_GoogleStorage', 'GetObjectInstance', '', 1, '1e559e2225608e8d40eeede5b7526f2a'),
(88, NULL, 100, 'clouds', 'OnGetStorageService', 'clouds', '', 'CCloudStorageService_OpenStackStorage', 'GetObjectInstance', '', 1, '5ad09feff5dab28ab571ad034ccdf2ea'),
(89, NULL, 100, 'clouds', 'OnGetStorageService', 'clouds', '', 'CCloudStorageService_RackSpaceCloudFiles', 'GetObjectInstance', '', 1, 'cc976773610cf809bb56871ac7dd9f01'),
(90, NULL, 100, 'clouds', 'OnGetStorageService', 'clouds', '', 'CCloudStorageService_ClodoRU', 'GetObjectInstance', '', 1, 'faadad31436e94c420ed787e4424714b'),
(91, NULL, 100, 'clouds', 'OnGetStorageService', 'clouds', '', 'CCloudStorageService_Selectel', 'GetObjectInstance', '', 1, '5e63a8eebed42bd099b4a9ef62e8d52b'),
(92, NULL, 100, 'clouds', 'OnGetStorageService', 'clouds', '', 'CCloudStorageService_HotBox', 'GetObjectInstance', '', 1, '1913169adcd6d6f3b7fb5f3b70ba1fd8'),
(93, NULL, 100, 'clouds', 'OnGetStorageService', 'clouds', '', 'CCloudStorageService_Yandex', 'GetObjectInstance', '', 1, '12bd1d4f0d145d5b1681955612fe61c8'),
(94, NULL, 100, 'clouds', 'OnGetStorageService', 'clouds', '', 'CCloudStorageService_S3', 'GetObjectInstance', '', 1, '4af3f0ba1f50ed9be6efcdb55dfbee4e'),
(95, NULL, 100, 'perfmon', 'OnGetTableSchema', 'clouds', '', 'clouds', 'OnGetTableSchema', '', 1, 'd31a1f80f07441976eb1711db4902a71'),
(96, NULL, 100, 'main', 'OnGroupDelete', 'fileman', '', 'CFileman', 'OnGroupDelete', '', 1, 'd10f791d422ba0e7551ab267db50404c'),
(97, NULL, 100, 'main', 'OnPanelCreate', 'fileman', '', 'CFileman', 'OnPanelCreate', '', 1, 'b00a6174fb1763684c299ccf5e054c65'),
(98, NULL, 100, 'main', 'OnModuleUpdate', 'fileman', '', 'CFileman', 'OnModuleUpdate', '', 1, '58ae853e2b7c230b5cdb51129efd8a05'),
(99, NULL, 100, 'main', 'OnModuleInstalled', 'fileman', '', 'CFileman', 'ClearComponentsListCache', '', 1, '7bdbd354eab11f376fa257a998587277'),
(100, NULL, 100, 'iblock', 'OnIBlockPropertyBuildList', 'fileman', '', 'CIBlockPropertyMapGoogle', 'GetUserTypeDescription', '', 1, 'd9d06fd05f80b33379359ebd8e36e655'),
(101, NULL, 100, 'iblock', 'OnIBlockPropertyBuildList', 'fileman', '', 'CIBlockPropertyMapYandex', 'GetUserTypeDescription', '', 1, '20ca1d02998884b5abec68b32fdb561d'),
(102, NULL, 100, 'iblock', 'OnIBlockPropertyBuildList', 'fileman', '', 'CIBlockPropertyVideo', 'GetUserTypeDescription', '', 1, '991c32062e05844708a5cf7aba37bf9a'),
(103, NULL, 100, 'main', 'OnUserTypeBuildList', 'fileman', '', 'CUserTypeVideo', 'GetUserTypeDescription', '', 1, '41bc5efb49ebf8d165acd4e4d556f60c'),
(104, NULL, 100, 'main', 'OnEventLogGetAuditTypes', 'fileman', '', 'CEventFileman', 'GetAuditTypes', '', 1, 'e0a610651ffec1fbddb2f261223fb2e9'),
(105, NULL, 100, 'main', 'OnEventLogGetAuditHandlers', 'fileman', '', 'CEventFileman', 'MakeFilemanObject', '', 1, 'fbfef1ef99530f6eae191da293f9566c'),
(106, NULL, 154, 'main', 'OnUserTypeBuildList', 'fileman', '', '\\Bitrix\\Fileman\\UserField\\Address', 'getUserTypeDescription', '', 1, 'f0583a376e38d3d2675513b1a367ed3c'),
(107, NULL, 100, 'main', 'OnBeforeUserTypeAdd', 'highloadblock', '', '\\Bitrix\\Highloadblock\\HighloadBlockTable', 'OnBeforeUserTypeAdd', '', 1, 'f9dcff287cf7753e5c56974d37975507'),
(108, NULL, 100, 'main', 'OnAfterUserTypeAdd', 'highloadblock', '', '\\Bitrix\\Highloadblock\\HighloadBlockTable', 'onAfterUserTypeAdd', '', 1, 'd1fa2865e72eca144b964b6fb1eefc15'),
(109, NULL, 100, 'main', 'OnBeforeUserTypeDelete', 'highloadblock', '', '\\Bitrix\\Highloadblock\\HighloadBlockTable', 'OnBeforeUserTypeDelete', '', 1, '1bf13707e1a45b8320c2ecd35534cbb4'),
(110, NULL, 100, 'main', 'OnUserTypeBuildList', 'highloadblock', '', 'CUserTypeHlblock', 'GetUserTypeDescription', '', 1, '2ac4a2154f4fd85d67b50f412ed5ed48'),
(111, NULL, 100, 'iblock', 'OnIBlockPropertyBuildList', 'highloadblock', '', 'CIBlockPropertyDirectory', 'GetUserTypeDescription', '', 1, 'a6f7df502db8a04590e43188d7cbfc99'),
(112, NULL, 100, 'main', 'OnGroupDelete', 'iblock', '', 'CIBlock', 'OnGroupDelete', '', 1, 'f2320df213f38adf32364d3169d5b197'),
(113, NULL, 100, 'main', 'OnBeforeLangDelete', 'iblock', '', 'CIBlock', 'OnBeforeLangDelete', '', 1, '46aef774958db327c1170a12d3a70ee5'),
(114, NULL, 100, 'main', 'OnLangDelete', 'iblock', '', 'CIBlock', 'OnLangDelete', '', 1, '861f6ee2ca56bf63c3af07db0553606b'),
(115, NULL, 100, 'main', 'OnUserTypeRightsCheck', 'iblock', '', 'CIBlockSection', 'UserTypeRightsCheck', '', 1, '2a6d446893d46f04f2c151f458d2908c'),
(116, NULL, 100, 'search', 'OnReindex', 'iblock', '', 'CIBlock', 'OnSearchReindex', '', 1, 'c6c8111f129e0eb19e558106e354e6f6'),
(117, NULL, 100, 'search', 'OnSearchGetURL', 'iblock', '', 'CIBlock', 'OnSearchGetURL', '', 1, '0ae9fc756bfb1273309240cd8f535672'),
(118, NULL, 100, 'main', 'OnEventLogGetAuditTypes', 'iblock', '', 'CIBlock', 'GetAuditTypes', '', 1, '182d19c163e3a5a965bca170c3fb0e83'),
(119, NULL, 100, 'main', 'OnEventLogGetAuditHandlers', 'iblock', '', 'CEventIBlock', 'MakeIBlockObject', '', 1, 'f7a182e8d9b204970d111e4703b9f523'),
(120, NULL, 200, 'main', 'OnGetRatingContentOwner', 'iblock', '', 'CRatingsComponentsIBlock', 'OnGetRatingContentOwner', '', 1, '6da245944e376d586a3fa2aaee02c70b'),
(121, NULL, 100, 'main', 'OnTaskOperationsChanged', 'iblock', '', 'CIBlockRightsStorage', 'OnTaskOperationsChanged', '', 1, '01b3f9984fa07b1dfb4bc35d107d5672'),
(122, NULL, 100, 'main', 'OnGroupDelete', 'iblock', '', 'CIBlockRightsStorage', 'OnGroupDelete', '', 1, '2dbbccdee3f2e7bd86446bec02be1d54'),
(123, NULL, 100, 'main', 'OnUserDelete', 'iblock', '', 'CIBlockRightsStorage', 'OnUserDelete', '', 1, '78f090ee29030c54788098b0782d28f9'),
(124, NULL, 100, 'perfmon', 'OnGetTableSchema', 'iblock', '', 'iblock', 'OnGetTableSchema', '', 1, '4b71a345c136beed338aa7137943d80b'),
(125, NULL, 100, 'sender', 'OnConnectorList', 'iblock', '', '\\Bitrix\\Iblock\\SenderEventHandler', 'onConnectorListIblock', '', 1, '3de75587a47352dd3cb6d10866f69385'),
(126, NULL, 10, 'iblock', 'OnIBlockPropertyBuildList', 'iblock', '', 'CIBlockPropertyDate', 'GetUserTypeDescription', '', 1, 'fa608e2c397b6793c54ad296619a22e2'),
(127, NULL, 20, 'iblock', 'OnIBlockPropertyBuildList', 'iblock', '', 'CIBlockPropertyDateTime', 'GetUserTypeDescription', '', 1, '78554c9e3c38ac383d51f0ee4d013120'),
(128, NULL, 30, 'iblock', 'OnIBlockPropertyBuildList', 'iblock', '', 'CIBlockPropertyXmlID', 'GetUserTypeDescription', '', 1, '952fe5f2ea67493fb9f9b924ce1b992b'),
(129, NULL, 40, 'iblock', 'OnIBlockPropertyBuildList', 'iblock', '', 'CIBlockPropertyFileMan', 'GetUserTypeDescription', '', 1, 'fd688441d5e8203751fb47374931e011'),
(130, NULL, 50, 'iblock', 'OnIBlockPropertyBuildList', 'iblock', '', 'CIBlockPropertyHTML', 'GetUserTypeDescription', '', 1, '27645f81ce5d6d9f19a47cc171860beb'),
(131, NULL, 60, 'iblock', 'OnIBlockPropertyBuildList', 'iblock', '', 'CIBlockPropertyElementList', 'GetUserTypeDescription', '', 1, 'c53e9314ae43c30267b32310a02d7df4'),
(132, NULL, 70, 'iblock', 'OnIBlockPropertyBuildList', 'iblock', '', 'CIBlockPropertySequence', 'GetUserTypeDescription', '', 1, '3ff9528d1264fc77697248957aafdab5'),
(133, NULL, 80, 'iblock', 'OnIBlockPropertyBuildList', 'iblock', '', 'CIBlockPropertyElementAutoComplete', 'GetUserTypeDescription', '', 1, '0d233a1e7a0d6a52a52e13df88291024'),
(134, NULL, 90, 'iblock', 'OnIBlockPropertyBuildList', 'iblock', '', 'CIBlockPropertySKU', 'GetUserTypeDescription', '', 1, '8678bc826ced4f66640fba3775b18516'),
(135, NULL, 100, 'iblock', 'OnIBlockPropertyBuildList', 'iblock', '', 'CIBlockPropertySectionAutoComplete', 'GetUserTypeDescription', '', 1, '26ff6f651cb94a1fe4ce9827566f0730'),
(136, NULL, 100, 'main', 'onVirtualClassBuildList', 'iblock', '', 'Bitrix\\Iblock\\IblockTable', 'compileAllEntities', '', 2, '8a4e85071d25e6ba7f9ed315874c411b'),
(137, NULL, 100, 'bitrix24', 'onDomainChange', 'landing', '', '\\Bitrix\\Landing\\Update\\Block\\NodeAttributes', 'updateFormDomain', '', 2, 'a5f1ac2c31163115813298acc7bbffcf'),
(138, NULL, 100, 'intranet', 'onBuildBindingMenu', 'landing', '', '\\Bitrix\\Landing\\Connector\\Intranet', 'onBuildBindingMenu', '', 2, 'd5464da9aea2308d3d5f13c2387c4c40'),
(139, NULL, 100, 'landing', 'onBuildSourceList', 'landing', '', '\\Bitrix\\Landing\\Connector\\Landing', 'onSourceBuildHandler', '', 2, 'fc391addc82a816df68510b0ae3363a5'),
(140, NULL, 100, 'main', 'onBeforeSiteDelete', 'landing', '', '\\Bitrix\\Landing\\Site', 'onBeforeMainSiteDelete', '', 2, '5faa9b5de931dbb101e2e0aef6fc594b'),
(141, NULL, 100, 'main', 'onSiteDelete', 'landing', '', '\\Bitrix\\Landing\\Site', 'onMainSiteDelete', '', 2, 'af029bceca7ea9cc809515e95bd3a710'),
(142, NULL, 100, 'main', 'onUserConsentProviderList', 'landing', '', '\\Bitrix\\Landing\\Site\\Cookies', 'onUserConsentProviderList', '', 2, 'f59a96e272348f934d62ba5d3ee79f21'),
(143, NULL, 100, 'mobile', 'onMobileMenuStructureBuilt', 'landing', '', '\\Bitrix\\Landing\\Connector\\Mobile', 'onMobileMenuStructureBuilt', '', 2, '01fd8a44b83b5f7fcd2f36a626657ad0'),
(144, NULL, 100, 'rest', 'onRestServiceBuildDescription', 'landing', '', '\\Bitrix\\Landing\\Publicaction', 'restBase', '', 2, '9af99ddecf2dd8c3c5b14721f23e8fef'),
(145, NULL, 100, 'rest', 'onBeforeApplicationUninstall', 'landing', '', '\\Bitrix\\Landing\\Publicaction', 'beforeRestApplicationDelete', '', 2, 'ef1f080a088ad54298a4ba9bf2896313'),
(146, NULL, 100, 'rest', 'onRestAppDelete', 'landing', '', '\\Bitrix\\Landing\\Publicaction', 'restApplicationDelete', '', 2, '031cfc016e3be91368376a391c351dea'),
(147, NULL, 100, 'rest', 'onRestApplicationConfigurationGetManifest', 'landing', '', '\\Bitrix\\Landing\\Transfer\\AppConfiguration', 'getManifestList', '', 2, 'b88124aac7c2c8ddecf2ce127a9c6ef8'),
(148, NULL, 100, 'rest', 'onRestApplicationConfigurationExport', 'landing', '', '\\Bitrix\\Landing\\Transfer\\AppConfiguration', 'onEventExportController', '', 2, '917b00a9f82e6b8f7899a6e8c3b22236'),
(149, NULL, 100, 'rest', 'onRestApplicationConfigurationGetManifestSetting', 'landing', '', '\\Bitrix\\Landing\\Transfer\\AppConfiguration', 'onInitManifest', '', 2, '99fa9aa37a23a371cca0153c840c7802'),
(150, NULL, 100, 'rest', 'onRestApplicationConfigurationEntity', 'landing', '', '\\Bitrix\\Landing\\Transfer\\AppConfiguration', 'getEntityList', '', 2, '820df699b9abf22ce0356fc9957be794'),
(151, NULL, 100, 'rest', 'onRestApplicationConfigurationImport', 'landing', '', '\\Bitrix\\Landing\\Transfer\\AppConfiguration', 'onEventImportController', '', 2, 'e65daaed01b2c52e6098ee47ddb7f07a'),
(152, NULL, 100, 'rest', 'onRestApplicationConfigurationFinish', 'landing', '', '\\Bitrix\\Landing\\Transfer\\AppConfiguration', 'onFinish', '', 2, '45343e5617dca2ad06a5d13050232caf'),
(153, NULL, 100, 'socialnetwork', 'onFillSocNetFeaturesList', 'landing', '', '\\Bitrix\\Landing\\Connector\\SocialNetwork', 'onFillSocNetFeaturesList', '', 2, '9825d91c89b53b69655aa98ea4f3a6cf'),
(154, NULL, 100, 'socialnetwork', 'onFillSocNetMenu', 'landing', '', '\\Bitrix\\Landing\\Connector\\SocialNetwork', 'onFillSocNetMenu', '', 2, '14ecfb8fb4fc20f22ddb5ac64783461d'),
(155, NULL, 100, 'socialnetwork', 'onSocNetGroupDelete', 'landing', '', '\\Bitrix\\Landing\\Connector\\SocialNetwork', 'onSocNetGroupDelete', '', 2, '78202f1461a8822a105a19f45502c327'),
(156, NULL, 100, 'socialservices', '\\Bitrix\\Socialservices\\ApTable::OnAfterAdd', 'landing', '', '\\Bitrix\\Landing\\Update\\Block\\NodeAttributes', 'updateFormDomainByConnector', '', 2, '0152997776462d358b5364b794cd205e'),
(157, NULL, 100, 'main', 'OnAfterEpilog', 'messageservice', '', '\\Bitrix\\MessageService\\Queue', 'run', '', 1, '6bcb21b0ccc5ac89d9531ddf8b94683c'),
(158, NULL, 100, 'rest', 'OnRestServiceBuildDescription', 'messageservice', '', '\\Bitrix\\MessageService\\RestService', 'onRestServiceBuildDescription', '', 1, '7524628243223e572590eea87cc03f73'),
(159, NULL, 100, 'rest', 'OnRestAppDelete', 'messageservice', '', '\\Bitrix\\MessageService\\RestService', 'onRestAppDelete', '', 1, '5febc41cd526ecba95dbb4843dd9c134'),
(160, NULL, 100, 'rest', 'OnRestAppUpdate', 'messageservice', '', '\\Bitrix\\MessageService\\RestService', 'onRestAppUpdate', '', 1, '7e77b4d550c200a4ec06872af7857ee6'),
(161, NULL, 100, 'perfmon', 'OnGetTableSchema', 'perfmon', '', 'perfmon', 'OnGetTableSchema', '', 1, '3a4da255b44f05899b64e66a40c12662'),
(162, NULL, 49, 'main', 'OnBeforeProlog', 'rest', '', 'CRestEventHandlers', 'OnBeforeProlog', '', 2, '395c9c42c3cc9392de1e5887617afe6d'),
(163, NULL, 100, 'rest', 'OnRestServiceBuildDescription', 'rest', '', 'CBitrixRestEntity', 'OnRestServiceBuildDescription', '', 2, 'f63068b1eb62c36219518206e1e2827c'),
(164, NULL, 100, 'rest', 'OnRestServiceBuildDescription', 'rest', '', '\\Bitrix\\Rest\\Api\\User', 'onRestServiceBuildDescription', '', 2, 'c9a03e9019564649e55f5409b661e050'),
(165, NULL, 100, 'rest', 'OnRestServiceBuildDescription', 'rest', '', '\\Bitrix\\Rest\\Api\\Placement', 'onRestServiceBuildDescription', '', 2, '9751a266c2b6f6be5c34b1541bf7c194'),
(166, NULL, 100, 'rest', 'OnRestServiceBuildDescription', 'rest', '', '\\Bitrix\\Rest\\Api\\Event', 'onRestServiceBuildDescription', '', 2, '842ad63f19aff6d810059c7e56739aae'),
(167, NULL, 100, 'rest', 'OnRestServiceBuildDescription', 'rest', '', '\\Bitrix\\Rest\\Api\\UserFieldType', 'onRestServiceBuildDescription', '', 2, '4caf68a5256aabe4abef37f24562e59b'),
(168, NULL, 100, 'rest', 'onFindMethodDescription', 'rest', '', '\\Bitrix\\Rest\\Engine\\RestManager', 'onFindMethodDescription', '', 2, '4d0614f880674af333326dd5ba9b2828'),
(169, NULL, 100, 'main', 'OnApplicationsBuildList', 'main', 'modules/rest/lib/apauth/application.php', '\\Bitrix\\Rest\\APAuth\\Application', 'onApplicationsBuildList', '', 2, '9c39129872987f8dcc8baacc0c446ed7'),
(170, NULL, 100, 'im', 'OnAfterConfirmNotify', 'rest', '', '\\Bitrix\\Rest\\NotifyIm', 'receive', '', 2, '2ac9c19fe69d4e106deaa6f4a7a4371b'),
(171, NULL, 100, 'rest', '\\Bitrix\\Rest\\APAuth\\Password::OnDelete', 'rest', '', '\\Bitrix\\Rest\\APAuth\\PermissionTable', 'onPasswordDelete', '', 2, 'f04447ca635f045ec1a64e593964fc90'),
(172, NULL, 100, 'perfmon', 'OnGetTableSchema', 'rest', '', 'rest', 'OnGetTableSchema', '', 2, '47a76003c8f9f2d8c820f446e084ff39'),
(173, NULL, 100, 'rest', 'OnRestApplicationConfigurationImport', 'rest', '', '\\Bitrix\\Rest\\Configuration\\AppConfiguration', 'onEventImportController', '', 2, '3fc1dd7e523b33f9d76c19e54d45c2fb'),
(174, NULL, 100, 'rest', 'OnRestApplicationConfigurationExport', 'rest', '', '\\Bitrix\\Rest\\Configuration\\AppConfiguration', 'onEventExportController', '', 2, 'b90a349060c693506b740c4d36f75f5f'),
(175, NULL, 100, 'rest', 'OnRestApplicationConfigurationClear', 'rest', '', '\\Bitrix\\Rest\\Configuration\\AppConfiguration', 'onEventClearController', '', 2, '75dccda637a740c033b2d014a84a8009'),
(176, NULL, 100, 'rest', 'OnRestApplicationConfigurationEntity', 'rest', '', '\\Bitrix\\Rest\\Configuration\\AppConfiguration', 'getEntityList', '', 2, '8d83d219eaf2f415d55fb67e221b7c3d'),
(177, NULL, 100, 'rest', 'OnRestApplicationConfigurationGetManifest', 'rest', '', '\\Bitrix\\Rest\\Configuration\\AppConfiguration', 'getManifestList', '', 2, '6ba35b1f4b01d1e358e1b3a79ac437d6'),
(178, NULL, 100, 'rest', 'onRestCheckAuth', 'rest', '', '\\Bitrix\\Rest\\OAuth\\Auth', 'onRestCheckAuth', '', 2, '70e923729089b8cba69bb3b4311da11e'),
(179, NULL, 100, 'rest', 'onRestCheckAuth', 'rest', '', '\\Bitrix\\Rest\\APAuth\\Auth', 'onRestCheckAuth', '', 2, '3550e6c95772564101770e0c9cb54470'),
(180, NULL, 100, 'rest', 'onRestCheckAuth', 'rest', '', '\\Bitrix\\Rest\\SessionAuth\\Auth', 'onRestCheckAuth', '', 2, '8e33ae5a47b59d21df7d26f916d19e38'),
(181, NULL, 100, 'main', 'OnChangePermissions', 'search', '', 'CSearch', 'OnChangeFilePermissions', '', 1, '1c37aedc2ec89f94624291d097fe7adf'),
(182, NULL, 100, 'main', 'OnChangeFile', 'search', '', 'CSearch', 'OnChangeFile', '', 1, 'd51170fc3433fde7eab8edc1c2b933a0'),
(183, NULL, 100, 'main', 'OnGroupDelete', 'search', '', 'CSearch', 'OnGroupDelete', '', 1, '05382d7448b1ba259b89bf9e87e4eb44'),
(184, NULL, 100, 'main', 'OnLangDelete', 'search', '', 'CSearch', 'OnLangDelete', '', 1, '15ebda82514af5a966b3466cd26992a4'),
(185, NULL, 100, 'main', 'OnAfterUserUpdate', 'search', '', 'CSearchUser', 'OnAfterUserUpdate', '', 1, '9e0cea5039973193afc706ec8978d674'),
(186, NULL, 100, 'main', 'OnUserDelete', 'search', '', 'CSearchUser', 'DeleteByUserID', '', 1, '524a910f381ba144bf50caa152222ed6'),
(187, NULL, 100, 'cluster', 'OnGetTableList', 'search', '', 'search', 'OnGetTableList', '', 1, 'a40ffd36df151e2c0294b5639e81d665'),
(188, NULL, 100, 'perfmon', 'OnGetTableSchema', 'search', '', 'search', 'OnGetTableSchema', '', 1, '9c8df2577e0cb80c68afa2030e193efb'),
(189, NULL, 90, 'main', 'OnEpilog', 'search', '', 'CSearchStatistic', 'OnEpilog', '', 1, '6b3591ad78ac2a3ce6ad411f0aff47fe'),
(190, NULL, 100, 'main', 'OnPanelCreate', 'seo', '', 'CSeoEventHandlers', 'SeoOnPanelCreate', '', 2, '79688b0b4a106b805d09e63ffe88f580'),
(191, NULL, 100, 'fileman', 'OnIncludeHTMLEditorScript', 'seo', '', 'CSeoEventHandlers', 'OnIncludeHTMLEditorScript', '', 2, '7995eac5813e40f6b3e82b146631397e'),
(192, NULL, 100, 'fileman', 'OnBeforeHTMLEditorScriptRuns', 'seo', '', 'CSeoEventHandlers', 'OnBeforeHTMLEditorScriptRuns', '', 2, '313b34609f1fa34d34cde1c2103c09ff'),
(193, NULL, 100, 'iblock', 'OnAfterIBlockSectionAdd', 'seo', '', '\\Bitrix\\Seo\\SitemapIblock', 'addSection', '', 2, 'c61de21b0b0873525fa5c39427324664'),
(194, NULL, 100, 'iblock', 'OnAfterIBlockElementAdd', 'seo', '', '\\Bitrix\\Seo\\SitemapIblock', 'addElement', '', 2, '1b167ab85d6d744bba456e559546f13e'),
(195, NULL, 100, 'iblock', 'OnBeforeIBlockSectionDelete', 'seo', '', '\\Bitrix\\Seo\\SitemapIblock', 'beforeDeleteSection', '', 2, '148ce014df9dd9f99f17ebfc5d766e8a'),
(196, NULL, 100, 'iblock', 'OnBeforeIBlockElementDelete', 'seo', '', '\\Bitrix\\Seo\\SitemapIblock', 'beforeDeleteElement', '', 2, '4b1e9896d9f0aa37a7039a321f25f9a5'),
(197, NULL, 100, 'iblock', 'OnAfterIBlockSectionDelete', 'seo', '', '\\Bitrix\\Seo\\SitemapIblock', 'deleteSection', '', 2, 'b699c1c0d6665f9cffe7ff76ab108a24'),
(198, NULL, 100, 'iblock', 'OnAfterIBlockElementDelete', 'seo', '', '\\Bitrix\\Seo\\SitemapIblock', 'deleteElement', '', 2, 'ff3a36654015c53890f4cf2204b030c4'),
(199, NULL, 100, 'iblock', 'OnBeforeIBlockSectionUpdate', 'seo', '', '\\Bitrix\\Seo\\SitemapIblock', 'beforeUpdateSection', '', 2, 'aa5f8c360ed88eb5e2884c57b6f1f2f3'),
(200, NULL, 100, 'iblock', 'OnBeforeIBlockElementUpdate', 'seo', '', '\\Bitrix\\Seo\\SitemapIblock', 'beforeUpdateElement', '', 2, 'a1022e0619263c0e91139fb3f9837085'),
(201, NULL, 100, 'iblock', 'OnAfterIBlockSectionUpdate', 'seo', '', '\\Bitrix\\Seo\\SitemapIblock', 'updateSection', '', 2, '27930cffcd40b84666d0a22e1a953c41'),
(202, NULL, 100, 'iblock', 'OnAfterIBlockElementUpdate', 'seo', '', '\\Bitrix\\Seo\\SitemapIblock', 'updateElement', '', 2, 'f0151e07363564774d45acba4100aebe'),
(203, NULL, 100, 'forum', 'onAfterTopicAdd', 'seo', '', '\\Bitrix\\Seo\\SitemapForum', 'addTopic', '', 2, 'd4d54756116942c9ee0bda9b31e9d0e7'),
(204, NULL, 100, 'forum', 'onAfterTopicUpdate', 'seo', '', '\\Bitrix\\Seo\\SitemapForum', 'updateTopic', '', 2, '3e0a8569016a4c941f3eb4aa9fca6e8b'),
(205, NULL, 100, 'forum', 'onAfterTopicDelete', 'seo', '', '\\Bitrix\\Seo\\SitemapForum', 'deleteTopic', '', 2, '7f4379c818231561b41589d3de41e36b'),
(206, NULL, 100, 'main', 'OnAdminIBlockElementEdit', 'seo', '', '\\Bitrix\\Seo\\AdvTabEngine', 'eventHandler', '', 2, 'c894d167ef03c35375b8eb8f2551a798'),
(207, NULL, 100, 'main', 'OnBeforeProlog', 'seo', '', '\\Bitrix\\Seo\\AdvSession', 'checkSession', '', 2, '5fdf8dd9fd70719e442efcb589175bf0'),
(208, NULL, 100, 'sale', 'OnOrderSave', 'seo', '', '\\Bitrix\\Seo\\AdvSession', 'onOrderSave', '', 2, '07d4ab0b1aa0aa130a0cbc06403f6eae'),
(209, NULL, 100, 'sale', 'OnBasketOrder', 'seo', '', '\\Bitrix\\Seo\\AdvSession', 'onBasketOrder', '', 2, 'cf6298b090e92e955b32c358c1d14b25'),
(210, NULL, 100, 'sale', 'onSalePayOrder', 'seo', '', '\\Bitrix\\Seo\\AdvSession', 'onSalePayOrder', '', 2, '745afed820778e33d5cd3e91cbd622f1'),
(211, NULL, 100, 'sale', 'onSaleDeductOrder', 'seo', '', '\\Bitrix\\Seo\\AdvSession', 'onSaleDeductOrder', '', 2, '12861bd5c6c27ffa2abe5cac90ea58d8'),
(212, NULL, 100, 'sale', 'onSaleDeliveryOrder', 'seo', '', '\\Bitrix\\Seo\\AdvSession', 'onSaleDeliveryOrder', '', 2, 'ead8fb64fece572d1fabd3d6fd27af27'),
(213, NULL, 100, 'sale', 'onSaleStatusOrder', 'seo', '', '\\Bitrix\\Seo\\AdvSession', 'onSaleStatusOrder', '', 2, 'b7b9ac4bbf458d433e1cf3835ff4cb6c'),
(214, NULL, 100, 'conversion', 'OnSetDayContextAttributes', 'seo', '', '\\Bitrix\\Seo\\ConversionHandler', 'onSetDayContextAttributes', '', 2, 'c19eb7659342fabc34b953f69e8b9eee'),
(215, NULL, 100, 'conversion', 'OnGetAttributeTypes', 'seo', '', '\\Bitrix\\Seo\\ConversionHandler', 'onGetAttributeTypes', '', 2, '379294eefad289e474bf0c5ce2a281d8'),
(216, NULL, 100, 'catalog', 'OnProductUpdate', 'seo', '', '\\Bitrix\\Seo\\Adv\\Auto', 'checkQuantity', '', 2, '0f4deda4d57adb4389d85a19e5bbcf2b'),
(217, NULL, 100, 'catalog', 'OnProductSetAvailableUpdate', 'seo', '', '\\Bitrix\\Seo\\Adv\\Auto', 'checkQuantity', '', 2, '3d040ae51f0f6a4b2a08be0e6e1494d4'),
(218, NULL, 100, 'bitrix24', 'onDomainChange', 'seo', '', '\\Bitrix\\Seo\\Service', 'changeRegisteredDomain', '', 2, 'fcb2dadb8b7ff1863c0ad86320e9e521'),
(219, NULL, 100, 'main', 'OnUserDelete', 'socialservices', '', 'CSocServAuthDB', 'OnUserDelete', '', 1, '1f5b8fc024dfdf83952d6c723466cdf5'),
(220, NULL, 100, 'timeman', 'OnAfterTMReportDailyAdd', 'socialservices', '', 'CSocServAuthDB', 'OnAfterTMReportDailyAdd', '', 1, 'a16159f6a90f1b67cb9ec15b0c1bab3a'),
(221, NULL, 100, 'timeman', 'OnAfterTMDayStart', 'socialservices', '', 'CSocServAuthDB', 'OnAfterTMDayStart', '', 1, '9567feb38890d6581a3204dc5e65e8b6'),
(222, NULL, 100, 'timeman', 'OnTimeManShow', 'socialservices', '', 'CSocServEventHandlers', 'OnTimeManShow', '', 1, 'b728f3cea11d374f7638c29f84e8e15e'),
(223, NULL, 100, 'main', 'OnFindExternalUser', 'socialservices', '', 'CSocServAuthDB', 'OnFindExternalUser', '', 1, '1ab251d15efc87c5b5cfe6396f5dec1b'),
(224, NULL, 100, 'perfmon', 'OnGetTableSchema', 'socialservices', '', 'socialservices', 'OnGetTableSchema', '', 1, '56107bf1a0dcee0db660c0ec27c31c6c'),
(225, NULL, 100, 'socialservices', 'OnFindSocialservicesUser', 'socialservices', '', 'CSocServAuthManager', 'checkOldUser', '', 1, 'c3d7460e4ef694f5bc53b6a6ad902407'),
(226, NULL, 100, 'socialservices', 'OnFindSocialservicesUser', 'socialservices', '', 'CSocServAuthManager', 'checkAbandonedUser', '', 1, '331f99f0b265544c33777c299eab16f6'),
(227, NULL, 100, 'main', 'OnPanelCreate', 'translate', '', '\\Bitrix\\Translate\\Ui\\Panel', 'onPanelCreate', '', 1, '88ecb95eac2e28b80f234bfc8c1cd597'),
(228, NULL, 100, 'perfmon', 'OnGetTableSchema', 'translate', '', 'translate', 'onGetTableSchema', '', 1, '00347f45b2f48480b1a521c32036beb5'),
(231, NULL, 100, 'main', 'OnBeforeProlog', 'main', '/modules/main/install/wizard_sol/panel_button.php', 'CWizardSolPanel', 'ShowPanel', '', 1, 'bbd7b8c1e518a0b3eae815eb91a95c11');

-- --------------------------------------------------------

--
-- Структура таблицы `b_numerator`
--

CREATE TABLE `b_numerator` (
  `ID` int(10) UNSIGNED NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TEMPLATE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TYPE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SETTINGS` text COLLATE utf8_unicode_ci,
  `CREATED_AT` datetime DEFAULT NULL,
  `CREATED_BY` int(11) DEFAULT NULL,
  `UPDATED_AT` datetime DEFAULT NULL,
  `UPDATED_BY` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_numerator_sequence`
--

CREATE TABLE `b_numerator_sequence` (
  `NUMERATOR_ID` int(11) NOT NULL DEFAULT '0',
  `KEY` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `TEXT_KEY` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NEXT_NUMBER` int(11) DEFAULT NULL,
  `LAST_INVOCATION_TIME` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_operation`
--

CREATE TABLE `b_operation` (
  `ID` int(18) NOT NULL,
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BINDING` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'module'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_operation`
--

INSERT INTO `b_operation` (`ID`, `NAME`, `MODULE_ID`, `DESCRIPTION`, `BINDING`) VALUES
(1, 'edit_php', 'main', NULL, 'module'),
(2, 'view_own_profile', 'main', NULL, 'module'),
(3, 'edit_own_profile', 'main', NULL, 'module'),
(4, 'view_all_users', 'main', NULL, 'module'),
(5, 'view_groups', 'main', NULL, 'module'),
(6, 'view_tasks', 'main', NULL, 'module'),
(7, 'view_other_settings', 'main', NULL, 'module'),
(8, 'view_subordinate_users', 'main', NULL, 'module'),
(9, 'edit_subordinate_users', 'main', NULL, 'module'),
(10, 'edit_all_users', 'main', NULL, 'module'),
(11, 'edit_groups', 'main', NULL, 'module'),
(12, 'edit_tasks', 'main', NULL, 'module'),
(13, 'edit_other_settings', 'main', NULL, 'module'),
(14, 'cache_control', 'main', NULL, 'module'),
(15, 'lpa_template_edit', 'main', NULL, 'module'),
(16, 'view_event_log', 'main', NULL, 'module'),
(17, 'edit_ratings', 'main', NULL, 'module'),
(18, 'manage_short_uri', 'main', NULL, 'module'),
(19, 'fm_view_permission', 'main', NULL, 'file'),
(20, 'fm_view_file', 'main', NULL, 'file'),
(21, 'fm_view_listing', 'main', NULL, 'file'),
(22, 'fm_edit_existent_folder', 'main', NULL, 'file'),
(23, 'fm_create_new_file', 'main', NULL, 'file'),
(24, 'fm_edit_existent_file', 'main', NULL, 'file'),
(25, 'fm_create_new_folder', 'main', NULL, 'file'),
(26, 'fm_delete_file', 'main', NULL, 'file'),
(27, 'fm_delete_folder', 'main', NULL, 'file'),
(28, 'fm_edit_in_workflow', 'main', NULL, 'file'),
(29, 'fm_rename_file', 'main', NULL, 'file'),
(30, 'fm_rename_folder', 'main', NULL, 'file'),
(31, 'fm_upload_file', 'main', NULL, 'file'),
(32, 'fm_add_to_menu', 'main', NULL, 'file'),
(33, 'fm_download_file', 'main', NULL, 'file'),
(34, 'fm_lpa', 'main', NULL, 'file'),
(35, 'fm_edit_permission', 'main', NULL, 'file'),
(36, 'bitrixcloud_monitoring', 'bitrixcloud', NULL, 'module'),
(37, 'bitrixcloud_backup', 'bitrixcloud', NULL, 'module'),
(38, 'bitrixcloud_cdn', 'bitrixcloud', NULL, 'module'),
(39, 'clouds_browse', 'clouds', NULL, 'module'),
(40, 'clouds_upload', 'clouds', NULL, 'module'),
(41, 'clouds_config', 'clouds', NULL, 'module'),
(42, 'fileman_view_all_settings', 'fileman', '', 'module'),
(43, 'fileman_edit_menu_types', 'fileman', '', 'module'),
(44, 'fileman_add_element_to_menu', 'fileman', '', 'module'),
(45, 'fileman_edit_menu_elements', 'fileman', '', 'module'),
(46, 'fileman_edit_existent_files', 'fileman', '', 'module'),
(47, 'fileman_edit_existent_folders', 'fileman', '', 'module'),
(48, 'fileman_admin_files', 'fileman', '', 'module'),
(49, 'fileman_admin_folders', 'fileman', '', 'module'),
(50, 'fileman_view_permissions', 'fileman', '', 'module'),
(51, 'fileman_edit_all_settings', 'fileman', '', 'module'),
(52, 'fileman_upload_files', 'fileman', '', 'module'),
(53, 'fileman_view_file_structure', 'fileman', '', 'module'),
(54, 'fileman_install_control', 'fileman', '', 'module'),
(55, 'medialib_view_collection', 'fileman', '', 'medialib'),
(56, 'medialib_new_collection', 'fileman', '', 'medialib'),
(57, 'medialib_edit_collection', 'fileman', '', 'medialib'),
(58, 'medialib_del_collection', 'fileman', '', 'medialib'),
(59, 'medialib_access', 'fileman', '', 'medialib'),
(60, 'medialib_new_item', 'fileman', '', 'medialib'),
(61, 'medialib_edit_item', 'fileman', '', 'medialib'),
(62, 'medialib_del_item', 'fileman', '', 'medialib'),
(63, 'sticker_view', 'fileman', '', 'stickers'),
(64, 'sticker_edit', 'fileman', '', 'stickers'),
(65, 'sticker_new', 'fileman', '', 'stickers'),
(66, 'sticker_del', 'fileman', '', 'stickers'),
(67, 'hl_element_read', 'highloadblock', NULL, 'module'),
(68, 'hl_element_write', 'highloadblock', NULL, 'module'),
(69, 'hl_element_delete', 'highloadblock', NULL, 'module'),
(70, 'section_read', 'iblock', NULL, 'iblock'),
(71, 'element_read', 'iblock', NULL, 'iblock'),
(72, 'section_element_bind', 'iblock', NULL, 'iblock'),
(73, 'iblock_admin_display', 'iblock', NULL, 'iblock'),
(74, 'element_edit', 'iblock', NULL, 'iblock'),
(75, 'element_edit_price', 'iblock', NULL, 'iblock'),
(76, 'element_delete', 'iblock', NULL, 'iblock'),
(77, 'element_bizproc_start', 'iblock', NULL, 'iblock'),
(78, 'section_edit', 'iblock', NULL, 'iblock'),
(79, 'section_delete', 'iblock', NULL, 'iblock'),
(80, 'section_section_bind', 'iblock', NULL, 'iblock'),
(81, 'element_edit_any_wf_status', 'iblock', NULL, 'iblock'),
(82, 'iblock_edit', 'iblock', NULL, 'iblock'),
(83, 'iblock_delete', 'iblock', NULL, 'iblock'),
(84, 'iblock_rights_edit', 'iblock', NULL, 'iblock'),
(85, 'iblock_export', 'iblock', NULL, 'iblock'),
(86, 'section_rights_edit', 'iblock', NULL, 'iblock'),
(87, 'element_rights_edit', 'iblock', NULL, 'iblock'),
(88, 'landing_read', 'landing', NULL, 'module'),
(89, 'landing_edit', 'landing', NULL, 'module'),
(90, 'landing_sett', 'landing', NULL, 'module'),
(91, 'landing_public', 'landing', NULL, 'module'),
(92, 'landing_delete', 'landing', NULL, 'module'),
(93, 'seo_settings', 'seo', '', 'module'),
(94, 'seo_tools', 'seo', '', 'module');

-- --------------------------------------------------------

--
-- Структура таблицы `b_option`
--

CREATE TABLE `b_option` (
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_option`
--

INSERT INTO `b_option` (`MODULE_ID`, `NAME`, `VALUE`, `DESCRIPTION`, `SITE_ID`) VALUES
('fileman', '~allowed_components', '', NULL, NULL),
('fileman', '~script_files', 'php,php3,php4,php5,php6,phtml,pl,asp,aspx,cgi,exe,ico,shtm,shtml', NULL, NULL),
('fileman', 'ar_entities', 'none', NULL, NULL),
('fileman', 'archive_step_time', '30', NULL, NULL),
('fileman', 'default_edit', 'html', NULL, NULL),
('fileman', 'default_edit_groups', '', NULL, NULL),
('fileman', 'different_set', 'Y', NULL, NULL),
('fileman', 'editor_body_class', '', NULL, NULL),
('fileman', 'editor_body_id', '', NULL, NULL),
('fileman', 'google_map_api_key', '', NULL, NULL),
('fileman', 'GROUP_DEFAULT_RIGHT', 'D', NULL, NULL),
('fileman', 'GROUP_DEFAULT_TASK', '18', NULL, NULL),
('fileman', 'hide_physical_struc', '', NULL, NULL),
('fileman', 'log_menu', 'Y', NULL, NULL),
('fileman', 'log_page', 'Y', NULL, NULL),
('fileman', 'menutypes', 'a:1:{s:4:\\\"main\\\";s:23:\\\"Главное меню\\\";}', NULL, NULL),
('fileman', 'ml_max_height', '1024', NULL, NULL),
('fileman', 'ml_max_width', '1024', NULL, NULL),
('fileman', 'ml_media_available_ext', 'jpg,jpeg,gif,png,flv,mp4,wmv,wma,mp3,ppt,aac', NULL, NULL),
('fileman', 'ml_media_extentions', 'jpg,jpeg,gif,png,flv,mp4,wmv,wma,mp3,ppt', NULL, NULL),
('fileman', 'ml_thumb_height', '105', NULL, NULL),
('fileman', 'ml_thumb_width', '140', NULL, NULL),
('fileman', 'ml_use_default', '1', NULL, NULL),
('fileman', 'num_menu_param', '1', NULL, NULL),
('fileman', 'propstypes', 'a:4:{s:11:\\\"description\\\";s:33:\\\"Описание страницы\\\";s:8:\\\"keywords\\\";s:27:\\\"Ключевые слова\\\";s:5:\\\"title\\\";s:44:\\\"Заголовок окна браузера\\\";s:14:\\\"keywords_inner\\\";s:35:\\\"Продвигаемые слова\\\";}', NULL, NULL),
('fileman', 'replace_new_lines', 'Y', NULL, NULL),
('fileman', 'search_mask', '*.php', NULL, NULL),
('fileman', 'search_max_open_file_size', '1024', NULL, NULL),
('fileman', 'search_max_res_count', '', NULL, NULL),
('fileman', 'search_time_step', '5', NULL, NULL),
('fileman', 'show_inc_icons', 'N', NULL, NULL),
('fileman', 'stickers_use_hotkeys', 'N', NULL, NULL),
('fileman', 'use_code_editor', 'Y', NULL, NULL),
('fileman', 'use_custom_spell', 'N', NULL, NULL),
('fileman', 'use_editor_3', 'Y', NULL, NULL),
('fileman', 'use_medialib', 'Y', NULL, NULL),
('fileman', 'use_pspell', 'N', NULL, NULL),
('fileman', 'use_separeted_dics', 'N', NULL, NULL),
('fileman', 'use_translit', '1', NULL, NULL),
('fileman', 'use_translit_google', '1', NULL, NULL),
('fileman', 'user_dics_path', '/bitrix/modules/fileman/u_dics', NULL, NULL),
('fileman', 'yandex_map_api_key', '', NULL, NULL),
('forum', 'SHOW_VOTES', 'N', NULL, NULL),
('iblock', 'combined_list_mode', 'Y', NULL, NULL),
('iblock', 'custom_edit_form_use_property_id', 'Y', NULL, NULL),
('iblock', 'detail_image_size', '200', NULL, NULL),
('iblock', 'event_log_iblock', 'Y', NULL, NULL),
('iblock', 'excel_export_rights', 'N', NULL, NULL),
('iblock', 'iblock_activity_dates', '', NULL, NULL),
('iblock', 'iblock_activity_dates_period', '86400', NULL, NULL),
('iblock', 'iblock_menu_max_sections', '50', NULL, NULL),
('iblock', 'list_full_date_edit', 'N', NULL, NULL),
('iblock', 'list_image_size', '50', NULL, NULL),
('iblock', 'num_catalog_levels', '3', NULL, NULL),
('iblock', 'path2rss', '/upload/', NULL, NULL),
('iblock', 'property_features_enabled', 'Y', NULL, NULL),
('iblock', 'show_xml_id', 'N', NULL, NULL),
('iblock', 'use_htmledit', 'Y', NULL, NULL),
('landing', 'pub_path_s1', '/lp/', NULL, NULL),
('main', '~crypto_b_socialservices_user', 'a:2:{s:7:\"OATOKEN\";b:1;s:13:\"REFRESH_TOKEN\";b:1;}', NULL, NULL),
('main', '~crypto_b_user_auth_code', 'a:1:{s:10:\"OTP_SECRET\";b:1;}', NULL, NULL),
('main', '~crypto_b_user_phone_auth', 'a:1:{s:10:\"OTP_SECRET\";b:1;}', NULL, NULL),
('main', '~new_license11_sign', 'Y', NULL, NULL),
('main', 'admin_lid', 'ru', NULL, NULL),
('main', 'admin_passwordh', 'FVgQf2YUBgUtCUVcBhcFCgsTAQ==', NULL, NULL),
('main', 'all_bcc', '', NULL, NULL),
('main', 'allow_socserv_authorization', 'Y', NULL, NULL),
('main', 'ALLOW_SPREAD_COOKIE', 'Y', NULL, NULL),
('main', 'attach_images', 'N', NULL, NULL),
('main', 'auth_comp2', 'Y', NULL, NULL),
('main', 'auth_components_template', '', NULL, NULL),
('main', 'auth_controller_sso', 'N', NULL, NULL),
('main', 'auth_multisite', 'N', NULL, NULL),
('main', 'auto_time_zone', 'N', NULL, NULL),
('main', 'bx_fast_download', 'N', NULL, NULL),
('main', 'CAPTCHA_arBGColor_1', 'FFFFFF', NULL, NULL),
('main', 'CAPTCHA_arBGColor_2', 'FFFFFF', NULL, NULL),
('main', 'CAPTCHA_arBorderColor', '000000', NULL, NULL),
('main', 'CAPTCHA_arTextColor_1', '000000', NULL, NULL),
('main', 'CAPTCHA_arTextColor_2', '000000', NULL, NULL),
('main', 'CAPTCHA_arTTFFiles', 'bitrix_captcha.ttf', NULL, NULL),
('main', 'CAPTCHA_bWaveTransformation', 'N', NULL, NULL),
('main', 'CAPTCHA_numEllipses', '0', NULL, NULL),
('main', 'CAPTCHA_numLines', '0', NULL, NULL),
('main', 'CAPTCHA_presets', '2', NULL, NULL),
('main', 'captcha_registration', 'Y', NULL, NULL),
('main', 'captcha_restoring_password', 'N', NULL, NULL),
('main', 'CAPTCHA_textAngel_1', '-15', NULL, NULL),
('main', 'CAPTCHA_textAngel_2', '15', NULL, NULL),
('main', 'CAPTCHA_textDistance_1', '-2', NULL, NULL),
('main', 'CAPTCHA_textDistance_2', '-2', NULL, NULL),
('main', 'CAPTCHA_textFontSize', '26', NULL, NULL),
('main', 'CAPTCHA_textStartX', '40', NULL, NULL),
('main', 'CAPTCHA_transparentTextPercent', '0', NULL, NULL),
('main', 'component_cache_on', 'Y', NULL, NULL),
('main', 'compres_css_js_files', 'N', NULL, NULL),
('main', 'control_file_duplicates', 'Y', NULL, NULL),
('main', 'convert_mail_header', 'Y', NULL, NULL),
('main', 'convert_original_file_name', 'Y', NULL, NULL),
('main', 'CONVERT_UNIX_NEWLINE_2_WINDOWS', 'N', NULL, NULL),
('main', 'cookie_name', 'BITRIX_SM', NULL, NULL),
('main', 'custom_register_page', '', NULL, NULL),
('main', 'disk_space', '', NULL, NULL),
('main', 'distributive6', 'Y', NULL, NULL),
('main', 'duplicates_max_size', '100', NULL, NULL),
('main', 'email_from', 'rusik1.rusik1@mail.ru', NULL, NULL),
('main', 'error_reporting', '85', NULL, NULL),
('main', 'event_log_block_user', 'N', NULL, NULL),
('main', 'event_log_cleanup_days', '7', NULL, NULL),
('main', 'event_log_file_access', 'N', NULL, NULL),
('main', 'event_log_group_policy', 'N', NULL, NULL),
('main', 'event_log_login_fail', 'Y', NULL, NULL),
('main', 'event_log_login_success', 'Y', NULL, NULL),
('main', 'event_log_logout', 'Y', NULL, NULL),
('main', 'event_log_marketplace', 'N', NULL, NULL),
('main', 'event_log_module_access', 'N', NULL, NULL),
('main', 'event_log_password_change', 'Y', NULL, NULL),
('main', 'event_log_password_request', 'Y', NULL, NULL),
('main', 'event_log_permissions_fail', 'N', NULL, NULL),
('main', 'event_log_register', 'Y', NULL, NULL),
('main', 'event_log_register_fail', 'Y', NULL, NULL),
('main', 'event_log_task', 'N', NULL, NULL),
('main', 'event_log_user_delete', 'Y', NULL, NULL),
('main', 'event_log_user_edit', 'N', NULL, NULL),
('main', 'event_log_user_groups', 'N', NULL, NULL),
('main', 'fill_to_mail', 'N', NULL, NULL),
('main', 'gather_catalog_stat', 'Y', NULL, NULL),
('main', 'GROUP_DEFAULT_RIGHT', 'D', NULL, NULL),
('main', 'GROUP_DEFAULT_TASK', '1', NULL, NULL),
('main', 'hide_panel_for_users', 'N;', NULL, NULL),
('main', 'image_resize_quality', '95', NULL, NULL),
('main', 'imageeditor_proxy_enabled', 'N', NULL, NULL),
('main', 'imageeditor_proxy_white_list', 'N;', NULL, NULL),
('main', 'inactive_users_block_days', '0', NULL, NULL),
('main', 'LAST_DB_OPTIMIZATION_TIME', '1622651549', NULL, NULL),
('main', 'mail_additional_parameters', '', NULL, NULL),
('main', 'mail_event_bulk', '5', NULL, NULL),
('main', 'mail_event_period', '14', NULL, NULL),
('main', 'mail_gen_text_version', 'Y', NULL, NULL),
('main', 'mail_link_protocol', '', NULL, NULL),
('main', 'map_left_menu_type', 'left', NULL, NULL),
('main', 'map_top_menu_type', 'top', NULL, NULL),
('main', 'max_file_size', '0', NULL, NULL),
('main', 'move_js_to_body', 'Y', NULL, NULL),
('main', 'new_user_email_auth', 'Y', NULL, NULL),
('main', 'new_user_email_required', 'Y', NULL, NULL),
('main', 'new_user_email_uniq_check', 'N', NULL, NULL),
('main', 'new_user_phone_auth', 'N', NULL, NULL),
('main', 'new_user_phone_required', 'N', NULL, NULL),
('main', 'new_user_registration', 'Y', NULL, NULL),
('main', 'new_user_registration_cleanup_days', '7', NULL, NULL),
('main', 'new_user_registration_def_group', '5', NULL, NULL),
('main', 'new_user_registration_email_confirmation', 'N', NULL, NULL),
('main', 'optimize_css_files', 'Y', NULL, NULL),
('main', 'optimize_js_files', 'Y', NULL, NULL),
('main', 'PARAM_MAX_SITES', '2', NULL, NULL),
('main', 'PARAM_MAX_USERS', '0', NULL, NULL),
('main', 'phone_number_default_country', '16', NULL, NULL),
('main', 'profile_history_cleanup_days', '0', NULL, NULL),
('main', 'profile_image_height', '', NULL, NULL),
('main', 'profile_image_size', '', NULL, NULL),
('main', 'profile_image_width', '', NULL, NULL),
('main', 'rating_assign_authority_group', '4', NULL, NULL),
('main', 'rating_assign_authority_group_add', '2', NULL, NULL),
('main', 'rating_assign_authority_group_delete', '2', NULL, NULL),
('main', 'rating_assign_rating_group', '3', NULL, NULL),
('main', 'rating_assign_rating_group_add', '1', NULL, NULL),
('main', 'rating_assign_rating_group_delete', '1', NULL, NULL),
('main', 'rating_assign_type', 'auto', NULL, NULL),
('main', 'rating_authority_rating', '4', NULL, NULL),
('main', 'rating_authority_weight_formula', 'Y', NULL, NULL),
('main', 'rating_community_authority', '30.0000', NULL, NULL),
('main', 'rating_community_last_visit', '90', NULL, NULL),
('main', 'rating_community_size', '1', NULL, NULL),
('main', 'rating_count_vote', '10', NULL, NULL),
('main', 'rating_normalization', '10', NULL, NULL),
('main', 'rating_normalization_type', 'auto', NULL, NULL),
('main', 'rating_self_vote', 'Y', NULL, NULL),
('main', 'rating_start_authority', '3', NULL, NULL),
('main', 'rating_text_like_d', 'Это нравится', NULL, NULL),
('main', 'rating_text_like_n', 'Не нравится', NULL, NULL),
('main', 'rating_text_like_y', 'Нравится', NULL, NULL),
('main', 'rating_vote_show', 'Y', NULL, NULL),
('main', 'rating_vote_template', 'like', NULL, NULL),
('main', 'rating_vote_type', 'standart', NULL, NULL),
('main', 'rating_vote_weight', '10', NULL, NULL),
('main', 'save_original_file_name', 'Y', NULL, NULL),
('main', 'secure_logout', 'Y', NULL, NULL),
('main', 'send_mid', 'N', NULL, NULL),
('main', 'server_name', 'bitrixzadanieotais', NULL, NULL),
('main', 'server_uniq_id', '5220771c47f33b9f30f82bb49ae25bde', NULL, NULL),
('main', 'session_auth_only', 'Y', NULL, NULL),
('main', 'session_expand', 'Y', NULL, NULL),
('main', 'session_show_message', 'Y', NULL, NULL),
('main', 'show_panel_for_users', 'a:1:{i:0;s:2:\"G6\";}', NULL, NULL),
('main', 'signer_default_key', 'c03208f33b2c2332370f218afcaab36c9148effdd7fc9e81dedd3611d163c0c3596ea985aaed0c4b0983f59df154cc0ce39dd3c51bd72e39aa97b8502345741f', NULL, NULL),
('main', 'site_checker_success', NULL, NULL, NULL),
('main', 'site_name', 'Моя компания', NULL, NULL),
('main', 'smile_gallery_id', '1', NULL, NULL),
('main', 'sms_default_service', '', NULL, NULL),
('main', 'stable_versions_only', 'Y', NULL, NULL),
('main', 'store_password', 'Y', NULL, NULL),
('main', 'strong_update_check', 'Y', NULL, NULL),
('main', 'track_outgoing_emails_click', 'Y', NULL, NULL),
('main', 'track_outgoing_emails_read', 'Y', NULL, NULL),
('main', 'translate_key_yandex', '', NULL, NULL),
('main', 'translit_original_file_name', 'N', NULL, NULL),
('main', 'update_autocheck', '7', NULL, NULL),
('main', 'update_devsrv', 'N', NULL, NULL),
('main', 'update_is_gzip_installed', 'Y', NULL, NULL),
('main', 'update_load_timeout', '30', NULL, NULL),
('main', 'update_safe_mode', 'N', NULL, NULL),
('main', 'update_site', 'www.bitrixsoft.com', NULL, NULL),
('main', 'update_site_ns', 'Y', NULL, NULL),
('main', 'update_site_proxy_addr', '', NULL, NULL),
('main', 'update_site_proxy_pass', '', NULL, NULL),
('main', 'update_site_proxy_port', '', NULL, NULL),
('main', 'update_site_proxy_user', '', NULL, NULL),
('main', 'update_stop_autocheck', 'N', NULL, NULL),
('main', 'update_system_check', '02.06.2021 23:10:47', NULL, NULL),
('main', 'upload_dir', 'upload', NULL, NULL),
('main', 'url_preview_enable', 'N', NULL, NULL),
('main', 'url_preview_save_images', 'N', NULL, NULL),
('main', 'use_digest_auth', 'N', NULL, NULL),
('main', 'use_encrypted_auth', 'N', NULL, NULL),
('main', 'use_hot_keys', 'Y', NULL, NULL),
('main', 'use_minified_assets', 'Y', NULL, NULL),
('main', 'use_secure_password_cookies', 'Y', NULL, NULL),
('main', 'use_time_zones', 'N', NULL, NULL),
('main', 'user_profile_history', 'N', NULL, NULL),
('main', 'vendor', '1c_bitrix', NULL, NULL),
('main', 'wizard_company_slogan', 'Быстро. Просто. Эффективно', NULL, NULL),
('main', 'wizard_site_logo', NULL, NULL, NULL),
('messageservice', 'clean_up_period', '14', NULL, NULL),
('rest', 'entity_iblock_type', 'rest_entity', NULL, NULL),
('rest', 'server_path', '/rest', NULL, NULL),
('search', 'dbnode_id', 'N', NULL, NULL),
('search', 'dbnode_status', 'ok', NULL, NULL),
('search', 'exclude_mask', '/bitrix/*;/404.php;/upload/*;/auth*;*/search*;*/tags*;/personal/*;/e-store/affiliates/*;/content/*/my/*;/examples/*;/map.php;*/detail.php;/communication/voting/*;/club/index.php', NULL, NULL),
('search', 'use_social_rating', 'Y', NULL, NULL),
('search', 'use_stemming', 'Y', NULL, NULL),
('search', 'use_tf_cache', 'Y', NULL, NULL),
('search', 'use_word_distance', 'Y', NULL, NULL),
('search', 'version', 'v2.0', NULL, NULL),
('socialservices', 'allow_encrypted_tokens', '1', NULL, NULL),
('socialservices', 'auth_services', 'a:12:{s:9:\"VKontakte\";s:1:\"N\";s:8:\"MyMailRu\";s:1:\"N\";s:7:\"Twitter\";s:1:\"N\";s:8:\"Facebook\";s:1:\"N\";s:11:\"Livejournal\";s:1:\"Y\";s:12:\"YandexOpenID\";s:1:\"Y\";s:7:\"Rambler\";s:1:\"Y\";s:12:\"MailRuOpenID\";s:1:\"Y\";s:12:\"Liveinternet\";s:1:\"Y\";s:7:\"Blogger\";s:1:\"Y\";s:6:\"OpenID\";s:1:\"Y\";s:6:\"LiveID\";s:1:\"N\";}', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `b_option_site`
--

CREATE TABLE `b_option_site` (
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_option_site`
--

INSERT INTO `b_option_site` (`MODULE_ID`, `NAME`, `SITE_ID`, `VALUE`) VALUES
('fileman', 'menutypes', 's1', 'a:8:{s:4:\\\"main\\\";s:23:\\\"Главное меню\\\";s:7:\\\"bottom1\\\";s:23:\\\"Нижнее меню 1\\\";s:7:\\\"bottom2\\\";s:23:\\\"Нижнее меню 2\\\";s:7:\\\"bottom3\\\";s:23:\\\"Нижнее меню 3\\\";s:7:\\\"bottom4\\\";s:23:\\\"Нижнее меню 4\\\";s:7:\\\"bottom5\\\";s:23:\\\"Нижнее меню 5\\\";s:7:\\\"bottom6\\\";s:23:\\\"Нижнее меню 6\\\";s:9:\\\"podrazdel\\\";s:29:\\\"Меню Подраздела\\\";}'),
('fileman', 'num_menu_param', 's1', '1'),
('fileman', 'propstypes', 's1', 'a:4:{s:11:\\\"description\\\";s:33:\\\"Описание страницы\\\";s:8:\\\"keywords\\\";s:27:\\\"Ключевые слова\\\";s:5:\\\"title\\\";s:44:\\\"Заголовок окна браузера\\\";s:14:\\\"keywords_inner\\\";s:35:\\\"Продвигаемые слова\\\";}'),
('socialnetwork', 'tooltip_rating_id', 'WI', 'a:2:{i:0;i:3;i:1;i:4;}'),
('socialnetwork', 'tooltip_show_rating', 'WI', 'Y');

-- --------------------------------------------------------

--
-- Структура таблицы `b_perf_cache`
--

CREATE TABLE `b_perf_cache` (
  `ID` int(18) NOT NULL,
  `HIT_ID` int(18) DEFAULT NULL,
  `COMPONENT_ID` int(18) DEFAULT NULL,
  `NN` int(18) DEFAULT NULL,
  `CACHE_SIZE` float DEFAULT NULL,
  `OP_MODE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MODULE_NAME` text COLLATE utf8_unicode_ci,
  `COMPONENT_NAME` text COLLATE utf8_unicode_ci,
  `BASE_DIR` text COLLATE utf8_unicode_ci,
  `INIT_DIR` text COLLATE utf8_unicode_ci,
  `FILE_NAME` text COLLATE utf8_unicode_ci,
  `FILE_PATH` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_perf_cluster`
--

CREATE TABLE `b_perf_cluster` (
  `ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NULL DEFAULT NULL,
  `THREADS` int(11) DEFAULT NULL,
  `HITS` int(11) DEFAULT NULL,
  `ERRORS` int(11) DEFAULT NULL,
  `PAGES_PER_SECOND` float DEFAULT NULL,
  `PAGE_EXEC_TIME` float DEFAULT NULL,
  `PAGE_RESP_TIME` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_perf_component`
--

CREATE TABLE `b_perf_component` (
  `ID` int(18) NOT NULL,
  `HIT_ID` int(18) DEFAULT NULL,
  `NN` int(18) DEFAULT NULL,
  `CACHE_TYPE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CACHE_SIZE` int(11) DEFAULT NULL,
  `CACHE_COUNT_R` int(11) DEFAULT NULL,
  `CACHE_COUNT_W` int(11) DEFAULT NULL,
  `CACHE_COUNT_C` int(11) DEFAULT NULL,
  `COMPONENT_TIME` float DEFAULT NULL,
  `QUERIES` int(11) DEFAULT NULL,
  `QUERIES_TIME` float DEFAULT NULL,
  `COMPONENT_NAME` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_perf_error`
--

CREATE TABLE `b_perf_error` (
  `ID` int(18) NOT NULL,
  `HIT_ID` int(18) DEFAULT NULL,
  `ERRNO` int(18) DEFAULT NULL,
  `ERRSTR` text COLLATE utf8_unicode_ci,
  `ERRFILE` text COLLATE utf8_unicode_ci,
  `ERRLINE` int(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_perf_history`
--

CREATE TABLE `b_perf_history` (
  `ID` int(18) NOT NULL,
  `TIMESTAMP_X` timestamp NULL DEFAULT NULL,
  `TOTAL_MARK` float DEFAULT NULL,
  `ACCELERATOR_ENABLED` char(1) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_perf_hit`
--

CREATE TABLE `b_perf_hit` (
  `ID` int(11) NOT NULL,
  `DATE_HIT` datetime DEFAULT NULL,
  `IS_ADMIN` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REQUEST_METHOD` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SERVER_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SERVER_PORT` int(11) DEFAULT NULL,
  `SCRIPT_NAME` text COLLATE utf8_unicode_ci,
  `REQUEST_URI` text COLLATE utf8_unicode_ci,
  `INCLUDED_FILES` int(11) DEFAULT NULL,
  `MEMORY_PEAK_USAGE` int(11) DEFAULT NULL,
  `CACHE_TYPE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CACHE_SIZE` int(11) DEFAULT NULL,
  `CACHE_COUNT_R` int(11) DEFAULT NULL,
  `CACHE_COUNT_W` int(11) DEFAULT NULL,
  `CACHE_COUNT_C` int(11) DEFAULT NULL,
  `QUERIES` int(11) DEFAULT NULL,
  `QUERIES_TIME` float DEFAULT NULL,
  `COMPONENTS` int(11) DEFAULT NULL,
  `COMPONENTS_TIME` float DEFAULT NULL,
  `SQL_LOG` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PAGE_TIME` float DEFAULT NULL,
  `PROLOG_TIME` float DEFAULT NULL,
  `PROLOG_BEFORE_TIME` float DEFAULT NULL,
  `AGENTS_TIME` float DEFAULT NULL,
  `PROLOG_AFTER_TIME` float DEFAULT NULL,
  `WORK_AREA_TIME` float DEFAULT NULL,
  `EPILOG_TIME` float DEFAULT NULL,
  `EPILOG_BEFORE_TIME` float DEFAULT NULL,
  `EVENTS_TIME` float DEFAULT NULL,
  `EPILOG_AFTER_TIME` float DEFAULT NULL,
  `MENU_RECALC` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_perf_index_ban`
--

CREATE TABLE `b_perf_index_ban` (
  `ID` int(11) NOT NULL,
  `BAN_TYPE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TABLE_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COLUMN_NAMES` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_perf_index_complete`
--

CREATE TABLE `b_perf_index_complete` (
  `ID` int(11) NOT NULL,
  `BANNED` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TABLE_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COLUMN_NAMES` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `INDEX_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_perf_index_suggest`
--

CREATE TABLE `b_perf_index_suggest` (
  `ID` int(11) NOT NULL,
  `SQL_MD5` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SQL_COUNT` int(11) DEFAULT NULL,
  `SQL_TIME` float DEFAULT NULL,
  `TABLE_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TABLE_ALIAS` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COLUMN_NAMES` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SQL_TEXT` text COLLATE utf8_unicode_ci,
  `SQL_EXPLAIN` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_perf_index_suggest_sql`
--

CREATE TABLE `b_perf_index_suggest_sql` (
  `SUGGEST_ID` int(11) NOT NULL,
  `SQL_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_perf_sql`
--

CREATE TABLE `b_perf_sql` (
  `ID` int(18) NOT NULL,
  `HIT_ID` int(18) DEFAULT NULL,
  `COMPONENT_ID` int(18) DEFAULT NULL,
  `NN` int(18) DEFAULT NULL,
  `QUERY_TIME` float DEFAULT NULL,
  `NODE_ID` int(18) DEFAULT NULL,
  `MODULE_NAME` text COLLATE utf8_unicode_ci,
  `COMPONENT_NAME` text COLLATE utf8_unicode_ci,
  `SQL_TEXT` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_perf_sql_backtrace`
--

CREATE TABLE `b_perf_sql_backtrace` (
  `SQL_ID` int(18) NOT NULL,
  `NN` int(18) NOT NULL,
  `FILE_NAME` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LINE_NO` int(18) DEFAULT NULL,
  `CLASS_NAME` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FUNCTION_NAME` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_perf_tab_column_stat`
--

CREATE TABLE `b_perf_tab_column_stat` (
  `ID` int(11) NOT NULL,
  `TABLE_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COLUMN_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TABLE_ROWS` float DEFAULT NULL,
  `COLUMN_ROWS` float DEFAULT NULL,
  `VALUE` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_perf_tab_stat`
--

CREATE TABLE `b_perf_tab_stat` (
  `TABLE_NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `TABLE_SIZE` float DEFAULT NULL,
  `TABLE_ROWS` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_perf_test`
--

CREATE TABLE `b_perf_test` (
  `ID` int(18) NOT NULL,
  `REFERENCE_ID` int(18) DEFAULT NULL,
  `NAME` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_rating`
--

CREATE TABLE `b_rating` (
  `ID` int(11) NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CALCULATION_METHOD` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'SUM',
  `CREATED` datetime DEFAULT NULL,
  `LAST_MODIFIED` datetime DEFAULT NULL,
  `LAST_CALCULATED` datetime DEFAULT NULL,
  `POSITION` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `AUTHORITY` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `CALCULATED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `CONFIGS` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_rating`
--

INSERT INTO `b_rating` (`ID`, `ACTIVE`, `NAME`, `ENTITY_ID`, `CALCULATION_METHOD`, `CREATED`, `LAST_MODIFIED`, `LAST_CALCULATED`, `POSITION`, `AUTHORITY`, `CALCULATED`, `CONFIGS`) VALUES
(3, 'Y', 'Рейтинг', 'USER', 'SUM', '2021-06-02 19:32:28', '2021-06-02 19:32:28', '2021-06-08 11:02:22', 'Y', 'N', 'Y', 'a:3:{s:4:\"MAIN\";a:1:{s:6:\"RATING\";a:1:{s:5:\"BONUS\";a:2:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:1:\"1\";}}}s:5:\"FORUM\";a:2:{s:4:\"VOTE\";a:2:{s:5:\"TOPIC\";a:3:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:3:\"0.5\";s:5:\"LIMIT\";s:2:\"30\";}s:4:\"POST\";a:3:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:3:\"0.1\";s:5:\"LIMIT\";s:2:\"30\";}}s:6:\"RATING\";a:1:{s:8:\"ACTIVITY\";a:9:{s:6:\"ACTIVE\";s:1:\"Y\";s:16:\"TODAY_TOPIC_COEF\";s:3:\"0.4\";s:15:\"WEEK_TOPIC_COEF\";s:3:\"0.2\";s:16:\"MONTH_TOPIC_COEF\";s:3:\"0.1\";s:14:\"ALL_TOPIC_COEF\";s:1:\"0\";s:15:\"TODAY_POST_COEF\";s:3:\"0.2\";s:14:\"WEEK_POST_COEF\";s:3:\"0.1\";s:15:\"MONTH_POST_COEF\";s:4:\"0.05\";s:13:\"ALL_POST_COEF\";s:1:\"0\";}}}s:4:\"BLOG\";a:2:{s:4:\"VOTE\";a:2:{s:4:\"POST\";a:3:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:1:\"1\";s:5:\"LIMIT\";s:2:\"30\";}s:7:\"COMMENT\";a:3:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:1:\"1\";s:5:\"LIMIT\";s:2:\"30\";}}s:6:\"RATING\";a:1:{s:8:\"ACTIVITY\";a:9:{s:6:\"ACTIVE\";s:1:\"Y\";s:15:\"TODAY_POST_COEF\";s:3:\"0.4\";s:14:\"WEEK_POST_COEF\";s:3:\"0.2\";s:15:\"MONTH_POST_COEF\";s:3:\"0.1\";s:13:\"ALL_POST_COEF\";s:1:\"0\";s:18:\"TODAY_COMMENT_COEF\";s:3:\"0.2\";s:17:\"WEEK_COMMENT_COEF\";s:3:\"0.1\";s:18:\"MONTH_COMMENT_COEF\";s:4:\"0.05\";s:16:\"ALL_COMMENT_COEF\";s:1:\"0\";}}}}'),
(4, 'Y', 'Авторитет', 'USER', 'SUM', '2021-06-02 19:32:28', '2021-06-02 19:32:28', '2021-06-08 11:02:22', 'Y', 'Y', 'Y', 'a:1:{s:4:\"MAIN\";a:2:{s:4:\"VOTE\";a:1:{s:4:\"USER\";a:3:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:1:\"1\";s:5:\"LIMIT\";s:2:\"30\";}}s:6:\"RATING\";a:1:{s:5:\"BONUS\";a:2:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:1:\"1\";}}}}');

-- --------------------------------------------------------

--
-- Структура таблицы `b_rating_component`
--

CREATE TABLE `b_rating_component` (
  `ID` int(11) NOT NULL,
  `RATING_ID` int(11) NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ENTITY_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `RATING_TYPE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `COMPLEX_NAME` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `CLASS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CALC_METHOD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `EXCEPTION_METHOD` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_MODIFIED` datetime DEFAULT NULL,
  `LAST_CALCULATED` datetime DEFAULT NULL,
  `NEXT_CALCULATION` datetime DEFAULT NULL,
  `REFRESH_INTERVAL` int(11) NOT NULL,
  `CONFIG` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_rating_component`
--

INSERT INTO `b_rating_component` (`ID`, `RATING_ID`, `ACTIVE`, `ENTITY_ID`, `MODULE_ID`, `RATING_TYPE`, `NAME`, `COMPLEX_NAME`, `CLASS`, `CALC_METHOD`, `EXCEPTION_METHOD`, `LAST_MODIFIED`, `LAST_CALCULATED`, `NEXT_CALCULATION`, `REFRESH_INTERVAL`, `CONFIG`) VALUES
(1, 3, 'Y', 'USER', 'MAIN', 'RATING', 'BONUS', 'USER_MAIN_RATING_BONUS', 'CRatingsComponentsMain', 'CalcUserBonus', NULL, '2021-06-02 19:32:28', '2021-06-08 11:02:22', '2021-06-08 12:02:22', 3600, 'a:2:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:1:\"1\";}'),
(2, 4, 'Y', 'USER', 'MAIN', 'VOTE', 'USER', 'USER_MAIN_VOTE_USER', 'CRatingsComponentsMain', 'CalcVoteUser', NULL, '2021-06-02 19:32:28', '2021-06-08 11:02:22', '2021-06-08 12:02:22', 3600, 'a:3:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:1:\"1\";s:5:\"LIMIT\";s:2:\"30\";}'),
(3, 4, 'Y', 'USER', 'MAIN', 'RATING', 'BONUS', 'USER_MAIN_RATING_BONUS', 'CRatingsComponentsMain', 'CalcUserBonus', NULL, '2021-06-02 19:32:28', '2021-06-08 11:02:22', '2021-06-08 12:02:22', 3600, 'a:2:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:1:\"1\";}');

-- --------------------------------------------------------

--
-- Структура таблицы `b_rating_component_results`
--

CREATE TABLE `b_rating_component_results` (
  `ID` int(11) NOT NULL,
  `RATING_ID` int(11) NOT NULL,
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `RATING_TYPE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `COMPLEX_NAME` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `CURRENT_VALUE` decimal(18,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_rating_component_results`
--

INSERT INTO `b_rating_component_results` (`ID`, `RATING_ID`, `ENTITY_TYPE_ID`, `ENTITY_ID`, `MODULE_ID`, `RATING_TYPE`, `NAME`, `COMPLEX_NAME`, `CURRENT_VALUE`) VALUES
(40, 3, 'USER', 1, 'MAIN', 'RATING', 'BONUS', 'USER_MAIN_RATING_BONUS', '0.0000'),
(41, 4, 'USER', 1, 'MAIN', 'RATING', 'BONUS', 'USER_MAIN_RATING_BONUS', '30.0000');

-- --------------------------------------------------------

--
-- Структура таблицы `b_rating_prepare`
--

CREATE TABLE `b_rating_prepare` (
  `ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_rating_prepare`
--

INSERT INTO `b_rating_prepare` (`ID`) VALUES
(1);

-- --------------------------------------------------------

--
-- Структура таблицы `b_rating_results`
--

CREATE TABLE `b_rating_results` (
  `ID` int(11) NOT NULL,
  `RATING_ID` int(11) NOT NULL,
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `CURRENT_VALUE` decimal(18,4) DEFAULT NULL,
  `PREVIOUS_VALUE` decimal(18,4) DEFAULT NULL,
  `CURRENT_POSITION` int(11) DEFAULT '0',
  `PREVIOUS_POSITION` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_rating_results`
--

INSERT INTO `b_rating_results` (`ID`, `RATING_ID`, `ENTITY_TYPE_ID`, `ENTITY_ID`, `CURRENT_VALUE`, `PREVIOUS_VALUE`, `CURRENT_POSITION`, `PREVIOUS_POSITION`) VALUES
(1, 4, 'USER', 1, '30.0000', '0.0000', 1, 0),
(2, 3, 'USER', 1, '0.0000', '0.0000', 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `b_rating_rule`
--

CREATE TABLE `b_rating_rule` (
  `ID` int(11) NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `NAME` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CONDITION_NAME` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `CONDITION_MODULE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONDITION_CLASS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CONDITION_METHOD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CONDITION_CONFIG` text COLLATE utf8_unicode_ci,
  `ACTION_NAME` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `ACTION_CONFIG` text COLLATE utf8_unicode_ci,
  `ACTIVATE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ACTIVATE_CLASS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVATE_METHOD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DEACTIVATE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `DEACTIVATE_CLASS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DEACTIVATE_METHOD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CREATED` datetime DEFAULT NULL,
  `LAST_MODIFIED` datetime DEFAULT NULL,
  `LAST_APPLIED` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_rating_rule`
--

INSERT INTO `b_rating_rule` (`ID`, `ACTIVE`, `NAME`, `ENTITY_TYPE_ID`, `CONDITION_NAME`, `CONDITION_MODULE`, `CONDITION_CLASS`, `CONDITION_METHOD`, `CONDITION_CONFIG`, `ACTION_NAME`, `ACTION_CONFIG`, `ACTIVATE`, `ACTIVATE_CLASS`, `ACTIVATE_METHOD`, `DEACTIVATE`, `DEACTIVATE_CLASS`, `DEACTIVATE_METHOD`, `CREATED`, `LAST_MODIFIED`, `LAST_APPLIED`) VALUES
(1, 'N', 'Добавление в группу пользователей, имеющих право голосовать за рейтинг', 'USER', 'AUTHORITY', NULL, 'CRatingRulesMain', 'ratingCheck', 'a:1:{s:9:\"AUTHORITY\";a:2:{s:16:\"RATING_CONDITION\";i:1;s:12:\"RATING_VALUE\";i:1;}}', 'ADD_TO_GROUP', 'a:1:{s:12:\"ADD_TO_GROUP\";a:1:{s:8:\"GROUP_ID\";s:1:\"3\";}}', 'N', 'CRatingRulesMain', 'addToGroup', 'N', 'CRatingRulesMain ', 'addToGroup', '2021-06-02 19:29:43', '2021-06-02 19:29:43', NULL),
(2, 'N', 'Удаление из группы пользователей, не имеющих права голосовать за рейтинг', 'USER', 'AUTHORITY', NULL, 'CRatingRulesMain', 'ratingCheck', 'a:1:{s:9:\"AUTHORITY\";a:2:{s:16:\"RATING_CONDITION\";i:2;s:12:\"RATING_VALUE\";i:1;}}', 'REMOVE_FROM_GROUP', 'a:1:{s:17:\"REMOVE_FROM_GROUP\";a:1:{s:8:\"GROUP_ID\";s:1:\"3\";}}', 'N', 'CRatingRulesMain', 'removeFromGroup', 'N', 'CRatingRulesMain ', 'removeFromGroup', '2021-06-02 19:29:43', '2021-06-02 19:29:43', NULL),
(3, 'N', 'Добавление в группу пользователей, имеющих право голосовать за авторитет', 'USER', 'AUTHORITY', NULL, 'CRatingRulesMain', 'ratingCheck', 'a:1:{s:9:\"AUTHORITY\";a:2:{s:16:\"RATING_CONDITION\";i:1;s:12:\"RATING_VALUE\";i:2;}}', 'ADD_TO_GROUP', 'a:1:{s:12:\"ADD_TO_GROUP\";a:1:{s:8:\"GROUP_ID\";s:1:\"4\";}}', 'N', 'CRatingRulesMain', 'addToGroup', 'N', 'CRatingRulesMain ', 'addToGroup', '2021-06-02 19:29:43', '2021-06-02 19:29:43', NULL),
(4, 'N', 'Удаление из группы пользователей, не имеющих права голосовать за авторитет', 'USER', 'AUTHORITY', NULL, 'CRatingRulesMain', 'ratingCheck', 'a:1:{s:9:\"AUTHORITY\";a:2:{s:16:\"RATING_CONDITION\";i:2;s:12:\"RATING_VALUE\";i:2;}}', 'REMOVE_FROM_GROUP', 'a:1:{s:17:\"REMOVE_FROM_GROUP\";a:1:{s:8:\"GROUP_ID\";s:1:\"4\";}}', 'N', 'CRatingRulesMain', 'removeFromGroup', 'N', 'CRatingRulesMain ', 'removeFromGroup', '2021-06-02 19:29:43', '2021-06-02 19:29:43', NULL),
(5, 'Y', 'Автоматическое голосование за авторитет пользователя', 'USER', 'VOTE', NULL, 'CRatingRulesMain', 'voteCheck', 'a:1:{s:4:\"VOTE\";a:6:{s:10:\"VOTE_LIMIT\";i:90;s:11:\"VOTE_RESULT\";i:10;s:16:\"VOTE_FORUM_TOPIC\";d:0.5;s:15:\"VOTE_FORUM_POST\";d:0.1;s:14:\"VOTE_BLOG_POST\";d:0.5;s:17:\"VOTE_BLOG_COMMENT\";d:0.1;}}', 'empty', 'a:0:{}', 'N', 'empty', 'empty', 'N', 'empty ', 'empty', '2021-06-02 19:29:43', '2021-06-02 19:29:43', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `b_rating_rule_vetting`
--

CREATE TABLE `b_rating_rule_vetting` (
  `ID` int(11) NOT NULL,
  `RULE_ID` int(11) NOT NULL,
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `ACTIVATE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `APPLIED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_rating_user`
--

CREATE TABLE `b_rating_user` (
  `ID` int(11) NOT NULL,
  `RATING_ID` int(11) NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `BONUS` decimal(18,4) DEFAULT '0.0000',
  `VOTE_WEIGHT` decimal(18,4) DEFAULT '0.0000',
  `VOTE_COUNT` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_rating_user`
--

INSERT INTO `b_rating_user` (`ID`, `RATING_ID`, `ENTITY_ID`, `BONUS`, `VOTE_WEIGHT`, `VOTE_COUNT`) VALUES
(2, 4, 1, '3.0000', '300.0000', 40),
(3, 3, 1, '0.0000', '0.0000', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `b_rating_vote`
--

CREATE TABLE `b_rating_vote` (
  `ID` int(11) NOT NULL,
  `RATING_VOTING_ID` int(11) NOT NULL,
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `OWNER_ID` int(11) NOT NULL,
  `VALUE` decimal(18,4) NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `CREATED` datetime NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `USER_IP` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `REACTION` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_rating_vote_group`
--

CREATE TABLE `b_rating_vote_group` (
  `ID` int(11) NOT NULL,
  `GROUP_ID` int(11) NOT NULL,
  `TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_rating_vote_group`
--

INSERT INTO `b_rating_vote_group` (`ID`, `GROUP_ID`, `TYPE`) VALUES
(5, 1, 'A'),
(1, 1, 'R'),
(3, 1, 'R'),
(2, 3, 'R'),
(4, 3, 'R'),
(6, 4, 'A');

-- --------------------------------------------------------

--
-- Структура таблицы `b_rating_voting`
--

CREATE TABLE `b_rating_voting` (
  `ID` int(11) NOT NULL,
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `OWNER_ID` int(11) NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `CREATED` datetime DEFAULT NULL,
  `LAST_CALCULATED` datetime DEFAULT NULL,
  `TOTAL_VALUE` decimal(18,4) NOT NULL,
  `TOTAL_VOTES` int(11) NOT NULL,
  `TOTAL_POSITIVE_VOTES` int(11) NOT NULL,
  `TOTAL_NEGATIVE_VOTES` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_rating_voting_prepare`
--

CREATE TABLE `b_rating_voting_prepare` (
  `ID` int(11) NOT NULL,
  `RATING_VOTING_ID` int(11) NOT NULL,
  `TOTAL_VALUE` decimal(18,4) NOT NULL,
  `TOTAL_VOTES` int(11) NOT NULL,
  `TOTAL_POSITIVE_VOTES` int(11) NOT NULL,
  `TOTAL_NEGATIVE_VOTES` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_rating_voting_reaction`
--

CREATE TABLE `b_rating_voting_reaction` (
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `REACTION` varchar(8) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `TOTAL_VOTES` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_rating_weight`
--

CREATE TABLE `b_rating_weight` (
  `ID` int(11) NOT NULL,
  `RATING_FROM` decimal(18,4) NOT NULL,
  `RATING_TO` decimal(18,4) NOT NULL,
  `WEIGHT` decimal(18,4) DEFAULT '0.0000',
  `COUNT` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_rating_weight`
--

INSERT INTO `b_rating_weight` (`ID`, `RATING_FROM`, `RATING_TO`, `WEIGHT`, `COUNT`) VALUES
(1, '-1000000.0000', '1000000.0000', '1.0000', 10);

-- --------------------------------------------------------

--
-- Структура таблицы `b_rest_ap`
--

CREATE TABLE `b_rest_ap` (
  `ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `PASSWORD` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `TITLE` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `COMMENT` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `DATE_CREATE` datetime DEFAULT NULL,
  `DATE_LOGIN` datetime DEFAULT NULL,
  `LAST_IP` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_rest_app`
--

CREATE TABLE `b_rest_app` (
  `ID` int(11) NOT NULL,
  `CLIENT_ID` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `CODE` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `INSTALLED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `URL` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `URL_DEMO` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `URL_INSTALL` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VERSION` varchar(4) COLLATE utf8_unicode_ci DEFAULT '1',
  `SCOPE` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `STATUS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'F',
  `DATE_FINISH` date DEFAULT NULL,
  `IS_TRIALED` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `SHARED_KEY` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CLIENT_SECRET` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `APP_NAME` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACCESS` varchar(2000) COLLATE utf8_unicode_ci DEFAULT '',
  `APPLICATION_TOKEN` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  `MOBILE` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `USER_INSTALL` char(1) COLLATE utf8_unicode_ci DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_rest_app_lang`
--

CREATE TABLE `b_rest_app_lang` (
  `ID` int(11) NOT NULL,
  `APP_ID` int(11) NOT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `MENU_NAME` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_rest_app_log`
--

CREATE TABLE `b_rest_app_log` (
  `ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `APP_ID` int(11) NOT NULL,
  `ACTION_TYPE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `USER_ADMIN` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_rest_ap_permission`
--

CREATE TABLE `b_rest_ap_permission` (
  `ID` int(11) NOT NULL,
  `PASSWORD_ID` int(11) NOT NULL,
  `PERM` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_rest_event`
--

CREATE TABLE `b_rest_event` (
  `ID` int(11) NOT NULL,
  `APP_ID` int(11) DEFAULT NULL,
  `EVENT_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `EVENT_HANDLER` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `USER_ID` int(11) DEFAULT '0',
  `TITLE` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `COMMENT` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `DATE_CREATE` datetime DEFAULT NULL,
  `APPLICATION_TOKEN` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  `CONNECTOR_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `INTEGRATION_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_rest_event_offline`
--

CREATE TABLE `b_rest_event_offline` (
  `ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `MESSAGE_ID` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `APP_ID` int(11) NOT NULL,
  `EVENT_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `EVENT_DATA` text COLLATE utf8_unicode_ci,
  `EVENT_ADDITIONAL` text COLLATE utf8_unicode_ci,
  `PROCESS_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `CONNECTOR_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `ERROR` int(3) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_rest_integration`
--

CREATE TABLE `b_rest_integration` (
  `ID` int(11) NOT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  `ELEMENT_CODE` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `TITLE` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `PASSWORD_ID` int(11) DEFAULT NULL,
  `APP_ID` int(11) DEFAULT NULL,
  `SCOPE` text COLLATE utf8_unicode_ci,
  `QUERY` text COLLATE utf8_unicode_ci,
  `OUTGOING_EVENTS` text COLLATE utf8_unicode_ci,
  `OUTGOING_NEEDED` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OUTGOING_HANDLER_URL` varchar(2048) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WIDGET_NEEDED` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WIDGET_HANDLER_URL` varchar(2048) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WIDGET_LIST` text COLLATE utf8_unicode_ci,
  `APPLICATION_TOKEN` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `APPLICATION_NEEDED` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `APPLICATION_ONLY_API` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BOT_ID` int(11) DEFAULT NULL,
  `BOT_HANDLER_URL` varchar(2048) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_rest_log`
--

CREATE TABLE `b_rest_log` (
  `ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CLIENT_ID` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PASSWORD_ID` int(11) DEFAULT NULL,
  `SCOPE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `METHOD` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REQUEST_METHOD` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REQUEST_URI` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REQUEST_AUTH` text COLLATE utf8_unicode_ci,
  `REQUEST_DATA` text COLLATE utf8_unicode_ci,
  `RESPONSE_STATUS` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RESPONSE_DATA` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_rest_owner_entity`
--

CREATE TABLE `b_rest_owner_entity` (
  `ID` int(11) NOT NULL,
  `OWNER_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `OWNER` int(11) NOT NULL,
  `ENTITY_TYPE` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_rest_placement`
--

CREATE TABLE `b_rest_placement` (
  `ID` int(11) NOT NULL,
  `APP_ID` int(11) DEFAULT NULL,
  `PLACEMENT` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PLACEMENT_HANDLER` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TITLE` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `GROUP_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `COMMENT` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `DATE_CREATE` datetime DEFAULT NULL,
  `ADDITIONAL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_rest_stat`
--

CREATE TABLE `b_rest_stat` (
  `STAT_DATE` date NOT NULL,
  `APP_ID` int(11) NOT NULL,
  `METHOD_ID` int(11) NOT NULL,
  `HOUR_0` int(11) NOT NULL DEFAULT '0',
  `HOUR_1` int(11) NOT NULL DEFAULT '0',
  `HOUR_2` int(11) NOT NULL DEFAULT '0',
  `HOUR_3` int(11) NOT NULL DEFAULT '0',
  `HOUR_4` int(11) NOT NULL DEFAULT '0',
  `HOUR_5` int(11) NOT NULL DEFAULT '0',
  `HOUR_6` int(11) NOT NULL DEFAULT '0',
  `HOUR_7` int(11) NOT NULL DEFAULT '0',
  `HOUR_8` int(11) NOT NULL DEFAULT '0',
  `HOUR_9` int(11) NOT NULL DEFAULT '0',
  `HOUR_10` int(11) NOT NULL DEFAULT '0',
  `HOUR_11` int(11) NOT NULL DEFAULT '0',
  `HOUR_12` int(11) NOT NULL DEFAULT '0',
  `HOUR_13` int(11) NOT NULL DEFAULT '0',
  `HOUR_14` int(11) NOT NULL DEFAULT '0',
  `HOUR_15` int(11) NOT NULL DEFAULT '0',
  `HOUR_16` int(11) NOT NULL DEFAULT '0',
  `HOUR_17` int(11) NOT NULL DEFAULT '0',
  `HOUR_18` int(11) NOT NULL DEFAULT '0',
  `HOUR_19` int(11) NOT NULL DEFAULT '0',
  `HOUR_20` int(11) NOT NULL DEFAULT '0',
  `HOUR_21` int(11) NOT NULL DEFAULT '0',
  `HOUR_22` int(11) NOT NULL DEFAULT '0',
  `HOUR_23` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_rest_stat_app`
--

CREATE TABLE `b_rest_stat_app` (
  `APP_ID` int(11) NOT NULL,
  `APP_CODE` varchar(128) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_rest_stat_method`
--

CREATE TABLE `b_rest_stat_method` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `METHOD_TYPE` char(1) COLLATE utf8_unicode_ci DEFAULT 'M'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_rest_usage_entity`
--

CREATE TABLE `b_rest_usage_entity` (
  `ID` int(11) NOT NULL,
  `ENTITY_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `ENTITY_CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SUB_ENTITY_TYPE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SUB_ENTITY_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_rest_usage_stat`
--

CREATE TABLE `b_rest_usage_stat` (
  `STAT_DATE` date NOT NULL,
  `ENTITY_ID` int(11) NOT NULL DEFAULT '0',
  `IS_SENT` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `HOUR_0` int(11) NOT NULL DEFAULT '0',
  `HOUR_1` int(11) NOT NULL DEFAULT '0',
  `HOUR_2` int(11) NOT NULL DEFAULT '0',
  `HOUR_3` int(11) NOT NULL DEFAULT '0',
  `HOUR_4` int(11) NOT NULL DEFAULT '0',
  `HOUR_5` int(11) NOT NULL DEFAULT '0',
  `HOUR_6` int(11) NOT NULL DEFAULT '0',
  `HOUR_7` int(11) NOT NULL DEFAULT '0',
  `HOUR_8` int(11) NOT NULL DEFAULT '0',
  `HOUR_9` int(11) NOT NULL DEFAULT '0',
  `HOUR_10` int(11) NOT NULL DEFAULT '0',
  `HOUR_11` int(11) NOT NULL DEFAULT '0',
  `HOUR_12` int(11) NOT NULL DEFAULT '0',
  `HOUR_13` int(11) NOT NULL DEFAULT '0',
  `HOUR_14` int(11) NOT NULL DEFAULT '0',
  `HOUR_15` int(11) NOT NULL DEFAULT '0',
  `HOUR_16` int(11) NOT NULL DEFAULT '0',
  `HOUR_17` int(11) NOT NULL DEFAULT '0',
  `HOUR_18` int(11) NOT NULL DEFAULT '0',
  `HOUR_19` int(11) NOT NULL DEFAULT '0',
  `HOUR_20` int(11) NOT NULL DEFAULT '0',
  `HOUR_21` int(11) NOT NULL DEFAULT '0',
  `HOUR_22` int(11) NOT NULL DEFAULT '0',
  `HOUR_23` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_search_content`
--

CREATE TABLE `b_search_content` (
  `ID` int(11) NOT NULL,
  `DATE_CHANGE` datetime NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ITEM_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CUSTOM_RANK` int(11) NOT NULL DEFAULT '0',
  `USER_ID` int(11) DEFAULT NULL,
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ENTITY_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `URL` text COLLATE utf8_unicode_ci,
  `TITLE` text COLLATE utf8_unicode_ci,
  `BODY` longtext COLLATE utf8_unicode_ci,
  `TAGS` text COLLATE utf8_unicode_ci,
  `PARAM1` text COLLATE utf8_unicode_ci,
  `PARAM2` text COLLATE utf8_unicode_ci,
  `UPD` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DATE_FROM` datetime DEFAULT NULL,
  `DATE_TO` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_search_content`
--

INSERT INTO `b_search_content` (`ID`, `DATE_CHANGE`, `MODULE_ID`, `ITEM_ID`, `CUSTOM_RANK`, `USER_ID`, `ENTITY_TYPE_ID`, `ENTITY_ID`, `URL`, `TITLE`, `BODY`, `TAGS`, `PARAM1`, `PARAM2`, `UPD`, `DATE_FROM`, `DATE_TO`) VALUES
(1, '2021-06-06 21:30:30', 'main', 's1|/index.php', 0, NULL, NULL, NULL, '/index.php', 'Balita', 'Lifestyle\rMarch 15, 2018 \r&bullet;\n3\rThere’s a Cool New Way for Men to Wear Socks and Sandals\rLorem ipsum dolor sit amet, consectetur adipisicing elit. Quidem nobis, ut dicta eaque ipsa laudantium!\rLifestyle\rMarch 15, 2018 \r&bullet;\n3\rThere’s a Cool New Way for Men to Wear Socks and Sandals\rLorem ipsum dolor sit amet, consectetur adipisicing elit. Quidem nobis, ut dicta eaque ipsa laudantium!\rLifestyle\rMarch 15, 2018 \r&bullet;\n3\rThere’s a Cool New Way for Men to Wear Socks and Sandals\rLorem ipsum dolor sit amet, consectetur adipisicing elit. Quidem nobis, ut dicta eaque ipsa laudantium!\rLifestyle Category\rFood\rMarch 15, 2018 \r&bullet;\n3\rThere’s a Cool New Way for Men to Wear Socks and Sandals\rTravel\rMarch 15, 2018 \r&bullet;\n3\rThere’s a Cool New Way for Men to Wear Socks and Sandals\rTravel, Asia\rMarch 15, 2018 \r&bullet;\n3\rThere’s a Cool New Way for Men to Wear Socks and Sandals\rTravel\rMarch 15, 2018 \r&bullet;\n3\rThere’s a Cool New Way for Men to Wear Socks and Sandals\rTravel\rMarch 15, 2018 \r&bullet;\n3\rThere’s a Cool New Way for Men to Wear Socks and Sandals\rLifestyle\rMarch 15, 2018 \r&bullet;\n3\rThere’s a Cool New Way for Men to Wear Socks and Sandals\rLifestyle\rMarch 15, 2018 \r&bullet;\n3\rThere’s a Cool New Way for Men to Wear Socks and Sandals\rFood\rMarch 15, 2018 \r&bullet;\n3\rThere’s a Cool New Way for Men to Wear Socks and Sandals\rPrev\r1\r2\r3\rNext\rMeagan Smith\rLorem ipsum dolor sit amet, consectetur adipisicing elit. Exercitationem facilis sunt repellendus excepturi beatae porro debitis voluptate nulla quo veniam fuga sit molestias minus.\rRead my bio\rPopular Posts\rThere’s a Cool New Way for Men to Wear Socks and Sandals\rMarch 15, 2018 \r&bullet;\n3\rThere’s a Cool New Way for Men to Wear Socks and Sandals\rMarch 15, 2018 \r&bullet;\n3\rThere’s a Cool New Way for Men to Wear Socks and Sandals\rMarch 15, 2018 \r&bullet;\n3\rCategories\rCourses \r(12)\rNews \r(22)\rDesign \r(37)\rHTML \r(42)\rWeb Development \r(14)', '', '', '', NULL, NULL, NULL),
(2, '2021-06-06 21:45:25', 'main', 's1|/novaya-stranitsa.php', 0, NULL, NULL, NULL, '/novaya-stranitsa.php', 'Новая страница', 'Text here....', '', '', '', NULL, NULL, NULL),
(3, '2021-06-06 21:51:08', 'main', 's1|/about/index.php', 0, NULL, NULL, NULL, '/about/index.php', 'About', 'Страница About', '', '', '', NULL, NULL, NULL),
(4, '2021-06-06 21:59:31', 'main', 's1|/contact/index.php', 0, NULL, NULL, NULL, '/contact/index.php', 'Contact', 'Страница Contact', '', '', '', NULL, NULL, NULL),
(5, '2021-06-06 22:55:31', 'main', 's1|/categories/index.php', 0, NULL, NULL, NULL, '/categories/index.php', 'CATEGORIES', 'Страница Категорий', '', '', '', NULL, NULL, NULL),
(6, '2021-06-07 07:26:27', 'iblock', 'S1', 0, NULL, NULL, NULL, '=ID=1&EXTERNAL_ID=&IBLOCK_TYPE_ID=Balita&IBLOCK_ID=1&IBLOCK_CODE=balita&IBLOCK_EXTERNAL_ID=&CODE=lifestyle', 'Lifestyle', '', NULL, 'Balita', '1', NULL, NULL, NULL),
(7, '2021-06-07 07:27:02', 'iblock', 'S2', 0, NULL, NULL, NULL, '=ID=2&EXTERNAL_ID=&IBLOCK_TYPE_ID=Balita&IBLOCK_ID=1&IBLOCK_CODE=balita&IBLOCK_EXTERNAL_ID=&CODE=food', 'Food', '', NULL, 'Balita', '1', NULL, NULL, NULL),
(8, '2021-06-07 07:30:48', 'iblock', 'S3', 0, NULL, NULL, NULL, '=ID=3&EXTERNAL_ID=&IBLOCK_TYPE_ID=Balita&IBLOCK_ID=1&IBLOCK_CODE=balita&IBLOCK_EXTERNAL_ID=&CODE=adventure', 'Adventure', '', NULL, 'Balita', '1', NULL, NULL, NULL),
(9, '2021-06-07 07:31:03', 'iblock', 'S4', 0, NULL, NULL, NULL, '=ID=4&EXTERNAL_ID=&IBLOCK_TYPE_ID=Balita&IBLOCK_ID=1&IBLOCK_CODE=balita&IBLOCK_EXTERNAL_ID=&CODE=travel', 'Travel', '', NULL, 'Balita', '1', NULL, NULL, NULL),
(10, '2021-06-07 07:31:16', 'iblock', 'S5', 0, NULL, NULL, NULL, '=ID=5&EXTERNAL_ID=&IBLOCK_TYPE_ID=Balita&IBLOCK_ID=1&IBLOCK_CODE=balita&IBLOCK_EXTERNAL_ID=&CODE=business', 'Business', '', NULL, 'Balita', '1', NULL, NULL, NULL),
(11, '2021-06-07 07:57:59', 'iblock', '1', 0, NULL, NULL, NULL, '=ID=1&EXTERNAL_ID=1&IBLOCK_SECTION_ID=1&IBLOCK_TYPE_ID=Balita&IBLOCK_ID=1&IBLOCK_CODE=balita&IBLOCK_EXTERNAL_ID=&CODE=there-s-a-cool-new-way-for-men-to-wear-socks-and-sandals', 'There’s a Cool New Way for Men to Wear Socks and Sandals', 'Lifestyle\rMarch 15, 2018 \r• \r3\rThere’s a Cool New Way for Men to Wear Socks and Sandals\rLorem ipsum dolor sit amet, consectetur adipisicing elit. Quidem nobis, ut dicta eaque ipsa laudantium!\r\r\n\rThere’s a Cool New Way for Men to Wear Socks and Sandals\rFood\rMarch 15, 2018 \r&bullet;\r3\rLorem ipsum dolor sit amet, consectetur adipisicing elit. Praesentium nam quas inventore, ut iure iste modi eos adipisci ad ea itaque labore earum autem nobis et numquam, minima eius. Nam eius, non unde ut aut sunt eveniet rerum repellendus porro.\rSint ab voluptates itaque, ipsum porro qui obcaecati cumque quas sit vel. Voluptatum provident id quis quo. Eveniet maiores perferendis officia veniam est laborum, expedita fuga doloribus natus repellendus dolorem ab similique sint eius cupiditate necessitatibus, magni nesciunt ex eos.\rQuis eius aspernatur, eaque culpa cumque reiciendis, nobis at earum assumenda similique ut? Aperiam vel aut, ex exercitationem eos consequuntur eaque culpa totam, deserunt, aspernatur quae eveniet hic provident ullam tempora error repudiandae sapiente illum rerum itaque voluptatem. Commodi, sequi.\rQuibusdam autem, quas molestias recusandae aperiam molestiae modi qui ipsam vel. Placeat tenetur veritatis tempore quos impedit dicta, error autem, quae sint inventore ipsa quidem. Quo voluptate quisquam reiciendis, minus, animi minima eum officia doloremque repellat eos, odio doloribus cum.\rTemporibus quo dolore veritatis doloribus delectus dolores perspiciatis recusandae ducimus, nisi quod, incidunt ut quaerat, magnam cupiditate. Aut, laboriosam magnam, nobis dolore fugiat impedit necessitatibus nisi cupiditate, quas repellat itaque molestias sit libero voluptas eveniet omnis illo ullam dolorem minima.\rPorro amet accusantium libero fugit totam, deserunt ipsa, dolorem, vero expedita illo similique saepe nisi deleniti. Cumque, laboriosam, porro! Facilis voluptatem sequi nulla quidem, provident eius quos pariatur maxime sapiente illo nostrum quibusdam aliquid fugiat! Earum quod fuga id officia.\rIllo magnam at dolore ad enim fugiat ut maxime facilis autem, nulla cumque quis commodi eos nisi unde soluta, ipsa eius aspernatur sint atque! Nihil, eveniet illo ea, mollitia fuga accusamus dolor dolorem perspiciatis rerum hic, consectetur error rem aspernatur!\rLorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus magni explicabo id molestiae, minima quas assumenda consectetur, nobis neque rem, incidunt quam tempore perferendis provident obcaecati sapiente, animi vel expedita omnis quae ipsa! Obcaecati eligendi sed odio labore vero reiciendis facere accusamus molestias eaque impedit, consequuntur quae fuga vitae fugit?\rCategories: \rFood\r, \rTravel', '', 'Balita', '1', NULL, NULL, NULL),
(12, '2021-06-07 08:05:19', 'iblock', '2', 0, NULL, NULL, NULL, '=ID=2&EXTERNAL_ID=2&IBLOCK_SECTION_ID=1&IBLOCK_TYPE_ID=Balita&IBLOCK_ID=1&IBLOCK_CODE=balita&IBLOCK_EXTERNAL_ID=&CODE=there-s-a-cool-new-way-for-men-to-wear-socks-and-sandals-2', 'There’s a Cool New Way for Men to Wear Socks and Sandals 2', 'Lifestyle\rMarch 15, 2018 \r• \r3\rThere’s a Cool New Way for Men to Wear Socks and Sandals\rLorem ipsum dolor sit amet, consectetur adipisicing elit. Quidem nobis, ut dicta eaque ipsa laudantium!\r\r\n\rThere’s a Cool New Way for Men to Wear Socks and Sandals\rFood\rMarch 15, 2018 \r• \r3\rLorem ipsum dolor sit amet, consectetur adipisicing elit. Praesentium nam quas inventore, ut iure iste modi eos adipisci ad ea itaque labore earum autem nobis et numquam, minima eius. Nam eius, non unde ut aut sunt eveniet rerum repellendus porro.\rSint ab voluptates itaque, ipsum porro qui obcaecati cumque quas sit vel. Voluptatum provident id quis quo. Eveniet maiores perferendis officia veniam est laborum, expedita fuga doloribus natus repellendus dolorem ab similique sint eius cupiditate necessitatibus, magni nesciunt ex eos.\rQuis eius aspernatur, eaque culpa cumque reiciendis, nobis at earum assumenda similique ut? Aperiam vel aut, ex exercitationem eos consequuntur eaque culpa totam, deserunt, aspernatur quae eveniet hic provident ullam tempora error repudiandae sapiente illum rerum itaque voluptatem. Commodi, sequi.\rQuibusdam autem, quas molestias recusandae aperiam molestiae modi qui ipsam vel. Placeat tenetur veritatis tempore quos impedit dicta, error autem, quae sint inventore ipsa quidem. Quo voluptate quisquam reiciendis, minus, animi minima eum officia doloremque repellat eos, odio doloribus cum.\rTemporibus quo dolore veritatis doloribus delectus dolores perspiciatis recusandae ducimus, nisi quod, incidunt ut quaerat, magnam cupiditate. Aut, laboriosam magnam, nobis dolore fugiat impedit necessitatibus nisi cupiditate, quas repellat itaque molestias sit libero voluptas eveniet omnis illo ullam dolorem minima.\rPorro amet accusantium libero fugit totam, deserunt ipsa, dolorem, vero expedita illo similique saepe nisi deleniti. Cumque, laboriosam, porro! Facilis voluptatem sequi nulla quidem, provident eius quos pariatur maxime sapiente illo nostrum quibusdam aliquid fugiat! Earum quod fuga id officia.\rIllo magnam at dolore ad enim fugiat ut maxime facilis autem, nulla cumque quis commodi eos nisi unde soluta, ipsa eius aspernatur sint atque! Nihil, eveniet illo ea, mollitia fuga accusamus dolor dolorem perspiciatis rerum hic, consectetur error rem aspernatur!\rLorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus magni explicabo id molestiae, minima quas assumenda consectetur, nobis neque rem, incidunt quam tempore perferendis provident obcaecati sapiente, animi vel expedita omnis quae ipsa! Obcaecati eligendi sed odio labore vero reiciendis facere accusamus molestias eaque impedit, consequuntur quae fuga vitae fugit?\rCategories: \rFood\r, \rTravel', '', 'Balita', '1', NULL, NULL, NULL),
(13, '2021-06-07 08:12:28', 'main', 's1|/blog-single.php', 0, NULL, NULL, NULL, '/blog-single.php', 'blog-single', 'Страница', '', '', '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `b_search_content_freq`
--

CREATE TABLE `b_search_content_freq` (
  `STEM` int(11) NOT NULL DEFAULT '0',
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FREQ` float DEFAULT NULL,
  `TF` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_search_content_param`
--

CREATE TABLE `b_search_content_param` (
  `SEARCH_CONTENT_ID` int(11) NOT NULL,
  `PARAM_NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `PARAM_VALUE` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_search_content_right`
--

CREATE TABLE `b_search_content_right` (
  `SEARCH_CONTENT_ID` int(11) NOT NULL,
  `GROUP_CODE` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_search_content_right`
--

INSERT INTO `b_search_content_right` (`SEARCH_CONTENT_ID`, `GROUP_CODE`) VALUES
(1, 'G2'),
(2, 'G2'),
(3, 'G2'),
(4, 'G2'),
(5, 'G2'),
(6, 'G1'),
(6, 'G2'),
(7, 'G1'),
(7, 'G2'),
(8, 'G1'),
(8, 'G2'),
(9, 'G1'),
(9, 'G2'),
(10, 'G1'),
(10, 'G2'),
(11, 'G1'),
(11, 'G2'),
(12, 'G1'),
(12, 'G2'),
(13, 'G2');

-- --------------------------------------------------------

--
-- Структура таблицы `b_search_content_site`
--

CREATE TABLE `b_search_content_site` (
  `SEARCH_CONTENT_ID` int(18) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `URL` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_search_content_site`
--

INSERT INTO `b_search_content_site` (`SEARCH_CONTENT_ID`, `SITE_ID`, `URL`) VALUES
(1, 's1', ''),
(2, 's1', ''),
(3, 's1', ''),
(4, 's1', ''),
(5, 's1', ''),
(6, 's1', ''),
(7, 's1', ''),
(8, 's1', ''),
(9, 's1', ''),
(10, 's1', ''),
(11, 's1', ''),
(12, 's1', ''),
(13, 's1', '');

-- --------------------------------------------------------

--
-- Структура таблицы `b_search_content_stem`
--

CREATE TABLE `b_search_content_stem` (
  `SEARCH_CONTENT_ID` int(11) NOT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `STEM` int(11) NOT NULL,
  `TF` float NOT NULL,
  `PS` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci DELAY_KEY_WRITE=1;

--
-- Дамп данных таблицы `b_search_content_stem`
--

INSERT INTO `b_search_content_stem` (`SEARCH_CONTENT_ID`, `LANGUAGE_ID`, `STEM`, `TF`, `PS`) VALUES
(1, 'ru', 1, 0.1205, 1),
(1, 'ru', 2, 0.3383, 125.833),
(1, 'ru', 3, 0.4708, 205.214),
(1, 'ru', 4, 0.4708, 206.214),
(1, 'ru', 5, 0.4708, 207.214),
(1, 'ru', 6, 0.4708, 208.214),
(1, 'ru', 7, 0.4708, 206.357),
(1, 'ru', 8, 0.4708, 209.357),
(1, 'ru', 9, 0.4708, 210.357),
(1, 'ru', 10, 0.4708, 211.357),
(1, 'ru', 11, 0.4708, 212.357),
(1, 'ru', 12, 0.4708, 213.357),
(1, 'ru', 13, 0.4708, 214.357),
(1, 'ru', 14, 0.4708, 215.357),
(1, 'ru', 15, 0.4708, 216.357),
(1, 'ru', 16, 0.4708, 217.357),
(1, 'ru', 17, 0.4708, 218.357),
(1, 'ru', 18, 0.2798, 122.75),
(1, 'ru', 19, 0.2798, 123.75),
(1, 'ru', 20, 0.2798, 124.75),
(1, 'ru', 21, 0.3115, 165),
(1, 'ru', 22, 0.2798, 126.75),
(1, 'ru', 23, 0.2798, 127.75),
(1, 'ru', 24, 0.2798, 128.75),
(1, 'ru', 25, 0.2798, 129.75),
(1, 'ru', 26, 0.241, 78),
(1, 'ru', 27, 0.241, 79),
(1, 'ru', 28, 0.241, 80),
(1, 'ru', 29, 0.241, 81),
(1, 'ru', 30, 0.241, 82),
(1, 'ru', 31, 0.241, 83),
(1, 'ru', 32, 0.241, 84),
(1, 'ru', 33, 0.1205, 135),
(1, 'ru', 34, 0.191, 203),
(1, 'ru', 35, 0.2798, 184),
(1, 'ru', 36, 0.1205, 175),
(1, 'ru', 37, 0.1205, 289),
(1, 'ru', 38, 0.1205, 293),
(1, 'ru', 39, 0.1205, 294),
(1, 'ru', 40, 0.1205, 295),
(1, 'ru', 41, 0.1205, 309),
(1, 'ru', 42, 0.1205, 310),
(1, 'ru', 43, 0.1205, 311),
(1, 'ru', 44, 0.1205, 312),
(1, 'ru', 45, 0.1205, 313),
(1, 'ru', 46, 0.1205, 314),
(1, 'ru', 47, 0.1205, 315),
(1, 'ru', 48, 0.1205, 316),
(1, 'ru', 49, 0.1205, 317),
(1, 'ru', 50, 0.1205, 318),
(1, 'ru', 51, 0.1205, 319),
(1, 'ru', 52, 0.1205, 320),
(1, 'ru', 53, 0.1205, 321),
(1, 'ru', 54, 0.1205, 323),
(1, 'ru', 55, 0.1205, 324),
(1, 'ru', 56, 0.1205, 330),
(1, 'ru', 57, 0.1205, 331),
(1, 'ru', 58, 0.1205, 332),
(1, 'ru', 59, 0.1205, 333),
(1, 'ru', 60, 0.1205, 334),
(1, 'ru', 61, 0.1205, 389),
(1, 'ru', 62, 0.1205, 390),
(1, 'ru', 63, 0.1205, 391),
(1, 'ru', 64, 0.1205, 392),
(1, 'ru', 65, 0.1205, 393),
(1, 'ru', 66, 0.1205, 394),
(1, 'ru', 67, 0.1205, 395),
(1, 'ru', 68, 0.1205, 396),
(1, 'ru', 69, 0.1205, 397),
(1, 'ru', 70, 0.1205, 398),
(1, 'ru', 71, 0.1205, 399),
(1, 'ru', 72, 0.1205, 400),
(2, 'ru', 73, 0.2314, 1),
(2, 'ru', 74, 0.2314, 2),
(2, 'ru', 75, 0.2314, 3),
(2, 'ru', 76, 0.2314, 4),
(3, 'ru', 74, 0.2314, 2),
(3, 'ru', 77, 0.3667, 2),
(4, 'ru', 74, 0.2314, 2),
(4, 'ru', 78, 0.3667, 2),
(5, 'ru', 61, 0.2314, 1),
(5, 'ru', 74, 0.2314, 2),
(5, 'ru', 79, 0.2314, 3),
(6, 'ru', 2, 0.2314, 1),
(7, 'ru', 34, 0.2314, 1),
(8, 'ru', 80, 0.2314, 1),
(9, 'ru', 35, 0.2314, 1),
(10, 'ru', 81, 0.2314, 1),
(11, 'ru', 2, 0.1162, 14),
(11, 'ru', 3, 0.1841, 43),
(11, 'ru', 4, 0.1841, 44),
(11, 'ru', 5, 0.1841, 45),
(11, 'ru', 6, 0.1162, 74),
(11, 'ru', 7, 0.2324, 25.6667),
(11, 'ru', 8, 0.2324, 28.6667),
(11, 'ru', 9, 0.2324, 29.6667),
(11, 'ru', 10, 0.2324, 30.6667),
(11, 'ru', 11, 0.2324, 31.6667),
(11, 'ru', 12, 0.2324, 32.6667),
(11, 'ru', 13, 0.2324, 33.6667),
(11, 'ru', 14, 0.2324, 34.6667),
(11, 'ru', 15, 0.2324, 35.6667),
(11, 'ru', 16, 0.2324, 36.6667),
(11, 'ru', 17, 0.2324, 37.6667),
(11, 'ru', 18, 0.2324, 188),
(11, 'ru', 19, 0.2698, 175.5),
(11, 'ru', 20, 0.2698, 253),
(11, 'ru', 21, 0.3003, 209.2),
(11, 'ru', 22, 0.2698, 230.75),
(11, 'ru', 23, 0.3003, 300.6),
(11, 'ru', 24, 0.2324, 194),
(11, 'ru', 25, 0.2324, 195),
(11, 'ru', 26, 0.2324, 231.333),
(11, 'ru', 27, 0.3003, 228.6),
(11, 'ru', 28, 0.3262, 196.5),
(11, 'ru', 29, 0.1841, 155.5),
(11, 'ru', 30, 0.2698, 239.5),
(11, 'ru', 31, 0.3003, 318),
(11, 'ru', 32, 0.1162, 51),
(11, 'ru', 34, 0.1841, 296),
(11, 'ru', 35, 0.1162, 523),
(11, 'ru', 41, 0.1162, 208),
(11, 'ru', 42, 0.1841, 395),
(11, 'ru', 43, 0.1162, 121),
(11, 'ru', 44, 0.1841, 146.5),
(11, 'ru', 47, 0.2698, 244),
(11, 'ru', 49, 0.1162, 277),
(11, 'ru', 50, 0.1841, 397.5),
(11, 'ru', 51, 0.2324, 241.667),
(11, 'ru', 52, 0.1162, 162),
(11, 'ru', 53, 0.2698, 379.25),
(11, 'ru', 54, 0.2324, 361),
(11, 'ru', 55, 0.1162, 280),
(11, 'ru', 61, 0.1162, 521),
(11, 'ru', 82, 0.1162, 89),
(11, 'ru', 83, 0.1841, 102.5),
(11, 'ru', 84, 0.3003, 255.4),
(11, 'ru', 85, 0.1841, 180),
(11, 'ru', 86, 0.1162, 94),
(11, 'ru', 87, 0.1162, 95),
(11, 'ru', 88, 0.1841, 172),
(11, 'ru', 89, 0.3003, 238.8),
(11, 'ru', 90, 0.1162, 98),
(11, 'ru', 91, 0.1841, 254.5),
(11, 'ru', 92, 0.1841, 269),
(11, 'ru', 93, 0.2698, 198),
(11, 'ru', 94, 0.1841, 302.5),
(11, 'ru', 95, 0.2324, 231.333),
(11, 'ru', 96, 0.2698, 256.75),
(11, 'ru', 97, 0.1162, 106),
(11, 'ru', 98, 0.1162, 107),
(11, 'ru', 99, 0.2698, 301),
(11, 'ru', 100, 0.3262, 232.167),
(11, 'ru', 101, 0.1162, 117),
(11, 'ru', 102, 0.1841, 270.5),
(11, 'ru', 103, 0.2324, 214.667),
(11, 'ru', 104, 0.3003, 253.6),
(11, 'ru', 105, 0.2324, 264.667),
(11, 'ru', 106, 0.2698, 249.75),
(11, 'ru', 107, 0.1841, 151.5),
(11, 'ru', 108, 0.1162, 133),
(11, 'ru', 109, 0.1841, 193),
(11, 'ru', 110, 0.2324, 374.333),
(11, 'ru', 111, 0.2698, 278.75),
(11, 'ru', 112, 0.2698, 271.75),
(11, 'ru', 113, 0.1162, 148),
(11, 'ru', 114, 0.2698, 308.25),
(11, 'ru', 115, 0.2324, 340.333),
(11, 'ru', 116, 0.2324, 252),
(11, 'ru', 117, 0.1162, 159),
(11, 'ru', 118, 0.1841, 322),
(11, 'ru', 119, 0.2324, 281.667),
(11, 'ru', 120, 0.1162, 163),
(11, 'ru', 121, 0.1162, 164),
(11, 'ru', 122, 0.2324, 337),
(11, 'ru', 123, 0.2324, 252),
(11, 'ru', 124, 0.1162, 168),
(11, 'ru', 125, 0.2698, 326.5),
(11, 'ru', 126, 0.2324, 242.333),
(11, 'ru', 127, 0.2324, 271.333),
(11, 'ru', 128, 0.1841, 250.5),
(11, 'ru', 129, 0.1841, 323.5),
(11, 'ru', 130, 0.1162, 178),
(11, 'ru', 131, 0.1841, 193),
(11, 'ru', 132, 0.2698, 320),
(11, 'ru', 133, 0.1841, 201),
(11, 'ru', 134, 0.2324, 325.333),
(11, 'ru', 135, 0.1841, 301),
(11, 'ru', 136, 0.1841, 336),
(11, 'ru', 137, 0.1841, 225),
(11, 'ru', 138, 0.1841, 360.5),
(11, 'ru', 139, 0.1841, 282),
(11, 'ru', 140, 0.1841, 283),
(11, 'ru', 141, 0.2698, 371.5),
(11, 'ru', 142, 0.1841, 332),
(11, 'ru', 143, 0.1841, 279),
(11, 'ru', 144, 0.1162, 221),
(11, 'ru', 145, 0.2324, 311.333),
(11, 'ru', 146, 0.1162, 223),
(11, 'ru', 147, 0.2324, 365.333),
(11, 'ru', 148, 0.1162, 225),
(11, 'ru', 149, 0.1841, 302),
(11, 'ru', 150, 0.1841, 327),
(11, 'ru', 151, 0.1841, 306),
(11, 'ru', 152, 0.1841, 314.5),
(11, 'ru', 153, 0.1841, 274.5),
(11, 'ru', 154, 0.1841, 360),
(11, 'ru', 155, 0.1162, 250),
(11, 'ru', 156, 0.1162, 257),
(11, 'ru', 157, 0.1162, 258),
(11, 'ru', 158, 0.1841, 279),
(11, 'ru', 159, 0.1841, 371.5),
(11, 'ru', 160, 0.1841, 321.5),
(11, 'ru', 161, 0.2324, 365.333),
(11, 'ru', 162, 0.1162, 278),
(11, 'ru', 163, 0.1841, 384.5),
(11, 'ru', 164, 0.1162, 283),
(11, 'ru', 165, 0.1162, 285),
(11, 'ru', 166, 0.1841, 307.5),
(11, 'ru', 167, 0.1841, 395),
(11, 'ru', 168, 0.1162, 290),
(11, 'ru', 169, 0.1841, 382.5),
(11, 'ru', 170, 0.2324, 343),
(11, 'ru', 171, 0.1162, 301),
(11, 'ru', 172, 0.1162, 302),
(11, 'ru', 173, 0.1841, 373.5),
(11, 'ru', 174, 0.1162, 305),
(11, 'ru', 175, 0.2698, 353.5),
(11, 'ru', 176, 0.1841, 352),
(11, 'ru', 177, 0.1841, 394.5),
(11, 'ru', 178, 0.1162, 310),
(11, 'ru', 179, 0.2324, 346),
(11, 'ru', 180, 0.1841, 343.5),
(11, 'ru', 181, 0.2324, 375),
(11, 'ru', 182, 0.1841, 341),
(11, 'ru', 183, 0.1162, 334),
(11, 'ru', 184, 0.1841, 413.5),
(11, 'ru', 185, 0.3003, 384.6),
(11, 'ru', 186, 0.1162, 348),
(11, 'ru', 187, 0.1841, 432.5),
(11, 'ru', 188, 0.1841, 429.5),
(11, 'ru', 189, 0.1162, 359),
(11, 'ru', 190, 0.1162, 361),
(11, 'ru', 191, 0.1162, 383),
(11, 'ru', 192, 0.1841, 399),
(11, 'ru', 193, 0.1162, 387),
(11, 'ru', 194, 0.1162, 389),
(11, 'ru', 195, 0.1162, 411),
(11, 'ru', 196, 0.1162, 424),
(11, 'ru', 197, 0.1162, 429),
(11, 'ru', 198, 0.1162, 435),
(11, 'ru', 199, 0.1162, 439),
(11, 'ru', 200, 0.1841, 474),
(11, 'ru', 201, 0.1841, 464.5),
(11, 'ru', 202, 0.1162, 471),
(11, 'ru', 203, 0.1162, 479),
(11, 'ru', 204, 0.1162, 482),
(11, 'ru', 205, 0.1162, 500),
(11, 'ru', 206, 0.1162, 501),
(11, 'ru', 207, 0.1162, 506),
(11, 'ru', 208, 0.1162, 514),
(12, 'ru', 2, 0.1162, 15),
(12, 'ru', 3, 0.1842, 44),
(12, 'ru', 4, 0.1842, 45),
(12, 'ru', 5, 0.1842, 46),
(12, 'ru', 7, 0.2325, 26.3333),
(12, 'ru', 8, 0.2325, 29.3333),
(12, 'ru', 9, 0.2325, 30.3333),
(12, 'ru', 10, 0.2325, 31.3333),
(12, 'ru', 11, 0.2325, 32.3333),
(12, 'ru', 12, 0.2325, 33.3333),
(12, 'ru', 13, 0.2325, 34.3333),
(12, 'ru', 14, 0.2325, 35.3333),
(12, 'ru', 15, 0.2325, 36.3333),
(12, 'ru', 16, 0.2325, 37.3333),
(12, 'ru', 17, 0.2325, 38.3333),
(12, 'ru', 18, 0.2325, 188.333),
(12, 'ru', 19, 0.2699, 175.75),
(12, 'ru', 20, 0.2699, 253.25),
(12, 'ru', 21, 0.3005, 209.4),
(12, 'ru', 22, 0.2699, 231),
(12, 'ru', 23, 0.3005, 300.8),
(12, 'ru', 24, 0.2325, 194.333),
(12, 'ru', 25, 0.2325, 195.333),
(12, 'ru', 26, 0.2325, 231.667),
(12, 'ru', 27, 0.3005, 228.8),
(12, 'ru', 28, 0.3263, 196.667),
(12, 'ru', 29, 0.1842, 156),
(12, 'ru', 30, 0.2699, 239.75),
(12, 'ru', 31, 0.3005, 318.2),
(12, 'ru', 32, 0.1162, 52),
(12, 'ru', 34, 0.1842, 296.5),
(12, 'ru', 35, 0.1162, 523),
(12, 'ru', 41, 0.1162, 208),
(12, 'ru', 42, 0.1842, 395),
(12, 'ru', 43, 0.1162, 121),
(12, 'ru', 44, 0.1842, 146.5),
(12, 'ru', 47, 0.2699, 244),
(12, 'ru', 49, 0.1162, 277),
(12, 'ru', 50, 0.1842, 397.5),
(12, 'ru', 51, 0.2325, 241.667),
(12, 'ru', 52, 0.1162, 162),
(12, 'ru', 53, 0.2699, 379.25),
(12, 'ru', 54, 0.2325, 361),
(12, 'ru', 55, 0.1162, 280),
(12, 'ru', 61, 0.1162, 521),
(12, 'ru', 82, 0.1162, 89),
(12, 'ru', 83, 0.1842, 102.5),
(12, 'ru', 84, 0.3005, 255.4),
(12, 'ru', 85, 0.1842, 180),
(12, 'ru', 86, 0.1162, 94),
(12, 'ru', 87, 0.1162, 95),
(12, 'ru', 88, 0.1842, 172),
(12, 'ru', 89, 0.3005, 238.8),
(12, 'ru', 90, 0.1162, 98),
(12, 'ru', 91, 0.1842, 254.5),
(12, 'ru', 92, 0.1842, 269),
(12, 'ru', 93, 0.2699, 198),
(12, 'ru', 94, 0.1842, 302.5),
(12, 'ru', 95, 0.2325, 231.333),
(12, 'ru', 96, 0.2699, 256.75),
(12, 'ru', 97, 0.1162, 106),
(12, 'ru', 98, 0.1162, 107),
(12, 'ru', 99, 0.2699, 301),
(12, 'ru', 100, 0.3263, 232.167),
(12, 'ru', 101, 0.1162, 117),
(12, 'ru', 102, 0.1842, 270.5),
(12, 'ru', 103, 0.2325, 214.667),
(12, 'ru', 104, 0.3005, 253.6),
(12, 'ru', 105, 0.2325, 264.667),
(12, 'ru', 106, 0.2699, 249.75),
(12, 'ru', 107, 0.1842, 151.5),
(12, 'ru', 108, 0.1162, 133),
(12, 'ru', 109, 0.1842, 193),
(12, 'ru', 110, 0.2325, 374.333),
(12, 'ru', 111, 0.2699, 278.75),
(12, 'ru', 112, 0.2699, 271.75),
(12, 'ru', 113, 0.1162, 148),
(12, 'ru', 114, 0.2699, 308.25),
(12, 'ru', 115, 0.2325, 340.333),
(12, 'ru', 116, 0.2325, 252),
(12, 'ru', 117, 0.1162, 159),
(12, 'ru', 118, 0.1842, 322),
(12, 'ru', 119, 0.2325, 281.667),
(12, 'ru', 120, 0.1162, 163),
(12, 'ru', 121, 0.1162, 164),
(12, 'ru', 122, 0.2325, 337),
(12, 'ru', 123, 0.2325, 252),
(12, 'ru', 124, 0.1162, 168),
(12, 'ru', 125, 0.2699, 326.5),
(12, 'ru', 126, 0.2325, 242.333),
(12, 'ru', 127, 0.2325, 271.333),
(12, 'ru', 128, 0.1842, 250.5),
(12, 'ru', 129, 0.1842, 323.5),
(12, 'ru', 130, 0.1162, 178),
(12, 'ru', 131, 0.1842, 193),
(12, 'ru', 132, 0.2699, 320),
(12, 'ru', 133, 0.1842, 201),
(12, 'ru', 134, 0.2325, 325.333),
(12, 'ru', 135, 0.1842, 301),
(12, 'ru', 136, 0.1842, 336),
(12, 'ru', 137, 0.1842, 225),
(12, 'ru', 138, 0.1842, 360.5),
(12, 'ru', 139, 0.1842, 282),
(12, 'ru', 140, 0.1842, 283),
(12, 'ru', 141, 0.2699, 371.5),
(12, 'ru', 142, 0.1842, 332),
(12, 'ru', 143, 0.1842, 279),
(12, 'ru', 144, 0.1162, 221),
(12, 'ru', 145, 0.2325, 311.333),
(12, 'ru', 146, 0.1162, 223),
(12, 'ru', 147, 0.2325, 365.333),
(12, 'ru', 148, 0.1162, 225),
(12, 'ru', 149, 0.1842, 302),
(12, 'ru', 150, 0.1842, 327),
(12, 'ru', 151, 0.1842, 306),
(12, 'ru', 152, 0.1842, 314.5),
(12, 'ru', 153, 0.1842, 274.5),
(12, 'ru', 154, 0.1842, 360),
(12, 'ru', 155, 0.1162, 250),
(12, 'ru', 156, 0.1162, 257),
(12, 'ru', 157, 0.1162, 258),
(12, 'ru', 158, 0.1842, 279),
(12, 'ru', 159, 0.1842, 371.5),
(12, 'ru', 160, 0.1842, 321.5),
(12, 'ru', 161, 0.2325, 365.333),
(12, 'ru', 162, 0.1162, 278),
(12, 'ru', 163, 0.1842, 384.5),
(12, 'ru', 164, 0.1162, 283),
(12, 'ru', 165, 0.1162, 285),
(12, 'ru', 166, 0.1842, 307.5),
(12, 'ru', 167, 0.1842, 395),
(12, 'ru', 168, 0.1162, 290),
(12, 'ru', 169, 0.1842, 382.5),
(12, 'ru', 170, 0.2325, 343),
(12, 'ru', 171, 0.1162, 301),
(12, 'ru', 172, 0.1162, 302),
(12, 'ru', 173, 0.1842, 373.5),
(12, 'ru', 174, 0.1162, 305),
(12, 'ru', 175, 0.2699, 353.5),
(12, 'ru', 176, 0.1842, 352),
(12, 'ru', 177, 0.1842, 394.5),
(12, 'ru', 178, 0.1162, 310),
(12, 'ru', 179, 0.2325, 346),
(12, 'ru', 180, 0.1842, 343.5),
(12, 'ru', 181, 0.2325, 375),
(12, 'ru', 182, 0.1842, 341),
(12, 'ru', 183, 0.1162, 334),
(12, 'ru', 184, 0.1842, 413.5),
(12, 'ru', 185, 0.3005, 384.6),
(12, 'ru', 186, 0.1162, 348),
(12, 'ru', 187, 0.1842, 432.5),
(12, 'ru', 188, 0.1842, 429.5),
(12, 'ru', 189, 0.1162, 359),
(12, 'ru', 190, 0.1162, 361),
(12, 'ru', 191, 0.1162, 383),
(12, 'ru', 192, 0.1842, 399),
(12, 'ru', 193, 0.1162, 387),
(12, 'ru', 194, 0.1162, 389),
(12, 'ru', 195, 0.1162, 411),
(12, 'ru', 196, 0.1162, 424),
(12, 'ru', 197, 0.1162, 429),
(12, 'ru', 198, 0.1162, 435),
(12, 'ru', 199, 0.1162, 439),
(12, 'ru', 200, 0.1842, 474),
(12, 'ru', 201, 0.1842, 464.5),
(12, 'ru', 202, 0.1162, 471),
(12, 'ru', 203, 0.1162, 479),
(12, 'ru', 204, 0.1162, 482),
(12, 'ru', 205, 0.1162, 500),
(12, 'ru', 206, 0.1162, 501),
(12, 'ru', 207, 0.1162, 506),
(12, 'ru', 208, 0.1162, 514),
(13, 'ru', 74, 0.2314, 2),
(13, 'ru', 209, 0.2314, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `b_search_content_text`
--

CREATE TABLE `b_search_content_text` (
  `SEARCH_CONTENT_ID` int(11) NOT NULL,
  `SEARCH_CONTENT_MD5` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `SEARCHABLE_CONTENT` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_search_content_text`
--

INSERT INTO `b_search_content_text` (`SEARCH_CONTENT_ID`, `SEARCH_CONTENT_MD5`, `SEARCHABLE_CONTENT`) VALUES
(1, '53cff1bc113abe741f008898d9d10d93', 'BALITA\r\nLIFESTYLE\rMARCH 15, 2018 \r&BULLET;\n3\rTHERE’S A COOL NEW WAY FOR MEN TO WEAR SOCKS AND SANDALS\rLOREM IPSUM DOLOR SIT AMET, CONSECTETUR ADIPISICING ELIT. QUIDEM NOBIS, UT DICTA EAQUE IPSA LAUDANTIUM!\rLIFESTYLE\rMARCH 15, 2018 \r&BULLET;\n3\rTHERE’S A COOL NEW WAY FOR MEN TO WEAR SOCKS AND SANDALS\rLOREM IPSUM DOLOR SIT AMET, CONSECTETUR ADIPISICING ELIT. QUIDEM NOBIS, UT DICTA EAQUE IPSA LAUDANTIUM!\rLIFESTYLE\rMARCH 15, 2018 \r&BULLET;\n3\rTHERE’S A COOL NEW WAY FOR MEN TO WEAR SOCKS AND SANDALS\rLOREM IPSUM DOLOR SIT AMET, CONSECTETUR ADIPISICING ELIT. QUIDEM NOBIS, UT DICTA EAQUE IPSA LAUDANTIUM!\rLIFESTYLE CATEGORY\rFOOD\rMARCH 15, 2018 \r&BULLET;\n3\rTHERE’S A COOL NEW WAY FOR MEN TO WEAR SOCKS AND SANDALS\rTRAVEL\rMARCH 15, 2018 \r&BULLET;\n3\rTHERE’S A COOL NEW WAY FOR MEN TO WEAR SOCKS AND SANDALS\rTRAVEL, ASIA\rMARCH 15, 2018 \r&BULLET;\n3\rTHERE’S A COOL NEW WAY FOR MEN TO WEAR SOCKS AND SANDALS\rTRAVEL\rMARCH 15, 2018 \r&BULLET;\n3\rTHERE’S A COOL NEW WAY FOR MEN TO WEAR SOCKS AND SANDALS\rTRAVEL\rMARCH 15, 2018 \r&BULLET;\n3\rTHERE’S A COOL NEW WAY FOR MEN TO WEAR SOCKS AND SANDALS\rLIFESTYLE\rMARCH 15, 2018 \r&BULLET;\n3\rTHERE’S A COOL NEW WAY FOR MEN TO WEAR SOCKS AND SANDALS\rLIFESTYLE\rMARCH 15, 2018 \r&BULLET;\n3\rTHERE’S A COOL NEW WAY FOR MEN TO WEAR SOCKS AND SANDALS\rFOOD\rMARCH 15, 2018 \r&BULLET;\n3\rTHERE’S A COOL NEW WAY FOR MEN TO WEAR SOCKS AND SANDALS\rPREV\r1\r2\r3\rNEXT\rMEAGAN SMITH\rLOREM IPSUM DOLOR SIT AMET, CONSECTETUR ADIPISICING ELIT. EXERCITATIONEM FACILIS SUNT REPELLENDUS EXCEPTURI BEATAE PORRO DEBITIS VOLUPTATE NULLA QUO VENIAM FUGA SIT MOLESTIAS MINUS.\rREAD MY BIO\rPOPULAR POSTS\rTHERE’S A COOL NEW WAY FOR MEN TO WEAR SOCKS AND SANDALS\rMARCH 15, 2018 \r&BULLET;\n3\rTHERE’S A COOL NEW WAY FOR MEN TO WEAR SOCKS AND SANDALS\rMARCH 15, 2018 \r&BULLET;\n3\rTHERE’S A COOL NEW WAY FOR MEN TO WEAR SOCKS AND SANDALS\rMARCH 15, 2018 \r&BULLET;\n3\rCATEGORIES\rCOURSES \r(12)\rNEWS \r(22)\rDESIGN \r(37)\rHTML \r(42)\rWEB DEVELOPMENT \r(14)\r\n'),
(2, '0ce21f3883a92d1654088cf20cd24eb2', 'НОВАЯ СТРАНИЦА\r\nTEXT HERE....\r\n'),
(3, 'a7d99e2a8d6430997e7f7992554dcd81', 'ABOUT\r\nСТРАНИЦА ABOUT\r\n'),
(4, '94b0101e331c4314898bcdf9d951dee9', 'CONTACT\r\nСТРАНИЦА CONTACT\r\n'),
(5, '699b3a7cc4a2576fdf5e11a1c5439477', 'CATEGORIES\r\nСТРАНИЦА КАТЕГОРИЙ\r\n'),
(6, '77d667dc8358def5576ac0c7b23029d7', 'LIFESTYLE\r\n\r\n'),
(7, 'f13049dda55d3f553ae44ace8eba05d4', 'FOOD\r\n\r\n'),
(8, '2867d3227053f424c11efd0691da7ed7', 'ADVENTURE\r\n\r\n'),
(9, '18340590306cf74800ab0b7727142f19', 'TRAVEL\r\n\r\n'),
(10, '8000073e175dc7b62953f51706273c6a', 'BUSINESS\r\n\r\n'),
(11, '629bcfb5e179c3367728d068ce6f111c', 'THERE’S A COOL NEW WAY FOR MEN TO WEAR SOCKS AND SANDALS\r\nLIFESTYLE\rMARCH 15, 2018 \r• \r3\rTHERE’S A COOL NEW WAY FOR MEN TO WEAR SOCKS AND SANDALS\rLOREM IPSUM DOLOR SIT AMET, CONSECTETUR ADIPISICING ELIT. QUIDEM NOBIS, UT DICTA EAQUE IPSA LAUDANTIUM!\r\r\n\rTHERE’S A COOL NEW WAY FOR MEN TO WEAR SOCKS AND SANDALS\rFOOD\rMARCH 15, 2018 \r&BULLET;\r3\rLOREM IPSUM DOLOR SIT AMET, CONSECTETUR ADIPISICING ELIT. PRAESENTIUM NAM QUAS INVENTORE, UT IURE ISTE MODI EOS ADIPISCI AD EA ITAQUE LABORE EARUM AUTEM NOBIS ET NUMQUAM, MINIMA EIUS. NAM EIUS, NON UNDE UT AUT SUNT EVENIET RERUM REPELLENDUS PORRO.\rSINT AB VOLUPTATES ITAQUE, IPSUM PORRO QUI OBCAECATI CUMQUE QUAS SIT VEL. VOLUPTATUM PROVIDENT ID QUIS QUO. EVENIET MAIORES PERFERENDIS OFFICIA VENIAM EST LABORUM, EXPEDITA FUGA DOLORIBUS NATUS REPELLENDUS DOLOREM AB SIMILIQUE SINT EIUS CUPIDITATE NECESSITATIBUS, MAGNI NESCIUNT EX EOS.\rQUIS EIUS ASPERNATUR, EAQUE CULPA CUMQUE REICIENDIS, NOBIS AT EARUM ASSUMENDA SIMILIQUE UT? APERIAM VEL AUT, EX EXERCITATIONEM EOS CONSEQUUNTUR EAQUE CULPA TOTAM, DESERUNT, ASPERNATUR QUAE EVENIET HIC PROVIDENT ULLAM TEMPORA ERROR REPUDIANDAE SAPIENTE ILLUM RERUM ITAQUE VOLUPTATEM. COMMODI, SEQUI.\rQUIBUSDAM AUTEM, QUAS MOLESTIAS RECUSANDAE APERIAM MOLESTIAE MODI QUI IPSAM VEL. PLACEAT TENETUR VERITATIS TEMPORE QUOS IMPEDIT DICTA, ERROR AUTEM, QUAE SINT INVENTORE IPSA QUIDEM. QUO VOLUPTATE QUISQUAM REICIENDIS, MINUS, ANIMI MINIMA EUM OFFICIA DOLOREMQUE REPELLAT EOS, ODIO DOLORIBUS CUM.\rTEMPORIBUS QUO DOLORE VERITATIS DOLORIBUS DELECTUS DOLORES PERSPICIATIS RECUSANDAE DUCIMUS, NISI QUOD, INCIDUNT UT QUAERAT, MAGNAM CUPIDITATE. AUT, LABORIOSAM MAGNAM, NOBIS DOLORE FUGIAT IMPEDIT NECESSITATIBUS NISI CUPIDITATE, QUAS REPELLAT ITAQUE MOLESTIAS SIT LIBERO VOLUPTAS EVENIET OMNIS ILLO ULLAM DOLOREM MINIMA.\rPORRO AMET ACCUSANTIUM LIBERO FUGIT TOTAM, DESERUNT IPSA, DOLOREM, VERO EXPEDITA ILLO SIMILIQUE SAEPE NISI DELENITI. CUMQUE, LABORIOSAM, PORRO! FACILIS VOLUPTATEM SEQUI NULLA QUIDEM, PROVIDENT EIUS QUOS PARIATUR MAXIME SAPIENTE ILLO NOSTRUM QUIBUSDAM ALIQUID FUGIAT! EARUM QUOD FUGA ID OFFICIA.\rILLO MAGNAM AT DOLORE AD ENIM FUGIAT UT MAXIME FACILIS AUTEM, NULLA CUMQUE QUIS COMMODI EOS NISI UNDE SOLUTA, IPSA EIUS ASPERNATUR SINT ATQUE! NIHIL, EVENIET ILLO EA, MOLLITIA FUGA ACCUSAMUS DOLOR DOLOREM PERSPICIATIS RERUM HIC, CONSECTETUR ERROR REM ASPERNATUR!\rLOREM IPSUM DOLOR SIT AMET, CONSECTETUR ADIPISICING ELIT. TEMPORIBUS MAGNI EXPLICABO ID MOLESTIAE, MINIMA QUAS ASSUMENDA CONSECTETUR, NOBIS NEQUE REM, INCIDUNT QUAM TEMPORE PERFERENDIS PROVIDENT OBCAECATI SAPIENTE, ANIMI VEL EXPEDITA OMNIS QUAE IPSA! OBCAECATI ELIGENDI SED ODIO LABORE VERO REICIENDIS FACERE ACCUSAMUS MOLESTIAS EAQUE IMPEDIT, CONSEQUUNTUR QUAE FUGA VITAE FUGIT?\rCATEGORIES: \rFOOD\r, \rTRAVEL\r\n'),
(12, '1e9679e876bb250ce72aab0b09e85ba4', 'THERE’S A COOL NEW WAY FOR MEN TO WEAR SOCKS AND SANDALS 2\r\nLIFESTYLE\rMARCH 15, 2018 \r• \r3\rTHERE’S A COOL NEW WAY FOR MEN TO WEAR SOCKS AND SANDALS\rLOREM IPSUM DOLOR SIT AMET, CONSECTETUR ADIPISICING ELIT. QUIDEM NOBIS, UT DICTA EAQUE IPSA LAUDANTIUM!\r\r\n\rTHERE’S A COOL NEW WAY FOR MEN TO WEAR SOCKS AND SANDALS\rFOOD\rMARCH 15, 2018 \r• \r3\rLOREM IPSUM DOLOR SIT AMET, CONSECTETUR ADIPISICING ELIT. PRAESENTIUM NAM QUAS INVENTORE, UT IURE ISTE MODI EOS ADIPISCI AD EA ITAQUE LABORE EARUM AUTEM NOBIS ET NUMQUAM, MINIMA EIUS. NAM EIUS, NON UNDE UT AUT SUNT EVENIET RERUM REPELLENDUS PORRO.\rSINT AB VOLUPTATES ITAQUE, IPSUM PORRO QUI OBCAECATI CUMQUE QUAS SIT VEL. VOLUPTATUM PROVIDENT ID QUIS QUO. EVENIET MAIORES PERFERENDIS OFFICIA VENIAM EST LABORUM, EXPEDITA FUGA DOLORIBUS NATUS REPELLENDUS DOLOREM AB SIMILIQUE SINT EIUS CUPIDITATE NECESSITATIBUS, MAGNI NESCIUNT EX EOS.\rQUIS EIUS ASPERNATUR, EAQUE CULPA CUMQUE REICIENDIS, NOBIS AT EARUM ASSUMENDA SIMILIQUE UT? APERIAM VEL AUT, EX EXERCITATIONEM EOS CONSEQUUNTUR EAQUE CULPA TOTAM, DESERUNT, ASPERNATUR QUAE EVENIET HIC PROVIDENT ULLAM TEMPORA ERROR REPUDIANDAE SAPIENTE ILLUM RERUM ITAQUE VOLUPTATEM. COMMODI, SEQUI.\rQUIBUSDAM AUTEM, QUAS MOLESTIAS RECUSANDAE APERIAM MOLESTIAE MODI QUI IPSAM VEL. PLACEAT TENETUR VERITATIS TEMPORE QUOS IMPEDIT DICTA, ERROR AUTEM, QUAE SINT INVENTORE IPSA QUIDEM. QUO VOLUPTATE QUISQUAM REICIENDIS, MINUS, ANIMI MINIMA EUM OFFICIA DOLOREMQUE REPELLAT EOS, ODIO DOLORIBUS CUM.\rTEMPORIBUS QUO DOLORE VERITATIS DOLORIBUS DELECTUS DOLORES PERSPICIATIS RECUSANDAE DUCIMUS, NISI QUOD, INCIDUNT UT QUAERAT, MAGNAM CUPIDITATE. AUT, LABORIOSAM MAGNAM, NOBIS DOLORE FUGIAT IMPEDIT NECESSITATIBUS NISI CUPIDITATE, QUAS REPELLAT ITAQUE MOLESTIAS SIT LIBERO VOLUPTAS EVENIET OMNIS ILLO ULLAM DOLOREM MINIMA.\rPORRO AMET ACCUSANTIUM LIBERO FUGIT TOTAM, DESERUNT IPSA, DOLOREM, VERO EXPEDITA ILLO SIMILIQUE SAEPE NISI DELENITI. CUMQUE, LABORIOSAM, PORRO! FACILIS VOLUPTATEM SEQUI NULLA QUIDEM, PROVIDENT EIUS QUOS PARIATUR MAXIME SAPIENTE ILLO NOSTRUM QUIBUSDAM ALIQUID FUGIAT! EARUM QUOD FUGA ID OFFICIA.\rILLO MAGNAM AT DOLORE AD ENIM FUGIAT UT MAXIME FACILIS AUTEM, NULLA CUMQUE QUIS COMMODI EOS NISI UNDE SOLUTA, IPSA EIUS ASPERNATUR SINT ATQUE! NIHIL, EVENIET ILLO EA, MOLLITIA FUGA ACCUSAMUS DOLOR DOLOREM PERSPICIATIS RERUM HIC, CONSECTETUR ERROR REM ASPERNATUR!\rLOREM IPSUM DOLOR SIT AMET, CONSECTETUR ADIPISICING ELIT. TEMPORIBUS MAGNI EXPLICABO ID MOLESTIAE, MINIMA QUAS ASSUMENDA CONSECTETUR, NOBIS NEQUE REM, INCIDUNT QUAM TEMPORE PERFERENDIS PROVIDENT OBCAECATI SAPIENTE, ANIMI VEL EXPEDITA OMNIS QUAE IPSA! OBCAECATI ELIGENDI SED ODIO LABORE VERO REICIENDIS FACERE ACCUSAMUS MOLESTIAS EAQUE IMPEDIT, CONSEQUUNTUR QUAE FUGA VITAE FUGIT?\rCATEGORIES: \rFOOD\r, \rTRAVEL\r\n'),
(13, '008239e946b4e205cf273d940a93213b', 'BLOG-SINGLE\r\nСТРАНИЦА\r\n');

-- --------------------------------------------------------

--
-- Структура таблицы `b_search_content_title`
--

CREATE TABLE `b_search_content_title` (
  `SEARCH_CONTENT_ID` int(11) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `POS` int(11) NOT NULL,
  `WORD` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci DELAY_KEY_WRITE=1;

--
-- Дамп данных таблицы `b_search_content_title`
--

INSERT INTO `b_search_content_title` (`SEARCH_CONTENT_ID`, `SITE_ID`, `POS`, `WORD`) VALUES
(1, 's1', 0, 'BALITA'),
(2, 's1', 0, 'НОВАЯ'),
(2, 's1', 6, 'СТРАНИЦА'),
(3, 's1', 0, 'ABOUT'),
(4, 's1', 0, 'CONTACT'),
(5, 's1', 0, 'CATEGORIES'),
(6, 's1', 0, 'LIFESTYLE'),
(7, 's1', 0, 'FOOD'),
(8, 's1', 0, 'ADVENTURE'),
(9, 's1', 0, 'TRAVEL'),
(10, 's1', 0, 'BUSINESS'),
(11, 's1', 8, 'A'),
(11, 's1', 45, 'AND'),
(11, 's1', 10, 'COOL'),
(11, 's1', 23, 'FOR'),
(11, 's1', 27, 'MEN'),
(11, 's1', 15, 'NEW'),
(11, 's1', 6, 'S'),
(11, 's1', 49, 'SANDALS'),
(11, 's1', 39, 'SOCKS'),
(11, 's1', 0, 'THERE'),
(11, 's1', 31, 'TO'),
(11, 's1', 19, 'WAY'),
(11, 's1', 34, 'WEAR'),
(12, 's1', 57, '2'),
(12, 's1', 8, 'A'),
(12, 's1', 45, 'AND'),
(12, 's1', 10, 'COOL'),
(12, 's1', 23, 'FOR'),
(12, 's1', 27, 'MEN'),
(12, 's1', 15, 'NEW'),
(12, 's1', 6, 'S'),
(12, 's1', 49, 'SANDALS'),
(12, 's1', 39, 'SOCKS'),
(12, 's1', 0, 'THERE'),
(12, 's1', 31, 'TO'),
(12, 's1', 19, 'WAY'),
(12, 's1', 34, 'WEAR'),
(13, 's1', 0, 'BLOG-SINGLE');

-- --------------------------------------------------------

--
-- Структура таблицы `b_search_custom_rank`
--

CREATE TABLE `b_search_custom_rank` (
  `ID` int(11) NOT NULL,
  `APPLIED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `RANK` int(11) NOT NULL DEFAULT '0',
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `MODULE_ID` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `PARAM1` text COLLATE utf8_unicode_ci,
  `PARAM2` text COLLATE utf8_unicode_ci,
  `ITEM_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_search_phrase`
--

CREATE TABLE `b_search_phrase` (
  `ID` int(18) NOT NULL,
  `TIMESTAMP_X` datetime NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `RESULT_COUNT` int(11) NOT NULL,
  `PAGES` int(11) NOT NULL,
  `SESSION_ID` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `PHRASE` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TAGS` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `URL_TO` text COLLATE utf8_unicode_ci,
  `URL_TO_404` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `URL_TO_SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `STAT_SESS_ID` int(18) DEFAULT NULL,
  `EVENT1` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_search_stem`
--

CREATE TABLE `b_search_stem` (
  `ID` int(11) NOT NULL,
  `STEM` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_search_stem`
--

INSERT INTO `b_search_stem` (`ID`, `STEM`) VALUES
(63, '12'),
(72, '14'),
(4, '15'),
(5, '2018'),
(65, '22'),
(67, '37'),
(69, '42'),
(107, 'AB'),
(77, 'ABOUT'),
(200, 'ACCUSAMUS'),
(186, 'ACCUSANTIUM'),
(91, 'AD'),
(90, 'ADIPISCI'),
(24, 'ADIPISICING'),
(80, 'ADVENTURE'),
(194, 'ALIQUID'),
(22, 'AMET'),
(16, 'AND'),
(163, 'ANIMI'),
(137, 'APERIAM'),
(36, 'ASIA'),
(132, 'ASPERNATUR'),
(136, 'ASSUMENDA'),
(135, 'AT'),
(197, 'ATQUE'),
(103, 'AUT'),
(96, 'AUTEM'),
(1, 'BALITA'),
(46, 'BEATAE'),
(58, 'BIO'),
(209, 'BLOG-SINGLE'),
(6, 'BULLET'),
(81, 'BUSINESS'),
(61, 'CATEGORIES'),
(33, 'CATEGORY'),
(150, 'COMMODI'),
(23, 'CONSECTETUR'),
(138, 'CONSEQUUNTUR'),
(78, 'CONTACT'),
(8, 'COOL'),
(62, 'COURSES'),
(133, 'CULPA'),
(168, 'CUM'),
(111, 'CUMQUE'),
(127, 'CUPIDITATE'),
(48, 'DEBITIS'),
(171, 'DELECTUS'),
(190, 'DELENITI'),
(140, 'DESERUNT'),
(66, 'DESIGN'),
(71, 'DEVELOPMENT'),
(29, 'DICTA'),
(20, 'DOLOR'),
(170, 'DOLORE'),
(125, 'DOLOREM'),
(165, 'DOLOREMQUE'),
(172, 'DOLORES'),
(123, 'DOLORIBUS'),
(174, 'DUCIMUS'),
(92, 'EA'),
(30, 'EAQUE'),
(95, 'EARUM'),
(100, 'EIUS'),
(205, 'ELIGENDI'),
(25, 'ELIT'),
(195, 'ENIM'),
(89, 'EOS'),
(145, 'ERROR'),
(120, 'EST'),
(97, 'ET'),
(164, 'EUM'),
(104, 'EVENIET'),
(131, 'EX'),
(45, 'EXCEPTURI'),
(41, 'EXERCITATIONEM'),
(122, 'EXPEDITA'),
(202, 'EXPLICABO'),
(207, 'FACERE'),
(42, 'FACILIS'),
(34, 'FOOD'),
(11, 'FOR'),
(53, 'FUGA'),
(181, 'FUGIAT'),
(187, 'FUGIT'),
(76, 'HERE'),
(142, 'HIC'),
(68, 'HTML'),
(115, 'ID'),
(185, 'ILLO'),
(148, 'ILLUM'),
(161, 'IMPEDIT'),
(177, 'INCIDUNT'),
(85, 'INVENTORE'),
(31, 'IPSA'),
(155, 'IPSAM'),
(19, 'IPSUM'),
(87, 'ISTE'),
(93, 'ITAQUE'),
(86, 'IURE'),
(94, 'LABORE'),
(180, 'LABORIOSAM'),
(121, 'LABORUM'),
(32, 'LAUDANTIUM'),
(182, 'LIBERO'),
(2, 'LIFESTYLE'),
(18, 'LOREM'),
(179, 'MAGNAM'),
(129, 'MAGNI'),
(117, 'MAIORES'),
(3, 'MARCH'),
(192, 'MAXIME'),
(39, 'MEAGAN'),
(12, 'MEN'),
(99, 'MINIMA'),
(55, 'MINUS'),
(88, 'MODI'),
(154, 'MOLESTIAE'),
(54, 'MOLESTIAS'),
(199, 'MOLLITIA'),
(57, 'MY'),
(83, 'NAM'),
(124, 'NATUS'),
(128, 'NECESSITATIBUS'),
(203, 'NEQUE'),
(130, 'NESCIUNT'),
(9, 'NEW'),
(64, 'NEWS'),
(38, 'NEXT'),
(198, 'NIHIL'),
(175, 'NISI'),
(27, 'NOBIS'),
(101, 'NON'),
(193, 'NOSTRUM'),
(50, 'NULLA'),
(98, 'NUMQUAM'),
(110, 'OBCAECATI'),
(167, 'ODIO'),
(119, 'OFFICIA'),
(184, 'OMNIS'),
(191, 'PARIATUR'),
(118, 'PERFERENDIS'),
(173, 'PERSPICIATIS'),
(156, 'PLACEAT'),
(59, 'POPULAR'),
(47, 'PORRO'),
(60, 'POSTS'),
(82, 'PRAESENTIUM'),
(37, 'PREV'),
(114, 'PROVIDENT'),
(141, 'QUAE'),
(178, 'QUAERAT'),
(204, 'QUAM'),
(84, 'QUAS'),
(109, 'QUI'),
(152, 'QUIBUSDAM'),
(26, 'QUIDEM'),
(116, 'QUIS'),
(162, 'QUISQUAM'),
(51, 'QUO'),
(176, 'QUOD'),
(160, 'QUOS'),
(56, 'READ'),
(153, 'RECUSANDAE'),
(134, 'REICIENDIS'),
(201, 'REM'),
(166, 'REPELLAT'),
(44, 'REPELLENDUS'),
(146, 'REPUDIANDAE'),
(105, 'RERUM'),
(189, 'SAEPE'),
(17, 'SANDALS'),
(147, 'SAPIENTE'),
(206, 'SED'),
(151, 'SEQUI'),
(126, 'SIMILIQUE'),
(106, 'SINT'),
(21, 'SIT'),
(40, 'SMITH'),
(15, 'SOCKS'),
(196, 'SOLUTA'),
(43, 'SUNT'),
(144, 'TEMPORA'),
(159, 'TEMPORE'),
(169, 'TEMPORIBUS'),
(157, 'TENETUR'),
(75, 'TEXT'),
(7, 'THERE'),
(13, 'TO'),
(139, 'TOTAM'),
(35, 'TRAVEL'),
(143, 'ULLAM'),
(102, 'UNDE'),
(28, 'UT'),
(112, 'VEL'),
(52, 'VENIAM'),
(158, 'VERITATIS'),
(188, 'VERO'),
(208, 'VITAE'),
(183, 'VOLUPTAS'),
(49, 'VOLUPTATE'),
(149, 'VOLUPTATEM'),
(108, 'VOLUPTATES'),
(113, 'VOLUPTATUM'),
(10, 'WAY'),
(14, 'WEAR'),
(70, 'WEB'),
(79, 'КАТЕГОР'),
(73, 'НОВ'),
(74, 'СТРАНИЦ');

-- --------------------------------------------------------

--
-- Структура таблицы `b_search_suggest`
--

CREATE TABLE `b_search_suggest` (
  `ID` int(11) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `FILTER_MD5` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `PHRASE` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `RATE` float NOT NULL,
  `TIMESTAMP_X` datetime NOT NULL,
  `RESULT_COUNT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_search_tags`
--

CREATE TABLE `b_search_tags` (
  `SEARCH_CONTENT_ID` int(11) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci DELAY_KEY_WRITE=1;

-- --------------------------------------------------------

--
-- Структура таблицы `b_search_user_right`
--

CREATE TABLE `b_search_user_right` (
  `USER_ID` int(11) NOT NULL,
  `GROUP_CODE` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_seo_adv_autolog`
--

CREATE TABLE `b_seo_adv_autolog` (
  `ID` int(11) NOT NULL,
  `ENGINE_ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL,
  `CAMPAIGN_ID` int(11) NOT NULL,
  `CAMPAIGN_XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `BANNER_ID` int(11) NOT NULL,
  `BANNER_XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CAUSE_CODE` int(11) DEFAULT '0',
  `SUCCESS` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_seo_adv_banner`
--

CREATE TABLE `b_seo_adv_banner` (
  `ID` int(11) NOT NULL,
  `ENGINE_ID` int(11) NOT NULL,
  `OWNER_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `OWNER_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `LAST_UPDATE` timestamp NULL DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SETTINGS` mediumtext COLLATE utf8_unicode_ci,
  `CAMPAIGN_ID` int(11) NOT NULL,
  `GROUP_ID` int(11) DEFAULT NULL,
  `AUTO_QUANTITY_OFF` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `AUTO_QUANTITY_ON` char(1) COLLATE utf8_unicode_ci DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_seo_adv_campaign`
--

CREATE TABLE `b_seo_adv_campaign` (
  `ID` int(11) NOT NULL,
  `ENGINE_ID` int(11) NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `OWNER_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `OWNER_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `LAST_UPDATE` timestamp NULL DEFAULT NULL,
  `SETTINGS` mediumtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_seo_adv_group`
--

CREATE TABLE `b_seo_adv_group` (
  `ID` int(11) NOT NULL,
  `ENGINE_ID` int(11) NOT NULL,
  `OWNER_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `OWNER_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `LAST_UPDATE` timestamp NULL DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SETTINGS` text COLLATE utf8_unicode_ci,
  `CAMPAIGN_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_seo_adv_link`
--

CREATE TABLE `b_seo_adv_link` (
  `LINK_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `LINK_ID` int(18) NOT NULL,
  `BANNER_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_seo_adv_log`
--

CREATE TABLE `b_seo_adv_log` (
  `ID` int(11) NOT NULL,
  `ENGINE_ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL,
  `REQUEST_URI` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `REQUEST_DATA` text COLLATE utf8_unicode_ci,
  `RESPONSE_TIME` float NOT NULL,
  `RESPONSE_STATUS` int(5) DEFAULT NULL,
  `RESPONSE_DATA` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_seo_adv_order`
--

CREATE TABLE `b_seo_adv_order` (
  `ID` int(11) NOT NULL,
  `ENGINE_ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL,
  `CAMPAIGN_ID` int(11) NOT NULL,
  `BANNER_ID` int(11) NOT NULL,
  `ORDER_ID` int(11) NOT NULL,
  `SUM` float DEFAULT '0',
  `PROCESSED` char(1) COLLATE utf8_unicode_ci DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_seo_adv_region`
--

CREATE TABLE `b_seo_adv_region` (
  `ID` int(11) NOT NULL,
  `ENGINE_ID` int(11) NOT NULL,
  `OWNER_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `OWNER_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `LAST_UPDATE` timestamp NULL DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SETTINGS` text COLLATE utf8_unicode_ci,
  `PARENT_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_seo_keywords`
--

CREATE TABLE `b_seo_keywords` (
  `ID` int(11) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `KEYWORDS` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_seo_search_engine`
--

CREATE TABLE `b_seo_search_engine` (
  `ID` int(11) NOT NULL,
  `CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `SORT` int(5) DEFAULT '100',
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CLIENT_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CLIENT_SECRET` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REDIRECT_URI` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SETTINGS` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_seo_search_engine`
--

INSERT INTO `b_seo_search_engine` (`ID`, `CODE`, `ACTIVE`, `SORT`, `NAME`, `CLIENT_ID`, `CLIENT_SECRET`, `REDIRECT_URI`, `SETTINGS`) VALUES
(1, 'google', 'Y', 200, 'Google', '868942902147-qrrd6ce1ajfkpse8ieq4gkpdeanvtnno.apps.googleusercontent.com', 'EItMlJpZLC2WRPKB6QsA5bV9', 'urn:ietf:wg:oauth:2.0:oob', NULL),
(2, 'yandex', 'Y', 300, 'Yandex', 'f848c7bfc1d34a94ba6d05439f81bbd7', 'da0e73b2d9cc4e809f3170e49cb9df01', 'https://oauth.yandex.ru/verification_code', NULL),
(3, 'yandex_direct', 'Y', 400, 'Yandex.Direct', '', '', 'https://oauth.yandex.ru/verification_code', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `b_seo_service_log`
--

CREATE TABLE `b_seo_service_log` (
  `ID` int(11) NOT NULL,
  `DATE_INSERT` datetime NOT NULL,
  `TYPE` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `CODE` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MESSAGE` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `GROUP_ID` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_seo_service_rtg_queue`
--

CREATE TABLE `b_seo_service_rtg_queue` (
  `ID` int(11) NOT NULL,
  `DATE_INSERT` datetime DEFAULT NULL,
  `TYPE` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `CLIENT_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACCOUNT_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AUDIENCE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `PARENT_ID` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONTACT_TYPE` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `VALUE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTION` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `DATE_AUTO_REMOVE` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_seo_service_subscription`
--

CREATE TABLE `b_seo_service_subscription` (
  `ID` int(11) NOT NULL,
  `DATE_INSERT` datetime DEFAULT NULL,
  `TYPE` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `GROUP_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CALLBACK_SERVER_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HAS_AUTH` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_seo_service_webhook`
--

CREATE TABLE `b_seo_service_webhook` (
  `ID` int(11) NOT NULL,
  `DATE_INSERT` datetime DEFAULT NULL,
  `TYPE` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `EXTERNAL_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SECURITY_CODE` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_seo_sitemap`
--

CREATE TABLE `b_seo_sitemap` (
  `ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NULL DEFAULT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `DATE_RUN` datetime DEFAULT NULL,
  `SETTINGS` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_seo_sitemap_entity`
--

CREATE TABLE `b_seo_sitemap_entity` (
  `ID` int(11) NOT NULL,
  `ENTITY_TYPE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `SITEMAP_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_seo_sitemap_iblock`
--

CREATE TABLE `b_seo_sitemap_iblock` (
  `ID` int(11) NOT NULL,
  `IBLOCK_ID` int(11) NOT NULL,
  `SITEMAP_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_seo_sitemap_runtime`
--

CREATE TABLE `b_seo_sitemap_runtime` (
  `ID` int(11) NOT NULL,
  `PID` int(11) NOT NULL,
  `PROCESSED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ITEM_PATH` varchar(700) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ITEM_ID` int(11) DEFAULT NULL,
  `ITEM_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'D',
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `ACTIVE_ELEMENT` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_seo_yandex_direct_stat`
--

CREATE TABLE `b_seo_yandex_direct_stat` (
  `ID` int(18) NOT NULL,
  `CAMPAIGN_ID` int(11) NOT NULL,
  `BANNER_ID` int(11) NOT NULL,
  `DATE_DAY` date NOT NULL,
  `CURRENCY` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SUM` float DEFAULT '0',
  `SUM_SEARCH` float DEFAULT '0',
  `SUM_CONTEXT` float DEFAULT '0',
  `CLICKS` int(7) DEFAULT '0',
  `CLICKS_SEARCH` int(7) DEFAULT '0',
  `CLICKS_CONTEXT` int(7) DEFAULT '0',
  `SHOWS` int(7) DEFAULT '0',
  `SHOWS_SEARCH` int(7) DEFAULT '0',
  `SHOWS_CONTEXT` int(7) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_short_uri`
--

CREATE TABLE `b_short_uri` (
  `ID` int(18) NOT NULL,
  `URI` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `URI_CRC` int(18) NOT NULL,
  `SHORT_URI` varbinary(250) NOT NULL,
  `SHORT_URI_CRC` int(18) NOT NULL,
  `STATUS` int(18) NOT NULL DEFAULT '301',
  `MODIFIED` datetime NOT NULL,
  `LAST_USED` datetime DEFAULT NULL,
  `NUMBER_USED` int(18) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_site_template`
--

CREATE TABLE `b_site_template` (
  `ID` int(11) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `CONDITION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SORT` int(11) NOT NULL DEFAULT '500',
  `TEMPLATE` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_site_template`
--

INSERT INTO `b_site_template` (`ID`, `SITE_ID`, `CONDITION`, `SORT`, `TEMPLATE`) VALUES
(4, 's1', '', 150, 'balita');

-- --------------------------------------------------------

--
-- Структура таблицы `b_smile`
--

CREATE TABLE `b_smile` (
  `ID` int(18) NOT NULL,
  `TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `SET_ID` int(18) NOT NULL DEFAULT '0',
  `SORT` int(10) NOT NULL DEFAULT '150',
  `TYPING` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CLICKABLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `HIDDEN` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `IMAGE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `IMAGE_DEFINITION` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'SD',
  `IMAGE_WIDTH` int(11) NOT NULL DEFAULT '0',
  `IMAGE_HEIGHT` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_smile`
--

INSERT INTO `b_smile` (`ID`, `TYPE`, `SET_ID`, `SORT`, `TYPING`, `CLICKABLE`, `HIDDEN`, `IMAGE`, `IMAGE_DEFINITION`, `IMAGE_WIDTH`, `IMAGE_HEIGHT`) VALUES
(1, 'S', 2, 100, ':) :-)', 'Y', 'N', 'bx_smile_smile.png', 'UHD', 20, 20),
(2, 'S', 2, 105, ';) ;-)', 'Y', 'N', 'bx_smile_wink.png', 'UHD', 20, 20),
(3, 'S', 2, 110, ':D :-D', 'Y', 'N', 'bx_smile_biggrin.png', 'UHD', 20, 20),
(4, 'S', 2, 115, '8-)', 'Y', 'N', 'bx_smile_cool.png', 'UHD', 20, 20),
(5, 'S', 2, 120, ':facepalm:', 'Y', 'N', 'bx_smile_facepalm.png', 'UHD', 20, 20),
(6, 'S', 2, 125, ':{} :-{}', 'Y', 'N', 'bx_smile_kiss.png', 'UHD', 20, 20),
(7, 'S', 2, 130, ':( :-(', 'Y', 'N', 'bx_smile_sad.png', 'UHD', 20, 20),
(8, 'S', 2, 135, ':| :-|', 'Y', 'N', 'bx_smile_neutral.png', 'UHD', 20, 20),
(9, 'S', 2, 140, ':oops:', 'Y', 'N', 'bx_smile_redface.png', 'UHD', 20, 20),
(10, 'S', 2, 145, ':cry: :~(', 'Y', 'N', 'bx_smile_cry.png', 'UHD', 20, 20),
(11, 'S', 2, 150, ':evil: >:-<', 'Y', 'N', 'bx_smile_evil.png', 'UHD', 20, 20),
(12, 'S', 2, 155, ':o :-o :shock:', 'Y', 'N', 'bx_smile_eek.png', 'UHD', 20, 20),
(13, 'S', 2, 160, ':/ :-/', 'Y', 'N', 'bx_smile_confuse.png', 'UHD', 20, 20),
(14, 'S', 2, 165, ':idea:', 'Y', 'N', 'bx_smile_idea.png', 'UHD', 20, 20),
(15, 'S', 2, 170, ':?:', 'Y', 'N', 'bx_smile_question.png', 'UHD', 20, 20),
(16, 'S', 2, 175, ':!:', 'Y', 'N', 'bx_smile_exclaim.png', 'UHD', 20, 20),
(17, 'S', 2, 180, ':like:', 'Y', 'N', 'bx_smile_like.png', 'UHD', 20, 20),
(18, 'I', 2, 175, 'ICON_NOTE', 'Y', 'N', 'bx_icon_1.gif', 'SD', 15, 15),
(19, 'I', 2, 180, 'ICON_DIRRECTION', 'Y', 'N', 'bx_icon_2.gif', 'SD', 15, 15),
(20, 'I', 2, 185, 'ICON_IDEA', 'Y', 'N', 'bx_icon_3.gif', 'SD', 15, 15),
(21, 'I', 2, 190, 'ICON_ATTANSION', 'Y', 'N', 'bx_icon_4.gif', 'SD', 15, 15),
(22, 'I', 2, 195, 'ICON_QUESTION', 'Y', 'N', 'bx_icon_5.gif', 'SD', 15, 15),
(23, 'I', 2, 200, 'ICON_BAD', 'Y', 'N', 'bx_icon_6.gif', 'SD', 15, 15),
(24, 'I', 2, 205, 'ICON_GOOD', 'Y', 'N', 'bx_icon_7.gif', 'SD', 15, 15);

-- --------------------------------------------------------

--
-- Структура таблицы `b_smile_lang`
--

CREATE TABLE `b_smile_lang` (
  `ID` int(18) NOT NULL,
  `TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `SID` int(11) NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_smile_lang`
--

INSERT INTO `b_smile_lang` (`ID`, `TYPE`, `SID`, `LID`, `NAME`) VALUES
(1, 'P', 1, 'ru', 'Стандартная галерея'),
(2, 'P', 1, 'en', 'Standard gallery'),
(3, 'G', 2, 'ru', 'Основной набор'),
(4, 'G', 2, 'en', 'Default pack'),
(5, 'S', 1, 'ru', 'С улыбкой'),
(6, 'S', 1, 'en', 'Smile'),
(7, 'S', 2, 'ru', 'Шутливо'),
(8, 'S', 2, 'en', 'Wink'),
(9, 'S', 3, 'ru', 'Широкая улыбка'),
(10, 'S', 3, 'en', 'Big grin'),
(11, 'S', 4, 'ru', 'Здорово'),
(12, 'S', 4, 'en', 'Cool'),
(13, 'S', 5, 'ru', 'Разочарование'),
(14, 'S', 5, 'en', 'Facepalm'),
(15, 'S', 6, 'ru', 'Поцелуй'),
(16, 'S', 6, 'en', 'Kiss'),
(17, 'S', 7, 'ru', 'Печально'),
(18, 'S', 7, 'en', 'Sad'),
(19, 'S', 8, 'ru', 'Скептически'),
(20, 'S', 8, 'en', 'Skeptic'),
(21, 'S', 9, 'ru', 'Смущенный'),
(22, 'S', 9, 'en', 'Embarrassed'),
(23, 'S', 10, 'ru', 'Очень грустно'),
(24, 'S', 10, 'en', 'Crying'),
(25, 'S', 11, 'ru', 'Со злостью'),
(26, 'S', 11, 'en', 'Angry'),
(27, 'S', 12, 'ru', 'Удивленно'),
(28, 'S', 12, 'en', 'Surprised'),
(29, 'S', 13, 'ru', 'Смущенно'),
(30, 'S', 13, 'en', 'Confused'),
(31, 'S', 14, 'ru', 'Идея'),
(32, 'S', 14, 'en', 'Idea'),
(33, 'S', 15, 'ru', 'Вопрос'),
(34, 'S', 15, 'en', 'Question'),
(35, 'S', 16, 'ru', 'Восклицание'),
(36, 'S', 16, 'en', 'Exclamation'),
(37, 'S', 17, 'ru', 'Нравится'),
(38, 'S', 17, 'en', 'Like');

-- --------------------------------------------------------

--
-- Структура таблицы `b_smile_set`
--

CREATE TABLE `b_smile_set` (
  `ID` int(18) NOT NULL,
  `TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'G',
  `PARENT_ID` int(18) NOT NULL DEFAULT '0',
  `STRING_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SORT` int(10) NOT NULL DEFAULT '150'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_smile_set`
--

INSERT INTO `b_smile_set` (`ID`, `TYPE`, `PARENT_ID`, `STRING_ID`, `SORT`) VALUES
(1, 'P', 0, 'bitrix', 150),
(2, 'G', 1, 'bitrix_main', 150);

-- --------------------------------------------------------

--
-- Структура таблицы `b_sms_template`
--

CREATE TABLE `b_sms_template` (
  `ID` int(11) NOT NULL,
  `EVENT_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `SENDER` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RECEIVER` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MESSAGE` text COLLATE utf8_unicode_ci,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_sms_template`
--

INSERT INTO `b_sms_template` (`ID`, `EVENT_NAME`, `ACTIVE`, `SENDER`, `RECEIVER`, `MESSAGE`, `LANGUAGE_ID`) VALUES
(1, 'SMS_USER_CONFIRM_NUMBER', 'Y', '#DEFAULT_SENDER#', '#USER_PHONE#', 'Код подтверждения #CODE#', NULL),
(2, 'SMS_USER_RESTORE_PASSWORD', 'Y', '#DEFAULT_SENDER#', '#USER_PHONE#', 'Код для восстановления пароля #CODE#', NULL),
(3, 'SMS_EVENT_LOG_NOTIFICATION', 'Y', '#DEFAULT_SENDER#', '#PHONE_NUMBER#', '#NAME#: #ADDITIONAL_TEXT# (событий: #EVENT_COUNT#)', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `b_sms_template_site`
--

CREATE TABLE `b_sms_template_site` (
  `TEMPLATE_ID` int(11) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_sms_template_site`
--

INSERT INTO `b_sms_template_site` (`TEMPLATE_ID`, `SITE_ID`) VALUES
(1, 's1'),
(2, 's1'),
(3, 's1');

-- --------------------------------------------------------

--
-- Структура таблицы `b_sm_version_history`
--

CREATE TABLE `b_sm_version_history` (
  `ID` int(11) NOT NULL,
  `DATE_INSERT` datetime DEFAULT NULL,
  `VERSIONS` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_socialservices_ap`
--

CREATE TABLE `b_socialservices_ap` (
  `ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `USER_ID` int(11) NOT NULL,
  `DOMAIN` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ENDPOINT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LOGIN` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PASSWORD` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_AUTHORIZE` datetime DEFAULT NULL,
  `SETTINGS` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_socialservices_contact`
--

CREATE TABLE `b_socialservices_contact` (
  `ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `USER_ID` int(11) NOT NULL,
  `CONTACT_USER_ID` int(11) DEFAULT NULL,
  `CONTACT_XML_ID` int(11) DEFAULT NULL,
  `CONTACT_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONTACT_LAST_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONTACT_PHOTO` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_AUTHORIZE` datetime DEFAULT NULL,
  `NOTIFY` char(1) COLLATE utf8_unicode_ci DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_socialservices_contact_connect`
--

CREATE TABLE `b_socialservices_contact_connect` (
  `ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CONTACT_ID` int(11) DEFAULT NULL,
  `LINK_ID` int(11) DEFAULT NULL,
  `CONTACT_PROFILE_ID` int(11) NOT NULL,
  `CONTACT_PORTAL` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CONNECT_TYPE` char(1) COLLATE utf8_unicode_ci DEFAULT 'P',
  `LAST_AUTHORIZE` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_socialservices_message`
--

CREATE TABLE `b_socialservices_message` (
  `ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `SOCSERV_USER_ID` int(11) NOT NULL,
  `PROVIDER` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `MESSAGE` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `INSERT_DATE` datetime DEFAULT NULL,
  `SUCCES_SENT` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_socialservices_user`
--

CREATE TABLE `b_socialservices_user` (
  `ID` int(11) NOT NULL,
  `LOGIN` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EMAIL` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_PHOTO` int(11) DEFAULT NULL,
  `EXTERNAL_AUTH_ID` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `XML_ID` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `CAN_DELETE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `PERSONAL_WWW` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERMISSIONS` varchar(555) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OATOKEN` text COLLATE utf8_unicode_ci,
  `OATOKEN_EXPIRES` int(11) DEFAULT NULL,
  `OASECRET` text COLLATE utf8_unicode_ci,
  `REFRESH_TOKEN` text COLLATE utf8_unicode_ci,
  `SEND_ACTIVITY` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `SITE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `INITIALIZED` char(1) COLLATE utf8_unicode_ci DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_socialservices_user_link`
--

CREATE TABLE `b_socialservices_user_link` (
  `ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `SOCSERV_USER_ID` int(11) NOT NULL,
  `LINK_USER_ID` int(11) DEFAULT NULL,
  `LINK_UID` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `LINK_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LINK_LAST_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LINK_PICTURE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LINK_EMAIL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TIMESTAMP_X` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_socialservices_zoom_meeting`
--

CREATE TABLE `b_socialservices_zoom_meeting` (
  `ID` int(11) NOT NULL,
  `ENTITY_TYPE_ID` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `CONFERENCE_URL` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CONFERENCE_EXTERNAL_ID` bigint(20) UNSIGNED NOT NULL,
  `CONFERENCE_PASSWORD` text COLLATE utf8_unicode_ci,
  `JOINED` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONFERENCE_CREATED` datetime DEFAULT NULL,
  `CONFERENCE_STARTED` datetime DEFAULT NULL,
  `CONFERENCE_ENDED` datetime DEFAULT NULL,
  `DURATION` int(11) DEFAULT NULL,
  `TITLE` text COLLATE utf8_unicode_ci,
  `SHORT_LINK` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HAS_RECORDING` char(1) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_socialservices_zoom_meeting_recording`
--

CREATE TABLE `b_socialservices_zoom_meeting_recording` (
  `ID` int(11) NOT NULL,
  `EXTERNAL_ID` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `MEETING_ID` int(11) NOT NULL,
  `START_DATE` datetime NOT NULL,
  `END_DATE` datetime NOT NULL,
  `FILE_TYPE` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `FILE_SIZE` int(11) NOT NULL,
  `PLAY_URL` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DOWNLOAD_URL` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RECORDING_TYPE` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `DOWNLOAD_TOKEN` text COLLATE utf8_unicode_ci,
  `PASSWORD` text COLLATE utf8_unicode_ci,
  `FILE_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_sticker`
--

CREATE TABLE `b_sticker` (
  `ID` int(11) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PAGE_URL` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PAGE_TITLE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DATE_CREATE` datetime NOT NULL,
  `DATE_UPDATE` datetime NOT NULL,
  `MODIFIED_BY` int(18) NOT NULL,
  `CREATED_BY` int(18) NOT NULL,
  `PERSONAL` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `CONTENT` text COLLATE utf8_unicode_ci,
  `POS_TOP` int(11) DEFAULT NULL,
  `POS_LEFT` int(11) DEFAULT NULL,
  `WIDTH` int(11) DEFAULT NULL,
  `HEIGHT` int(11) DEFAULT NULL,
  `COLOR` int(11) DEFAULT NULL,
  `COLLAPSED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `COMPLETED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `CLOSED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `DELETED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `MARKER_TOP` int(11) DEFAULT NULL,
  `MARKER_LEFT` int(11) DEFAULT NULL,
  `MARKER_WIDTH` int(11) DEFAULT NULL,
  `MARKER_HEIGHT` int(11) DEFAULT NULL,
  `MARKER_ADJUST` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_sticker_group_task`
--

CREATE TABLE `b_sticker_group_task` (
  `GROUP_ID` int(11) NOT NULL,
  `TASK_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_task`
--

CREATE TABLE `b_task` (
  `ID` int(18) NOT NULL,
  `NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `LETTER` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SYS` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BINDING` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'module'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_task`
--

INSERT INTO `b_task` (`ID`, `NAME`, `LETTER`, `MODULE_ID`, `SYS`, `DESCRIPTION`, `BINDING`) VALUES
(1, 'main_denied', 'D', 'main', 'Y', NULL, 'module'),
(2, 'main_change_profile', 'P', 'main', 'Y', NULL, 'module'),
(3, 'main_view_all_settings', 'R', 'main', 'Y', NULL, 'module'),
(4, 'main_view_all_settings_change_profile', 'T', 'main', 'Y', NULL, 'module'),
(5, 'main_edit_subordinate_users', 'V', 'main', 'Y', NULL, 'module'),
(6, 'main_full_access', 'W', 'main', 'Y', NULL, 'module'),
(7, 'fm_folder_access_denied', 'D', 'main', 'Y', NULL, 'file'),
(8, 'fm_folder_access_read', 'R', 'main', 'Y', NULL, 'file'),
(9, 'fm_folder_access_write', 'W', 'main', 'Y', NULL, 'file'),
(10, 'fm_folder_access_full', 'X', 'main', 'Y', NULL, 'file'),
(11, 'fm_folder_access_workflow', 'U', 'main', 'Y', NULL, 'file'),
(12, 'bitrixcloud_deny', 'D', 'bitrixcloud', 'Y', NULL, 'module'),
(13, 'bitrixcloud_control', 'W', 'bitrixcloud', 'Y', NULL, 'module'),
(14, 'clouds_denied', 'D', 'clouds', 'Y', NULL, 'module'),
(15, 'clouds_browse', 'F', 'clouds', 'Y', NULL, 'module'),
(16, 'clouds_upload', 'U', 'clouds', 'Y', NULL, 'module'),
(17, 'clouds_full_access', 'W', 'clouds', 'Y', NULL, 'module'),
(18, 'fileman_denied', 'D', 'fileman', 'Y', '', 'module'),
(19, 'fileman_allowed_folders', 'F', 'fileman', 'Y', '', 'module'),
(20, 'fileman_full_access', 'W', 'fileman', 'Y', '', 'module'),
(21, 'medialib_denied', 'D', 'fileman', 'Y', '', 'medialib'),
(22, 'medialib_view', 'F', 'fileman', 'Y', '', 'medialib'),
(23, 'medialib_only_new', 'R', 'fileman', 'Y', '', 'medialib'),
(24, 'medialib_edit_items', 'V', 'fileman', 'Y', '', 'medialib'),
(25, 'medialib_editor', 'W', 'fileman', 'Y', '', 'medialib'),
(26, 'medialib_full', 'X', 'fileman', 'Y', '', 'medialib'),
(27, 'stickers_denied', 'D', 'fileman', 'Y', '', 'stickers'),
(28, 'stickers_read', 'R', 'fileman', 'Y', '', 'stickers'),
(29, 'stickers_edit', 'W', 'fileman', 'Y', '', 'stickers'),
(30, 'hblock_denied', 'D', 'highloadblock', 'Y', NULL, 'module'),
(31, 'hblock_read', 'R', 'highloadblock', 'Y', NULL, 'module'),
(32, 'hblock_write', 'W', 'highloadblock', 'Y', NULL, 'module'),
(33, 'iblock_deny', 'D', 'iblock', 'Y', NULL, 'iblock'),
(34, 'iblock_read', 'R', 'iblock', 'Y', NULL, 'iblock'),
(35, 'iblock_element_add', 'E', 'iblock', 'Y', NULL, 'iblock'),
(36, 'iblock_admin_read', 'S', 'iblock', 'Y', NULL, 'iblock'),
(37, 'iblock_admin_add', 'T', 'iblock', 'Y', NULL, 'iblock'),
(38, 'iblock_limited_edit', 'U', 'iblock', 'Y', NULL, 'iblock'),
(39, 'iblock_full_edit', 'W', 'iblock', 'Y', NULL, 'iblock'),
(40, 'iblock_full', 'X', 'iblock', 'Y', NULL, 'iblock'),
(41, 'landing_right_denied', 'D', 'landing', 'Y', NULL, 'module'),
(42, 'landing_right_read', 'R', 'landing', 'Y', NULL, 'module'),
(43, 'landing_right_edit', 'U', 'landing', 'Y', NULL, 'module'),
(44, 'landing_right_sett', 'V', 'landing', 'Y', NULL, 'module'),
(45, 'landing_right_public', 'W', 'landing', 'Y', NULL, 'module'),
(46, 'landing_right_delete', 'X', 'landing', 'Y', NULL, 'module'),
(47, 'seo_denied', 'D', 'seo', 'Y', '', 'module'),
(48, 'seo_edit', 'F', 'seo', 'Y', '', 'module'),
(49, 'seo_full_access', 'W', 'seo', 'Y', '', 'module');

-- --------------------------------------------------------

--
-- Структура таблицы `b_task_operation`
--

CREATE TABLE `b_task_operation` (
  `TASK_ID` int(18) NOT NULL,
  `OPERATION_ID` int(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_task_operation`
--

INSERT INTO `b_task_operation` (`TASK_ID`, `OPERATION_ID`) VALUES
(2, 2),
(2, 3),
(3, 2),
(3, 4),
(3, 5),
(3, 6),
(3, 7),
(4, 2),
(4, 3),
(4, 4),
(4, 5),
(4, 6),
(4, 7),
(5, 2),
(5, 3),
(5, 5),
(5, 6),
(5, 7),
(5, 8),
(5, 9),
(6, 2),
(6, 3),
(6, 4),
(6, 5),
(6, 6),
(6, 7),
(6, 10),
(6, 11),
(6, 12),
(6, 13),
(6, 14),
(6, 15),
(6, 16),
(6, 17),
(6, 18),
(8, 19),
(8, 20),
(8, 21),
(9, 19),
(9, 20),
(9, 21),
(9, 22),
(9, 23),
(9, 24),
(9, 25),
(9, 26),
(9, 27),
(9, 28),
(9, 29),
(9, 30),
(9, 31),
(9, 32),
(9, 33),
(9, 34),
(10, 19),
(10, 20),
(10, 21),
(10, 22),
(10, 23),
(10, 24),
(10, 25),
(10, 26),
(10, 27),
(10, 28),
(10, 29),
(10, 30),
(10, 31),
(10, 32),
(10, 33),
(10, 34),
(10, 35),
(11, 19),
(11, 20),
(11, 21),
(11, 24),
(11, 28),
(13, 36),
(13, 37),
(13, 38),
(15, 39),
(16, 39),
(16, 40),
(17, 39),
(17, 40),
(17, 41),
(19, 44),
(19, 45),
(19, 46),
(19, 47),
(19, 48),
(19, 49),
(19, 50),
(19, 52),
(19, 53),
(20, 42),
(20, 43),
(20, 44),
(20, 45),
(20, 46),
(20, 47),
(20, 48),
(20, 49),
(20, 50),
(20, 51),
(20, 52),
(20, 53),
(20, 54),
(22, 55),
(23, 55),
(23, 56),
(23, 60),
(24, 55),
(24, 60),
(24, 61),
(24, 62),
(25, 55),
(25, 56),
(25, 57),
(25, 58),
(25, 60),
(25, 61),
(25, 62),
(26, 55),
(26, 56),
(26, 57),
(26, 58),
(26, 59),
(26, 60),
(26, 61),
(26, 62),
(28, 63),
(29, 63),
(29, 64),
(29, 65),
(29, 66),
(31, 67),
(32, 68),
(32, 69),
(34, 70),
(34, 71),
(35, 72),
(36, 70),
(36, 71),
(36, 73),
(37, 70),
(37, 71),
(37, 72),
(37, 73),
(38, 70),
(38, 71),
(38, 72),
(38, 73),
(38, 74),
(38, 75),
(38, 76),
(38, 77),
(39, 70),
(39, 71),
(39, 72),
(39, 73),
(39, 74),
(39, 75),
(39, 76),
(39, 77),
(39, 78),
(39, 79),
(39, 80),
(39, 81),
(40, 70),
(40, 71),
(40, 72),
(40, 73),
(40, 74),
(40, 75),
(40, 76),
(40, 77),
(40, 78),
(40, 79),
(40, 80),
(40, 81),
(40, 82),
(40, 83),
(40, 84),
(40, 85),
(40, 86),
(40, 87),
(42, 88),
(43, 89),
(44, 90),
(45, 91),
(46, 92),
(48, 94),
(49, 93),
(49, 94);

-- --------------------------------------------------------

--
-- Структура таблицы `b_translate_diff`
--

CREATE TABLE `b_translate_diff` (
  `ID` int(18) NOT NULL,
  `FILE_ID` int(18) NOT NULL,
  `PATH_ID` int(18) NOT NULL,
  `LANG_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `AGAINST_LANG_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `EXCESS_COUNT` int(18) NOT NULL DEFAULT '0',
  `DEFICIENCY_COUNT` int(18) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_translate_file`
--

CREATE TABLE `b_translate_file` (
  `ID` int(18) NOT NULL,
  `PATH_ID` int(18) NOT NULL,
  `LANG_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `FULL_PATH` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `PHRASE_COUNT` int(18) NOT NULL DEFAULT '0',
  `INDEXED` enum('Y','N') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `INDEXED_TIME` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_translate_path`
--

CREATE TABLE `b_translate_path` (
  `ID` int(18) NOT NULL,
  `PARENT_ID` int(18) NOT NULL DEFAULT '0',
  `DEPTH_LEVEL` int(18) NOT NULL DEFAULT '0',
  `SORT` int(18) NOT NULL DEFAULT '0',
  `PATH` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `IS_LANG` enum('Y','N') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `IS_DIR` enum('Y','N') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `OBLIGATORY_LANGS` char(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `INDEXED` enum('Y','N') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `INDEXED_TIME` datetime DEFAULT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ASSIGNMENT` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_translate_path_lang`
--

CREATE TABLE `b_translate_path_lang` (
  `ID` int(18) NOT NULL,
  `PATH` varchar(500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_translate_path_tree`
--

CREATE TABLE `b_translate_path_tree` (
  `ID` int(18) NOT NULL,
  `PARENT_ID` int(18) NOT NULL,
  `PATH_ID` int(18) NOT NULL,
  `DEPTH_LEVEL` int(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_translate_phrase`
--

CREATE TABLE `b_translate_phrase` (
  `ID` int(18) NOT NULL,
  `FILE_ID` int(18) NOT NULL,
  `PATH_ID` int(18) NOT NULL,
  `LANG_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `CODE` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `PHRASE` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci DELAY_KEY_WRITE=1;

-- --------------------------------------------------------

--
-- Структура таблицы `b_ui_entity_editor_config`
--

CREATE TABLE `b_ui_entity_editor_config` (
  `ID` int(10) UNSIGNED NOT NULL,
  `CATEGORY` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_TYPE_ID` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `CONFIG` text COLLATE utf8_unicode_ci NOT NULL,
  `COMMON` varchar(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_ui_entity_editor_config_ac`
--

CREATE TABLE `b_ui_entity_editor_config_ac` (
  `ID` int(10) UNSIGNED NOT NULL,
  `ACCESS_CODE` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `CONFIG_ID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_undo`
--

CREATE TABLE `b_undo` (
  `ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UNDO_TYPE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UNDO_HANDLER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONTENT` mediumtext COLLATE utf8_unicode_ci,
  `USER_ID` int(11) DEFAULT NULL,
  `TIMESTAMP_X` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_undo`
--

INSERT INTO `b_undo` (`ID`, `MODULE_ID`, `UNDO_TYPE`, `UNDO_HANDLER`, `CONTENT`, `USER_ID`, `TIMESTAMP_X`) VALUES
('11b1454fb3f6b8c20d1cd01cbb4bc482f', 'fileman', 'disable_component', 'CFileman::UndoEditFile', 'a:2:{s:7:\"absPath\";s:77:\"G:/OpenServer/domains/bitrixzadanieOtAIS.ru/local/templates/balita/header.php\";s:7:\"content\";s:5277:\"<?php if(!defined(\"B_PROLOG_INCLUDED\") || B_PROLOG_INCLUDED!==true) die();?>\n<?php \n  use Bitrix\\Main\\Page\\Asset;\n?>\n<?php ?>\n\n<!doctype html>\n<html lang=\"en\">\n  <head>\n    <?php $APPLICATION->ShowHead() ?>\n    <title><?php $APPLICATION->ShowTitle(\'Colorlib Balita &mdash; Minimal Blog Template\') ?></title>\n    <?php \n      Asset::getInstance()->addString(\'<meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\');\n      Asset::getInstance()->addString(\'<meta charset=\"utf-8\">\');\n      Asset::getInstance()->addString(\'<link href=\"https://fonts.googleapis.com/css?family=Josefin+Sans:300, 400,700\" rel=\"stylesheet\">\');\n\n\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/fonts/flaticon/font/flaticon.css\');\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/fonts/fontawesome/css/font-awesome.min.css\');\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/fonts/ionicons/css/ionicons.min.css\');\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/css/owl.carousel.min.css\');\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/css/animate.css\');\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/css/bootstrap.css\');\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/css/style.css\');\n\n\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/jquery-3.2.1.min.js\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/jquery-migrate-3.0.0.js\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/popper.min.js\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/bootstrap.min.js\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/owl.carousel.min.js\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/jquery.waypoints.min.j\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/jquery.stellar.min.js\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/main.js\');\n    \n    ?>\n  </head>\n  <body>\n    <div id=\"panel\"><?php $APPLICATION->ShowPanel() ?></div>\n\n    <header role=\"banner\">\n      <div class=\"top-bar\">\n        <div class=\"container\">\n          <div class=\"row\">\n            <div class=\"col-9 social\">\n              <a href=\"#\"><span class=\"fa fa-twitter\"></span></a>\n              <a href=\"#\"><span class=\"fa fa-facebook\"></span></a>\n              <a href=\"#\"><span class=\"fa fa-instagram\"></span></a>\n              <a href=\"#\"><span class=\"fa fa-youtube-play\"></span></a>\n              <a href=\"#\"><span class=\"fa fa-vimeo\"></span></a>\n              <a href=\"#\"><span class=\"fa fa-snapchat\"></span></a>\n            </div>\n            <div class=\"col-3 search-top\">\n              <!-- <a href=\"#\"><span class=\"fa fa-search\"></span></a> -->\n              <form action=\"#\" class=\"search-top-form\">\n                <span class=\"icon fa fa-search\"></span>\n                <input type=\"text\" id=\"s\" placeholder=\"Type keyword to search...\">\n              </form>\n            </div>\n          </div>\n        </div>\n      </div>\n\n      <div class=\"container logo-wrap\">\n        <div class=\"row pt-5\">\n          <div class=\"col-12 text-center\">\n            <a class=\"absolute-toggle d-block d-md-none\" data-toggle=\"collapse\" href=\"#navbarMenu\" role=\"button\" aria-expanded=\"false\" aria-controls=\"navbarMenu\"><span class=\"burger-lines\"></span></a>\n            <h1 class=\"site-logo\"><a href=\"/\">Balita</a></h1>\n          </div>\n        </div>\n      </div>\n      \n      <?$APPLICATION->IncludeComponent(\"bitrix:menu\", \"meu\", array(\n	\"ALLOW_MULTI_SELECT\" => \"N\",\n		\"CHILD_MENU_TYPE\" => \"left\",\n		\"DELAY\" => \"N\",\n		\"MAX_LEVEL\" => \"1\",\n		\"MENU_CACHE_GET_VARS\" => \"\",\n		\"MENU_CACHE_TIME\" => \"3600\",\n		\"MENU_CACHE_TYPE\" => \"N\",\n		\"MENU_CACHE_USE_GROUPS\" => \"Y\",\n		\"ROOT_MENU_TYPE\" => \"main\",\n		\"USE_EXT\" => \"N\",\n		\"COMPONENT_TEMPLATE\" => \".default\"\n	),\n	false,\n	array(\n	\"ACTIVE_COMPONENT\" => \"Y\"\n	)\n);?>\n      <!-- <nav class=\"navbar navbar-expand-md  navbar-light bg-light\">\n        <div class=\"container\">\n          <div class=\"collapse navbar-collapse\" id=\"navbarMenu\">\n            <ul class=\"navbar-nav mx-auto\">\n              <li class=\"nav-item\">\n                <a class=\"nav-link active\" href=\"index.html\">Home</a>\n              </li>\n\n              <li class=\"nav-item dropdown\">\n                <a class=\"nav-link dropdown-toggle\" href=\"category.html\" id=\"dropdown05\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">Categories</a>\n                <div class=\"dropdown-menu\" aria-labelledby=\"dropdown05\">\n                  <a class=\"dropdown-item\" href=\"category.html\">Lifestyle</a>\n                  <a class=\"dropdown-item\" href=\"category.html\">Food</a>\n                  <a class=\"dropdown-item\" href=\"category.html\">Adventure</a>\n                  <a class=\"dropdown-item\" href=\"category.html\">Travel</a>\n                  <a class=\"dropdown-item\" href=\"category.html\">Business</a>\n                </div>\n\n              </li>\n              <li class=\"nav-item\">\n                <a class=\"nav-link\" href=\"about.html\">About</a>\n              </li>\n              <li class=\"nav-item\">\n                <a class=\"nav-link\" href=\"contact.html\">Contact</a>\n              </li>\n            </ul>\n            \n          </div>\n        </div>\n      </nav> -->\n\n\n\n    </header>\n    <!-- END header -->\n\";}', 1, 1623007960),
('1231c90ca3ca10b3e2492952e6b9eae91', 'fileman', 'new_section', 'CFileman::UndoNewSection', 'a:4:{s:7:\"absPath\";s:54:\"G:/OpenServer/domains/bitrixzadanieOtAIS.ru/Categories\";s:4:\"path\";s:11:\"/Categories\";s:4:\"site\";s:2:\"s1\";s:4:\"menu\";a:3:{s:8:\"menuFile\";s:15:\"/.main.menu.php\";s:8:\"menuName\";s:10:\"Categories\";s:8:\"menuPath\";s:12:\"/Categories/\";}}', 1, 1623009318),
('1294f45d3eac30e74d69e58262f648692', 'fileman', 'new_file', 'CFileman::UndoNewFile', 'a:4:{s:7:\"absPath\";s:59:\"G:/OpenServer/domains/bitrixzadanieOtAIS.ru/blog-single.php\";s:4:\"path\";s:16:\"/blog-single.php\";s:4:\"site\";s:2:\"s1\";s:6:\"public\";s:1:\"Y\";}', 1, 1623042691),
('12a9ea10970ae4a4f30137973ee18c32d', 'fileman', 'edit_component_props', 'CFileman::UndoEditFile', 'a:2:{s:7:\"absPath\";s:77:\"G:/OpenServer/domains/bitrixzadanieOtAIS.ru/local/templates/balita/header.php\";s:7:\"content\";s:3945:\"<?php if(!defined(\"B_PROLOG_INCLUDED\") || B_PROLOG_INCLUDED!==true) die();?>\n<?php \n  use Bitrix\\Main\\Page\\Asset;\n?>\n<?php ?>\n\n<!doctype html>\n<html lang=\"en\">\n  <head>\n    <?php $APPLICATION->ShowHead() ?>\n    <title><?php $APPLICATION->ShowTitle(\'Colorlib Balita &mdash; Minimal Blog Template\') ?></title>\n    <?php \n      Asset::getInstance()->addString(\'<meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\');\n      Asset::getInstance()->addString(\'<meta charset=\"utf-8\">\');\n      Asset::getInstance()->addString(\'<link href=\"https://fonts.googleapis.com/css?family=Josefin+Sans:300, 400,700\" rel=\"stylesheet\">\');\n\n\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/fonts/flaticon/font/flaticon.css\');\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/fonts/fontawesome/css/font-awesome.min.css\');\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/fonts/ionicons/css/ionicons.min.css\');\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/css/owl.carousel.min.css\');\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/css/animate.css\');\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/css/bootstrap.css\');\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/css/style.css\');\n\n\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'/js/jquery-3.2.1.min.js\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'/js/jquery-migrate-3.0.0.js\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'/js/popper.min.js\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'/js/bootstrap.min.js\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'/js/owl.carousel.min.js\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'/js/jquery.waypoints.min.js\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'/js/jquery.stellar.min.js\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'/js/main.js\');\n    \n    ?>\n  </head>\n  <body>\n    <div id=\"panel\"><?php $APPLICATION->ShowPanel() ?></div>\n\n    <header role=\"banner\">\n      <div class=\"top-bar\">\n        <div class=\"container\">\n          <div class=\"row\">\n            <div class=\"col-9 social\">\n              <a href=\"#\"><span class=\"fa fa-twitter\"></span></a>\n              <a href=\"#\"><span class=\"fa fa-facebook\"></span></a>\n              <a href=\"#\"><span class=\"fa fa-instagram\"></span></a>\n              <a href=\"#\"><span class=\"fa fa-youtube-play\"></span></a>\n              <a href=\"#\"><span class=\"fa fa-vimeo\"></span></a>\n              <a href=\"#\"><span class=\"fa fa-snapchat\"></span></a>\n            </div>\n            <div class=\"col-3 search-top\">\n              <!-- <a href=\"#\"><span class=\"fa fa-search\"></span></a> -->\n              <form action=\"#\" class=\"search-top-form\">\n                <span class=\"icon fa fa-search\"></span>\n                <input type=\"text\" id=\"s\" placeholder=\"Type keyword to search...\">\n              </form>\n            </div>\n          </div>\n        </div>\n      </div>\n\n      <div class=\"container logo-wrap\">\n        <div class=\"row pt-5\">\n          <div class=\"col-12 text-center\">\n            <a class=\"absolute-toggle d-block d-md-none\" data-toggle=\"collapse\" href=\"#navbarMenu\" role=\"button\" aria-expanded=\"false\" aria-controls=\"navbarMenu\"><span class=\"burger-lines\"></span></a>\n            <h1 class=\"site-logo\"><a href=\"/\">Balita</a></h1>\n          </div>\n        </div>\n      </div>\n      \n      <?$APPLICATION->IncludeComponent(\n	\"bitrix:menu\", \n	\"menu_balita\", \n	array(\n		\"ALLOW_MULTI_SELECT\" => \"N\",\n		\"CHILD_MENU_TYPE\" => \"left\",\n		\"DELAY\" => \"N\",\n		\"MAX_LEVEL\" => \"1\",\n		\"MENU_CACHE_GET_VARS\" => array(\n		),\n		\"MENU_CACHE_TIME\" => \"3600\",\n		\"MENU_CACHE_TYPE\" => \"N\",\n		\"MENU_CACHE_USE_GROUPS\" => \"Y\",\n		\"ROOT_MENU_TYPE\" => \"main\",\n		\"USE_EXT\" => \"N\",\n		\"COMPONENT_TEMPLATE\" => \"menu_balita\"\n	),\n	false,\n	array(\n		\"ACTIVE_COMPONENT\" => \"Y\"\n	)\n);?>\n      \n    </header>\n    <!-- END header -->\n\n    \";}', 1, 1623049219),
('13a5eae80065adeae997510ac8ec322a3', 'fileman', 'edit_file', 'CFileman::UndoEditFile', 'a:2:{s:7:\"absPath\";s:115:\"G:/OpenServer/domains/bitrixzadanieOtAIS.ru/bitrix/templates/.default/components/bitrix/menu/template1/template.php\";s:7:\"content\";s:494:\"<?if (!defined(\"B_PROLOG_INCLUDED\") || B_PROLOG_INCLUDED!==true)die();?>\r\n\r\n<?if (!empty($arResult)):?>\r\n<ul class=\"left-menu\">\r\n\r\n<?\r\nforeach($arResult as $arItem):\r\n	if($arParams[\"MAX_LEVEL\"] == 1 && $arItem[\"DEPTH_LEVEL\"] > 1) \r\n		continue;\r\n?>\r\n	<?if($arItem[\"SELECTED\"]):?>\r\n		<li><a href=\"<?=$arItem[\"LINK\"]?>\" class=\"selected\"><?=$arItem[\"TEXT\"]?></a></li>\r\n	<?else:?>\r\n		<li><a href=\"<?=$arItem[\"LINK\"]?>\"><?=$arItem[\"TEXT\"]?></a></li>\r\n	<?endif?>\r\n	\r\n<?endforeach?>\r\n\r\n</ul>\r\n<?endif?>\";}', 1, 1623007035),
('13cf717303c410fb5614d22e1e89003d1', 'fileman', 'edit_component_props', 'CFileman::UndoEditFile', 'a:2:{s:7:\"absPath\";s:77:\"G:/OpenServer/domains/bitrixzadanieOtAIS.ru/local/templates/balita/header.php\";s:7:\"content\";s:5853:\"<?php if(!defined(\"B_PROLOG_INCLUDED\") || B_PROLOG_INCLUDED!==true) die();?>\n<?php \n  use Bitrix\\Main\\Page\\Asset;\n?>\n<?php ?>\n\n<!doctype html>\n<html lang=\"en\">\n  <head>\n    <?php $APPLICATION->ShowHead() ?>\n    <title><?php $APPLICATION->ShowTitle(\'Colorlib Balita &mdash; Minimal Blog Template\') ?></title>\n    <?php \n      Asset::getInstance()->addString(\'<meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\');\n      Asset::getInstance()->addString(\'<meta charset=\"utf-8\">\');\n      Asset::getInstance()->addString(\'<link href=\"https://fonts.googleapis.com/css?family=Josefin+Sans:300, 400,700\" rel=\"stylesheet\">\');\n\n\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/fonts/flaticon/font/flaticon.css\');\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/fonts/fontawesome/css/font-awesome.min.css\');\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/fonts/ionicons/css/ionicons.min.css\');\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/css/owl.carousel.min.css\');\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/css/animate.css\');\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/css/bootstrap.css\');\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/css/style.css\');\n\n\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/jquery-3.2.1.min.js\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/jquery-migrate-3.0.0.js\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/popper.min.js\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/bootstrap.min.js\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/owl.carousel.min.js\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/jquery.waypoints.min.j\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/jquery.stellar.min.js\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/main.js\');\n    \n    ?>\n  </head>\n  <body>\n    <div id=\"panel\"><?php $APPLICATION->ShowPanel() ?></div>\n\n    <header role=\"banner\">\n      <div class=\"top-bar\">\n        <div class=\"container\">\n          <div class=\"row\">\n            <div class=\"col-9 social\">\n              <a href=\"#\"><span class=\"fa fa-twitter\"></span></a>\n              <a href=\"#\"><span class=\"fa fa-facebook\"></span></a>\n              <a href=\"#\"><span class=\"fa fa-instagram\"></span></a>\n              <a href=\"#\"><span class=\"fa fa-youtube-play\"></span></a>\n              <a href=\"#\"><span class=\"fa fa-vimeo\"></span></a>\n              <a href=\"#\"><span class=\"fa fa-snapchat\"></span></a>\n            </div>\n            <div class=\"col-3 search-top\">\n              <!-- <a href=\"#\"><span class=\"fa fa-search\"></span></a> -->\n              <form action=\"#\" class=\"search-top-form\">\n                <span class=\"icon fa fa-search\"></span>\n                <input type=\"text\" id=\"s\" placeholder=\"Type keyword to search...\">\n              </form>\n            </div>\n          </div>\n        </div>\n      </div>\n\n      <div class=\"container logo-wrap\">\n        <div class=\"row pt-5\">\n          <div class=\"col-12 text-center\">\n            <a class=\"absolute-toggle d-block d-md-none\" data-toggle=\"collapse\" href=\"#navbarMenu\" role=\"button\" aria-expanded=\"false\" aria-controls=\"navbarMenu\"><span class=\"burger-lines\"></span></a>\n            <h1 class=\"site-logo\"><a href=\"/\">Balita</a></h1>\n          </div>\n        </div>\n      </div>\n      \n      <?$APPLICATION->IncludeComponent(\"bitrix:menu\", \"template1\", Array(\n	\"ALLOW_MULTI_SELECT\" => \"N\",	// Разрешить несколько активных пунктов одновременно\n		\"CHILD_MENU_TYPE\" => \"left\",	// Тип меню для остальных уровней\n		\"DELAY\" => \"N\",	// Откладывать выполнение шаблона меню\n		\"MAX_LEVEL\" => \"1\",	// Уровень вложенности меню\n		\"MENU_CACHE_GET_VARS\" => \"\",	// Значимые переменные запроса\n		\"MENU_CACHE_TIME\" => \"3600\",	// Время кеширования (сек.)\n		\"MENU_CACHE_TYPE\" => \"N\",	// Тип кеширования\n		\"MENU_CACHE_USE_GROUPS\" => \"Y\",	// Учитывать права доступа\n		\"ROOT_MENU_TYPE\" => \"main\",	// Тип меню для первого уровня\n		\"USE_EXT\" => \"N\",	// Подключать файлы с именами вида .тип_меню.menu_ext.php\n		\"COMPONENT_TEMPLATE\" => \".default\"\n	),\n	false\n);?>\n      <!-- <nav class=\"navbar navbar-expand-md  navbar-light bg-light\">\n        <div class=\"container\">\n          <div class=\"collapse navbar-collapse\" id=\"navbarMenu\">\n            <ul class=\"navbar-nav mx-auto\">\n              <li class=\"nav-item\">\n                <a class=\"nav-link active\" href=\"index.html\">Home</a>\n              </li>\n\n              <li class=\"nav-item dropdown\">\n                <a class=\"nav-link dropdown-toggle\" href=\"category.html\" id=\"dropdown05\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">Categories</a>\n                <div class=\"dropdown-menu\" aria-labelledby=\"dropdown05\">\n                  <a class=\"dropdown-item\" href=\"category.html\">Lifestyle</a>\n                  <a class=\"dropdown-item\" href=\"category.html\">Food</a>\n                  <a class=\"dropdown-item\" href=\"category.html\">Adventure</a>\n                  <a class=\"dropdown-item\" href=\"category.html\">Travel</a>\n                  <a class=\"dropdown-item\" href=\"category.html\">Business</a>\n                </div>\n\n              </li>\n              <li class=\"nav-item\">\n                <a class=\"nav-link\" href=\"about.html\">About</a>\n              </li>\n              <li class=\"nav-item\">\n                <a class=\"nav-link\" href=\"contact.html\">Contact</a>\n              </li>\n            </ul>\n            \n          </div>\n        </div>\n      </nav> -->\n\n\n\n    </header>\n    <!-- END header -->\n\";}', 1, 1623007214),
('148f64fcd284d1c65fb366eb7acb765e3', 'fileman', 'enable_component', 'CFileman::UndoEditFile', 'a:2:{s:7:\"absPath\";s:77:\"G:/OpenServer/domains/bitrixzadanieOtAIS.ru/local/templates/balita/header.php\";s:7:\"content\";s:5988:\"<?php if(!defined(\"B_PROLOG_INCLUDED\") || B_PROLOG_INCLUDED!==true) die();?>\n<?php \n  use Bitrix\\Main\\Page\\Asset;\n?>\n<?php ?>\n\n<!doctype html>\n<html lang=\"en\">\n  <head>\n    <?php $APPLICATION->ShowHead() ?>\n    <title><?php $APPLICATION->ShowTitle(\'Colorlib Balita &mdash; Minimal Blog Template\') ?></title>\n    <?php \n      Asset::getInstance()->addString(\'<meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\');\n      Asset::getInstance()->addString(\'<meta charset=\"utf-8\">\');\n      Asset::getInstance()->addString(\'<link href=\"https://fonts.googleapis.com/css?family=Josefin+Sans:300, 400,700\" rel=\"stylesheet\">\');\n\n\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/fonts/flaticon/font/flaticon.css\');\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/fonts/fontawesome/css/font-awesome.min.css\');\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/fonts/ionicons/css/ionicons.min.css\');\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/css/owl.carousel.min.css\');\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/css/animate.css\');\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/css/bootstrap.css\');\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/css/style.css\');\n\n\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/jquery-3.2.1.min.js\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/jquery-migrate-3.0.0.js\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/popper.min.js\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/bootstrap.min.js\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/owl.carousel.min.js\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/jquery.waypoints.min.j\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/jquery.stellar.min.js\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/main.js\');\n    \n    ?>\n  </head>\n  <body>\n    <div id=\"panel\"><?php $APPLICATION->ShowPanel() ?></div>\n\n    <header role=\"banner\">\n      <div class=\"top-bar\">\n        <div class=\"container\">\n          <div class=\"row\">\n            <div class=\"col-9 social\">\n              <a href=\"#\"><span class=\"fa fa-twitter\"></span></a>\n              <a href=\"#\"><span class=\"fa fa-facebook\"></span></a>\n              <a href=\"#\"><span class=\"fa fa-instagram\"></span></a>\n              <a href=\"#\"><span class=\"fa fa-youtube-play\"></span></a>\n              <a href=\"#\"><span class=\"fa fa-vimeo\"></span></a>\n              <a href=\"#\"><span class=\"fa fa-snapchat\"></span></a>\n            </div>\n            <div class=\"col-3 search-top\">\n              <!-- <a href=\"#\"><span class=\"fa fa-search\"></span></a> -->\n              <form action=\"#\" class=\"search-top-form\">\n                <span class=\"icon fa fa-search\"></span>\n                <input type=\"text\" id=\"s\" placeholder=\"Type keyword to search...\">\n              </form>\n            </div>\n          </div>\n        </div>\n      </div>\n\n      <div class=\"container logo-wrap\">\n        <div class=\"row pt-5\">\n          <div class=\"col-12 text-center\">\n            <a class=\"absolute-toggle d-block d-md-none\" data-toggle=\"collapse\" href=\"#navbarMenu\" role=\"button\" aria-expanded=\"false\" aria-controls=\"navbarMenu\"><span class=\"burger-lines\"></span></a>\n            <h1 class=\"site-logo\"><a href=\"/\">Balita</a></h1>\n          </div>\n        </div>\n      </div>\n      \n      <?$APPLICATION->IncludeComponent(\"bitrix:menu\", \"meu\", Array(\n      	\"ALLOW_MULTI_SELECT\" => \"N\",	// Разрешить несколько активных пунктов одновременно\n      		\"CHILD_MENU_TYPE\" => \"left\",	// Тип меню для остальных уровней\n      		\"DELAY\" => \"N\",	// Откладывать выполнение шаблона меню\n      		\"MAX_LEVEL\" => \"1\",	// Уровень вложенности меню\n      		\"MENU_CACHE_GET_VARS\" => \"\",	// Значимые переменные запроса\n      		\"MENU_CACHE_TIME\" => \"3600\",	// Время кеширования (сек.)\n      		\"MENU_CACHE_TYPE\" => \"N\",	// Тип кеширования\n      		\"MENU_CACHE_USE_GROUPS\" => \"Y\",	// Учитывать права доступа\n      		\"ROOT_MENU_TYPE\" => \"main\",	// Тип меню для первого уровня\n      		\"USE_EXT\" => \"N\",	// Подключать файлы с именами вида .тип_меню.menu_ext.php\n      		\"COMPONENT_TEMPLATE\" => \".default\"\n      	),\n      	false,\n      	array(\n      	\"ACTIVE_COMPONENT\" => \"N\"\n      	)\n      );?>\n      <!-- <nav class=\"navbar navbar-expand-md  navbar-light bg-light\">\n        <div class=\"container\">\n          <div class=\"collapse navbar-collapse\" id=\"navbarMenu\">\n            <ul class=\"navbar-nav mx-auto\">\n              <li class=\"nav-item\">\n                <a class=\"nav-link active\" href=\"index.html\">Home</a>\n              </li>\n\n              <li class=\"nav-item dropdown\">\n                <a class=\"nav-link dropdown-toggle\" href=\"category.html\" id=\"dropdown05\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">Categories</a>\n                <div class=\"dropdown-menu\" aria-labelledby=\"dropdown05\">\n                  <a class=\"dropdown-item\" href=\"category.html\">Lifestyle</a>\n                  <a class=\"dropdown-item\" href=\"category.html\">Food</a>\n                  <a class=\"dropdown-item\" href=\"category.html\">Adventure</a>\n                  <a class=\"dropdown-item\" href=\"category.html\">Travel</a>\n                  <a class=\"dropdown-item\" href=\"category.html\">Business</a>\n                </div>\n\n              </li>\n              <li class=\"nav-item\">\n                <a class=\"nav-link\" href=\"about.html\">About</a>\n              </li>\n              <li class=\"nav-item\">\n                <a class=\"nav-link\" href=\"contact.html\">Contact</a>\n              </li>\n            </ul>\n            \n          </div>\n        </div>\n      </nav> -->\n\n\n\n    </header>\n    <!-- END header -->\n\";}', 1, 1623007904),
('14c960141d2782aaeab4b32a7570f4066', 'fileman', 'edit_menu', 'CFileman::UndoEditFile', 'a:2:{s:7:\"absPath\";s:58:\"G:/OpenServer/domains/bitrixzadanieOtAIS.ru/.main.menu.php\";s:7:\"content\";s:308:\"<?\n$aMenuLinks = Array(\n	Array(\n		\"Home\", \n		\"/\", \n		Array(), \n		Array(), \n		\"\" \n	),\n	Array(\n		\"Categories\", \n		\"/сategories/\", \n		Array(), \n		Array(), \n		\"\" \n	),\n	Array(\n		\"About\", \n		\"/about/\", \n		Array(), \n		Array(), \n		\"\" \n	),\n	Array(\n		\"Contact\", \n		\"/contact/\", \n		Array(), \n		Array(), \n		\"\" \n	)\n);\n?>\";}', 1, 1623047543),
('14d76fae90decfcfd2ea03f93f6a2e61c', 'fileman', 'edit_file', 'CFileman::UndoEditFile', 'a:2:{s:7:\"absPath\";s:115:\"G:/OpenServer/domains/bitrixzadanieOtAIS.ru/bitrix/templates/.default/components/bitrix/menu/template1/template.php\";s:7:\"content\";s:475:\"<?if (!defined(\"B_PROLOG_INCLUDED\") || B_PROLOG_INCLUDED!==true)die();?>\n\n<?if (!empty($arResult)):?>\n<ul class=\"left-menu\">\n\n<?\nforeach($arResult as $arItem):\n	if($arParams[\"MAX_LEVEL\"] == 1 && $arItem[\"DEPTH_LEVEL\"] > 1) \n		continue;\n?>\n	<?if($arItem[\"SELECTED\"]):?>\n		<li><a href=\"<?=$arItem[\"LINK\"]?>\" class=\"selected\"><?=$arItem[\"TEXT\"]?></a></li>\n	<?else:?>\n		<li><a href=\"<?=$arItem[\"LINK\"]?>\"><?=$arItem[\"TEXT\"]?></a></li>\n	<?endif?>\n	\n<?endforeach?>\n\n</ul>\n<?endif?>\";}', 1, 1623007242),
('15064f9e19ca9e3beff942c64db6d6d10', 'fileman', 'disable_component', 'CFileman::UndoEditFile', 'a:2:{s:7:\"absPath\";s:77:\"G:/OpenServer/domains/bitrixzadanieOtAIS.ru/local/templates/balita/header.php\";s:7:\"content\";s:5288:\"<?php if(!defined(\"B_PROLOG_INCLUDED\") || B_PROLOG_INCLUDED!==true) die();?>\n<?php \n  use Bitrix\\Main\\Page\\Asset;\n?>\n<?php ?>\n\n<!doctype html>\n<html lang=\"en\">\n  <head>\n    <?php $APPLICATION->ShowHead() ?>\n    <title><?php $APPLICATION->ShowTitle(\'Colorlib Balita &mdash; Minimal Blog Template\') ?></title>\n    <?php \n      Asset::getInstance()->addString(\'<meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\');\n      Asset::getInstance()->addString(\'<meta charset=\"utf-8\">\');\n      Asset::getInstance()->addString(\'<link href=\"https://fonts.googleapis.com/css?family=Josefin+Sans:300, 400,700\" rel=\"stylesheet\">\');\n\n\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/fonts/flaticon/font/flaticon.css\');\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/fonts/fontawesome/css/font-awesome.min.css\');\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/fonts/ionicons/css/ionicons.min.css\');\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/css/owl.carousel.min.css\');\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/css/animate.css\');\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/css/bootstrap.css\');\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/css/style.css\');\n\n\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/jquery-3.2.1.min.js\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/jquery-migrate-3.0.0.js\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/popper.min.js\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/bootstrap.min.js\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/owl.carousel.min.js\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/jquery.waypoints.min.j\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/jquery.stellar.min.js\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/main.js\');\n    \n    ?>\n  </head>\n  <body>\n    <div id=\"panel\"><?php $APPLICATION->ShowPanel() ?></div>\n\n    <header role=\"banner\">\n      <div class=\"top-bar\">\n        <div class=\"container\">\n          <div class=\"row\">\n            <div class=\"col-9 social\">\n              <a href=\"#\"><span class=\"fa fa-twitter\"></span></a>\n              <a href=\"#\"><span class=\"fa fa-facebook\"></span></a>\n              <a href=\"#\"><span class=\"fa fa-instagram\"></span></a>\n              <a href=\"#\"><span class=\"fa fa-youtube-play\"></span></a>\n              <a href=\"#\"><span class=\"fa fa-vimeo\"></span></a>\n              <a href=\"#\"><span class=\"fa fa-snapchat\"></span></a>\n            </div>\n            <div class=\"col-3 search-top\">\n              <!-- <a href=\"#\"><span class=\"fa fa-search\"></span></a> -->\n              <form action=\"#\" class=\"search-top-form\">\n                <span class=\"icon fa fa-search\"></span>\n                <input type=\"text\" id=\"s\" placeholder=\"Type keyword to search...\">\n              </form>\n            </div>\n          </div>\n        </div>\n      </div>\n\n      <div class=\"container logo-wrap\">\n        <div class=\"row pt-5\">\n          <div class=\"col-12 text-center\">\n            <a class=\"absolute-toggle d-block d-md-none\" data-toggle=\"collapse\" href=\"#navbarMenu\" role=\"button\" aria-expanded=\"false\" aria-controls=\"navbarMenu\"><span class=\"burger-lines\"></span></a>\n            <h1 class=\"site-logo\"><a href=\"/\">Balita</a></h1>\n          </div>\n        </div>\n      </div>\n      \n      <?$APPLICATION->IncludeComponent(\"bitrix:menu\", \"menu_balita\", array(\n	\"ALLOW_MULTI_SELECT\" => \"N\",\n		\"CHILD_MENU_TYPE\" => \"left\",\n		\"DELAY\" => \"N\",\n		\"MAX_LEVEL\" => \"1\",\n		\"MENU_CACHE_GET_VARS\" => \"\",\n		\"MENU_CACHE_TIME\" => \"3600\",\n		\"MENU_CACHE_TYPE\" => \"N\",\n		\"MENU_CACHE_USE_GROUPS\" => \"Y\",\n		\"ROOT_MENU_TYPE\" => \"main\",\n		\"USE_EXT\" => \"N\",\n		\"COMPONENT_TEMPLATE\" => \"menu_balita\"\n	),\n	false,\n	array(\n	\"ACTIVE_COMPONENT\" => \"Y\"\n	)\n);?>\n      <!-- <nav class=\"navbar navbar-expand-md  navbar-light bg-light\">\n        <div class=\"container\">\n          <div class=\"collapse navbar-collapse\" id=\"navbarMenu\">\n            <ul class=\"navbar-nav mx-auto\">\n              <li class=\"nav-item\">\n                <a class=\"nav-link active\" href=\"index.html\">Home</a>\n              </li>\n\n              <li class=\"nav-item dropdown\">\n                <a class=\"nav-link dropdown-toggle\" href=\"category.html\" id=\"dropdown05\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">Categories</a>\n                <div class=\"dropdown-menu\" aria-labelledby=\"dropdown05\">\n                  <a class=\"dropdown-item\" href=\"category.html\">Lifestyle</a>\n                  <a class=\"dropdown-item\" href=\"category.html\">Food</a>\n                  <a class=\"dropdown-item\" href=\"category.html\">Adventure</a>\n                  <a class=\"dropdown-item\" href=\"category.html\">Travel</a>\n                  <a class=\"dropdown-item\" href=\"category.html\">Business</a>\n                </div>\n\n              </li>\n              <li class=\"nav-item\">\n                <a class=\"nav-link\" href=\"about.html\">About</a>\n              </li>\n              <li class=\"nav-item\">\n                <a class=\"nav-link\" href=\"contact.html\">Contact</a>\n              </li>\n            </ul>\n            \n          </div>\n        </div>\n      </nav> -->\n\n\n\n    </header>\n    <!-- END header -->\n\";}', 1, 1623007708),
('173b8038a5f93b476e6e6af0f41b15c22', 'fileman', 'edit_component_props', 'CFileman::UndoEditFile', 'a:2:{s:7:\"absPath\";s:77:\"G:/OpenServer/domains/bitrixzadanieOtAIS.ru/local/templates/balita/header.php\";s:7:\"content\";s:5288:\"<?php if(!defined(\"B_PROLOG_INCLUDED\") || B_PROLOG_INCLUDED!==true) die();?>\n<?php \n  use Bitrix\\Main\\Page\\Asset;\n?>\n<?php ?>\n\n<!doctype html>\n<html lang=\"en\">\n  <head>\n    <?php $APPLICATION->ShowHead() ?>\n    <title><?php $APPLICATION->ShowTitle(\'Colorlib Balita &mdash; Minimal Blog Template\') ?></title>\n    <?php \n      Asset::getInstance()->addString(\'<meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\');\n      Asset::getInstance()->addString(\'<meta charset=\"utf-8\">\');\n      Asset::getInstance()->addString(\'<link href=\"https://fonts.googleapis.com/css?family=Josefin+Sans:300, 400,700\" rel=\"stylesheet\">\');\n\n\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/fonts/flaticon/font/flaticon.css\');\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/fonts/fontawesome/css/font-awesome.min.css\');\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/fonts/ionicons/css/ionicons.min.css\');\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/css/owl.carousel.min.css\');\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/css/animate.css\');\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/css/bootstrap.css\');\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/css/style.css\');\n\n\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/jquery-3.2.1.min.js\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/jquery-migrate-3.0.0.js\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/popper.min.js\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/bootstrap.min.js\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/owl.carousel.min.js\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/jquery.waypoints.min.j\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/jquery.stellar.min.js\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/main.js\');\n    \n    ?>\n  </head>\n  <body>\n    <div id=\"panel\"><?php $APPLICATION->ShowPanel() ?></div>\n\n    <header role=\"banner\">\n      <div class=\"top-bar\">\n        <div class=\"container\">\n          <div class=\"row\">\n            <div class=\"col-9 social\">\n              <a href=\"#\"><span class=\"fa fa-twitter\"></span></a>\n              <a href=\"#\"><span class=\"fa fa-facebook\"></span></a>\n              <a href=\"#\"><span class=\"fa fa-instagram\"></span></a>\n              <a href=\"#\"><span class=\"fa fa-youtube-play\"></span></a>\n              <a href=\"#\"><span class=\"fa fa-vimeo\"></span></a>\n              <a href=\"#\"><span class=\"fa fa-snapchat\"></span></a>\n            </div>\n            <div class=\"col-3 search-top\">\n              <!-- <a href=\"#\"><span class=\"fa fa-search\"></span></a> -->\n              <form action=\"#\" class=\"search-top-form\">\n                <span class=\"icon fa fa-search\"></span>\n                <input type=\"text\" id=\"s\" placeholder=\"Type keyword to search...\">\n              </form>\n            </div>\n          </div>\n        </div>\n      </div>\n\n      <div class=\"container logo-wrap\">\n        <div class=\"row pt-5\">\n          <div class=\"col-12 text-center\">\n            <a class=\"absolute-toggle d-block d-md-none\" data-toggle=\"collapse\" href=\"#navbarMenu\" role=\"button\" aria-expanded=\"false\" aria-controls=\"navbarMenu\"><span class=\"burger-lines\"></span></a>\n            <h1 class=\"site-logo\"><a href=\"/\">Balita</a></h1>\n          </div>\n        </div>\n      </div>\n      \n      <?$APPLICATION->IncludeComponent(\"bitrix:menu\", \"menu_balita\", array(\n	\"ALLOW_MULTI_SELECT\" => \"N\",\n		\"CHILD_MENU_TYPE\" => \"left\",\n		\"DELAY\" => \"N\",\n		\"MAX_LEVEL\" => \"1\",\n		\"MENU_CACHE_GET_VARS\" => \"\",\n		\"MENU_CACHE_TIME\" => \"3600\",\n		\"MENU_CACHE_TYPE\" => \"N\",\n		\"MENU_CACHE_USE_GROUPS\" => \"Y\",\n		\"ROOT_MENU_TYPE\" => \"main\",\n		\"USE_EXT\" => \"N\",\n		\"COMPONENT_TEMPLATE\" => \"menu_balita\"\n	),\n	false,\n	array(\n	\"ACTIVE_COMPONENT\" => \"N\"\n	)\n);?>\n      <!-- <nav class=\"navbar navbar-expand-md  navbar-light bg-light\">\n        <div class=\"container\">\n          <div class=\"collapse navbar-collapse\" id=\"navbarMenu\">\n            <ul class=\"navbar-nav mx-auto\">\n              <li class=\"nav-item\">\n                <a class=\"nav-link active\" href=\"index.html\">Home</a>\n              </li>\n\n              <li class=\"nav-item dropdown\">\n                <a class=\"nav-link dropdown-toggle\" href=\"category.html\" id=\"dropdown05\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">Categories</a>\n                <div class=\"dropdown-menu\" aria-labelledby=\"dropdown05\">\n                  <a class=\"dropdown-item\" href=\"category.html\">Lifestyle</a>\n                  <a class=\"dropdown-item\" href=\"category.html\">Food</a>\n                  <a class=\"dropdown-item\" href=\"category.html\">Adventure</a>\n                  <a class=\"dropdown-item\" href=\"category.html\">Travel</a>\n                  <a class=\"dropdown-item\" href=\"category.html\">Business</a>\n                </div>\n\n              </li>\n              <li class=\"nav-item\">\n                <a class=\"nav-link\" href=\"about.html\">About</a>\n              </li>\n              <li class=\"nav-item\">\n                <a class=\"nav-link\" href=\"contact.html\">Contact</a>\n              </li>\n            </ul>\n            \n          </div>\n        </div>\n      </nav> -->\n\n\n\n    </header>\n    <!-- END header -->\n\";}', 1, 1623007717),
('1885f16139bad9749f3185460656725b4', 'fileman', 'disable_component', 'CFileman::UndoEditFile', 'a:2:{s:7:\"absPath\";s:77:\"G:/OpenServer/domains/bitrixzadanieOtAIS.ru/local/templates/balita/header.php\";s:7:\"content\";s:5264:\"<?php if(!defined(\"B_PROLOG_INCLUDED\") || B_PROLOG_INCLUDED!==true) die();?>\n<?php \n  use Bitrix\\Main\\Page\\Asset;\n?>\n<?php ?>\n\n<!doctype html>\n<html lang=\"en\">\n  <head>\n    <?php $APPLICATION->ShowHead() ?>\n    <title><?php $APPLICATION->ShowTitle(\'Colorlib Balita &mdash; Minimal Blog Template\') ?></title>\n    <?php \n      Asset::getInstance()->addString(\'<meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\');\n      Asset::getInstance()->addString(\'<meta charset=\"utf-8\">\');\n      Asset::getInstance()->addString(\'<link href=\"https://fonts.googleapis.com/css?family=Josefin+Sans:300, 400,700\" rel=\"stylesheet\">\');\n\n\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/fonts/flaticon/font/flaticon.css\');\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/fonts/fontawesome/css/font-awesome.min.css\');\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/fonts/ionicons/css/ionicons.min.css\');\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/css/owl.carousel.min.css\');\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/css/animate.css\');\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/css/bootstrap.css\');\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/css/style.css\');\n\n\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/jquery-3.2.1.min.js\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/jquery-migrate-3.0.0.js\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/popper.min.js\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/bootstrap.min.js\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/owl.carousel.min.js\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/jquery.waypoints.min.j\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/jquery.stellar.min.js\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/main.js\');\n    \n    ?>\n  </head>\n  <body>\n    <div id=\"panel\"><?php $APPLICATION->ShowPanel() ?></div>\n\n    <header role=\"banner\">\n      <div class=\"top-bar\">\n        <div class=\"container\">\n          <div class=\"row\">\n            <div class=\"col-9 social\">\n              <a href=\"#\"><span class=\"fa fa-twitter\"></span></a>\n              <a href=\"#\"><span class=\"fa fa-facebook\"></span></a>\n              <a href=\"#\"><span class=\"fa fa-instagram\"></span></a>\n              <a href=\"#\"><span class=\"fa fa-youtube-play\"></span></a>\n              <a href=\"#\"><span class=\"fa fa-vimeo\"></span></a>\n              <a href=\"#\"><span class=\"fa fa-snapchat\"></span></a>\n            </div>\n            <div class=\"col-3 search-top\">\n              <!-- <a href=\"#\"><span class=\"fa fa-search\"></span></a> -->\n              <form action=\"#\" class=\"search-top-form\">\n                <span class=\"icon fa fa-search\"></span>\n                <input type=\"text\" id=\"s\" placeholder=\"Type keyword to search...\">\n              </form>\n            </div>\n          </div>\n        </div>\n      </div>\n\n      <div class=\"container logo-wrap\">\n        <div class=\"row pt-5\">\n          <div class=\"col-12 text-center\">\n            <a class=\"absolute-toggle d-block d-md-none\" data-toggle=\"collapse\" href=\"#navbarMenu\" role=\"button\" aria-expanded=\"false\" aria-controls=\"navbarMenu\"><span class=\"burger-lines\"></span></a>\n            <h1 class=\"site-logo\"><a href=\"/\">Balita</a></h1>\n          </div>\n        </div>\n      </div>\n      \n      <?$APPLICATION->IncludeComponent(\n	\"bitrix:menu\", \n	\"menu_balita\", \n	array(\n		\"ALLOW_MULTI_SELECT\" => \"N\",\n		\"CHILD_MENU_TYPE\" => \"left\",\n		\"DELAY\" => \"N\",\n		\"MAX_LEVEL\" => \"1\",\n		\"MENU_CACHE_GET_VARS\" => array(\n		),\n		\"MENU_CACHE_TIME\" => \"3600\",\n		\"MENU_CACHE_TYPE\" => \"N\",\n		\"MENU_CACHE_USE_GROUPS\" => \"Y\",\n		\"ROOT_MENU_TYPE\" => \"main\",\n		\"USE_EXT\" => \"N\",\n		\"COMPONENT_TEMPLATE\" => \"menu_balita\"\n	),\n	false\n);?>\n      <!-- <nav class=\"navbar navbar-expand-md  navbar-light bg-light\">\n        <div class=\"container\">\n          <div class=\"collapse navbar-collapse\" id=\"navbarMenu\">\n            <ul class=\"navbar-nav mx-auto\">\n              <li class=\"nav-item\">\n                <a class=\"nav-link active\" href=\"index.html\">Home</a>\n              </li>\n\n              <li class=\"nav-item dropdown\">\n                <a class=\"nav-link dropdown-toggle\" href=\"category.html\" id=\"dropdown05\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">Categories</a>\n                <div class=\"dropdown-menu\" aria-labelledby=\"dropdown05\">\n                  <a class=\"dropdown-item\" href=\"category.html\">Lifestyle</a>\n                  <a class=\"dropdown-item\" href=\"category.html\">Food</a>\n                  <a class=\"dropdown-item\" href=\"category.html\">Adventure</a>\n                  <a class=\"dropdown-item\" href=\"category.html\">Travel</a>\n                  <a class=\"dropdown-item\" href=\"category.html\">Business</a>\n                </div>\n\n              </li>\n              <li class=\"nav-item\">\n                <a class=\"nav-link\" href=\"about.html\">About</a>\n              </li>\n              <li class=\"nav-item\">\n                <a class=\"nav-link\" href=\"contact.html\">Contact</a>\n              </li>\n            </ul>\n            \n          </div>\n        </div>\n      </nav> -->\n\n\n\n    </header>\n    <!-- END header -->\n\";}', 1, 1623007623),
('1887af86b864952441cbccf42ec1ba409', 'fileman', 'edit_component_props', 'CFileman::UndoEditFile', 'a:2:{s:7:\"absPath\";s:77:\"G:/OpenServer/domains/bitrixzadanieOtAIS.ru/local/templates/balita/header.php\";s:7:\"content\";s:5260:\"<?php if(!defined(\"B_PROLOG_INCLUDED\") || B_PROLOG_INCLUDED!==true) die();?>\n<?php \n  use Bitrix\\Main\\Page\\Asset;\n?>\n<?php ?>\n\n<!doctype html>\n<html lang=\"en\">\n  <head>\n    <?php $APPLICATION->ShowHead() ?>\n    <title><?php $APPLICATION->ShowTitle(\'Colorlib Balita &mdash; Minimal Blog Template\') ?></title>\n    <?php \n      Asset::getInstance()->addString(\'<meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\');\n      Asset::getInstance()->addString(\'<meta charset=\"utf-8\">\');\n      Asset::getInstance()->addString(\'<link href=\"https://fonts.googleapis.com/css?family=Josefin+Sans:300, 400,700\" rel=\"stylesheet\">\');\n\n\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/fonts/flaticon/font/flaticon.css\');\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/fonts/fontawesome/css/font-awesome.min.css\');\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/fonts/ionicons/css/ionicons.min.css\');\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/css/owl.carousel.min.css\');\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/css/animate.css\');\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/css/bootstrap.css\');\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/css/style.css\');\n\n\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/jquery-3.2.1.min.js\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/jquery-migrate-3.0.0.js\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/popper.min.js\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/bootstrap.min.js\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/owl.carousel.min.js\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/jquery.waypoints.min.j\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/jquery.stellar.min.js\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/main.js\');\n    \n    ?>\n  </head>\n  <body>\n    <div id=\"panel\"><?php $APPLICATION->ShowPanel() ?></div>\n\n    <header role=\"banner\">\n      <div class=\"top-bar\">\n        <div class=\"container\">\n          <div class=\"row\">\n            <div class=\"col-9 social\">\n              <a href=\"#\"><span class=\"fa fa-twitter\"></span></a>\n              <a href=\"#\"><span class=\"fa fa-facebook\"></span></a>\n              <a href=\"#\"><span class=\"fa fa-instagram\"></span></a>\n              <a href=\"#\"><span class=\"fa fa-youtube-play\"></span></a>\n              <a href=\"#\"><span class=\"fa fa-vimeo\"></span></a>\n              <a href=\"#\"><span class=\"fa fa-snapchat\"></span></a>\n            </div>\n            <div class=\"col-3 search-top\">\n              <!-- <a href=\"#\"><span class=\"fa fa-search\"></span></a> -->\n              <form action=\"#\" class=\"search-top-form\">\n                <span class=\"icon fa fa-search\"></span>\n                <input type=\"text\" id=\"s\" placeholder=\"Type keyword to search...\">\n              </form>\n            </div>\n          </div>\n        </div>\n      </div>\n\n      <div class=\"container logo-wrap\">\n        <div class=\"row pt-5\">\n          <div class=\"col-12 text-center\">\n            <a class=\"absolute-toggle d-block d-md-none\" data-toggle=\"collapse\" href=\"#navbarMenu\" role=\"button\" aria-expanded=\"false\" aria-controls=\"navbarMenu\"><span class=\"burger-lines\"></span></a>\n            <h1 class=\"site-logo\"><a href=\"/\">Balita</a></h1>\n          </div>\n        </div>\n      </div>\n      \n      <?$APPLICATION->IncludeComponent(\n	\"bitrix:menu\", \n	\"template1\", \n	array(\n		\"ALLOW_MULTI_SELECT\" => \"N\",\n		\"CHILD_MENU_TYPE\" => \"left\",\n		\"DELAY\" => \"N\",\n		\"MAX_LEVEL\" => \"1\",\n		\"MENU_CACHE_GET_VARS\" => array(\n		),\n		\"MENU_CACHE_TIME\" => \"3600\",\n		\"MENU_CACHE_TYPE\" => \"N\",\n		\"MENU_CACHE_USE_GROUPS\" => \"Y\",\n		\"ROOT_MENU_TYPE\" => \"main\",\n		\"USE_EXT\" => \"N\",\n		\"COMPONENT_TEMPLATE\" => \"template1\"\n	),\n	false\n);?>\n      <!-- <nav class=\"navbar navbar-expand-md  navbar-light bg-light\">\n        <div class=\"container\">\n          <div class=\"collapse navbar-collapse\" id=\"navbarMenu\">\n            <ul class=\"navbar-nav mx-auto\">\n              <li class=\"nav-item\">\n                <a class=\"nav-link active\" href=\"index.html\">Home</a>\n              </li>\n\n              <li class=\"nav-item dropdown\">\n                <a class=\"nav-link dropdown-toggle\" href=\"category.html\" id=\"dropdown05\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">Categories</a>\n                <div class=\"dropdown-menu\" aria-labelledby=\"dropdown05\">\n                  <a class=\"dropdown-item\" href=\"category.html\">Lifestyle</a>\n                  <a class=\"dropdown-item\" href=\"category.html\">Food</a>\n                  <a class=\"dropdown-item\" href=\"category.html\">Adventure</a>\n                  <a class=\"dropdown-item\" href=\"category.html\">Travel</a>\n                  <a class=\"dropdown-item\" href=\"category.html\">Business</a>\n                </div>\n\n              </li>\n              <li class=\"nav-item\">\n                <a class=\"nav-link\" href=\"about.html\">About</a>\n              </li>\n              <li class=\"nav-item\">\n                <a class=\"nav-link\" href=\"contact.html\">Contact</a>\n              </li>\n            </ul>\n            \n          </div>\n        </div>\n      </nav> -->\n\n\n\n    </header>\n    <!-- END header -->\n\";}', 1, 1623007382);
INSERT INTO `b_undo` (`ID`, `MODULE_ID`, `UNDO_TYPE`, `UNDO_HANDLER`, `CONTENT`, `USER_ID`, `TIMESTAMP_X`) VALUES
('19177f49840388ec09166065081a413cd', 'fileman', 'edit_component_props', 'CFileman::UndoEditFile', 'a:2:{s:7:\"absPath\";s:77:\"G:/OpenServer/domains/bitrixzadanieOtAIS.ru/local/templates/balita/header.php\";s:7:\"content\";s:5277:\"<?php if(!defined(\"B_PROLOG_INCLUDED\") || B_PROLOG_INCLUDED!==true) die();?>\n<?php \n  use Bitrix\\Main\\Page\\Asset;\n?>\n<?php ?>\n\n<!doctype html>\n<html lang=\"en\">\n  <head>\n    <?php $APPLICATION->ShowHead() ?>\n    <title><?php $APPLICATION->ShowTitle(\'Colorlib Balita &mdash; Minimal Blog Template\') ?></title>\n    <?php \n      Asset::getInstance()->addString(\'<meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\');\n      Asset::getInstance()->addString(\'<meta charset=\"utf-8\">\');\n      Asset::getInstance()->addString(\'<link href=\"https://fonts.googleapis.com/css?family=Josefin+Sans:300, 400,700\" rel=\"stylesheet\">\');\n\n\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/fonts/flaticon/font/flaticon.css\');\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/fonts/fontawesome/css/font-awesome.min.css\');\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/fonts/ionicons/css/ionicons.min.css\');\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/css/owl.carousel.min.css\');\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/css/animate.css\');\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/css/bootstrap.css\');\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/css/style.css\');\n\n\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/jquery-3.2.1.min.js\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/jquery-migrate-3.0.0.js\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/popper.min.js\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/bootstrap.min.js\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/owl.carousel.min.js\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/jquery.waypoints.min.j\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/jquery.stellar.min.js\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/main.js\');\n    \n    ?>\n  </head>\n  <body>\n    <div id=\"panel\"><?php $APPLICATION->ShowPanel() ?></div>\n\n    <header role=\"banner\">\n      <div class=\"top-bar\">\n        <div class=\"container\">\n          <div class=\"row\">\n            <div class=\"col-9 social\">\n              <a href=\"#\"><span class=\"fa fa-twitter\"></span></a>\n              <a href=\"#\"><span class=\"fa fa-facebook\"></span></a>\n              <a href=\"#\"><span class=\"fa fa-instagram\"></span></a>\n              <a href=\"#\"><span class=\"fa fa-youtube-play\"></span></a>\n              <a href=\"#\"><span class=\"fa fa-vimeo\"></span></a>\n              <a href=\"#\"><span class=\"fa fa-snapchat\"></span></a>\n            </div>\n            <div class=\"col-3 search-top\">\n              <!-- <a href=\"#\"><span class=\"fa fa-search\"></span></a> -->\n              <form action=\"#\" class=\"search-top-form\">\n                <span class=\"icon fa fa-search\"></span>\n                <input type=\"text\" id=\"s\" placeholder=\"Type keyword to search...\">\n              </form>\n            </div>\n          </div>\n        </div>\n      </div>\n\n      <div class=\"container logo-wrap\">\n        <div class=\"row pt-5\">\n          <div class=\"col-12 text-center\">\n            <a class=\"absolute-toggle d-block d-md-none\" data-toggle=\"collapse\" href=\"#navbarMenu\" role=\"button\" aria-expanded=\"false\" aria-controls=\"navbarMenu\"><span class=\"burger-lines\"></span></a>\n            <h1 class=\"site-logo\"><a href=\"/\">Balita</a></h1>\n          </div>\n        </div>\n      </div>\n      \n      <?$APPLICATION->IncludeComponent(\"bitrix:menu\", \"meu\", array(\n	\"ALLOW_MULTI_SELECT\" => \"N\",\n		\"CHILD_MENU_TYPE\" => \"left\",\n		\"DELAY\" => \"N\",\n		\"MAX_LEVEL\" => \"1\",\n		\"MENU_CACHE_GET_VARS\" => \"\",\n		\"MENU_CACHE_TIME\" => \"3600\",\n		\"MENU_CACHE_TYPE\" => \"N\",\n		\"MENU_CACHE_USE_GROUPS\" => \"Y\",\n		\"ROOT_MENU_TYPE\" => \"main\",\n		\"USE_EXT\" => \"N\",\n		\"COMPONENT_TEMPLATE\" => \".default\"\n	),\n	false,\n	array(\n	\"ACTIVE_COMPONENT\" => \"N\"\n	)\n);?>\n      <!-- <nav class=\"navbar navbar-expand-md  navbar-light bg-light\">\n        <div class=\"container\">\n          <div class=\"collapse navbar-collapse\" id=\"navbarMenu\">\n            <ul class=\"navbar-nav mx-auto\">\n              <li class=\"nav-item\">\n                <a class=\"nav-link active\" href=\"index.html\">Home</a>\n              </li>\n\n              <li class=\"nav-item dropdown\">\n                <a class=\"nav-link dropdown-toggle\" href=\"category.html\" id=\"dropdown05\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">Categories</a>\n                <div class=\"dropdown-menu\" aria-labelledby=\"dropdown05\">\n                  <a class=\"dropdown-item\" href=\"category.html\">Lifestyle</a>\n                  <a class=\"dropdown-item\" href=\"category.html\">Food</a>\n                  <a class=\"dropdown-item\" href=\"category.html\">Adventure</a>\n                  <a class=\"dropdown-item\" href=\"category.html\">Travel</a>\n                  <a class=\"dropdown-item\" href=\"category.html\">Business</a>\n                </div>\n\n              </li>\n              <li class=\"nav-item\">\n                <a class=\"nav-link\" href=\"about.html\">About</a>\n              </li>\n              <li class=\"nav-item\">\n                <a class=\"nav-link\" href=\"contact.html\">Contact</a>\n              </li>\n            </ul>\n            \n          </div>\n        </div>\n      </nav> -->\n\n\n\n    </header>\n    <!-- END header -->\n\";}', 1, 1623007977),
('198d1e605a47631b1d501a8486d3c36e5', 'fileman', 'new_section', 'CFileman::UndoNewSection', 'a:4:{s:7:\"absPath\";s:49:\"G:/OpenServer/domains/bitrixzadanieOtAIS.ru/about\";s:4:\"path\";s:6:\"/about\";s:4:\"site\";s:2:\"s1\";s:4:\"menu\";a:3:{s:8:\"menuFile\";s:15:\"/.main.menu.php\";s:8:\"menuName\";s:5:\"About\";s:8:\"menuPath\";s:7:\"/about/\";}}', 1, 1623005448),
('19fe5e22322ba15a0c86d6faa2e92267c', 'fileman', 'edit_file', 'CFileman::UndoEditFile', 'a:2:{s:7:\"absPath\";s:53:\"G:/OpenServer/domains/bitrixzadanieOtAIS.ru/index.php\";s:7:\"content\";s:14848:\"<?\r\nrequire($_SERVER[\"DOCUMENT_ROOT\"].\"/bitrix/header.php\");\r\n$APPLICATION->SetPageProperty(\"title\", \"Демонстрационная версия продукта «1С-Битрикс: Управление сайтом»\");\r\n$APPLICATION->SetPageProperty(\"NOT_SHOW_NAV_CHAIN\", \"Y\");\r\n$APPLICATION->SetTitle(\"Главная страница\");\r\n?>\r\n\r\n\r\n    <section class=\"site-section pt-5\">\r\n      <div class=\"container\">\r\n        <div class=\"row\">\r\n          <div class=\"col-md-12\">\r\n\r\n            <div class=\"owl-carousel owl-theme home-slider\">\r\n              <div>\r\n                <a href=\"blog-single.html\" class=\"a-block d-flex align-items-center height-lg\" style=\"background-image: url(\'<?=DEFAULT_TEMPLATE_PASS?>/images/img_1.jpg\'); \">\r\n                  <div class=\"text half-to-full\">\r\n                    <div class=\"post-meta\">\r\n                      <span class=\"category\">Lifestyle</span>\r\n                      <span class=\"mr-2\">March 15, 2018 </span> &bullet;\r\n                      <span class=\"ml-2\"><span class=\"fa fa-comments\"></span> 3</span>\r\n                    </div>\r\n                    <h3>There’s a Cool New Way for Men to Wear Socks and Sandals</h3>\r\n                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quidem nobis, ut dicta eaque ipsa laudantium!</p>\r\n                  </div>\r\n                </a>\r\n              </div>\r\n              <div>\r\n                <a href=\"blog-single.html\" class=\"a-block d-flex align-items-center height-lg\" style=\"background-image: url(\'<?=DEFAULT_TEMPLATE_PASS?>/images/img_2.jpg\'); \">\r\n                  <div class=\"text half-to-full\">\r\n                    <div class=\"post-meta\">\r\n                      <span class=\"category\">Lifestyle</span>\r\n                      <span class=\"mr-2\">March 15, 2018 </span> &bullet;\r\n                      <span class=\"ml-2\"><span class=\"fa fa-comments\"></span> 3</span>\r\n                    </div>\r\n                    <h3>There’s a Cool New Way for Men to Wear Socks and Sandals</h3>\r\n                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quidem nobis, ut dicta eaque ipsa laudantium!</p>\r\n                  </div>\r\n                </a>\r\n              </div>\r\n              <div>\r\n                <a href=\"blog-single.html\" class=\"a-block d-flex align-items-center height-lg\" style=\"background-image: url(\'<?=DEFAULT_TEMPLATE_PASS?>/images/img_3.jpg\'); \">\r\n                  <div class=\"text half-to-full\">\r\n                    <div class=\"post-meta\">\r\n                      <span class=\"category\">Lifestyle</span>\r\n                      <span class=\"mr-2\">March 15, 2018 </span> &bullet;\r\n                      <span class=\"ml-2\"><span class=\"fa fa-comments\"></span> 3</span>\r\n                    </div>\r\n                    <h3>There’s a Cool New Way for Men to Wear Socks and Sandals</h3>\r\n                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quidem nobis, ut dicta eaque ipsa laudantium!</p>\r\n                  </div>\r\n                </a>\r\n              </div>\r\n            </div>\r\n            \r\n          </div>\r\n        </div>\r\n      </div>\r\n\r\n\r\n    </section>\r\n    <!-- END section -->\r\n\r\n    <section class=\"site-section py-sm\">\r\n      <div class=\"container\">\r\n        <div class=\"row\">\r\n          <div class=\"col-md-6\">\r\n            <h2 class=\"mb-4\">Lifestyle Category</h2>\r\n          </div>\r\n        </div>\r\n        <div class=\"row blog-entries\">\r\n          <div class=\"col-md-12 col-lg-8 main-content\">\r\n            <div class=\"row\">\r\n              <div class=\"col-md-6\">\r\n                <a href=\"blog-single.html\" class=\"blog-entry element-animate\" data-animate-effect=\"fadeIn\">\r\n                  <img src=\"<?=DEFAULT_TEMPLATE_PASS?>/images/img_5.jpg\" alt=\"Image placeholder\">\r\n                  <div class=\"blog-content-body\">\r\n                    <div class=\"post-meta\">\r\n                      <span class=\"category\">Food</span>\r\n                      <span class=\"mr-2\">March 15, 2018 </span> &bullet;\r\n                      <span class=\"ml-2\"><span class=\"fa fa-comments\"></span> 3</span>\r\n                    </div>\r\n                    <h2>There’s a Cool New Way for Men to Wear Socks and Sandals</h2>\r\n                  </div>\r\n                </a>\r\n              </div>\r\n              <div class=\"col-md-6\">\r\n                <a href=\"blog-single.html\" class=\"blog-entry element-animate\" data-animate-effect=\"fadeIn\">\r\n                  <img src=\"<?=DEFAULT_TEMPLATE_PASS?>/images/img_6.jpg\" alt=\"Image placeholder\">\r\n                  <div class=\"blog-content-body\">\r\n                    <div class=\"post-meta\">\r\n                      <span class=\"category\">Travel</span>\r\n                        <span class=\"mr-2\">March 15, 2018 </span> &bullet;\r\n                        <span class=\"ml-2\"><span class=\"fa fa-comments\"></span> 3</span>\r\n                      </div>\r\n                    <h2>There’s a Cool New Way for Men to Wear Socks and Sandals</h2>\r\n                  </div>\r\n                </a>\r\n              </div>\r\n\r\n              <div class=\"col-md-6\">\r\n                <a href=\"blog-single.html\" class=\"blog-entry element-animate\" data-animate-effect=\"fadeIn\">\r\n                  <img src=\"<?=DEFAULT_TEMPLATE_PASS?>/images/img_7.jpg\" alt=\"Image placeholder\">\r\n                  <div class=\"blog-content-body\">\r\n                    <div class=\"post-meta\">\r\n                      <span class=\"category\">Travel, Asia</span>\r\n                      <span class=\"mr-2\">March 15, 2018 </span> &bullet;\r\n                      <span class=\"ml-2\"><span class=\"fa fa-comments\"></span> 3</span>\r\n                    </div>\r\n                    <h2>There’s a Cool New Way for Men to Wear Socks and Sandals</h2>\r\n                  </div>\r\n                </a>\r\n              </div>\r\n              <div class=\"col-md-6\">\r\n                <a href=\"blog-single.html\" class=\"blog-entry element-animate\" data-animate-effect=\"fadeIn\">\r\n                  <img src=\"<?=DEFAULT_TEMPLATE_PASS?>/images/img_8.jpg\" alt=\"Image placeholder\">\r\n                  <div class=\"blog-content-body\">\r\n                    <div class=\"post-meta\">\r\n                      <span class=\"category\">Travel</span>\r\n                      <span class=\"mr-2\">March 15, 2018 </span> &bullet;\r\n                      <span class=\"ml-2\"><span class=\"fa fa-comments\"></span> 3</span>\r\n                    </div>\r\n                    <h2>There’s a Cool New Way for Men to Wear Socks and Sandals</h2>\r\n                  </div>\r\n                </a>\r\n              </div>\r\n\r\n              <div class=\"col-md-6\">\r\n                <a href=\"blog-single.html\" class=\"blog-entry element-animate\" data-animate-effect=\"fadeIn\">\r\n                  <img src=\"<?=DEFAULT_TEMPLATE_PASS?>/images/img_9.jpg\" alt=\"Image placeholder\">\r\n                  <div class=\"blog-content-body\">\r\n                    <div class=\"post-meta\">\r\n                      <span class=\"category\">Travel</span>\r\n                      <span class=\"mr-2\">March 15, 2018 </span> &bullet;\r\n                      <span class=\"ml-2\"><span class=\"fa fa-comments\"></span> 3</span>\r\n                    </div>\r\n                    <h2>There’s a Cool New Way for Men to Wear Socks and Sandals</h2>\r\n                  </div>\r\n                </a>\r\n              </div>\r\n              <div class=\"col-md-6\">\r\n                <a href=\"blog-single.html\" class=\"blog-entry element-animate\" data-animate-effect=\"fadeIn\">\r\n                  <img src=\"<?=DEFAULT_TEMPLATE_PASS?>/images/img_10.jpg\" alt=\"Image placeholder\">\r\n                  <div class=\"blog-content-body\">\r\n                    <div class=\"post-meta\">\r\n                      <span class=\"category\">Lifestyle</span>\r\n                      <span class=\"mr-2\">March 15, 2018 </span> &bullet;\r\n                      <span class=\"ml-2\"><span class=\"fa fa-comments\"></span> 3</span>\r\n                    </div>\r\n                    <h2>There’s a Cool New Way for Men to Wear Socks and Sandals</h2>\r\n                  </div>\r\n                </a>\r\n              </div>\r\n\r\n              <div class=\"col-md-6\">\r\n                <a href=\"blog-single.html\" class=\"blog-entry element-animate\" data-animate-effect=\"fadeIn\">\r\n                  <img src=\"<?=DEFAULT_TEMPLATE_PASS?>/images/img_11.jpg\" alt=\"Image placeholder\">\r\n                  <div class=\"blog-content-body\">\r\n                    <div class=\"post-meta\">\r\n                      <span class=\"category\">Lifestyle</span>\r\n                      <span class=\"mr-2\">March 15, 2018 </span> &bullet;\r\n                      <span class=\"ml-2\"><span class=\"fa fa-comments\"></span> 3</span>\r\n                    </div>\r\n                    <h2>There’s a Cool New Way for Men to Wear Socks and Sandals</h2>\r\n                  </div>\r\n                </a>\r\n              </div>\r\n              <div class=\"col-md-6\">\r\n                <a href=\"blog-single.html\" class=\"blog-entry element-animate\" data-animate-effect=\"fadeIn\">\r\n                  <img src=\"<?=DEFAULT_TEMPLATE_PASS?>/images/img_12.jpg\" alt=\"Image placeholder\">\r\n                  <div class=\"blog-content-body\">\r\n                    <div class=\"post-meta\">\r\n                      <span class=\"category\">Food</span>\r\n                      <span class=\"mr-2\">March 15, 2018 </span> &bullet;\r\n                      <span class=\"ml-2\"><span class=\"fa fa-comments\"></span> 3</span>\r\n                    </div>\r\n                    <h2>There’s a Cool New Way for Men to Wear Socks and Sandals</h2>\r\n                  </div>\r\n                </a>\r\n              </div>\r\n            </div>\r\n\r\n            <div class=\"row\">\r\n              <div class=\"col-md-12 text-center\">\r\n                <nav aria-label=\"Page navigation\" class=\"text-center\">\r\n                  <ul class=\"pagination\">\r\n                    <li class=\"page-item  active\"><a class=\"page-link\" href=\"#\">Prev</a></li>\r\n                    <li class=\"page-item\"><a class=\"page-link\" href=\"#\">1</a></li>\r\n                    <li class=\"page-item\"><a class=\"page-link\" href=\"#\">2</a></li>\r\n                    <li class=\"page-item\"><a class=\"page-link\" href=\"#\">3</a></li>\r\n                    <li class=\"page-item\"><a class=\"page-link\" href=\"#\">Next</a></li>\r\n                  </ul>\r\n                </nav>\r\n              </div>\r\n            </div>\r\n\r\n          </div>\r\n\r\n          <!-- END main-content -->\r\n\r\n          <div class=\"col-md-12 col-lg-4 sidebar\">\r\n            <div class=\"sidebar-box search-form-wrap\">\r\n              <form action=\"#\" class=\"search-form\">\r\n                <div class=\"form-group\">\r\n                  <span class=\"icon fa fa-search\"></span>\r\n                  <input type=\"text\" class=\"form-control\" id=\"s\" placeholder=\"Type a keyword and hit enter\">\r\n                </div>\r\n              </form>\r\n            </div>\r\n            <!-- END sidebar-box -->\r\n            <div class=\"sidebar-box\">\r\n              <div class=\"bio text-center\">\r\n                <img src=\"<?=DEFAULT_TEMPLATE_PASS?>/images/person_1.jpg\" alt=\"Image Placeholder\" class=\"img-fluid\">\r\n                <div class=\"bio-body\">\r\n                  <h2>Meagan Smith</h2>\r\n                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Exercitationem facilis sunt repellendus excepturi beatae porro debitis voluptate nulla quo veniam fuga sit molestias minus.</p>\r\n                  <p><a href=\"#\" class=\"btn btn-primary btn-sm\">Read my bio</a></p>\r\n                  <p class=\"social\">\r\n                    <a href=\"#\" class=\"p-2\"><span class=\"fa fa-facebook\"></span></a>\r\n                    <a href=\"#\" class=\"p-2\"><span class=\"fa fa-twitter\"></span></a>\r\n                    <a href=\"#\" class=\"p-2\"><span class=\"fa fa-instagram\"></span></a>\r\n                    <a href=\"#\" class=\"p-2\"><span class=\"fa fa-youtube-play\"></span></a>\r\n                  </p>\r\n                </div>\r\n              </div>\r\n            </div>\r\n            <!-- END sidebar-box -->  \r\n            <div class=\"sidebar-box\">\r\n              <h3 class=\"heading\">Popular Posts</h3>\r\n              <div class=\"post-entry-sidebar\">\r\n                <ul>\r\n                  <li>\r\n                    <a href=\"\">\r\n                      <img src=\"<?=DEFAULT_TEMPLATE_PASS?>/images/img_2.jpg\" alt=\"Image placeholder\" class=\"mr-4\">\r\n                      <div class=\"text\">\r\n                        <h4>There’s a Cool New Way for Men to Wear Socks and Sandals</h4>\r\n                        <div class=\"post-meta\">\r\n                          <span class=\"mr-2\">March 15, 2018 </span> &bullet;\r\n                          <span class=\"ml-2\"><span class=\"fa fa-comments\"></span> 3</span>\r\n                        </div>\r\n                      </div>\r\n                    </a>\r\n                  </li>\r\n                  <li>\r\n                    <a href=\"\">\r\n                      <img src=\"<?=DEFAULT_TEMPLATE_PASS?>/images/img_4.jpg\" alt=\"Image placeholder\" class=\"mr-4\">\r\n                      <div class=\"text\">\r\n                        <h4>There’s a Cool New Way for Men to Wear Socks and Sandals</h4>\r\n                        <div class=\"post-meta\">\r\n                          <span class=\"mr-2\">March 15, 2018 </span> &bullet;\r\n                          <span class=\"ml-2\"><span class=\"fa fa-comments\"></span> 3</span>\r\n                        </div>\r\n                      </div>\r\n                    </a>\r\n                  </li>\r\n                  <li>\r\n                    <a href=\"\">\r\n                      <img src=\"<?=DEFAULT_TEMPLATE_PASS?>/images/img_12.jpg\" alt=\"Image placeholder\" class=\"mr-4\">\r\n                      <div class=\"text\">\r\n                        <h4>There’s a Cool New Way for Men to Wear Socks and Sandals</h4>\r\n                        <div class=\"post-meta\">\r\n                          <span class=\"mr-2\">March 15, 2018 </span> &bullet;\r\n                          <span class=\"ml-2\"><span class=\"fa fa-comments\"></span> 3</span>\r\n                        </div>\r\n                      </div>\r\n                    </a>\r\n                  </li>\r\n                </ul>\r\n              </div>\r\n            </div>\r\n            <!-- END sidebar-box -->\r\n\r\n            <div class=\"sidebar-box\">\r\n              <h3 class=\"heading\">Categories</h3>\r\n              <ul class=\"categories\">\r\n                <li><a href=\"#\">Courses <span>(12)</span></a></li>\r\n                <li><a href=\"#\">News <span>(22)</span></a></li>\r\n                <li><a href=\"#\">Design <span>(37)</span></a></li>\r\n                <li><a href=\"#\">HTML <span>(42)</span></a></li>\r\n                <li><a href=\"#\">Web Development <span>(14)</span></a></li>\r\n              </ul>\r\n            </div>\r\n            <!-- END sidebar-box -->\r\n\r\n          </div>\r\n          <!-- END sidebar -->\r\n\r\n        </div>\r\n      </div>\r\n    </section>\r\n\r\n<?require($_SERVER[\"DOCUMENT_ROOT\"].\"/bitrix/footer.php\");?>\";}', 1, 1623004229),
('1ab78853daacd673e80127a0463698686', 'fileman', 'new_file', 'CFileman::UndoNewFile', 'a:5:{s:7:\"absPath\";s:64:\"G:/OpenServer/domains/bitrixzadanieOtAIS.ru/novaya-stranitsa.php\";s:4:\"path\";s:21:\"/novaya-stranitsa.php\";s:4:\"site\";s:2:\"s1\";s:6:\"public\";s:1:\"Y\";s:4:\"menu\";a:3:{s:8:\"menuFile\";s:15:\"/.main.menu.php\";s:8:\"menuName\";s:27:\"Новая страница\";s:8:\"menuPath\";s:21:\"/novaya-stranitsa.php\";}}', 1, 1623005118),
('1ba10f2cd4a185c068145850d8f5b02e4', 'fileman', 'new_section', 'CFileman::UndoNewSection', 'a:4:{s:7:\"absPath\";s:51:\"G:/OpenServer/domains/bitrixzadanieOtAIS.ru/contact\";s:4:\"path\";s:8:\"/contact\";s:4:\"site\";s:2:\"s1\";s:4:\"menu\";a:3:{s:8:\"menuFile\";s:15:\"/.main.menu.php\";s:8:\"menuName\";s:7:\"Contact\";s:8:\"menuPath\";s:9:\"/contact/\";}}', 1, 1623005961),
('1bc293779198c63e20e5aac6bfe57c760', 'fileman', 'enable_component', 'CFileman::UndoEditFile', 'a:2:{s:7:\"absPath\";s:77:\"G:/OpenServer/domains/bitrixzadanieOtAIS.ru/local/templates/balita/header.php\";s:7:\"content\";s:5298:\"<?php if(!defined(\"B_PROLOG_INCLUDED\") || B_PROLOG_INCLUDED!==true) die();?>\n<?php \n  use Bitrix\\Main\\Page\\Asset;\n?>\n<?php ?>\n\n<!doctype html>\n<html lang=\"en\">\n  <head>\n    <?php $APPLICATION->ShowHead() ?>\n    <title><?php $APPLICATION->ShowTitle(\'Colorlib Balita &mdash; Minimal Blog Template\') ?></title>\n    <?php \n      Asset::getInstance()->addString(\'<meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\');\n      Asset::getInstance()->addString(\'<meta charset=\"utf-8\">\');\n      Asset::getInstance()->addString(\'<link href=\"https://fonts.googleapis.com/css?family=Josefin+Sans:300, 400,700\" rel=\"stylesheet\">\');\n\n\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/fonts/flaticon/font/flaticon.css\');\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/fonts/fontawesome/css/font-awesome.min.css\');\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/fonts/ionicons/css/ionicons.min.css\');\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/css/owl.carousel.min.css\');\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/css/animate.css\');\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/css/bootstrap.css\');\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/css/style.css\');\n\n\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/jquery-3.2.1.min.js\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/jquery-migrate-3.0.0.js\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/popper.min.js\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/bootstrap.min.js\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/owl.carousel.min.js\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/jquery.waypoints.min.j\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/jquery.stellar.min.js\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/main.js\');\n    \n    ?>\n  </head>\n  <body>\n    <div id=\"panel\"><?php $APPLICATION->ShowPanel() ?></div>\n\n    <header role=\"banner\">\n      <div class=\"top-bar\">\n        <div class=\"container\">\n          <div class=\"row\">\n            <div class=\"col-9 social\">\n              <a href=\"#\"><span class=\"fa fa-twitter\"></span></a>\n              <a href=\"#\"><span class=\"fa fa-facebook\"></span></a>\n              <a href=\"#\"><span class=\"fa fa-instagram\"></span></a>\n              <a href=\"#\"><span class=\"fa fa-youtube-play\"></span></a>\n              <a href=\"#\"><span class=\"fa fa-vimeo\"></span></a>\n              <a href=\"#\"><span class=\"fa fa-snapchat\"></span></a>\n            </div>\n            <div class=\"col-3 search-top\">\n              <!-- <a href=\"#\"><span class=\"fa fa-search\"></span></a> -->\n              <form action=\"#\" class=\"search-top-form\">\n                <span class=\"icon fa fa-search\"></span>\n                <input type=\"text\" id=\"s\" placeholder=\"Type keyword to search...\">\n              </form>\n            </div>\n          </div>\n        </div>\n      </div>\n\n      <div class=\"container logo-wrap\">\n        <div class=\"row pt-5\">\n          <div class=\"col-12 text-center\">\n            <a class=\"absolute-toggle d-block d-md-none\" data-toggle=\"collapse\" href=\"#navbarMenu\" role=\"button\" aria-expanded=\"false\" aria-controls=\"navbarMenu\"><span class=\"burger-lines\"></span></a>\n            <h1 class=\"site-logo\"><a href=\"/\">Balita</a></h1>\n          </div>\n        </div>\n      </div>\n      \n      <?$APPLICATION->IncludeComponent(\n	\"bitrix:menu\", \n	\".default\", \n	array(\n		\"ALLOW_MULTI_SELECT\" => \"N\",\n		\"CHILD_MENU_TYPE\" => \"left\",\n		\"DELAY\" => \"N\",\n		\"MAX_LEVEL\" => \"1\",\n		\"MENU_CACHE_GET_VARS\" => array(\n		),\n		\"MENU_CACHE_TIME\" => \"3600\",\n		\"MENU_CACHE_TYPE\" => \"N\",\n		\"MENU_CACHE_USE_GROUPS\" => \"Y\",\n		\"ROOT_MENU_TYPE\" => \"main\",\n		\"USE_EXT\" => \"N\",\n		\"COMPONENT_TEMPLATE\" => \".default\"\n	),\n	false,\n	array(\n		\"ACTIVE_COMPONENT\" => \"N\"\n	)\n);?>\n      <!-- <nav class=\"navbar navbar-expand-md  navbar-light bg-light\">\n        <div class=\"container\">\n          <div class=\"collapse navbar-collapse\" id=\"navbarMenu\">\n            <ul class=\"navbar-nav mx-auto\">\n              <li class=\"nav-item\">\n                <a class=\"nav-link active\" href=\"index.html\">Home</a>\n              </li>\n\n              <li class=\"nav-item dropdown\">\n                <a class=\"nav-link dropdown-toggle\" href=\"category.html\" id=\"dropdown05\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">Categories</a>\n                <div class=\"dropdown-menu\" aria-labelledby=\"dropdown05\">\n                  <a class=\"dropdown-item\" href=\"category.html\">Lifestyle</a>\n                  <a class=\"dropdown-item\" href=\"category.html\">Food</a>\n                  <a class=\"dropdown-item\" href=\"category.html\">Adventure</a>\n                  <a class=\"dropdown-item\" href=\"category.html\">Travel</a>\n                  <a class=\"dropdown-item\" href=\"category.html\">Business</a>\n                </div>\n\n              </li>\n              <li class=\"nav-item\">\n                <a class=\"nav-link\" href=\"about.html\">About</a>\n              </li>\n              <li class=\"nav-item\">\n                <a class=\"nav-link\" href=\"contact.html\">Contact</a>\n              </li>\n            </ul>\n            \n          </div>\n        </div>\n      </nav> -->\n\n\n\n    </header>\n    <!-- END header -->\n\";}', 1, 1623007989),
('1cc857c1ff18b84ed8e994fdd41e884df', 'fileman', 'edit_file', 'CFileman::UndoEditFile', 'a:2:{s:7:\"absPath\";s:114:\"G:/OpenServer/domains/bitrixzadanieOtAIS.ru/local/templates/balita/components/bitrix/menu/menu_balita/template.php\";s:7:\"content\";s:494:\"<?if (!defined(\"B_PROLOG_INCLUDED\") || B_PROLOG_INCLUDED!==true)die();?>\r\n\r\n<?if (!empty($arResult)):?>\r\n<ul class=\"left-menu\">\r\n\r\n<?\r\nforeach($arResult as $arItem):\r\n	if($arParams[\"MAX_LEVEL\"] == 1 && $arItem[\"DEPTH_LEVEL\"] > 1) \r\n		continue;\r\n?>\r\n	<?if($arItem[\"SELECTED\"]):?>\r\n		<li><a href=\"<?=$arItem[\"LINK\"]?>\" class=\"selected\"><?=$arItem[\"TEXT\"]?></a></li>\r\n	<?else:?>\r\n		<li><a href=\"<?=$arItem[\"LINK\"]?>\"><?=$arItem[\"TEXT\"]?></a></li>\r\n	<?endif?>\r\n	\r\n<?endforeach?>\r\n\r\n</ul>\r\n<?endif?>\";}', 1, 1623008775),
('1cd81efa0ae2d69555838910d4192af21', 'fileman', 'edit_menu', 'CFileman::UndoEditFile', 'a:2:{s:7:\"absPath\";s:58:\"G:/OpenServer/domains/bitrixzadanieOtAIS.ru/.main.menu.php\";s:7:\"content\";s:96:\"<?\n$aMenuLinks = Array(\n	Array(\n		\"About\", \n		\"/about/\", \n		Array(), \n		Array(), \n		\"\" \n	)\n);\n?>\";}', 1, 1623005626),
('1ea2f9055965d4274f1ef9ae3ca304e1b', 'fileman', 'enable_component', 'CFileman::UndoEditFile', 'a:2:{s:7:\"absPath\";s:77:\"G:/OpenServer/domains/bitrixzadanieOtAIS.ru/local/templates/balita/header.php\";s:7:\"content\";s:5288:\"<?php if(!defined(\"B_PROLOG_INCLUDED\") || B_PROLOG_INCLUDED!==true) die();?>\n<?php \n  use Bitrix\\Main\\Page\\Asset;\n?>\n<?php ?>\n\n<!doctype html>\n<html lang=\"en\">\n  <head>\n    <?php $APPLICATION->ShowHead() ?>\n    <title><?php $APPLICATION->ShowTitle(\'Colorlib Balita &mdash; Minimal Blog Template\') ?></title>\n    <?php \n      Asset::getInstance()->addString(\'<meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\');\n      Asset::getInstance()->addString(\'<meta charset=\"utf-8\">\');\n      Asset::getInstance()->addString(\'<link href=\"https://fonts.googleapis.com/css?family=Josefin+Sans:300, 400,700\" rel=\"stylesheet\">\');\n\n\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/fonts/flaticon/font/flaticon.css\');\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/fonts/fontawesome/css/font-awesome.min.css\');\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/fonts/ionicons/css/ionicons.min.css\');\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/css/owl.carousel.min.css\');\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/css/animate.css\');\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/css/bootstrap.css\');\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/css/style.css\');\n\n\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/jquery-3.2.1.min.js\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/jquery-migrate-3.0.0.js\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/popper.min.js\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/bootstrap.min.js\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/owl.carousel.min.js\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/jquery.waypoints.min.j\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/jquery.stellar.min.js\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/main.js\');\n    \n    ?>\n  </head>\n  <body>\n    <div id=\"panel\"><?php $APPLICATION->ShowPanel() ?></div>\n\n    <header role=\"banner\">\n      <div class=\"top-bar\">\n        <div class=\"container\">\n          <div class=\"row\">\n            <div class=\"col-9 social\">\n              <a href=\"#\"><span class=\"fa fa-twitter\"></span></a>\n              <a href=\"#\"><span class=\"fa fa-facebook\"></span></a>\n              <a href=\"#\"><span class=\"fa fa-instagram\"></span></a>\n              <a href=\"#\"><span class=\"fa fa-youtube-play\"></span></a>\n              <a href=\"#\"><span class=\"fa fa-vimeo\"></span></a>\n              <a href=\"#\"><span class=\"fa fa-snapchat\"></span></a>\n            </div>\n            <div class=\"col-3 search-top\">\n              <!-- <a href=\"#\"><span class=\"fa fa-search\"></span></a> -->\n              <form action=\"#\" class=\"search-top-form\">\n                <span class=\"icon fa fa-search\"></span>\n                <input type=\"text\" id=\"s\" placeholder=\"Type keyword to search...\">\n              </form>\n            </div>\n          </div>\n        </div>\n      </div>\n\n      <div class=\"container logo-wrap\">\n        <div class=\"row pt-5\">\n          <div class=\"col-12 text-center\">\n            <a class=\"absolute-toggle d-block d-md-none\" data-toggle=\"collapse\" href=\"#navbarMenu\" role=\"button\" aria-expanded=\"false\" aria-controls=\"navbarMenu\"><span class=\"burger-lines\"></span></a>\n            <h1 class=\"site-logo\"><a href=\"/\">Balita</a></h1>\n          </div>\n        </div>\n      </div>\n      \n      <?$APPLICATION->IncludeComponent(\"bitrix:menu\", \"menu_balita\", array(\n	\"ALLOW_MULTI_SELECT\" => \"N\",\n		\"CHILD_MENU_TYPE\" => \"left\",\n		\"DELAY\" => \"N\",\n		\"MAX_LEVEL\" => \"1\",\n		\"MENU_CACHE_GET_VARS\" => \"\",\n		\"MENU_CACHE_TIME\" => \"3600\",\n		\"MENU_CACHE_TYPE\" => \"N\",\n		\"MENU_CACHE_USE_GROUPS\" => \"Y\",\n		\"ROOT_MENU_TYPE\" => \"main\",\n		\"USE_EXT\" => \"N\",\n		\"COMPONENT_TEMPLATE\" => \"menu_balita\"\n	),\n	false,\n	array(\n	\"ACTIVE_COMPONENT\" => \"N\"\n	)\n);?>\n      <!-- <nav class=\"navbar navbar-expand-md  navbar-light bg-light\">\n        <div class=\"container\">\n          <div class=\"collapse navbar-collapse\" id=\"navbarMenu\">\n            <ul class=\"navbar-nav mx-auto\">\n              <li class=\"nav-item\">\n                <a class=\"nav-link active\" href=\"index.html\">Home</a>\n              </li>\n\n              <li class=\"nav-item dropdown\">\n                <a class=\"nav-link dropdown-toggle\" href=\"category.html\" id=\"dropdown05\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">Categories</a>\n                <div class=\"dropdown-menu\" aria-labelledby=\"dropdown05\">\n                  <a class=\"dropdown-item\" href=\"category.html\">Lifestyle</a>\n                  <a class=\"dropdown-item\" href=\"category.html\">Food</a>\n                  <a class=\"dropdown-item\" href=\"category.html\">Adventure</a>\n                  <a class=\"dropdown-item\" href=\"category.html\">Travel</a>\n                  <a class=\"dropdown-item\" href=\"category.html\">Business</a>\n                </div>\n\n              </li>\n              <li class=\"nav-item\">\n                <a class=\"nav-link\" href=\"about.html\">About</a>\n              </li>\n              <li class=\"nav-item\">\n                <a class=\"nav-link\" href=\"contact.html\">Contact</a>\n              </li>\n            </ul>\n            \n          </div>\n        </div>\n      </nav> -->\n\n\n\n    </header>\n    <!-- END header -->\n\";}', 1, 1623007666),
('1edfe93fc83560e98e5e3a4e32220084e', 'fileman', 'edit_component_props', 'CFileman::UndoEditFile', 'a:2:{s:7:\"absPath\";s:77:\"G:/OpenServer/domains/bitrixzadanieOtAIS.ru/local/templates/balita/header.php\";s:7:\"content\";s:5838:\"<?php if(!defined(\"B_PROLOG_INCLUDED\") || B_PROLOG_INCLUDED!==true) die();?>\n<?php \n  use Bitrix\\Main\\Page\\Asset;\n?>\n<?php ?>\n\n<!doctype html>\n<html lang=\"en\">\n  <head>\n    <?php $APPLICATION->ShowHead() ?>\n    <title><?php $APPLICATION->ShowTitle(\'Colorlib Balita &mdash; Minimal Blog Template\') ?></title>\n    <?php \n      Asset::getInstance()->addString(\'<meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\');\n      Asset::getInstance()->addString(\'<meta charset=\"utf-8\">\');\n      Asset::getInstance()->addString(\'<link href=\"https://fonts.googleapis.com/css?family=Josefin+Sans:300, 400,700\" rel=\"stylesheet\">\');\n\n\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/fonts/flaticon/font/flaticon.css\');\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/fonts/fontawesome/css/font-awesome.min.css\');\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/fonts/ionicons/css/ionicons.min.css\');\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/css/owl.carousel.min.css\');\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/css/animate.css\');\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/css/bootstrap.css\');\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/css/style.css\');\n\n\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/jquery-3.2.1.min.js\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/jquery-migrate-3.0.0.js\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/popper.min.js\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/bootstrap.min.js\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/owl.carousel.min.js\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/jquery.waypoints.min.j\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/jquery.stellar.min.js\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/main.js\');\n    \n    ?>\n  </head>\n  <body>\n    <div id=\"panel\"><?php $APPLICATION->ShowPanel() ?></div>\n\n    <header role=\"banner\">\n      <div class=\"top-bar\">\n        <div class=\"container\">\n          <div class=\"row\">\n            <div class=\"col-9 social\">\n              <a href=\"#\"><span class=\"fa fa-twitter\"></span></a>\n              <a href=\"#\"><span class=\"fa fa-facebook\"></span></a>\n              <a href=\"#\"><span class=\"fa fa-instagram\"></span></a>\n              <a href=\"#\"><span class=\"fa fa-youtube-play\"></span></a>\n              <a href=\"#\"><span class=\"fa fa-vimeo\"></span></a>\n              <a href=\"#\"><span class=\"fa fa-snapchat\"></span></a>\n            </div>\n            <div class=\"col-3 search-top\">\n              <!-- <a href=\"#\"><span class=\"fa fa-search\"></span></a> -->\n              <form action=\"#\" class=\"search-top-form\">\n                <span class=\"icon fa fa-search\"></span>\n                <input type=\"text\" id=\"s\" placeholder=\"Type keyword to search...\">\n              </form>\n            </div>\n          </div>\n        </div>\n      </div>\n\n      <div class=\"container logo-wrap\">\n        <div class=\"row pt-5\">\n          <div class=\"col-12 text-center\">\n            <a class=\"absolute-toggle d-block d-md-none\" data-toggle=\"collapse\" href=\"#navbarMenu\" role=\"button\" aria-expanded=\"false\" aria-controls=\"navbarMenu\"><span class=\"burger-lines\"></span></a>\n            <h1 class=\"site-logo\"><a href=\"/\">Balita</a></h1>\n          </div>\n        </div>\n      </div>\n      \n      <?$APPLICATION->IncludeComponent(\"bitrix:menu\", \"menu_balita\", Array(\n	\"ALLOW_MULTI_SELECT\" => \"N\",	// Разрешить несколько активных пунктов одновременно\n		\"CHILD_MENU_TYPE\" => \"left\",	// Тип меню для остальных уровней\n		\"DELAY\" => \"N\",	// Откладывать выполнение шаблона меню\n		\"MAX_LEVEL\" => \"1\",	// Уровень вложенности меню\n		\"MENU_CACHE_GET_VARS\" => array(	// Значимые переменные запроса\n			0 => \"\",\n		),\n		\"MENU_CACHE_TIME\" => \"3600\",	// Время кеширования (сек.)\n		\"MENU_CACHE_TYPE\" => \"N\",	// Тип кеширования\n		\"MENU_CACHE_USE_GROUPS\" => \"Y\",	// Учитывать права доступа\n		\"ROOT_MENU_TYPE\" => \"main\",	// Тип меню для первого уровня\n		\"USE_EXT\" => \"N\",	// Подключать файлы с именами вида .тип_меню.menu_ext.php\n	),\n	false\n);?>\n      <!-- <nav class=\"navbar navbar-expand-md  navbar-light bg-light\">\n        <div class=\"container\">\n          <div class=\"collapse navbar-collapse\" id=\"navbarMenu\">\n            <ul class=\"navbar-nav mx-auto\">\n              <li class=\"nav-item\">\n                <a class=\"nav-link active\" href=\"index.html\">Home</a>\n              </li>\n\n              <li class=\"nav-item dropdown\">\n                <a class=\"nav-link dropdown-toggle\" href=\"category.html\" id=\"dropdown05\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">Categories</a>\n                <div class=\"dropdown-menu\" aria-labelledby=\"dropdown05\">\n                  <a class=\"dropdown-item\" href=\"category.html\">Lifestyle</a>\n                  <a class=\"dropdown-item\" href=\"category.html\">Food</a>\n                  <a class=\"dropdown-item\" href=\"category.html\">Adventure</a>\n                  <a class=\"dropdown-item\" href=\"category.html\">Travel</a>\n                  <a class=\"dropdown-item\" href=\"category.html\">Business</a>\n                </div>\n\n              </li>\n              <li class=\"nav-item\">\n                <a class=\"nav-link\" href=\"about.html\">About</a>\n              </li>\n              <li class=\"nav-item\">\n                <a class=\"nav-link\" href=\"contact.html\">Contact</a>\n              </li>\n            </ul>\n            \n          </div>\n        </div>\n      </nav> -->\n\n\n\n    </header>\n    <!-- END header -->\n\";}', 1, 1623006986),
('1fc10940c7b3884944bd37fcd4d663b95', 'fileman', 'edit_component_props', 'CFileman::UndoEditFile', 'a:2:{s:7:\"absPath\";s:77:\"G:/OpenServer/domains/bitrixzadanieOtAIS.ru/local/templates/balita/header.php\";s:7:\"content\";s:5990:\"<?php if(!defined(\"B_PROLOG_INCLUDED\") || B_PROLOG_INCLUDED!==true) die();?>\n<?php \n  use Bitrix\\Main\\Page\\Asset;\n?>\n<?php ?>\n\n<!doctype html>\n<html lang=\"en\">\n  <head>\n    <?php $APPLICATION->ShowHead() ?>\n    <title><?php $APPLICATION->ShowTitle(\'Colorlib Balita &mdash; Minimal Blog Template\') ?></title>\n    <?php \n      Asset::getInstance()->addString(\'<meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\');\n      Asset::getInstance()->addString(\'<meta charset=\"utf-8\">\');\n      Asset::getInstance()->addString(\'<link href=\"https://fonts.googleapis.com/css?family=Josefin+Sans:300, 400,700\" rel=\"stylesheet\">\');\n\n\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/fonts/flaticon/font/flaticon.css\');\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/fonts/fontawesome/css/font-awesome.min.css\');\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/fonts/ionicons/css/ionicons.min.css\');\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/css/owl.carousel.min.css\');\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/css/animate.css\');\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/css/bootstrap.css\');\n      Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PASS.\'/css/style.css\');\n\n\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/jquery-3.2.1.min.js\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/jquery-migrate-3.0.0.js\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/popper.min.js\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/bootstrap.min.js\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/owl.carousel.min.js\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/jquery.waypoints.min.j\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/jquery.stellar.min.js\');\n      Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PASS.\'js/main.js\');\n    \n    ?>\n  </head>\n  <body>\n    <div id=\"panel\"><?php $APPLICATION->ShowPanel() ?></div>\n\n    <header role=\"banner\">\n      <div class=\"top-bar\">\n        <div class=\"container\">\n          <div class=\"row\">\n            <div class=\"col-9 social\">\n              <a href=\"#\"><span class=\"fa fa-twitter\"></span></a>\n              <a href=\"#\"><span class=\"fa fa-facebook\"></span></a>\n              <a href=\"#\"><span class=\"fa fa-instagram\"></span></a>\n              <a href=\"#\"><span class=\"fa fa-youtube-play\"></span></a>\n              <a href=\"#\"><span class=\"fa fa-vimeo\"></span></a>\n              <a href=\"#\"><span class=\"fa fa-snapchat\"></span></a>\n            </div>\n            <div class=\"col-3 search-top\">\n              <!-- <a href=\"#\"><span class=\"fa fa-search\"></span></a> -->\n              <form action=\"#\" class=\"search-top-form\">\n                <span class=\"icon fa fa-search\"></span>\n                <input type=\"text\" id=\"s\" placeholder=\"Type keyword to search...\">\n              </form>\n            </div>\n          </div>\n        </div>\n      </div>\n\n      <div class=\"container logo-wrap\">\n        <div class=\"row pt-5\">\n          <div class=\"col-12 text-center\">\n            <a class=\"absolute-toggle d-block d-md-none\" data-toggle=\"collapse\" href=\"#navbarMenu\" role=\"button\" aria-expanded=\"false\" aria-controls=\"navbarMenu\"><span class=\"burger-lines\"></span></a>\n            <h1 class=\"site-logo\"><a href=\"/\">Balita</a></h1>\n          </div>\n        </div>\n      </div>\n      \n      <?$APPLICATION->IncludeComponent(\"bitrix:menu\", \"menu_balita\", Array(\n      	\"ALLOW_MULTI_SELECT\" => \"N\",	// Разрешить несколько активных пунктов одновременно\n      		\"CHILD_MENU_TYPE\" => \"left\",	// Тип меню для остальных уровней\n      		\"DELAY\" => \"N\",	// Откладывать выполнение шаблона меню\n      		\"MAX_LEVEL\" => \"1\",	// Уровень вложенности меню\n      		\"MENU_CACHE_GET_VARS\" => \"\",	// Значимые переменные запроса\n      		\"MENU_CACHE_TIME\" => \"3600\",	// Время кеширования (сек.)\n      		\"MENU_CACHE_TYPE\" => \"N\",	// Тип кеширования\n      		\"MENU_CACHE_USE_GROUPS\" => \"Y\",	// Учитывать права доступа\n      		\"ROOT_MENU_TYPE\" => \"main\",	// Тип меню для первого уровня\n      		\"USE_EXT\" => \"N\",	// Подключать файлы с именами вида .тип_меню.menu_ext.php\n      		\"COMPONENT_TEMPLATE\" => \".default\"\n      	),\n      	false,\n      	array(\n      	\"ACTIVE_COMPONENT\" => \"Y\"\n      	)\n);?>\n      <!-- <nav class=\"navbar navbar-expand-md  navbar-light bg-light\">\n        <div class=\"container\">\n          <div class=\"collapse navbar-collapse\" id=\"navbarMenu\">\n            <ul class=\"navbar-nav mx-auto\">\n              <li class=\"nav-item\">\n                <a class=\"nav-link active\" href=\"index.html\">Home</a>\n              </li>\n\n              <li class=\"nav-item dropdown\">\n                <a class=\"nav-link dropdown-toggle\" href=\"category.html\" id=\"dropdown05\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">Categories</a>\n                <div class=\"dropdown-menu\" aria-labelledby=\"dropdown05\">\n                  <a class=\"dropdown-item\" href=\"category.html\">Lifestyle</a>\n                  <a class=\"dropdown-item\" href=\"category.html\">Food</a>\n                  <a class=\"dropdown-item\" href=\"category.html\">Adventure</a>\n                  <a class=\"dropdown-item\" href=\"category.html\">Travel</a>\n                  <a class=\"dropdown-item\" href=\"category.html\">Business</a>\n                </div>\n\n              </li>\n              <li class=\"nav-item\">\n                <a class=\"nav-link\" href=\"about.html\">About</a>\n              </li>\n              <li class=\"nav-item\">\n                <a class=\"nav-link\" href=\"contact.html\">Contact</a>\n              </li>\n            </ul>\n            \n          </div>\n        </div>\n      </nav> -->\n\n\n\n    </header>\n    <!-- END header -->\n\";}', 1, 1623008697),
('23288ccbbe3ab22b303df5fa543f48ed7', 'main', 'autosave', 'CAutoSave::_Restore', 'a:7:{s:8:\"back_url\";s:15:\"/?clear_cache=Y\";s:4:\"site\";s:2:\"s1\";s:4:\"path\";s:88:\"%2Fbitrix%2Ftemplates%2F.default%2Fcomponents%2Fbitrix%2Fmenu%2Ftemplate1%2Ftemplate.php\";s:4:\"save\";s:1:\"Y\";s:8:\"template\";s:0:\"\";s:10:\"templateID\";s:0:\"\";s:7:\"filesrc\";s:498:\"<?if (!defined(\"B_PROLOG_INCLUDED\") || B_PROLOG_INCLUDED!==true)die();?>\n\n<?if (!empty($arResult)):?>\n<ul class=\"left-menu\">\n\n<?\n	//adcnalkdbakdnlasknc\nforeach($arResult as $arItem):\n	if($arParams[\"MAX_LEVEL\"] == 1 && $arItem[\"DEPTH_LEVEL\"] > 1) \n		continue;\n?>\n	<?if($arItem[\"SELECTED\"]):?>\n		<li><a href=\"<?=$arItem[\"LINK\"]?>\" class=\"selected\"><?=$arItem[\"TEXT\"]?></a></li>\n	<?else:?>\n		<li><a href=\"<?=$arItem[\"LINK\"]?>\"><?=$arItem[\"TEXT\"]?></a></li>\n	<?endif?>\n	\n<?endforeach?>\n\n</ul>\n<?endif?>\";}', 1, 1623007265);
INSERT INTO `b_undo` (`ID`, `MODULE_ID`, `UNDO_TYPE`, `UNDO_HANDLER`, `CONTENT`, `USER_ID`, `TIMESTAMP_X`) VALUES
('2fd1358f19a028670817746a1e27fa744', 'main', 'autosave', 'CAutoSave::_Restore', 'a:11:{s:9:\"submitbtn\";s:0:\"\";s:4:\"mode\";s:6:\"public\";s:4:\"save\";s:1:\"Y\";s:4:\"site\";s:2:\"s1\";s:8:\"template\";s:0:\"\";s:10:\"templateID\";s:6:\"balita\";s:9:\"subdialog\";s:0:\"\";s:8:\"back_url\";s:91:\"/?clear_cache=Y&back_url_admin=%2Fbitrix%2Fadmin%2Fsettings.php%3Fmid%3Dfileman%26lang%3Dru\";s:5:\"title\";s:6:\"Balita\";s:4:\"path\";s:10:\"/index.php\";s:11:\"filesrc_pub\";s:352:\"<?$APPLICATION->IncludeComponent(\n	\"bitrix:menu\",\n	\"\",\n	Array(\n		\"ALLOW_MULTI_SELECT\" => \"N\",\n		\"CHILD_MENU_TYPE\" => \"left\",\n		\"DELAY\" => \"N\",\n		\"MAX_LEVEL\" => \"1\",\n		\"MENU_CACHE_GET_VARS\" => array(\"\"),\n		\"MENU_CACHE_TIME\" => \"3600\",\n		\"MENU_CACHE_TYPE\" => \"N\",\n		\"MENU_CACHE_USE_GROUPS\" => \"Y\",\n		\"ROOT_MENU_TYPE\" => \"main\",\n		\"USE_EXT\" => \"N\"\n	)\n);?>\";}', 1, 1623004904);

-- --------------------------------------------------------

--
-- Структура таблицы `b_urlpreview_metadata`
--

CREATE TABLE `b_urlpreview_metadata` (
  `ID` int(11) NOT NULL,
  `URL` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `DATE_INSERT` datetime NOT NULL,
  `DATE_EXPIRE` datetime DEFAULT NULL,
  `TITLE` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `IMAGE_ID` int(11) DEFAULT NULL,
  `IMAGE` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EMBED` mediumtext COLLATE utf8_unicode_ci,
  `EXTRA` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_urlpreview_route`
--

CREATE TABLE `b_urlpreview_route` (
  `ID` int(11) NOT NULL,
  `ROUTE` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `MODULE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CLASS` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `PARAMETERS` mediumtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_user`
--

CREATE TABLE `b_user` (
  `ID` int(18) NOT NULL,
  `TIMESTAMP_X` timestamp NULL DEFAULT NULL,
  `LOGIN` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `PASSWORD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CHECKWORD` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EMAIL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_LOGIN` datetime DEFAULT NULL,
  `DATE_REGISTER` datetime NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_PROFESSION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_WWW` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_ICQ` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_GENDER` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_BIRTHDATE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_PHOTO` int(18) DEFAULT NULL,
  `PERSONAL_PHONE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_FAX` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_MOBILE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_PAGER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_STREET` text COLLATE utf8_unicode_ci,
  `PERSONAL_MAILBOX` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_CITY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_STATE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_ZIP` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_COUNTRY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_NOTES` text COLLATE utf8_unicode_ci,
  `WORK_COMPANY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_DEPARTMENT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_POSITION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_WWW` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_PHONE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_FAX` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_PAGER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_STREET` text COLLATE utf8_unicode_ci,
  `WORK_MAILBOX` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_CITY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_STATE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_ZIP` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_COUNTRY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_PROFILE` text COLLATE utf8_unicode_ci,
  `WORK_LOGO` int(18) DEFAULT NULL,
  `WORK_NOTES` text COLLATE utf8_unicode_ci,
  `ADMIN_NOTES` text COLLATE utf8_unicode_ci,
  `STORED_HASH` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_BIRTHDAY` date DEFAULT NULL,
  `EXTERNAL_AUTH_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CHECKWORD_TIME` datetime DEFAULT NULL,
  `SECOND_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONFIRM_CODE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LOGIN_ATTEMPTS` int(18) DEFAULT NULL,
  `LAST_ACTIVITY_DATE` datetime DEFAULT NULL,
  `AUTO_TIME_ZONE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TIME_ZONE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TIME_ZONE_OFFSET` int(18) DEFAULT NULL,
  `TITLE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BX_USER_ID` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BLOCKED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_user`
--

INSERT INTO `b_user` (`ID`, `TIMESTAMP_X`, `LOGIN`, `PASSWORD`, `CHECKWORD`, `ACTIVE`, `NAME`, `LAST_NAME`, `EMAIL`, `LAST_LOGIN`, `DATE_REGISTER`, `LID`, `PERSONAL_PROFESSION`, `PERSONAL_WWW`, `PERSONAL_ICQ`, `PERSONAL_GENDER`, `PERSONAL_BIRTHDATE`, `PERSONAL_PHOTO`, `PERSONAL_PHONE`, `PERSONAL_FAX`, `PERSONAL_MOBILE`, `PERSONAL_PAGER`, `PERSONAL_STREET`, `PERSONAL_MAILBOX`, `PERSONAL_CITY`, `PERSONAL_STATE`, `PERSONAL_ZIP`, `PERSONAL_COUNTRY`, `PERSONAL_NOTES`, `WORK_COMPANY`, `WORK_DEPARTMENT`, `WORK_POSITION`, `WORK_WWW`, `WORK_PHONE`, `WORK_FAX`, `WORK_PAGER`, `WORK_STREET`, `WORK_MAILBOX`, `WORK_CITY`, `WORK_STATE`, `WORK_ZIP`, `WORK_COUNTRY`, `WORK_PROFILE`, `WORK_LOGO`, `WORK_NOTES`, `ADMIN_NOTES`, `STORED_HASH`, `XML_ID`, `PERSONAL_BIRTHDAY`, `EXTERNAL_AUTH_ID`, `CHECKWORD_TIME`, `SECOND_NAME`, `CONFIRM_CODE`, `LOGIN_ATTEMPTS`, `LAST_ACTIVITY_DATE`, `AUTO_TIME_ZONE`, `TIME_ZONE`, `TIME_ZONE_OFFSET`, `TITLE`, `BX_USER_ID`, `LANGUAGE_ID`, `BLOCKED`) VALUES
(1, NULL, 'admin', '$6$RhoCBsSc4ikj5r28$imDIOi8T3/QMdRX6vI6BYqjKeeKuS9ka6UTFDGVlet4anrRGs.UrOU9I8MV2H6VBs9RFieYdcfvgRy906dNjl0', '$6$jlwUrwFOeqH9TzMc$kz10tTfvjoVJVOXhboFDYyrxlKV2L9OZl48EXpl9dW..j/6E1tJxcgpNLvsEimKO0Fs7cSKh0Aa2k14JMjLxh1', 'Y', 'kaidor', 'saervis', 'rusik1.rusik1@mail.ru', '2021-06-08 11:02:21', '2021-06-02 19:31:23', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-02 19:31:23', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N');

-- --------------------------------------------------------

--
-- Структура таблицы `b_user_access`
--

CREATE TABLE `b_user_access` (
  `USER_ID` int(11) DEFAULT NULL,
  `PROVIDER_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACCESS_CODE` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_user_access`
--

INSERT INTO `b_user_access` (`USER_ID`, `PROVIDER_ID`, `ACCESS_CODE`) VALUES
(0, 'group', 'G2'),
(1, 'group', 'G1'),
(1, 'group', 'G3'),
(1, 'group', 'G4'),
(1, 'group', 'G2'),
(1, 'user', 'U1');

-- --------------------------------------------------------

--
-- Структура таблицы `b_user_access_check`
--

CREATE TABLE `b_user_access_check` (
  `USER_ID` int(11) DEFAULT NULL,
  `PROVIDER_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_user_auth_action`
--

CREATE TABLE `b_user_auth_action` (
  `ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `PRIORITY` int(11) NOT NULL DEFAULT '100',
  `ACTION` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACTION_DATE` datetime NOT NULL,
  `APPLICATION_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_user_auth_code`
--

CREATE TABLE `b_user_auth_code` (
  `USER_ID` int(11) NOT NULL,
  `CODE_TYPE` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'email',
  `OTP_SECRET` text COLLATE utf8_unicode_ci,
  `ATTEMPTS` int(11) DEFAULT '0',
  `DATE_SENT` datetime DEFAULT NULL,
  `DATE_RESENT` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_user_counter`
--

CREATE TABLE `b_user_counter` (
  `USER_ID` int(18) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '**',
  `CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CNT` int(18) NOT NULL DEFAULT '0',
  `LAST_DATE` datetime DEFAULT NULL,
  `TIMESTAMP_X` datetime NOT NULL DEFAULT '3000-01-01 00:00:00',
  `TAG` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PARAMS` text COLLATE utf8_unicode_ci,
  `SENT` char(1) COLLATE utf8_unicode_ci DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_user_digest`
--

CREATE TABLE `b_user_digest` (
  `USER_ID` int(11) NOT NULL,
  `DIGEST_HA1` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_user_field`
--

CREATE TABLE `b_user_field` (
  `ID` int(11) NOT NULL,
  `ENTITY_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FIELD_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SORT` int(11) DEFAULT NULL,
  `MULTIPLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `MANDATORY` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SHOW_FILTER` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SHOW_IN_LIST` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `EDIT_IN_LIST` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `IS_SEARCHABLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SETTINGS` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_user_field_confirm`
--

CREATE TABLE `b_user_field_confirm` (
  `ID` int(18) NOT NULL,
  `USER_ID` int(18) NOT NULL,
  `DATE_CHANGE` timestamp NULL DEFAULT NULL,
  `FIELD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `FIELD_VALUE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CONFIRM_CODE` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `ATTEMPTS` int(18) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_user_field_enum`
--

CREATE TABLE `b_user_field_enum` (
  `ID` int(11) NOT NULL,
  `USER_FIELD_ID` int(11) DEFAULT NULL,
  `VALUE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DEF` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SORT` int(11) NOT NULL DEFAULT '500',
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_user_field_lang`
--

CREATE TABLE `b_user_field_lang` (
  `USER_FIELD_ID` int(11) NOT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `EDIT_FORM_LABEL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LIST_COLUMN_LABEL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LIST_FILTER_LABEL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ERROR_MESSAGE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HELP_MESSAGE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_user_field_permission`
--

CREATE TABLE `b_user_field_permission` (
  `ID` int(10) UNSIGNED NOT NULL,
  `ENTITY_TYPE_ID` tinyint(2) UNSIGNED NOT NULL,
  `USER_FIELD_ID` int(10) UNSIGNED NOT NULL,
  `ACCESS_CODE` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `PERMISSION_ID` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `VALUE` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_user_group`
--

CREATE TABLE `b_user_group` (
  `USER_ID` int(18) NOT NULL,
  `GROUP_ID` int(18) NOT NULL,
  `DATE_ACTIVE_FROM` datetime DEFAULT NULL,
  `DATE_ACTIVE_TO` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_user_group`
--

INSERT INTO `b_user_group` (`USER_ID`, `GROUP_ID`, `DATE_ACTIVE_FROM`, `DATE_ACTIVE_TO`) VALUES
(1, 1, NULL, NULL),
(1, 3, NULL, NULL),
(1, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `b_user_hit_auth`
--

CREATE TABLE `b_user_hit_auth` (
  `ID` int(18) NOT NULL,
  `USER_ID` int(18) NOT NULL,
  `HASH` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `URL` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TIMESTAMP_X` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_user_index`
--

CREATE TABLE `b_user_index` (
  `USER_ID` int(11) NOT NULL,
  `SEARCH_USER_CONTENT` text COLLATE utf8_unicode_ci,
  `SEARCH_DEPARTMENT_CONTENT` text COLLATE utf8_unicode_ci,
  `SEARCH_ADMIN_CONTENT` text COLLATE utf8_unicode_ci,
  `NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SECOND_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_POSITION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UF_DEPARTMENT_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_user_index`
--

INSERT INTO `b_user_index` (`USER_ID`, `SEARCH_USER_CONTENT`, `SEARCH_DEPARTMENT_CONTENT`, `SEARCH_ADMIN_CONTENT`, `NAME`, `LAST_NAME`, `SECOND_NAME`, `WORK_POSITION`, `UF_DEPARTMENT_NAME`) VALUES
(1, '001 xnvqbe fnreivf', '', '001 xnvqbe fnreivf ehfvx1 znvy ehfvx1.ehfvx1@znvy.eh nqzva', 'kaidor', 'saervis', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `b_user_index_selector`
--

CREATE TABLE `b_user_index_selector` (
  `USER_ID` int(11) NOT NULL,
  `SEARCH_SELECTOR_CONTENT` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_user_index_selector`
--

INSERT INTO `b_user_index_selector` (`USER_ID`, `SEARCH_SELECTOR_CONTENT`) VALUES
(1, 'xnvqbe fnreivf');

-- --------------------------------------------------------

--
-- Структура таблицы `b_user_option`
--

CREATE TABLE `b_user_option` (
  `ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `CATEGORY` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `VALUE` mediumtext COLLATE utf8_unicode_ci,
  `COMMON` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_user_option`
--

INSERT INTO `b_user_option` (`ID`, `USER_ID`, `CATEGORY`, `NAME`, `VALUE`, `COMMON`) VALUES
(1, 0, 'intranet', '~gadgets_admin_index', 'a:1:{i:0;a:1:{s:7:\"GADGETS\";a:8:{s:20:\"ADMIN_INFO@333333333\";a:3:{s:6:\"COLUMN\";i:0;s:3:\"ROW\";i:0;s:4:\"HIDE\";s:1:\"N\";}s:19:\"HTML_AREA@444444444\";a:5:{s:6:\"COLUMN\";i:0;s:3:\"ROW\";i:1;s:4:\"HIDE\";s:1:\"N\";s:8:\"USERDATA\";a:1:{s:7:\"content\";s:797:\"<table class=\"bx-gadgets-info-site-table\" cellspacing=\"0\"><tr>	<td class=\"bx-gadget-gray\">Создатель сайта:</td>	<td>Группа компаний &laquo;1С-Битрикс&raquo;.</td>	<td class=\"bx-gadgets-info-site-logo\" rowspan=\"5\"><img src=\"/bitrix/components/bitrix/desktop/templates/admin/images/site_logo.png\"></td></tr><tr>	<td class=\"bx-gadget-gray\">Адрес сайта:</td>	<td><a href=\"http://www.1c-bitrix.ru\">www.1c-bitrix.ru</a></td></tr><tr>	<td class=\"bx-gadget-gray\">Сайт сдан:</td>	<td>12 декабря 2010 г.</td></tr><tr>	<td class=\"bx-gadget-gray\">Ответственное лицо:</td>	<td>Иван Иванов</td></tr><tr>	<td class=\"bx-gadget-gray\">E-mail:</td>	<td><a href=\"mailto:info@1c-bitrix.ru\">info@1c-bitrix.ru</a></td></tr></table>\";}s:8:\"SETTINGS\";a:1:{s:9:\"TITLE_STD\";s:34:\"Информация о сайте\";}}s:25:\"ADMIN_CHECKLIST@777888999\";a:3:{s:6:\"COLUMN\";i:0;s:3:\"ROW\";i:2;s:4:\"HIDE\";s:1:\"N\";}s:19:\"RSSREADER@777777777\";a:4:{s:6:\"COLUMN\";i:1;s:3:\"ROW\";i:3;s:4:\"HIDE\";s:1:\"N\";s:8:\"SETTINGS\";a:3:{s:9:\"TITLE_STD\";s:33:\"Новости 1С-Битрикс\";s:3:\"CNT\";i:10;s:7:\"RSS_URL\";s:45:\"https://www.1c-bitrix.ru/about/life/news/rss/\";}}s:24:\"ADMIN_SECURITY@555555555\";a:3:{s:6:\"COLUMN\";i:1;s:3:\"ROW\";i:0;s:4:\"HIDE\";s:1:\"N\";}s:25:\"ADMIN_SITESPEED@666666777\";a:3:{s:6:\"COLUMN\";i:1;s:3:\"ROW\";i:1;s:4:\"HIDE\";s:1:\"N\";}s:23:\"ADMIN_PERFMON@666666666\";a:3:{s:6:\"COLUMN\";i:1;s:3:\"ROW\";i:2;s:4:\"HIDE\";s:1:\"N\";}s:23:\"ADMIN_MARKETPALCE@22549\";a:3:{s:6:\"COLUMN\";i:1;s:3:\"ROW\";i:3;s:4:\"HIDE\";s:1:\"N\";}}}}', 'Y'),
(2, 0, 'global', 'settings', 'a:2:{s:18:\"start_menu_preload\";s:1:\"Y\";s:16:\"start_menu_title\";s:1:\"N\";}', 'Y'),
(3, 0, 'intranet', '~gadgets_holder1', 'a:1:{s:7:\"GADGETS\";a:5:{s:15:\"RSSREADER@12333\";a:5:{s:6:\"COLUMN\";i:0;s:3:\"ROW\";i:0;s:8:\"USERDATA\";N;s:4:\"HIDE\";s:1:\"N\";s:8:\"SETTINGS\";a:2:{s:3:\"CNT\";s:2:\"10\";s:7:\"RSS_URL\";s:44:\"http://www.1c-bitrix.ru/about/life/news/rss/\";}}s:15:\"HTML_AREA@24648\";a:4:{s:6:\"COLUMN\";i:1;s:3:\"ROW\";i:0;s:8:\"USERDATA\";N;s:4:\"HIDE\";s:1:\"N\";}s:15:\"FAVORITES@20837\";a:4:{s:6:\"COLUMN\";i:1;s:3:\"ROW\";i:1;s:8:\"USERDATA\";a:1:{s:5:\"LINKS\";a:1:{i:0;a:2:{s:4:\"NAME\";s:0:\"\";s:3:\"URL\";s:24:\"http://www.1c-bitrix.ru/\";}}}s:4:\"HIDE\";s:1:\"N\";}s:12:\"PROBKI@28450\";a:4:{s:6:\"COLUMN\";i:2;s:3:\"ROW\";i:0;s:8:\"USERDATA\";N;s:4:\"HIDE\";s:1:\"N\";}s:13:\"WEATHER@23987\";a:4:{s:6:\"COLUMN\";i:2;s:3:\"ROW\";i:1;s:8:\"USERDATA\";N;s:4:\"HIDE\";s:1:\"N\";}}}', 'Y'),
(4, 1, 'admin_panel', 'settings', 'a:1:{s:4:\"edit\";s:3:\"off\";}', 'N'),
(5, 1, 'hot_keys', 'user_defined', 'b:1;', 'N'),
(6, 1, 'favorite', 'favorite_menu', 'a:1:{s:5:\"stick\";s:1:\"N\";}', 'N'),
(11, 1, 'main.interface.grid', 'tbl_iblock_admin_750dd17d83198dd551018232269fa242', 'a:3:{s:5:\"views\";a:1:{s:7:\"default\";a:3:{s:7:\"columns\";s:0:\"\";s:13:\"columns_sizes\";a:2:{s:6:\"expand\";i:1;s:7:\"columns\";a:0:{}}s:15:\"sticked_columns\";a:0:{}}}s:7:\"filters\";a:0:{}s:12:\"current_view\";s:7:\"default\";}', 'N'),
(13, 1, 'admin_menu', 'pos', 'a:1:{s:8:\"sections\";s:75:\"seo_search_adv,menu_module_settings,iblock_admin,menu_fileman,menu_medialib\";}', 'N'),
(16, 1, 'html_editor', 'user_settings_', 'a:3:{s:4:\"view\";s:5:\"split\";s:14:\"split_vertical\";s:1:\"0\";s:13:\"taskbar_shown\";s:1:\"1\";}', 'N'),
(22, 1, 'fileman', 'code_editor', 'a:1:{s:5:\"theme\";s:5:\"light\";}', 'N'),
(31, 1, 'main.interface.grid', 'tbl_iblock_admin_57333aa5292b676da428da4ff6fe11d5', 'a:3:{s:5:\"views\";a:1:{s:7:\"default\";a:3:{s:7:\"columns\";s:0:\"\";s:13:\"columns_sizes\";a:2:{s:6:\"expand\";i:1;s:7:\"columns\";a:0:{}}s:15:\"sticked_columns\";a:0:{}}}s:7:\"filters\";a:0:{}s:12:\"current_view\";s:7:\"default\";}', 'N'),
(34, 1, 'main.ui.filter', 'tbl_iblock_section_f6c58c3f2dd5267124caefa053cb336f', 'a:6:{s:14:\"use_pin_preset\";b:1;s:15:\"deleted_presets\";a:0:{}s:15:\"default_presets\";a:0:{}s:7:\"default\";s:14:\"default_filter\";s:6:\"filter\";s:14:\"default_filter\";s:7:\"filters\";a:1:{s:10:\"tmp_filter\";a:2:{s:6:\"fields\";a:1:{s:10:\"SECTION_ID\";s:1:\"1\";}s:11:\"filter_rows\";s:10:\"SECTION_ID\";}}}', 'N'),
(40, 1, 'main.interface.grid', 'tbl_iblock_section_f6c58c3f2dd5267124caefa053cb336f', 'a:3:{s:5:\"views\";a:1:{s:7:\"default\";a:3:{s:7:\"columns\";s:0:\"\";s:13:\"columns_sizes\";a:2:{s:6:\"expand\";i:1;s:7:\"columns\";a:0:{}}s:15:\"sticked_columns\";a:0:{}}}s:7:\"filters\";a:0:{}s:12:\"current_view\";s:7:\"default\";}', 'N'),
(84, 1, 'main.ui.filter', 'tbl_iblock_element_f6c58c3f2dd5267124caefa053cb336f', 'a:6:{s:14:\"use_pin_preset\";b:1;s:15:\"deleted_presets\";a:0:{}s:15:\"default_presets\";a:0:{}s:7:\"default\";s:14:\"default_filter\";s:6:\"filter\";s:14:\"default_filter\";s:7:\"filters\";a:2:{s:14:\"default_filter\";a:0:{}s:10:\"tmp_filter\";a:2:{s:6:\"fields\";a:1:{s:10:\"SECTION_ID\";s:1:\"1\";}s:11:\"filter_rows\";s:10:\"SECTION_ID\";}}}', 'N'),
(89, 1, 'main.interface.grid', 'tbl_iblock_element_f6c58c3f2dd5267124caefa053cb336f', 'a:3:{s:5:\"views\";a:1:{s:7:\"default\";a:3:{s:7:\"columns\";s:0:\"\";s:13:\"columns_sizes\";a:2:{s:6:\"expand\";i:1;s:7:\"columns\";a:0:{}}s:15:\"sticked_columns\";a:0:{}}}s:7:\"filters\";a:0:{}s:12:\"current_view\";s:7:\"default\";}', 'N'),
(120, 1, 'html_editor', 'type_selector_DETAIL_TEXT1', 'a:1:{s:4:\"type\";s:6:\"editor\";}', 'N'),
(122, 1, 'html_editor', 'type_selector_PREVIEW_TEXT1', 'a:1:{s:4:\"type\";s:4:\"html\";}', 'N'),
(144, 1, 'main.ui.filter', 'tbl_iblock_list_f6c58c3f2dd5267124caefa053cb336f', 'a:6:{s:14:\"use_pin_preset\";b:1;s:15:\"deleted_presets\";a:0:{}s:15:\"default_presets\";a:0:{}s:7:\"default\";s:14:\"default_filter\";s:6:\"filter\";s:14:\"default_filter\";s:7:\"filters\";a:1:{s:10:\"tmp_filter\";a:2:{s:6:\"fields\";a:1:{s:10:\"SECTION_ID\";s:1:\"0\";}s:11:\"filter_rows\";s:10:\"SECTION_ID\";}}}', 'N'),
(149, 1, 'main.interface.grid', 'tbl_iblock_list_f6c58c3f2dd5267124caefa053cb336f', 'a:3:{s:5:\"views\";a:1:{s:7:\"default\";a:3:{s:7:\"columns\";s:0:\"\";s:13:\"columns_sizes\";a:2:{s:6:\"expand\";i:1;s:7:\"columns\";a:0:{}}s:15:\"sticked_columns\";a:0:{}}}s:7:\"filters\";a:0:{}s:12:\"current_view\";s:7:\"default\";}', 'N'),
(165, 1, 'main.interface.grid', 'tbl_iblock_57333aa5292b676da428da4ff6fe11d5', 'a:3:{s:5:\"views\";a:1:{s:7:\"default\";a:3:{s:7:\"columns\";s:0:\"\";s:13:\"columns_sizes\";a:2:{s:6:\"expand\";i:1;s:7:\"columns\";a:0:{}}s:15:\"sticked_columns\";a:0:{}}}s:7:\"filters\";a:0:{}s:12:\"current_view\";s:7:\"default\";}', 'N'),
(180, 1, 'fileman', 'last_pathes', 's:200:\"a:7:{i:0;s:7:\"/bitrix\";i:1;s:23:\"/local/templates/balita\";i:2;s:11:\"/categories\";i:3;s:27:\"/local/templates/default/js\";i:4;s:24:\"/local/templates/default\";i:5;s:6:\"/about\";i:6;s:14:\"/СЃategories\";}\";', 'N');

-- --------------------------------------------------------

--
-- Структура таблицы `b_user_password`
--

CREATE TABLE `b_user_password` (
  `ID` bigint(20) NOT NULL,
  `USER_ID` bigint(20) NOT NULL,
  `PASSWORD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DATE_CHANGE` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_user_password`
--

INSERT INTO `b_user_password` (`ID`, `USER_ID`, `PASSWORD`, `DATE_CHANGE`) VALUES
(1, 1, '$6$RhoCBsSc4ikj5r28$imDIOi8T3/QMdRX6vI6BYqjKeeKuS9ka6UTFDGVlet4anrRGs.UrOU9I8MV2H6VBs9RFieYdcfvgRy906dNjl0', '2021-06-02 19:31:23');

-- --------------------------------------------------------

--
-- Структура таблицы `b_user_phone_auth`
--

CREATE TABLE `b_user_phone_auth` (
  `USER_ID` int(11) NOT NULL,
  `PHONE_NUMBER` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `OTP_SECRET` text COLLATE utf8_unicode_ci,
  `ATTEMPTS` int(11) DEFAULT '0',
  `CONFIRMED` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `DATE_SENT` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_user_profile_history`
--

CREATE TABLE `b_user_profile_history` (
  `ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `EVENT_TYPE` int(11) DEFAULT NULL,
  `DATE_INSERT` datetime DEFAULT NULL,
  `REMOTE_ADDR` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_AGENT` text COLLATE utf8_unicode_ci,
  `REQUEST_URI` text COLLATE utf8_unicode_ci,
  `UPDATED_BY_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_user_profile_record`
--

CREATE TABLE `b_user_profile_record` (
  `ID` int(11) NOT NULL,
  `HISTORY_ID` int(11) NOT NULL,
  `FIELD` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DATA` mediumtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_user_session`
--

CREATE TABLE `b_user_session` (
  `SESSION_ID` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL,
  `SESSION_DATA` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_user_stored_auth`
--

CREATE TABLE `b_user_stored_auth` (
  `ID` int(18) NOT NULL,
  `USER_ID` int(18) NOT NULL,
  `DATE_REG` datetime NOT NULL,
  `LAST_AUTH` datetime NOT NULL,
  `STORED_HASH` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `TEMP_HASH` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `IP_ADDR` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_user_stored_auth`
--

INSERT INTO `b_user_stored_auth` (`ID`, `USER_ID`, `DATE_REG`, `LAST_AUTH`, `STORED_HASH`, `TEMP_HASH`, `IP_ADDR`) VALUES
(3, 1, '2021-06-06 17:29:50', '2021-06-08 11:02:21', 'cd1330c36aa324088fe71fd585b74041', 'N', 2130706433);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `b_admin_notify`
--
ALTER TABLE `b_admin_notify`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_AD_TAG` (`TAG`);

--
-- Индексы таблицы `b_admin_notify_lang`
--
ALTER TABLE `b_admin_notify_lang`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `IX_ADM_NTFY_LANG` (`NOTIFY_ID`,`LID`),
  ADD KEY `IX_ADM_NTFY_LID` (`LID`);

--
-- Индексы таблицы `b_agent`
--
ALTER TABLE `b_agent`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_act_next_exec` (`ACTIVE`,`NEXT_EXEC`),
  ADD KEY `ix_agent_user_id` (`USER_ID`),
  ADD KEY `ix_agent_name` (`NAME`(100));

--
-- Индексы таблицы `b_app_password`
--
ALTER TABLE `b_app_password`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_app_password_user` (`USER_ID`);

--
-- Индексы таблицы `b_b24connector_buttons`
--
ALTER TABLE `b_b24connector_buttons`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_bitrixcloud_option`
--
ALTER TABLE `b_bitrixcloud_option`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_bitrixcloud_option_1` (`NAME`);

--
-- Индексы таблицы `b_cache_tag`
--
ALTER TABLE `b_cache_tag`
  ADD KEY `ix_b_cache_tag_0` (`SITE_ID`,`CACHE_SALT`,`RELATIVE_PATH`(50)),
  ADD KEY `ix_b_cache_tag_1` (`TAG`);

--
-- Индексы таблицы `b_captcha`
--
ALTER TABLE `b_captcha`
  ADD UNIQUE KEY `UX_B_CAPTCHA` (`ID`);

--
-- Индексы таблицы `b_checklist`
--
ALTER TABLE `b_checklist`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_clouds_copy_queue`
--
ALTER TABLE `b_clouds_copy_queue`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_clouds_delete_queue`
--
ALTER TABLE `b_clouds_delete_queue`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_clouds_delete_queue_1` (`BUCKET_ID`,`FILE_PATH`(100));

--
-- Индексы таблицы `b_clouds_file_bucket`
--
ALTER TABLE `b_clouds_file_bucket`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_clouds_file_hash`
--
ALTER TABLE `b_clouds_file_hash`
  ADD PRIMARY KEY (`BUCKET_ID`,`FILE_PATH`(100));

--
-- Индексы таблицы `b_clouds_file_resize`
--
ALTER TABLE `b_clouds_file_resize`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_file_resize_ts` (`TIMESTAMP_X`),
  ADD KEY `ix_b_file_resize_path` (`TO_PATH`(100)),
  ADD KEY `ix_b_file_resize_file` (`FILE_ID`);

--
-- Индексы таблицы `b_clouds_file_save`
--
ALTER TABLE `b_clouds_file_save`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_EXTERNAL_ID` (`EXTERNAL_ID`);

--
-- Индексы таблицы `b_clouds_file_upload`
--
ALTER TABLE `b_clouds_file_upload`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_component_params`
--
ALTER TABLE `b_component_params`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_comp_params_name` (`COMPONENT_NAME`),
  ADD KEY `ix_comp_params_path` (`SITE_ID`,`REAL_PATH`),
  ADD KEY `ix_comp_params_sname` (`SITE_ID`,`COMPONENT_NAME`);

--
-- Индексы таблицы `b_composite_log`
--
ALTER TABLE `b_composite_log`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_COMPOSITE_LOG_PAGE_ID` (`PAGE_ID`),
  ADD KEY `IX_B_COMPOSITE_LOG_HOST` (`HOST`),
  ADD KEY `IX_B_COMPOSITE_LOG_TYPE` (`TYPE`);

--
-- Индексы таблицы `b_composite_page`
--
ALTER TABLE `b_composite_page`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_COMPOSITE_PAGE_CACHE_KEY` (`CACHE_KEY`(100)),
  ADD KEY `IX_B_COMPOSITE_PAGE_VIEWED` (`LAST_VIEWED`),
  ADD KEY `IX_B_COMPOSITE_PAGE_HOST` (`HOST`);

--
-- Индексы таблицы `b_consent_agreement`
--
ALTER TABLE `b_consent_agreement`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_CONSENT_AGREEMENT_CODE` (`CODE`);

--
-- Индексы таблицы `b_consent_field`
--
ALTER TABLE `b_consent_field`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_CONSENT_FIELD_AG_ID` (`AGREEMENT_ID`);

--
-- Индексы таблицы `b_consent_user_consent`
--
ALTER TABLE `b_consent_user_consent`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_CONSENT_USER_CONSENT` (`AGREEMENT_ID`),
  ADD KEY `IX_CONSENT_USER_CONSENT_USER_ORIGIN` (`USER_ID`,`ORIGIN_ID`);

--
-- Индексы таблицы `b_consent_user_consent_item`
--
ALTER TABLE `b_consent_user_consent_item`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_CONSENT_USER_ITEM_AG_ID` (`USER_CONSENT_ID`);

--
-- Индексы таблицы `b_counter_data`
--
ALTER TABLE `b_counter_data`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_culture`
--
ALTER TABLE `b_culture`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_entity_usage`
--
ALTER TABLE `b_entity_usage`
  ADD PRIMARY KEY (`USER_ID`,`CONTEXT`,`ENTITY_ID`,`ITEM_ID`),
  ADD KEY `IX_ENTITY_USAGE_ITEM_ID_INT` (`ITEM_ID_INT`),
  ADD KEY `IX_ENTITY_USAGE_LAST_USE_DATE` (`LAST_USE_DATE`);

--
-- Индексы таблицы `b_event`
--
ALTER TABLE `b_event`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_success` (`SUCCESS_EXEC`),
  ADD KEY `ix_b_event_date_exec` (`DATE_EXEC`);

--
-- Индексы таблицы `b_event_attachment`
--
ALTER TABLE `b_event_attachment`
  ADD PRIMARY KEY (`EVENT_ID`,`FILE_ID`);

--
-- Индексы таблицы `b_event_log`
--
ALTER TABLE `b_event_log`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_event_log_time` (`TIMESTAMP_X`),
  ADD KEY `ix_b_event_log_audit_type_time` (`AUDIT_TYPE_ID`,`TIMESTAMP_X`);

--
-- Индексы таблицы `b_event_message`
--
ALTER TABLE `b_event_message`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_event_message_name` (`EVENT_NAME`(50));

--
-- Индексы таблицы `b_event_message_attachment`
--
ALTER TABLE `b_event_message_attachment`
  ADD PRIMARY KEY (`EVENT_MESSAGE_ID`,`FILE_ID`);

--
-- Индексы таблицы `b_event_message_site`
--
ALTER TABLE `b_event_message_site`
  ADD PRIMARY KEY (`EVENT_MESSAGE_ID`,`SITE_ID`);

--
-- Индексы таблицы `b_event_type`
--
ALTER TABLE `b_event_type`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ux_1` (`EVENT_NAME`,`LID`);

--
-- Индексы таблицы `b_favorite`
--
ALTER TABLE `b_favorite`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_file`
--
ALTER TABLE `b_file`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_FILE_EXTERNAL_ID` (`EXTERNAL_ID`);

--
-- Индексы таблицы `b_file_duplicate`
--
ALTER TABLE `b_file_duplicate`
  ADD PRIMARY KEY (`DUPLICATE_ID`,`ORIGINAL_ID`),
  ADD KEY `ix_file_duplicate_duplicate` (`ORIGINAL_ID`);

--
-- Индексы таблицы `b_file_hash`
--
ALTER TABLE `b_file_hash`
  ADD PRIMARY KEY (`FILE_ID`),
  ADD KEY `ix_file_hash_size_hash` (`FILE_SIZE`,`FILE_HASH`);

--
-- Индексы таблицы `b_file_preview`
--
ALTER TABLE `b_file_preview`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_FILE_PL_TOUCH` (`TOUCHED_AT`),
  ADD KEY `IX_B_FILE_PL_FILE` (`FILE_ID`);

--
-- Индексы таблицы `b_file_search`
--
ALTER TABLE `b_file_search`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_filters`
--
ALTER TABLE `b_filters`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_finder_dest`
--
ALTER TABLE `b_finder_dest`
  ADD PRIMARY KEY (`USER_ID`,`CODE`,`CONTEXT`),
  ADD KEY `IX_FINDER_DEST` (`CODE_TYPE`);

--
-- Индексы таблицы `b_geoip_handlers`
--
ALTER TABLE `b_geoip_handlers`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_group`
--
ALTER TABLE `b_group`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_group_collection_task`
--
ALTER TABLE `b_group_collection_task`
  ADD PRIMARY KEY (`GROUP_ID`,`TASK_ID`,`COLLECTION_ID`);

--
-- Индексы таблицы `b_group_subordinate`
--
ALTER TABLE `b_group_subordinate`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_group_task`
--
ALTER TABLE `b_group_task`
  ADD PRIMARY KEY (`GROUP_ID`,`TASK_ID`);

--
-- Индексы таблицы `b_hlblock_entity`
--
ALTER TABLE `b_hlblock_entity`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_hlblock_entity_rights`
--
ALTER TABLE `b_hlblock_entity_rights`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_hot_keys`
--
ALTER TABLE `b_hot_keys`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ix_b_hot_keys_co_u` (`CODE_ID`,`USER_ID`),
  ADD KEY `ix_hot_keys_user` (`USER_ID`);

--
-- Индексы таблицы `b_hot_keys_code`
--
ALTER TABLE `b_hot_keys_code`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_hot_keys_code_cn` (`CLASS_NAME`),
  ADD KEY `ix_hot_keys_code_url` (`URL`);

--
-- Индексы таблицы `b_iblock`
--
ALTER TABLE `b_iblock`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ix_iblock_api_code` (`API_CODE`),
  ADD KEY `ix_iblock` (`IBLOCK_TYPE_ID`,`LID`,`ACTIVE`);

--
-- Индексы таблицы `b_iblock_cache`
--
ALTER TABLE `b_iblock_cache`
  ADD PRIMARY KEY (`CACHE_KEY`);

--
-- Индексы таблицы `b_iblock_element`
--
ALTER TABLE `b_iblock_element`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_iblock_element_1` (`IBLOCK_ID`,`IBLOCK_SECTION_ID`),
  ADD KEY `ix_iblock_element_4` (`IBLOCK_ID`,`XML_ID`,`WF_PARENT_ELEMENT_ID`),
  ADD KEY `ix_iblock_element_3` (`WF_PARENT_ELEMENT_ID`),
  ADD KEY `ix_iblock_element_code` (`IBLOCK_ID`,`CODE`);

--
-- Индексы таблицы `b_iblock_element_iprop`
--
ALTER TABLE `b_iblock_element_iprop`
  ADD PRIMARY KEY (`ELEMENT_ID`,`IPROP_ID`),
  ADD KEY `ix_b_iblock_element_iprop_0` (`IPROP_ID`),
  ADD KEY `ix_b_iblock_element_iprop_1` (`IBLOCK_ID`);

--
-- Индексы таблицы `b_iblock_element_lock`
--
ALTER TABLE `b_iblock_element_lock`
  ADD PRIMARY KEY (`IBLOCK_ELEMENT_ID`);

--
-- Индексы таблицы `b_iblock_element_property`
--
ALTER TABLE `b_iblock_element_property`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_iblock_element_property_1` (`IBLOCK_ELEMENT_ID`,`IBLOCK_PROPERTY_ID`),
  ADD KEY `ix_iblock_element_property_2` (`IBLOCK_PROPERTY_ID`),
  ADD KEY `ix_iblock_element_prop_enum` (`VALUE_ENUM`,`IBLOCK_PROPERTY_ID`),
  ADD KEY `ix_iblock_element_prop_num` (`VALUE_NUM`,`IBLOCK_PROPERTY_ID`);

--
-- Индексы таблицы `b_iblock_element_right`
--
ALTER TABLE `b_iblock_element_right`
  ADD PRIMARY KEY (`RIGHT_ID`,`ELEMENT_ID`,`SECTION_ID`),
  ADD KEY `ix_b_iblock_element_right_1` (`ELEMENT_ID`,`IBLOCK_ID`),
  ADD KEY `ix_b_iblock_element_right_2` (`IBLOCK_ID`,`RIGHT_ID`);

--
-- Индексы таблицы `b_iblock_fields`
--
ALTER TABLE `b_iblock_fields`
  ADD PRIMARY KEY (`IBLOCK_ID`,`FIELD_ID`);

--
-- Индексы таблицы `b_iblock_group`
--
ALTER TABLE `b_iblock_group`
  ADD UNIQUE KEY `ux_iblock_group_1` (`IBLOCK_ID`,`GROUP_ID`);

--
-- Индексы таблицы `b_iblock_iblock_iprop`
--
ALTER TABLE `b_iblock_iblock_iprop`
  ADD PRIMARY KEY (`IBLOCK_ID`,`IPROP_ID`),
  ADD KEY `ix_b_iblock_iblock_iprop_0` (`IPROP_ID`);

--
-- Индексы таблицы `b_iblock_iproperty`
--
ALTER TABLE `b_iblock_iproperty`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_iblock_iprop_0` (`IBLOCK_ID`,`ENTITY_TYPE`,`ENTITY_ID`);

--
-- Индексы таблицы `b_iblock_messages`
--
ALTER TABLE `b_iblock_messages`
  ADD PRIMARY KEY (`IBLOCK_ID`,`MESSAGE_ID`);

--
-- Индексы таблицы `b_iblock_offers_tmp`
--
ALTER TABLE `b_iblock_offers_tmp`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_iblock_property`
--
ALTER TABLE `b_iblock_property`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_iblock_property_1` (`IBLOCK_ID`),
  ADD KEY `ix_iblock_property_3` (`LINK_IBLOCK_ID`),
  ADD KEY `ix_iblock_property_2` (`CODE`);

--
-- Индексы таблицы `b_iblock_property_enum`
--
ALTER TABLE `b_iblock_property_enum`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ux_iblock_property_enum` (`PROPERTY_ID`,`XML_ID`);

--
-- Индексы таблицы `b_iblock_property_feature`
--
ALTER TABLE `b_iblock_property_feature`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ix_iblock_property_feature` (`PROPERTY_ID`,`MODULE_ID`,`FEATURE_ID`);

--
-- Индексы таблицы `b_iblock_right`
--
ALTER TABLE `b_iblock_right`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_iblock_right_iblock_id` (`IBLOCK_ID`,`ENTITY_TYPE`,`ENTITY_ID`),
  ADD KEY `ix_b_iblock_right_group_code` (`GROUP_CODE`,`IBLOCK_ID`),
  ADD KEY `ix_b_iblock_right_entity` (`ENTITY_ID`,`ENTITY_TYPE`),
  ADD KEY `ix_b_iblock_right_op_eread` (`ID`,`OP_EREAD`,`GROUP_CODE`),
  ADD KEY `ix_b_iblock_right_op_sread` (`ID`,`OP_SREAD`,`GROUP_CODE`),
  ADD KEY `ix_b_iblock_right_task_id` (`TASK_ID`);

--
-- Индексы таблицы `b_iblock_rss`
--
ALTER TABLE `b_iblock_rss`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_iblock_section`
--
ALTER TABLE `b_iblock_section`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_iblock_section_1` (`IBLOCK_ID`,`IBLOCK_SECTION_ID`),
  ADD KEY `ix_iblock_section_depth_level` (`IBLOCK_ID`,`DEPTH_LEVEL`),
  ADD KEY `ix_iblock_section_left_margin` (`IBLOCK_ID`,`LEFT_MARGIN`,`RIGHT_MARGIN`),
  ADD KEY `ix_iblock_section_right_margin` (`IBLOCK_ID`,`RIGHT_MARGIN`,`LEFT_MARGIN`),
  ADD KEY `ix_iblock_section_code` (`IBLOCK_ID`,`CODE`);

--
-- Индексы таблицы `b_iblock_section_element`
--
ALTER TABLE `b_iblock_section_element`
  ADD UNIQUE KEY `ux_iblock_section_element` (`IBLOCK_SECTION_ID`,`IBLOCK_ELEMENT_ID`,`ADDITIONAL_PROPERTY_ID`),
  ADD KEY `UX_IBLOCK_SECTION_ELEMENT2` (`IBLOCK_ELEMENT_ID`);

--
-- Индексы таблицы `b_iblock_section_iprop`
--
ALTER TABLE `b_iblock_section_iprop`
  ADD PRIMARY KEY (`SECTION_ID`,`IPROP_ID`),
  ADD KEY `ix_b_iblock_section_iprop_0` (`IPROP_ID`),
  ADD KEY `ix_b_iblock_section_iprop_1` (`IBLOCK_ID`);

--
-- Индексы таблицы `b_iblock_section_property`
--
ALTER TABLE `b_iblock_section_property`
  ADD PRIMARY KEY (`IBLOCK_ID`,`SECTION_ID`,`PROPERTY_ID`),
  ADD KEY `ix_b_iblock_section_property_1` (`PROPERTY_ID`),
  ADD KEY `ix_b_iblock_section_property_2` (`SECTION_ID`);

--
-- Индексы таблицы `b_iblock_section_right`
--
ALTER TABLE `b_iblock_section_right`
  ADD PRIMARY KEY (`RIGHT_ID`,`SECTION_ID`),
  ADD KEY `ix_b_iblock_section_right_1` (`SECTION_ID`,`IBLOCK_ID`),
  ADD KEY `ix_b_iblock_section_right_2` (`IBLOCK_ID`,`RIGHT_ID`);

--
-- Индексы таблицы `b_iblock_sequence`
--
ALTER TABLE `b_iblock_sequence`
  ADD PRIMARY KEY (`IBLOCK_ID`,`CODE`);

--
-- Индексы таблицы `b_iblock_site`
--
ALTER TABLE `b_iblock_site`
  ADD PRIMARY KEY (`IBLOCK_ID`,`SITE_ID`);

--
-- Индексы таблицы `b_iblock_type`
--
ALTER TABLE `b_iblock_type`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_landing`
--
ALTER TABLE `b_landing`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_LAND_CODE` (`CODE`),
  ADD KEY `IX_B_LAND_ACTIVE` (`ACTIVE`),
  ADD KEY `IX_B_LAND_DELETED` (`DELETED`),
  ADD KEY `IX_B_LAND_SYS` (`SYS`),
  ADD KEY `IX_B_LAND_XML_ID` (`XML_ID`),
  ADD KEY `IX_B_LAND_SITEMAP` (`SITEMAP`),
  ADD KEY `IX_B_LAND_FOLDER` (`FOLDER`),
  ADD KEY `IX_B_LAND_FOLDER_ID` (`FOLDER_ID`);
ALTER TABLE `b_landing` ADD FULLTEXT KEY `IX_B_LANDING_SEARCH` (`SEARCH_CONTENT`);

--
-- Индексы таблицы `b_landing_binding`
--
ALTER TABLE `b_landing_binding`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_BINDING` (`BINDING_ID`,`BINDING_TYPE`),
  ADD KEY `IX_B_ENTITY` (`ENTITY_ID`,`ENTITY_TYPE`),
  ADD KEY `IX_B_BINDING_TYPE` (`BINDING_TYPE`);

--
-- Индексы таблицы `b_landing_block`
--
ALTER TABLE `b_landing_block`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_BLOCK_LID` (`LID`),
  ADD KEY `IX_B_BLOCK_CODE` (`CODE`),
  ADD KEY `IX_B_BLOCK_ACTIVE` (`ACTIVE`),
  ADD KEY `IX_B_BLOCK_PUBLIC` (`PUBLIC`),
  ADD KEY `IX_B_BLOCK_DELETED` (`DELETED`);
ALTER TABLE `b_landing_block` ADD FULLTEXT KEY `IX_B_BLOCK_SEARCH` (`SEARCH_CONTENT`);

--
-- Индексы таблицы `b_landing_chat`
--
ALTER TABLE `b_landing_chat`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_CHAT` (`CHAT_ID`);

--
-- Индексы таблицы `b_landing_chat_binding`
--
ALTER TABLE `b_landing_chat_binding`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_CHAT` (`INTERNAL_CHAT_ID`),
  ADD KEY `IX_B_ENTITY` (`ENTITY_ID`,`ENTITY_TYPE`);

--
-- Индексы таблицы `b_landing_cookies_agreement`
--
ALTER TABLE `b_landing_cookies_agreement`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_SITE` (`SITE_ID`,`CODE`);

--
-- Индексы таблицы `b_landing_demo`
--
ALTER TABLE `b_landing_demo`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_DEMO_ACTIVE` (`ACTIVE`),
  ADD KEY `IX_B_DEMO_SHOW_IN_LIST` (`SHOW_IN_LIST`),
  ADD KEY `IX_B_DEMO_XML_ID` (`XML_ID`),
  ADD KEY `IX_B_DEMO_APP_CODE` (`APP_CODE`),
  ADD KEY `IX_B_DEMO_TEMPLATE_ID` (`SITE_TEMPLATE_ID`);

--
-- Индексы таблицы `b_landing_domain`
--
ALTER TABLE `b_landing_domain`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_DOMAIN_ACTIVE` (`ACTIVE`),
  ADD KEY `IX_B_DOMAIN_DOMAIN` (`DOMAIN`),
  ADD KEY `IX_B_DOMAIN_PROVIDER` (`PROVIDER`),
  ADD KEY `IX_B_DOMAIN_XML_ID` (`XML_ID`);

--
-- Индексы таблицы `b_landing_entity_rights`
--
ALTER TABLE `b_landing_entity_rights`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_ENTITY` (`ENTITY_ID`,`ENTITY_TYPE`),
  ADD KEY `IX_ROLE` (`ROLE_ID`);

--
-- Индексы таблицы `b_landing_file`
--
ALTER TABLE `b_landing_file`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_ENTITY` (`ENTITY_ID`,`ENTITY_TYPE`),
  ADD KEY `IX_FILE` (`FILE_ID`);

--
-- Индексы таблицы `b_landing_filter_block`
--
ALTER TABLE `b_landing_filter_block`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `IX_B_FILTER_BLOCK` (`FILTER_ID`,`BLOCK_ID`);

--
-- Индексы таблицы `b_landing_filter_entity`
--
ALTER TABLE `b_landing_filter_entity`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `IX_B_FILTER_HASH` (`FILTER_HASH`);

--
-- Индексы таблицы `b_landing_hook_data`
--
ALTER TABLE `b_landing_hook_data`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `K_ENTITY` (`ENTITY_ID`,`ENTITY_TYPE`);

--
-- Индексы таблицы `b_landing_placement`
--
ALTER TABLE `b_landing_placement`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_landing_repo`
--
ALTER TABLE `b_landing_repo`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_REPO_ACTIVE` (`ACTIVE`),
  ADD KEY `IX_B_REPO_XML_ID` (`XML_ID`),
  ADD KEY `IX_B_REPO_APP_CODE` (`APP_CODE`),
  ADD KEY `IX_B_REPO_TEMPLATE_ID` (`SITE_TEMPLATE_ID`);

--
-- Индексы таблицы `b_landing_role`
--
ALTER TABLE `b_landing_role`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_ROLE_TYPE` (`TYPE`);

--
-- Индексы таблицы `b_landing_site`
--
ALTER TABLE `b_landing_site`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_SITE_CODE` (`CODE`),
  ADD KEY `IX_B_SITE_ACTIVE` (`ACTIVE`),
  ADD KEY `IX_B_SITE_DELETED` (`DELETED`),
  ADD KEY `IX_B_SITE_XML_ID` (`XML_ID`),
  ADD KEY `IX_B_SITE_SPECIAL` (`SPECIAL`);

--
-- Индексы таблицы `b_landing_syspage`
--
ALTER TABLE `b_landing_syspage`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_SITE_ID` (`SITE_ID`),
  ADD KEY `IX_LANDING_ID` (`LANDING_ID`);

--
-- Индексы таблицы `b_landing_template`
--
ALTER TABLE `b_landing_template`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_landing_template_ref`
--
ALTER TABLE `b_landing_template_ref`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `K_LANDING_ID` (`LANDING_ID`),
  ADD KEY `K_ENTITY` (`ENTITY_ID`,`ENTITY_TYPE`);

--
-- Индексы таблицы `b_landing_update_block`
--
ALTER TABLE `b_landing_update_block`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_CODE` (`CODE`);

--
-- Индексы таблицы `b_landing_urlrewrite`
--
ALTER TABLE `b_landing_urlrewrite`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_SITE_RULE` (`SITE_ID`,`RULE`),
  ADD KEY `IX_LANDING_ID` (`LANDING_ID`);

--
-- Индексы таблицы `b_landing_view`
--
ALTER TABLE `b_landing_view`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_VIEW_LIDUID` (`LID`,`USER_ID`);

--
-- Индексы таблицы `b_lang`
--
ALTER TABLE `b_lang`
  ADD PRIMARY KEY (`LID`);

--
-- Индексы таблицы `b_language`
--
ALTER TABLE `b_language`
  ADD PRIMARY KEY (`LID`);

--
-- Индексы таблицы `b_lang_domain`
--
ALTER TABLE `b_lang_domain`
  ADD PRIMARY KEY (`LID`,`DOMAIN`);

--
-- Индексы таблицы `b_log_notification`
--
ALTER TABLE `b_log_notification`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_log_notification_action`
--
ALTER TABLE `b_log_notification_action`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_log_notification_action_notification_id` (`NOTIFICATION_ID`);

--
-- Индексы таблицы `b_main_mail_blacklist`
--
ALTER TABLE `b_main_mail_blacklist`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UK_B_MAIN_MAIL_BLACKLIST_CODE` (`CODE`);

--
-- Индексы таблицы `b_main_mail_sender`
--
ALTER TABLE `b_main_mail_sender`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_MAIN_MAIL_SENDER_USER_ID` (`USER_ID`,`IS_CONFIRMED`,`IS_PUBLIC`);

--
-- Индексы таблицы `b_medialib_collection`
--
ALTER TABLE `b_medialib_collection`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_medialib_collection_item`
--
ALTER TABLE `b_medialib_collection_item`
  ADD PRIMARY KEY (`ITEM_ID`,`COLLECTION_ID`);

--
-- Индексы таблицы `b_medialib_item`
--
ALTER TABLE `b_medialib_item`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_medialib_type`
--
ALTER TABLE `b_medialib_type`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_messageservice_message`
--
ALTER TABLE `b_messageservice_message`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `B_MESSAGESERVICE_MESSAGE_1` (`DATE_EXEC`),
  ADD KEY `B_MESSAGESERVICE_MESSAGE_2` (`SUCCESS_EXEC`),
  ADD KEY `B_MESSAGESERVICE_MESSAGE_3` (`SENDER_ID`,`EXTERNAL_ID`);

--
-- Индексы таблицы `b_messageservice_rest_app`
--
ALTER TABLE `b_messageservice_rest_app`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `B_MESSAGESERVICE_REST_APP_1` (`APP_ID`,`CODE`);

--
-- Индексы таблицы `b_messageservice_rest_app_lang`
--
ALTER TABLE `b_messageservice_rest_app_lang`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_module`
--
ALTER TABLE `b_module`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_module_group`
--
ALTER TABLE `b_module_group`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UK_GROUP_MODULE` (`MODULE_ID`,`GROUP_ID`,`SITE_ID`);

--
-- Индексы таблицы `b_module_to_module`
--
ALTER TABLE `b_module_to_module`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ux_module_to_module_unique_id` (`UNIQUE_ID`),
  ADD KEY `ix_module_to_module` (`FROM_MODULE_ID`(20),`MESSAGE_ID`(20),`TO_MODULE_ID`(20),`TO_CLASS`(20),`TO_METHOD`(20));

--
-- Индексы таблицы `b_numerator`
--
ALTER TABLE `b_numerator`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_numerator_sequence`
--
ALTER TABLE `b_numerator_sequence`
  ADD PRIMARY KEY (`NUMERATOR_ID`,`KEY`);

--
-- Индексы таблицы `b_operation`
--
ALTER TABLE `b_operation`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_option`
--
ALTER TABLE `b_option`
  ADD PRIMARY KEY (`MODULE_ID`,`NAME`),
  ADD KEY `ix_option_name` (`NAME`);

--
-- Индексы таблицы `b_option_site`
--
ALTER TABLE `b_option_site`
  ADD PRIMARY KEY (`MODULE_ID`,`NAME`,`SITE_ID`),
  ADD KEY `ix_option_site_module_site` (`MODULE_ID`,`SITE_ID`);

--
-- Индексы таблицы `b_perf_cache`
--
ALTER TABLE `b_perf_cache`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `IX_B_PERF_CACHE_0` (`HIT_ID`,`NN`),
  ADD KEY `IX_B_PERF_CACHE_1` (`COMPONENT_ID`);

--
-- Индексы таблицы `b_perf_cluster`
--
ALTER TABLE `b_perf_cluster`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_perf_component`
--
ALTER TABLE `b_perf_component`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `IX_B_PERF_COMPONENT_0` (`HIT_ID`,`NN`);

--
-- Индексы таблицы `b_perf_error`
--
ALTER TABLE `b_perf_error`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_PERF_ERROR_0` (`HIT_ID`);

--
-- Индексы таблицы `b_perf_history`
--
ALTER TABLE `b_perf_history`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_perf_hit`
--
ALTER TABLE `b_perf_hit`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_PERF_HIT_0` (`DATE_HIT`);

--
-- Индексы таблицы `b_perf_index_ban`
--
ALTER TABLE `b_perf_index_ban`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_perf_index_complete`
--
ALTER TABLE `b_perf_index_complete`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_perf_index_complete_0` (`TABLE_NAME`);

--
-- Индексы таблицы `b_perf_index_suggest`
--
ALTER TABLE `b_perf_index_suggest`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_perf_index_suggest_0` (`SQL_MD5`);

--
-- Индексы таблицы `b_perf_index_suggest_sql`
--
ALTER TABLE `b_perf_index_suggest_sql`
  ADD PRIMARY KEY (`SUGGEST_ID`,`SQL_ID`),
  ADD KEY `ix_b_perf_index_suggest_sql_0` (`SQL_ID`,`SUGGEST_ID`);

--
-- Индексы таблицы `b_perf_sql`
--
ALTER TABLE `b_perf_sql`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `IX_B_PERF_SQL_0` (`HIT_ID`,`NN`),
  ADD KEY `IX_B_PERF_SQL_1` (`COMPONENT_ID`);

--
-- Индексы таблицы `b_perf_sql_backtrace`
--
ALTER TABLE `b_perf_sql_backtrace`
  ADD PRIMARY KEY (`SQL_ID`,`NN`);

--
-- Индексы таблицы `b_perf_tab_column_stat`
--
ALTER TABLE `b_perf_tab_column_stat`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_perf_tab_column_stat` (`TABLE_NAME`,`COLUMN_NAME`);

--
-- Индексы таблицы `b_perf_tab_stat`
--
ALTER TABLE `b_perf_tab_stat`
  ADD PRIMARY KEY (`TABLE_NAME`);

--
-- Индексы таблицы `b_perf_test`
--
ALTER TABLE `b_perf_test`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_PERF_TEST_0` (`REFERENCE_ID`);

--
-- Индексы таблицы `b_rating`
--
ALTER TABLE `b_rating`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_rating_component`
--
ALTER TABLE `b_rating_component`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_RATING_ID_1` (`RATING_ID`,`ACTIVE`,`NEXT_CALCULATION`);

--
-- Индексы таблицы `b_rating_component_results`
--
ALTER TABLE `b_rating_component_results`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_ENTITY_TYPE_ID` (`ENTITY_TYPE_ID`),
  ADD KEY `IX_COMPLEX_NAME` (`COMPLEX_NAME`),
  ADD KEY `IX_RATING_ID_2` (`RATING_ID`,`COMPLEX_NAME`);

--
-- Индексы таблицы `b_rating_results`
--
ALTER TABLE `b_rating_results`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_RATING_3` (`RATING_ID`,`ENTITY_TYPE_ID`,`ENTITY_ID`),
  ADD KEY `IX_RATING_4` (`RATING_ID`,`ENTITY_ID`);

--
-- Индексы таблицы `b_rating_rule`
--
ALTER TABLE `b_rating_rule`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_rating_rule_vetting`
--
ALTER TABLE `b_rating_rule_vetting`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `RULE_ID` (`RULE_ID`,`ENTITY_TYPE_ID`,`ENTITY_ID`);

--
-- Индексы таблицы `b_rating_user`
--
ALTER TABLE `b_rating_user`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `RATING_ID` (`RATING_ID`,`ENTITY_ID`),
  ADD KEY `IX_B_RAT_USER_2` (`ENTITY_ID`);

--
-- Индексы таблицы `b_rating_vote`
--
ALTER TABLE `b_rating_vote`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_RAT_VOTE_ID` (`RATING_VOTING_ID`,`USER_ID`),
  ADD KEY `IX_RAT_VOTE_ID_2` (`ENTITY_TYPE_ID`,`ENTITY_ID`,`USER_ID`),
  ADD KEY `IX_RAT_VOTE_ID_3` (`OWNER_ID`,`CREATED`),
  ADD KEY `IX_RAT_VOTE_ID_4` (`USER_ID`),
  ADD KEY `IX_RAT_VOTE_ID_5` (`CREATED`,`VALUE`),
  ADD KEY `IX_RAT_VOTE_ID_6` (`ACTIVE`),
  ADD KEY `IX_RAT_VOTE_ID_7` (`RATING_VOTING_ID`,`CREATED`),
  ADD KEY `IX_RAT_VOTE_ID_8` (`ENTITY_TYPE_ID`,`CREATED`),
  ADD KEY `IX_RAT_VOTE_ID_9` (`CREATED`,`USER_ID`);

--
-- Индексы таблицы `b_rating_vote_group`
--
ALTER TABLE `b_rating_vote_group`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `RATING_ID` (`GROUP_ID`,`TYPE`);

--
-- Индексы таблицы `b_rating_voting`
--
ALTER TABLE `b_rating_voting`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_ENTITY_TYPE_ID_2` (`ENTITY_TYPE_ID`,`ENTITY_ID`,`ACTIVE`),
  ADD KEY `IX_ENTITY_TYPE_ID_4` (`TOTAL_VALUE`);

--
-- Индексы таблицы `b_rating_voting_prepare`
--
ALTER TABLE `b_rating_voting_prepare`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_RATING_VOTING_ID` (`RATING_VOTING_ID`);

--
-- Индексы таблицы `b_rating_voting_reaction`
--
ALTER TABLE `b_rating_voting_reaction`
  ADD PRIMARY KEY (`ENTITY_TYPE_ID`,`ENTITY_ID`,`REACTION`);

--
-- Индексы таблицы `b_rating_weight`
--
ALTER TABLE `b_rating_weight`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_rest_ap`
--
ALTER TABLE `b_rest_ap`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_rest_ap` (`USER_ID`,`PASSWORD`,`ACTIVE`);

--
-- Индексы таблицы `b_rest_app`
--
ALTER TABLE `b_rest_app`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ux_b_rest_app1` (`CLIENT_ID`);

--
-- Индексы таблицы `b_rest_app_lang`
--
ALTER TABLE `b_rest_app_lang`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ux_b_rest_app_lang1` (`APP_ID`,`LANGUAGE_ID`);

--
-- Индексы таблицы `b_rest_app_log`
--
ALTER TABLE `b_rest_app_log`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_rest_app_log1` (`APP_ID`);

--
-- Индексы таблицы `b_rest_ap_permission`
--
ALTER TABLE `b_rest_ap_permission`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ux_b_rest_ap_perm1` (`PASSWORD_ID`,`PERM`);

--
-- Индексы таблицы `b_rest_event`
--
ALTER TABLE `b_rest_event`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ux_b_rest_event_app_event` (`APP_ID`,`EVENT_NAME`(50),`EVENT_HANDLER`(180),`USER_ID`,`CONNECTOR_ID`(70)),
  ADD KEY `ix_b_rest_event_event_name` (`EVENT_NAME`);

--
-- Индексы таблицы `b_rest_event_offline`
--
ALTER TABLE `b_rest_event_offline`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ux_b_rest_event_offline1` (`MESSAGE_ID`(50),`APP_ID`,`CONNECTOR_ID`(100),`PROCESS_ID`(50)),
  ADD KEY `ix_b_rest_event_offline2` (`TIMESTAMP_X`);

--
-- Индексы таблицы `b_rest_integration`
--
ALTER TABLE `b_rest_integration`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_rest_log`
--
ALTER TABLE `b_rest_log`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_rest_owner_entity`
--
ALTER TABLE `b_rest_owner_entity`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ix_b_rest_owner_entity` (`ENTITY_TYPE`,`ENTITY`);

--
-- Индексы таблицы `b_rest_placement`
--
ALTER TABLE `b_rest_placement`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ux_b_rest_placement1` (`APP_ID`,`PLACEMENT`(100),`PLACEMENT_HANDLER`(200)),
  ADD KEY `ix_b_rest_placement3` (`PLACEMENT`(100),`ADDITIONAL`(100));

--
-- Индексы таблицы `b_rest_stat`
--
ALTER TABLE `b_rest_stat`
  ADD PRIMARY KEY (`APP_ID`,`STAT_DATE`,`METHOD_ID`);

--
-- Индексы таблицы `b_rest_stat_app`
--
ALTER TABLE `b_rest_stat_app`
  ADD PRIMARY KEY (`APP_ID`),
  ADD KEY `ix_b_rest_stat_app_code` (`APP_CODE`);

--
-- Индексы таблицы `b_rest_stat_method`
--
ALTER TABLE `b_rest_stat_method`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ux_b_rest_stat_method` (`NAME`);

--
-- Индексы таблицы `b_rest_usage_entity`
--
ALTER TABLE `b_rest_usage_entity`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ix_b_rest_usage_entity` (`ENTITY_TYPE`,`ENTITY_ID`,`SUB_ENTITY_TYPE`,`SUB_ENTITY_NAME`);

--
-- Индексы таблицы `b_rest_usage_stat`
--
ALTER TABLE `b_rest_usage_stat`
  ADD PRIMARY KEY (`STAT_DATE`,`ENTITY_ID`),
  ADD KEY `ix_b_rest_usage` (`ENTITY_ID`,`STAT_DATE`);

--
-- Индексы таблицы `b_search_content`
--
ALTER TABLE `b_search_content`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UX_B_SEARCH_CONTENT` (`MODULE_ID`,`ITEM_ID`),
  ADD KEY `IX_B_SEARCH_CONTENT_1` (`MODULE_ID`,`PARAM1`(50),`PARAM2`(50)),
  ADD KEY `IX_B_SEARCH_CONTENT_2` (`ENTITY_ID`(50),`ENTITY_TYPE_ID`);

--
-- Индексы таблицы `b_search_content_freq`
--
ALTER TABLE `b_search_content_freq`
  ADD UNIQUE KEY `UX_B_SEARCH_CONTENT_FREQ` (`STEM`,`LANGUAGE_ID`,`SITE_ID`);

--
-- Индексы таблицы `b_search_content_param`
--
ALTER TABLE `b_search_content_param`
  ADD KEY `IX_B_SEARCH_CONTENT_PARAM` (`SEARCH_CONTENT_ID`,`PARAM_NAME`),
  ADD KEY `IX_B_SEARCH_CONTENT_PARAM_1` (`PARAM_NAME`,`PARAM_VALUE`(50),`SEARCH_CONTENT_ID`);

--
-- Индексы таблицы `b_search_content_right`
--
ALTER TABLE `b_search_content_right`
  ADD UNIQUE KEY `UX_B_SEARCH_CONTENT_RIGHT` (`SEARCH_CONTENT_ID`,`GROUP_CODE`);

--
-- Индексы таблицы `b_search_content_site`
--
ALTER TABLE `b_search_content_site`
  ADD PRIMARY KEY (`SEARCH_CONTENT_ID`,`SITE_ID`);

--
-- Индексы таблицы `b_search_content_stem`
--
ALTER TABLE `b_search_content_stem`
  ADD UNIQUE KEY `UX_B_SEARCH_CONTENT_STEM` (`STEM`,`LANGUAGE_ID`,`TF`,`PS`,`SEARCH_CONTENT_ID`),
  ADD KEY `IND_B_SEARCH_CONTENT_STEM` (`SEARCH_CONTENT_ID`);

--
-- Индексы таблицы `b_search_content_text`
--
ALTER TABLE `b_search_content_text`
  ADD PRIMARY KEY (`SEARCH_CONTENT_ID`);

--
-- Индексы таблицы `b_search_content_title`
--
ALTER TABLE `b_search_content_title`
  ADD UNIQUE KEY `UX_B_SEARCH_CONTENT_TITLE` (`SITE_ID`,`WORD`,`SEARCH_CONTENT_ID`,`POS`),
  ADD KEY `IND_B_SEARCH_CONTENT_TITLE` (`SEARCH_CONTENT_ID`);

--
-- Индексы таблицы `b_search_custom_rank`
--
ALTER TABLE `b_search_custom_rank`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IND_B_SEARCH_CUSTOM_RANK` (`SITE_ID`,`MODULE_ID`);

--
-- Индексы таблицы `b_search_phrase`
--
ALTER TABLE `b_search_phrase`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IND_PK_B_SEARCH_PHRASE_SESS_PH` (`SESSION_ID`,`PHRASE`(50)),
  ADD KEY `IND_PK_B_SEARCH_PHRASE_SESS_TG` (`SESSION_ID`,`TAGS`(50)),
  ADD KEY `IND_PK_B_SEARCH_PHRASE_TIME` (`TIMESTAMP_X`);

--
-- Индексы таблицы `b_search_stem`
--
ALTER TABLE `b_search_stem`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UX_B_SEARCH_STEM` (`STEM`);

--
-- Индексы таблицы `b_search_suggest`
--
ALTER TABLE `b_search_suggest`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IND_B_SEARCH_SUGGEST` (`FILTER_MD5`,`PHRASE`(50),`RATE`),
  ADD KEY `IND_B_SEARCH_SUGGEST_PHRASE` (`PHRASE`(50),`RATE`),
  ADD KEY `IND_B_SEARCH_SUGGEST_TIME` (`TIMESTAMP_X`);

--
-- Индексы таблицы `b_search_tags`
--
ALTER TABLE `b_search_tags`
  ADD PRIMARY KEY (`SEARCH_CONTENT_ID`,`SITE_ID`,`NAME`),
  ADD KEY `IX_B_SEARCH_TAGS_0` (`NAME`);

--
-- Индексы таблицы `b_search_user_right`
--
ALTER TABLE `b_search_user_right`
  ADD UNIQUE KEY `UX_B_SEARCH_USER_RIGHT` (`USER_ID`,`GROUP_CODE`);

--
-- Индексы таблицы `b_seo_adv_autolog`
--
ALTER TABLE `b_seo_adv_autolog`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_seo_adv_autolog1` (`ENGINE_ID`),
  ADD KEY `ix_b_seo_adv_autolog2` (`TIMESTAMP_X`);

--
-- Индексы таблицы `b_seo_adv_banner`
--
ALTER TABLE `b_seo_adv_banner`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ux_b_seo_adv_banner` (`ENGINE_ID`,`XML_ID`),
  ADD KEY `ix_b_seo_adv_banner1` (`CAMPAIGN_ID`),
  ADD KEY `ix_b_seo_adv_banner2` (`AUTO_QUANTITY_OFF`,`AUTO_QUANTITY_ON`);

--
-- Индексы таблицы `b_seo_adv_campaign`
--
ALTER TABLE `b_seo_adv_campaign`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ux_b_seo_adv_campaign` (`ENGINE_ID`,`XML_ID`);

--
-- Индексы таблицы `b_seo_adv_group`
--
ALTER TABLE `b_seo_adv_group`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ux_b_seo_adv_group` (`ENGINE_ID`,`XML_ID`),
  ADD KEY `ix_b_seo_adv_group1` (`CAMPAIGN_ID`);

--
-- Индексы таблицы `b_seo_adv_link`
--
ALTER TABLE `b_seo_adv_link`
  ADD PRIMARY KEY (`LINK_TYPE`,`LINK_ID`,`BANNER_ID`);

--
-- Индексы таблицы `b_seo_adv_log`
--
ALTER TABLE `b_seo_adv_log`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_seo_adv_log1` (`ENGINE_ID`),
  ADD KEY `ix_b_seo_adv_log2` (`TIMESTAMP_X`);

--
-- Индексы таблицы `b_seo_adv_order`
--
ALTER TABLE `b_seo_adv_order`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ux_b_seo_adv_order` (`ENGINE_ID`,`CAMPAIGN_ID`,`BANNER_ID`,`ORDER_ID`),
  ADD KEY `ix_b_seo_adv_order1` (`ORDER_ID`,`PROCESSED`);

--
-- Индексы таблицы `b_seo_adv_region`
--
ALTER TABLE `b_seo_adv_region`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ux_b_seo_adv_region` (`ENGINE_ID`,`XML_ID`),
  ADD KEY `ix_b_seo_adv_region1` (`PARENT_ID`);

--
-- Индексы таблицы `b_seo_keywords`
--
ALTER TABLE `b_seo_keywords`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_seo_keywords_url` (`URL`,`SITE_ID`);

--
-- Индексы таблицы `b_seo_search_engine`
--
ALTER TABLE `b_seo_search_engine`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ux_b_seo_search_engine_code` (`CODE`);

--
-- Индексы таблицы `b_seo_service_log`
--
ALTER TABLE `b_seo_service_log`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_seo_service_rtg_queue`
--
ALTER TABLE `b_seo_service_rtg_queue`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_SEO_SRV_RTG_QUEUE_1` (`ACTION`,`DATE_AUTO_REMOVE`),
  ADD KEY `IX_B_SEO_SRV_RTG_QUEUE_2` (`TYPE`,`ACTION`);

--
-- Индексы таблицы `b_seo_service_subscription`
--
ALTER TABLE `b_seo_service_subscription`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_SEO_SERVICE_SUB_1` (`TYPE`,`GROUP_ID`);

--
-- Индексы таблицы `b_seo_service_webhook`
--
ALTER TABLE `b_seo_service_webhook`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_SEO_SERVICE_WEBHOOK_1` (`TYPE`,`EXTERNAL_ID`);

--
-- Индексы таблицы `b_seo_sitemap`
--
ALTER TABLE `b_seo_sitemap`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_seo_sitemap_entity`
--
ALTER TABLE `b_seo_sitemap_entity`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_seo_sitemap_entity_1` (`ENTITY_TYPE`,`ENTITY_ID`),
  ADD KEY `ix_b_seo_sitemap_entity_2` (`SITEMAP_ID`);

--
-- Индексы таблицы `b_seo_sitemap_iblock`
--
ALTER TABLE `b_seo_sitemap_iblock`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_seo_sitemap_iblock_1` (`IBLOCK_ID`),
  ADD KEY `ix_b_seo_sitemap_iblock_2` (`SITEMAP_ID`);

--
-- Индексы таблицы `b_seo_sitemap_runtime`
--
ALTER TABLE `b_seo_sitemap_runtime`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_seo_sitemap_runtime1` (`PID`,`PROCESSED`,`ITEM_TYPE`,`ITEM_ID`);

--
-- Индексы таблицы `b_seo_yandex_direct_stat`
--
ALTER TABLE `b_seo_yandex_direct_stat`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ux_seo_yandex_direct_stat` (`BANNER_ID`,`DATE_DAY`),
  ADD KEY `ix_seo_yandex_direct_stat1` (`CAMPAIGN_ID`);

--
-- Индексы таблицы `b_short_uri`
--
ALTER TABLE `b_short_uri`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ux_b_short_uri_1` (`SHORT_URI_CRC`),
  ADD KEY `ux_b_short_uri_2` (`URI_CRC`);

--
-- Индексы таблицы `b_site_template`
--
ALTER TABLE `b_site_template`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_site_template_site` (`SITE_ID`);

--
-- Индексы таблицы `b_smile`
--
ALTER TABLE `b_smile`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_smile_lang`
--
ALTER TABLE `b_smile_lang`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UX_SMILE_SL` (`TYPE`,`SID`,`LID`);

--
-- Индексы таблицы `b_smile_set`
--
ALTER TABLE `b_smile_set`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_sms_template`
--
ALTER TABLE `b_sms_template`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_sms_message_name` (`EVENT_NAME`(50));

--
-- Индексы таблицы `b_sms_template_site`
--
ALTER TABLE `b_sms_template_site`
  ADD PRIMARY KEY (`TEMPLATE_ID`,`SITE_ID`);

--
-- Индексы таблицы `b_sm_version_history`
--
ALTER TABLE `b_sm_version_history`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_socialservices_ap`
--
ALTER TABLE `b_socialservices_ap`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_socialservices_ap1` (`USER_ID`,`DOMAIN`);

--
-- Индексы таблицы `b_socialservices_contact`
--
ALTER TABLE `b_socialservices_contact`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_socialservices_contact1` (`USER_ID`),
  ADD KEY `ix_b_socialservices_contact2` (`CONTACT_USER_ID`),
  ADD KEY `ix_b_socialservices_contact3` (`TIMESTAMP_X`),
  ADD KEY `ix_b_socialservices_contact4` (`LAST_AUTHORIZE`);

--
-- Индексы таблицы `b_socialservices_contact_connect`
--
ALTER TABLE `b_socialservices_contact_connect`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_socialservices_contact_connect1` (`CONTACT_ID`),
  ADD KEY `ix_b_socialservices_contact_connect2` (`LINK_ID`),
  ADD KEY `ix_b_socialservices_contact_connect3` (`LAST_AUTHORIZE`);

--
-- Индексы таблицы `b_socialservices_message`
--
ALTER TABLE `b_socialservices_message`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_socialservices_user`
--
ALTER TABLE `b_socialservices_user`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `IX_B_SOCIALSERVICES_USER` (`XML_ID`,`EXTERNAL_AUTH_ID`),
  ADD KEY `IX_B_SOCIALSERVICES_US_3` (`LOGIN`),
  ADD KEY `IX_B_SOCIALSERVICES_US_4` (`USER_ID`,`EXTERNAL_AUTH_ID`);

--
-- Индексы таблицы `b_socialservices_user_link`
--
ALTER TABLE `b_socialservices_user_link`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_socialservices_user_link_5` (`SOCSERV_USER_ID`),
  ADD KEY `ix_b_socialservices_user_link_6` (`LINK_USER_ID`,`TIMESTAMP_X`),
  ADD KEY `ix_b_socialservices_user_link_7` (`LINK_UID`);

--
-- Индексы таблицы `b_socialservices_zoom_meeting`
--
ALTER TABLE `b_socialservices_zoom_meeting`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_SOCIALSERVICES_ZOOM_MEETING_1` (`CONFERENCE_EXTERNAL_ID`),
  ADD KEY `IX_B_SOCIALSERVICES_ZOOM_MEETING_2` (`ENTITY_TYPE_ID`,`ENTITY_ID`);

--
-- Индексы таблицы `b_socialservices_zoom_meeting_recording`
--
ALTER TABLE `b_socialservices_zoom_meeting_recording`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_SOCIALSERVICES_ZOOM_MEETING_RECORDING_1` (`MEETING_ID`);

--
-- Индексы таблицы `b_sticker`
--
ALTER TABLE `b_sticker`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_sticker_group_task`
--
ALTER TABLE `b_sticker_group_task`
  ADD PRIMARY KEY (`GROUP_ID`,`TASK_ID`);

--
-- Индексы таблицы `b_task`
--
ALTER TABLE `b_task`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_task` (`MODULE_ID`,`BINDING`,`LETTER`,`SYS`);

--
-- Индексы таблицы `b_task_operation`
--
ALTER TABLE `b_task_operation`
  ADD PRIMARY KEY (`TASK_ID`,`OPERATION_ID`);

--
-- Индексы таблицы `b_translate_diff`
--
ALTER TABLE `b_translate_diff`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `IXU_TRNSL_DIFF` (`FILE_ID`,`LANG_ID`,`AGAINST_LANG_ID`),
  ADD KEY `IX_TRNSL_DIFF_PATH` (`PATH_ID`,`LANG_ID`);

--
-- Индексы таблицы `b_translate_file`
--
ALTER TABLE `b_translate_file`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `IX_TRNSL_FL_PATH` (`PATH_ID`,`LANG_ID`),
  ADD KEY `IX_TRNSL_FULL_PATH` (`FULL_PATH`(255));

--
-- Индексы таблицы `b_translate_path`
--
ALTER TABLE `b_translate_path`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `IX_TRNSL_PTH_NAME` (`PARENT_ID`,`NAME`),
  ADD KEY `IX_TRNSL_PTH_PARENT` (`PARENT_ID`,`IS_DIR`,`IS_LANG`),
  ADD KEY `IX_TRNSL_PTH_PATH` (`PATH`(255));

--
-- Индексы таблицы `b_translate_path_lang`
--
ALTER TABLE `b_translate_path_lang`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_TRNSL_LNG_PATH` (`PATH`(255));

--
-- Индексы таблицы `b_translate_path_tree`
--
ALTER TABLE `b_translate_path_tree`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `IX_TRNSL_ANCESTOR` (`PARENT_ID`,`DEPTH_LEVEL`,`PATH_ID`),
  ADD UNIQUE KEY `IX_TRNSL_DESCENDANT` (`PATH_ID`,`PARENT_ID`,`DEPTH_LEVEL`);

--
-- Индексы таблицы `b_translate_phrase`
--
ALTER TABLE `b_translate_phrase`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `IXU_TRNSL_PHR_PATH_CODE` (`PATH_ID`,`LANG_ID`,`CODE`),
  ADD KEY `IX_TRNSL_PHR_PATH` (`PATH_ID`,`CODE`),
  ADD KEY `IX_TRNSL_FILE` (`FILE_ID`);
ALTER TABLE `b_translate_phrase` ADD FULLTEXT KEY `IXF_TRNSL_PHR` (`PHRASE`);

--
-- Индексы таблицы `b_ui_entity_editor_config`
--
ALTER TABLE `b_ui_entity_editor_config`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ENTITY_TYPE_ID` (`ENTITY_TYPE_ID`),
  ADD KEY `CATEGORY` (`CATEGORY`);

--
-- Индексы таблицы `b_ui_entity_editor_config_ac`
--
ALTER TABLE `b_ui_entity_editor_config_ac`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ACCESS_CODE` (`ACCESS_CODE`),
  ADD KEY `CONFIG_ID` (`CONFIG_ID`);

--
-- Индексы таблицы `b_undo`
--
ALTER TABLE `b_undo`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_urlpreview_metadata`
--
ALTER TABLE `b_urlpreview_metadata`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_URLPREVIEW_METADATA_URL` (`URL`(255));

--
-- Индексы таблицы `b_urlpreview_route`
--
ALTER TABLE `b_urlpreview_route`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UX_URLPREVIEW_ROUTE_ROUTE` (`ROUTE`(255));

--
-- Индексы таблицы `b_user`
--
ALTER TABLE `b_user`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ix_login` (`LOGIN`,`EXTERNAL_AUTH_ID`),
  ADD KEY `ix_b_user_email` (`EMAIL`),
  ADD KEY `ix_b_user_activity_date` (`LAST_ACTIVITY_DATE`),
  ADD KEY `IX_B_USER_XML_ID` (`XML_ID`),
  ADD KEY `ix_user_last_login` (`LAST_LOGIN`),
  ADD KEY `ix_user_date_register` (`DATE_REGISTER`);

--
-- Индексы таблицы `b_user_access`
--
ALTER TABLE `b_user_access`
  ADD KEY `ix_ua_user_provider` (`USER_ID`,`PROVIDER_ID`),
  ADD KEY `ix_ua_user_access` (`USER_ID`,`ACCESS_CODE`),
  ADD KEY `ix_ua_access` (`ACCESS_CODE`),
  ADD KEY `ix_ua_provider` (`PROVIDER_ID`);

--
-- Индексы таблицы `b_user_access_check`
--
ALTER TABLE `b_user_access_check`
  ADD KEY `ix_uac_user_provider` (`USER_ID`,`PROVIDER_ID`);

--
-- Индексы таблицы `b_user_auth_action`
--
ALTER TABLE `b_user_auth_action`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_auth_action_user` (`USER_ID`,`PRIORITY`),
  ADD KEY `ix_auth_action_date` (`ACTION_DATE`);

--
-- Индексы таблицы `b_user_auth_code`
--
ALTER TABLE `b_user_auth_code`
  ADD PRIMARY KEY (`USER_ID`,`CODE_TYPE`);

--
-- Индексы таблицы `b_user_counter`
--
ALTER TABLE `b_user_counter`
  ADD PRIMARY KEY (`USER_ID`,`SITE_ID`,`CODE`),
  ADD KEY `ix_buc_tag` (`TAG`),
  ADD KEY `ix_buc_code` (`CODE`),
  ADD KEY `ix_buc_ts` (`TIMESTAMP_X`),
  ADD KEY `ix_buc_sent_userid` (`SENT`,`USER_ID`);

--
-- Индексы таблицы `b_user_digest`
--
ALTER TABLE `b_user_digest`
  ADD PRIMARY KEY (`USER_ID`);

--
-- Индексы таблицы `b_user_field`
--
ALTER TABLE `b_user_field`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ux_user_type_entity` (`ENTITY_ID`,`FIELD_NAME`);

--
-- Индексы таблицы `b_user_field_confirm`
--
ALTER TABLE `b_user_field_confirm`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_user_field_confirm1` (`USER_ID`,`CONFIRM_CODE`);

--
-- Индексы таблицы `b_user_field_enum`
--
ALTER TABLE `b_user_field_enum`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ux_user_field_enum` (`USER_FIELD_ID`,`XML_ID`);

--
-- Индексы таблицы `b_user_field_lang`
--
ALTER TABLE `b_user_field_lang`
  ADD PRIMARY KEY (`USER_FIELD_ID`,`LANGUAGE_ID`);

--
-- Индексы таблицы `b_user_field_permission`
--
ALTER TABLE `b_user_field_permission`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ROLE_ID` (`ENTITY_TYPE_ID`),
  ADD KEY `GROUP_ID` (`USER_FIELD_ID`),
  ADD KEY `PERMISSION_ID` (`PERMISSION_ID`);

--
-- Индексы таблицы `b_user_group`
--
ALTER TABLE `b_user_group`
  ADD UNIQUE KEY `ix_user_group` (`USER_ID`,`GROUP_ID`),
  ADD KEY `ix_user_group_group` (`GROUP_ID`);

--
-- Индексы таблицы `b_user_hit_auth`
--
ALTER TABLE `b_user_hit_auth`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_USER_HIT_AUTH_1` (`HASH`),
  ADD KEY `IX_USER_HIT_AUTH_2` (`USER_ID`),
  ADD KEY `IX_USER_HIT_AUTH_3` (`TIMESTAMP_X`);

--
-- Индексы таблицы `b_user_index`
--
ALTER TABLE `b_user_index`
  ADD PRIMARY KEY (`USER_ID`);
ALTER TABLE `b_user_index` ADD FULLTEXT KEY `IXF_B_USER_INDEX_1` (`SEARCH_USER_CONTENT`);
ALTER TABLE `b_user_index` ADD FULLTEXT KEY `IXF_B_USER_INDEX_2` (`SEARCH_DEPARTMENT_CONTENT`);
ALTER TABLE `b_user_index` ADD FULLTEXT KEY `IXF_B_USER_INDEX_3` (`SEARCH_ADMIN_CONTENT`);

--
-- Индексы таблицы `b_user_index_selector`
--
ALTER TABLE `b_user_index_selector`
  ADD PRIMARY KEY (`USER_ID`);
ALTER TABLE `b_user_index_selector` ADD FULLTEXT KEY `IXF_B_USER_INDEX_SELECTOR_1` (`SEARCH_SELECTOR_CONTENT`);

--
-- Индексы таблицы `b_user_option`
--
ALTER TABLE `b_user_option`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ux_user_category_name` (`USER_ID`,`CATEGORY`,`NAME`);

--
-- Индексы таблицы `b_user_password`
--
ALTER TABLE `b_user_password`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_user_password_user_date` (`USER_ID`,`DATE_CHANGE`);

--
-- Индексы таблицы `b_user_phone_auth`
--
ALTER TABLE `b_user_phone_auth`
  ADD PRIMARY KEY (`USER_ID`),
  ADD UNIQUE KEY `ix_user_phone_auth_number` (`PHONE_NUMBER`);

--
-- Индексы таблицы `b_user_profile_history`
--
ALTER TABLE `b_user_profile_history`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_profile_history_user` (`USER_ID`),
  ADD KEY `ix_profile_history_date` (`DATE_INSERT`);

--
-- Индексы таблицы `b_user_profile_record`
--
ALTER TABLE `b_user_profile_record`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_profile_record_history_field` (`HISTORY_ID`,`FIELD`);

--
-- Индексы таблицы `b_user_session`
--
ALTER TABLE `b_user_session`
  ADD PRIMARY KEY (`SESSION_ID`),
  ADD KEY `ix_user_session_time` (`TIMESTAMP_X`);

--
-- Индексы таблицы `b_user_stored_auth`
--
ALTER TABLE `b_user_stored_auth`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ux_user_hash` (`USER_ID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `b_admin_notify`
--
ALTER TABLE `b_admin_notify`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_admin_notify_lang`
--
ALTER TABLE `b_admin_notify_lang`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_agent`
--
ALTER TABLE `b_agent`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT для таблицы `b_app_password`
--
ALTER TABLE `b_app_password`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_bitrixcloud_option`
--
ALTER TABLE `b_bitrixcloud_option`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `b_checklist`
--
ALTER TABLE `b_checklist`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_clouds_copy_queue`
--
ALTER TABLE `b_clouds_copy_queue`
  MODIFY `ID` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_clouds_delete_queue`
--
ALTER TABLE `b_clouds_delete_queue`
  MODIFY `ID` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_clouds_file_bucket`
--
ALTER TABLE `b_clouds_file_bucket`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_clouds_file_resize`
--
ALTER TABLE `b_clouds_file_resize`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_clouds_file_save`
--
ALTER TABLE `b_clouds_file_save`
  MODIFY `ID` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_component_params`
--
ALTER TABLE `b_component_params`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `b_composite_log`
--
ALTER TABLE `b_composite_log`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_composite_page`
--
ALTER TABLE `b_composite_page`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_consent_agreement`
--
ALTER TABLE `b_consent_agreement`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_consent_field`
--
ALTER TABLE `b_consent_field`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_consent_user_consent`
--
ALTER TABLE `b_consent_user_consent`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_consent_user_consent_item`
--
ALTER TABLE `b_consent_user_consent_item`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_culture`
--
ALTER TABLE `b_culture`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `b_event`
--
ALTER TABLE `b_event`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `b_event_log`
--
ALTER TABLE `b_event_log`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT для таблицы `b_event_message`
--
ALTER TABLE `b_event_message`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `b_event_type`
--
ALTER TABLE `b_event_type`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT для таблицы `b_favorite`
--
ALTER TABLE `b_favorite`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_file`
--
ALTER TABLE `b_file`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `b_file_preview`
--
ALTER TABLE `b_file_preview`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_file_search`
--
ALTER TABLE `b_file_search`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_filters`
--
ALTER TABLE `b_filters`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_geoip_handlers`
--
ALTER TABLE `b_geoip_handlers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `b_group`
--
ALTER TABLE `b_group`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `b_hlblock_entity`
--
ALTER TABLE `b_hlblock_entity`
  MODIFY `ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_hlblock_entity_rights`
--
ALTER TABLE `b_hlblock_entity_rights`
  MODIFY `ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_hot_keys`
--
ALTER TABLE `b_hot_keys`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `b_hot_keys_code`
--
ALTER TABLE `b_hot_keys_code`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT для таблицы `b_iblock`
--
ALTER TABLE `b_iblock`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `b_iblock_element`
--
ALTER TABLE `b_iblock_element`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `b_iblock_element_property`
--
ALTER TABLE `b_iblock_element_property`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `b_iblock_iproperty`
--
ALTER TABLE `b_iblock_iproperty`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_iblock_offers_tmp`
--
ALTER TABLE `b_iblock_offers_tmp`
  MODIFY `ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_iblock_property`
--
ALTER TABLE `b_iblock_property`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `b_iblock_property_enum`
--
ALTER TABLE `b_iblock_property_enum`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_iblock_property_feature`
--
ALTER TABLE `b_iblock_property_feature`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_iblock_right`
--
ALTER TABLE `b_iblock_right`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_iblock_rss`
--
ALTER TABLE `b_iblock_rss`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_iblock_section`
--
ALTER TABLE `b_iblock_section`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `b_landing`
--
ALTER TABLE `b_landing`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_landing_binding`
--
ALTER TABLE `b_landing_binding`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_landing_block`
--
ALTER TABLE `b_landing_block`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_landing_chat`
--
ALTER TABLE `b_landing_chat`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_landing_chat_binding`
--
ALTER TABLE `b_landing_chat_binding`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_landing_cookies_agreement`
--
ALTER TABLE `b_landing_cookies_agreement`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_landing_demo`
--
ALTER TABLE `b_landing_demo`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_landing_domain`
--
ALTER TABLE `b_landing_domain`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `b_landing_entity_rights`
--
ALTER TABLE `b_landing_entity_rights`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_landing_file`
--
ALTER TABLE `b_landing_file`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_landing_filter_block`
--
ALTER TABLE `b_landing_filter_block`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_landing_filter_entity`
--
ALTER TABLE `b_landing_filter_entity`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_landing_hook_data`
--
ALTER TABLE `b_landing_hook_data`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_landing_placement`
--
ALTER TABLE `b_landing_placement`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_landing_repo`
--
ALTER TABLE `b_landing_repo`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_landing_role`
--
ALTER TABLE `b_landing_role`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_landing_site`
--
ALTER TABLE `b_landing_site`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `b_landing_syspage`
--
ALTER TABLE `b_landing_syspage`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_landing_template`
--
ALTER TABLE `b_landing_template`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `b_landing_template_ref`
--
ALTER TABLE `b_landing_template_ref`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_landing_update_block`
--
ALTER TABLE `b_landing_update_block`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_landing_urlrewrite`
--
ALTER TABLE `b_landing_urlrewrite`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_landing_view`
--
ALTER TABLE `b_landing_view`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_log_notification`
--
ALTER TABLE `b_log_notification`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_log_notification_action`
--
ALTER TABLE `b_log_notification_action`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_main_mail_blacklist`
--
ALTER TABLE `b_main_mail_blacklist`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_main_mail_sender`
--
ALTER TABLE `b_main_mail_sender`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_medialib_collection`
--
ALTER TABLE `b_medialib_collection`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_medialib_item`
--
ALTER TABLE `b_medialib_item`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_medialib_type`
--
ALTER TABLE `b_medialib_type`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `b_messageservice_message`
--
ALTER TABLE `b_messageservice_message`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_messageservice_rest_app`
--
ALTER TABLE `b_messageservice_rest_app`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_messageservice_rest_app_lang`
--
ALTER TABLE `b_messageservice_rest_app_lang`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_module_group`
--
ALTER TABLE `b_module_group`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `b_module_to_module`
--
ALTER TABLE `b_module_to_module`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=232;

--
-- AUTO_INCREMENT для таблицы `b_numerator`
--
ALTER TABLE `b_numerator`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_operation`
--
ALTER TABLE `b_operation`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT для таблицы `b_perf_cache`
--
ALTER TABLE `b_perf_cache`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_perf_cluster`
--
ALTER TABLE `b_perf_cluster`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_perf_component`
--
ALTER TABLE `b_perf_component`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_perf_error`
--
ALTER TABLE `b_perf_error`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_perf_history`
--
ALTER TABLE `b_perf_history`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_perf_hit`
--
ALTER TABLE `b_perf_hit`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_perf_index_ban`
--
ALTER TABLE `b_perf_index_ban`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_perf_index_complete`
--
ALTER TABLE `b_perf_index_complete`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_perf_index_suggest`
--
ALTER TABLE `b_perf_index_suggest`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_perf_sql`
--
ALTER TABLE `b_perf_sql`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_perf_tab_column_stat`
--
ALTER TABLE `b_perf_tab_column_stat`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_perf_test`
--
ALTER TABLE `b_perf_test`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_rating`
--
ALTER TABLE `b_rating`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `b_rating_component`
--
ALTER TABLE `b_rating_component`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `b_rating_component_results`
--
ALTER TABLE `b_rating_component_results`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT для таблицы `b_rating_results`
--
ALTER TABLE `b_rating_results`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `b_rating_rule`
--
ALTER TABLE `b_rating_rule`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `b_rating_rule_vetting`
--
ALTER TABLE `b_rating_rule_vetting`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_rating_user`
--
ALTER TABLE `b_rating_user`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `b_rating_vote`
--
ALTER TABLE `b_rating_vote`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_rating_vote_group`
--
ALTER TABLE `b_rating_vote_group`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `b_rating_voting`
--
ALTER TABLE `b_rating_voting`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_rating_voting_prepare`
--
ALTER TABLE `b_rating_voting_prepare`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_rating_weight`
--
ALTER TABLE `b_rating_weight`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `b_rest_ap`
--
ALTER TABLE `b_rest_ap`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_rest_app`
--
ALTER TABLE `b_rest_app`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_rest_app_lang`
--
ALTER TABLE `b_rest_app_lang`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_rest_app_log`
--
ALTER TABLE `b_rest_app_log`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_rest_ap_permission`
--
ALTER TABLE `b_rest_ap_permission`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_rest_event`
--
ALTER TABLE `b_rest_event`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_rest_event_offline`
--
ALTER TABLE `b_rest_event_offline`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_rest_integration`
--
ALTER TABLE `b_rest_integration`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_rest_log`
--
ALTER TABLE `b_rest_log`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_rest_owner_entity`
--
ALTER TABLE `b_rest_owner_entity`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_rest_placement`
--
ALTER TABLE `b_rest_placement`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_rest_stat_method`
--
ALTER TABLE `b_rest_stat_method`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_rest_usage_entity`
--
ALTER TABLE `b_rest_usage_entity`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_search_content`
--
ALTER TABLE `b_search_content`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `b_search_custom_rank`
--
ALTER TABLE `b_search_custom_rank`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_search_phrase`
--
ALTER TABLE `b_search_phrase`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_search_stem`
--
ALTER TABLE `b_search_stem`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;

--
-- AUTO_INCREMENT для таблицы `b_search_suggest`
--
ALTER TABLE `b_search_suggest`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_seo_adv_autolog`
--
ALTER TABLE `b_seo_adv_autolog`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_seo_adv_banner`
--
ALTER TABLE `b_seo_adv_banner`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_seo_adv_campaign`
--
ALTER TABLE `b_seo_adv_campaign`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_seo_adv_group`
--
ALTER TABLE `b_seo_adv_group`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_seo_adv_log`
--
ALTER TABLE `b_seo_adv_log`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_seo_adv_order`
--
ALTER TABLE `b_seo_adv_order`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_seo_adv_region`
--
ALTER TABLE `b_seo_adv_region`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_seo_keywords`
--
ALTER TABLE `b_seo_keywords`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_seo_search_engine`
--
ALTER TABLE `b_seo_search_engine`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `b_seo_service_log`
--
ALTER TABLE `b_seo_service_log`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_seo_service_rtg_queue`
--
ALTER TABLE `b_seo_service_rtg_queue`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_seo_service_subscription`
--
ALTER TABLE `b_seo_service_subscription`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_seo_service_webhook`
--
ALTER TABLE `b_seo_service_webhook`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_seo_sitemap`
--
ALTER TABLE `b_seo_sitemap`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_seo_sitemap_entity`
--
ALTER TABLE `b_seo_sitemap_entity`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_seo_sitemap_iblock`
--
ALTER TABLE `b_seo_sitemap_iblock`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_seo_sitemap_runtime`
--
ALTER TABLE `b_seo_sitemap_runtime`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_seo_yandex_direct_stat`
--
ALTER TABLE `b_seo_yandex_direct_stat`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_short_uri`
--
ALTER TABLE `b_short_uri`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_site_template`
--
ALTER TABLE `b_site_template`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `b_smile`
--
ALTER TABLE `b_smile`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `b_smile_lang`
--
ALTER TABLE `b_smile_lang`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT для таблицы `b_smile_set`
--
ALTER TABLE `b_smile_set`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `b_sms_template`
--
ALTER TABLE `b_sms_template`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `b_sm_version_history`
--
ALTER TABLE `b_sm_version_history`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_socialservices_ap`
--
ALTER TABLE `b_socialservices_ap`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_socialservices_contact`
--
ALTER TABLE `b_socialservices_contact`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_socialservices_contact_connect`
--
ALTER TABLE `b_socialservices_contact_connect`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_socialservices_message`
--
ALTER TABLE `b_socialservices_message`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_socialservices_user`
--
ALTER TABLE `b_socialservices_user`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_socialservices_user_link`
--
ALTER TABLE `b_socialservices_user_link`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_socialservices_zoom_meeting`
--
ALTER TABLE `b_socialservices_zoom_meeting`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_socialservices_zoom_meeting_recording`
--
ALTER TABLE `b_socialservices_zoom_meeting_recording`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_sticker`
--
ALTER TABLE `b_sticker`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_task`
--
ALTER TABLE `b_task`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT для таблицы `b_translate_diff`
--
ALTER TABLE `b_translate_diff`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_translate_file`
--
ALTER TABLE `b_translate_file`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_translate_path`
--
ALTER TABLE `b_translate_path`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_translate_path_lang`
--
ALTER TABLE `b_translate_path_lang`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_translate_path_tree`
--
ALTER TABLE `b_translate_path_tree`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_translate_phrase`
--
ALTER TABLE `b_translate_phrase`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_ui_entity_editor_config`
--
ALTER TABLE `b_ui_entity_editor_config`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_ui_entity_editor_config_ac`
--
ALTER TABLE `b_ui_entity_editor_config_ac`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_urlpreview_metadata`
--
ALTER TABLE `b_urlpreview_metadata`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_urlpreview_route`
--
ALTER TABLE `b_urlpreview_route`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_user`
--
ALTER TABLE `b_user`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `b_user_auth_action`
--
ALTER TABLE `b_user_auth_action`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_user_field`
--
ALTER TABLE `b_user_field`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_user_field_confirm`
--
ALTER TABLE `b_user_field_confirm`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_user_field_enum`
--
ALTER TABLE `b_user_field_enum`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_user_field_permission`
--
ALTER TABLE `b_user_field_permission`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_user_hit_auth`
--
ALTER TABLE `b_user_hit_auth`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_user_option`
--
ALTER TABLE `b_user_option`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT для таблицы `b_user_password`
--
ALTER TABLE `b_user_password`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `b_user_profile_history`
--
ALTER TABLE `b_user_profile_history`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_user_profile_record`
--
ALTER TABLE `b_user_profile_record`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_user_stored_auth`
--
ALTER TABLE `b_user_stored_auth`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
