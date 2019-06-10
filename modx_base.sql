-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3307
-- Время создания: Июн 10 2019 г., 17:48
-- Версия сервера: 5.6.38
-- Версия PHP: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `modx_base`
--

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_actiondom`
--

CREATE TABLE `modx_access_actiondom` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_actions`
--

CREATE TABLE `modx_access_actions` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_category`
--

CREATE TABLE `modx_access_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `modx_access_category`
--

INSERT INTO `modx_access_category` (`id`, `target`, `principal_class`, `principal`, `authority`, `policy`, `context_key`) VALUES
(1, '9', 'modUserGroup', 1, 0, 5, 'mgr');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_context`
--

CREATE TABLE `modx_access_context` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `modx_access_context`
--

INSERT INTO `modx_access_context` (`id`, `target`, `principal_class`, `principal`, `authority`, `policy`) VALUES
(1, 'web', 'modUserGroup', 0, 9999, 3),
(2, 'mgr', 'modUserGroup', 1, 0, 2),
(3, 'web', 'modUserGroup', 1, 0, 2),
(4, 'web', 'modUserGroup', 2, 9999, 11),
(5, 'mgr', 'modUserGroup', 2, 1, 13),
(6, 'en', 'modUserGroup', 1, 9999, 11),
(7, 'en', 'modUserGroup', 0, 9999, 3),
(8, 'ua', 'modUserGroup', 1, 9999, 11),
(9, 'ua', 'modUserGroup', 0, 9999, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_elements`
--

CREATE TABLE `modx_access_elements` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_media_source`
--

CREATE TABLE `modx_access_media_source` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `modx_access_media_source`
--

INSERT INTO `modx_access_media_source` (`id`, `target`, `principal_class`, `principal`, `authority`, `policy`, `context_key`) VALUES
(3, '1', 'modUserGroup', 1, 0, 8, ''),
(4, '1', 'modUserGroup', 1, 0, 9, '');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_menus`
--

CREATE TABLE `modx_access_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_namespace`
--

CREATE TABLE `modx_access_namespace` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_permissions`
--

CREATE TABLE `modx_access_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `template` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `value` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `modx_access_permissions`
--

INSERT INTO `modx_access_permissions` (`id`, `template`, `name`, `description`, `value`) VALUES
(1, 1, 'about', 'perm.about_desc', 1),
(2, 1, 'access_permissions', 'perm.access_permissions_desc', 1),
(3, 1, 'actions', 'perm.actions_desc', 1),
(4, 1, 'change_password', 'perm.change_password_desc', 1),
(5, 1, 'change_profile', 'perm.change_profile_desc', 1),
(6, 1, 'charsets', 'perm.charsets_desc', 1),
(7, 1, 'class_map', 'perm.class_map_desc', 1),
(8, 1, 'components', 'perm.components_desc', 1),
(9, 1, 'content_types', 'perm.content_types_desc', 1),
(10, 1, 'countries', 'perm.countries_desc', 1),
(11, 1, 'create', 'perm.create_desc', 1),
(12, 1, 'credits', 'perm.credits_desc', 1),
(13, 1, 'customize_forms', 'perm.customize_forms_desc', 1),
(14, 1, 'dashboards', 'perm.dashboards_desc', 1),
(15, 1, 'database', 'perm.database_desc', 1),
(16, 1, 'database_truncate', 'perm.database_truncate_desc', 1),
(17, 1, 'delete_category', 'perm.delete_category_desc', 1),
(18, 1, 'delete_chunk', 'perm.delete_chunk_desc', 1),
(19, 1, 'delete_context', 'perm.delete_context_desc', 1),
(20, 1, 'delete_document', 'perm.delete_document_desc', 1),
(21, 1, 'delete_eventlog', 'perm.delete_eventlog_desc', 1),
(22, 1, 'delete_plugin', 'perm.delete_plugin_desc', 1),
(23, 1, 'delete_propertyset', 'perm.delete_propertyset_desc', 1),
(24, 1, 'delete_snippet', 'perm.delete_snippet_desc', 1),
(25, 1, 'delete_template', 'perm.delete_template_desc', 1),
(26, 1, 'delete_tv', 'perm.delete_tv_desc', 1),
(27, 1, 'delete_role', 'perm.delete_role_desc', 1),
(28, 1, 'delete_user', 'perm.delete_user_desc', 1),
(29, 1, 'directory_chmod', 'perm.directory_chmod_desc', 1),
(30, 1, 'directory_create', 'perm.directory_create_desc', 1),
(31, 1, 'directory_list', 'perm.directory_list_desc', 1),
(32, 1, 'directory_remove', 'perm.directory_remove_desc', 1),
(33, 1, 'directory_update', 'perm.directory_update_desc', 1),
(34, 1, 'edit_category', 'perm.edit_category_desc', 1),
(35, 1, 'edit_chunk', 'perm.edit_chunk_desc', 1),
(36, 1, 'edit_context', 'perm.edit_context_desc', 1),
(37, 1, 'edit_document', 'perm.edit_document_desc', 1),
(38, 1, 'edit_locked', 'perm.edit_locked_desc', 1),
(39, 1, 'edit_plugin', 'perm.edit_plugin_desc', 1),
(40, 1, 'edit_propertyset', 'perm.edit_propertyset_desc', 1),
(41, 1, 'edit_role', 'perm.edit_role_desc', 1),
(42, 1, 'edit_snippet', 'perm.edit_snippet_desc', 1),
(43, 1, 'edit_template', 'perm.edit_template_desc', 1),
(44, 1, 'edit_tv', 'perm.edit_tv_desc', 1),
(45, 1, 'edit_user', 'perm.edit_user_desc', 1),
(46, 1, 'element_tree', 'perm.element_tree_desc', 1),
(47, 1, 'empty_cache', 'perm.empty_cache_desc', 1),
(48, 1, 'error_log_erase', 'perm.error_log_erase_desc', 1),
(49, 1, 'error_log_view', 'perm.error_log_view_desc', 1),
(50, 1, 'export_static', 'perm.export_static_desc', 1),
(51, 1, 'file_create', 'perm.file_create_desc', 1),
(52, 1, 'file_list', 'perm.file_list_desc', 1),
(53, 1, 'file_manager', 'perm.file_manager_desc', 1),
(54, 1, 'file_remove', 'perm.file_remove_desc', 1),
(55, 1, 'file_tree', 'perm.file_tree_desc', 1),
(56, 1, 'file_update', 'perm.file_update_desc', 1),
(57, 1, 'file_upload', 'perm.file_upload_desc', 1),
(58, 1, 'file_unpack', 'perm.file_unpack_desc', 1),
(59, 1, 'file_view', 'perm.file_view_desc', 1),
(60, 1, 'flush_sessions', 'perm.flush_sessions_desc', 1),
(61, 1, 'frames', 'perm.frames_desc', 1),
(62, 1, 'help', 'perm.help_desc', 1),
(63, 1, 'home', 'perm.home_desc', 1),
(64, 1, 'import_static', 'perm.import_static_desc', 1),
(65, 1, 'languages', 'perm.languages_desc', 1),
(66, 1, 'lexicons', 'perm.lexicons_desc', 1),
(67, 1, 'list', 'perm.list_desc', 1),
(68, 1, 'load', 'perm.load_desc', 1),
(69, 1, 'logout', 'perm.logout_desc', 1),
(70, 1, 'logs', 'perm.logs_desc', 1),
(71, 1, 'menu_reports', 'perm.menu_reports_desc', 1),
(72, 1, 'menu_security', 'perm.menu_security_desc', 1),
(73, 1, 'menu_site', 'perm.menu_site_desc', 1),
(74, 1, 'menu_support', 'perm.menu_support_desc', 1),
(75, 1, 'menu_system', 'perm.menu_system_desc', 1),
(76, 1, 'menu_tools', 'perm.menu_tools_desc', 1),
(77, 1, 'menu_trash', 'perm.menu_trash_desc', 1),
(78, 1, 'menu_user', 'perm.menu_user_desc', 1),
(79, 1, 'menus', 'perm.menus_desc', 1),
(80, 1, 'messages', 'perm.messages_desc', 1),
(81, 1, 'namespaces', 'perm.namespaces_desc', 1),
(82, 1, 'new_category', 'perm.new_category_desc', 1),
(83, 1, 'new_chunk', 'perm.new_chunk_desc', 1),
(84, 1, 'new_context', 'perm.new_context_desc', 1),
(85, 1, 'new_document', 'perm.new_document_desc', 1),
(86, 1, 'new_static_resource', 'perm.new_static_resource_desc', 1),
(87, 1, 'new_symlink', 'perm.new_symlink_desc', 1),
(88, 1, 'new_weblink', 'perm.new_weblink_desc', 1),
(89, 1, 'new_document_in_root', 'perm.new_document_in_root_desc', 1),
(90, 1, 'new_plugin', 'perm.new_plugin_desc', 1),
(91, 1, 'new_propertyset', 'perm.new_propertyset_desc', 1),
(92, 1, 'new_role', 'perm.new_role_desc', 1),
(93, 1, 'new_snippet', 'perm.new_snippet_desc', 1),
(94, 1, 'new_template', 'perm.new_template_desc', 1),
(95, 1, 'new_tv', 'perm.new_tv_desc', 1),
(96, 1, 'new_user', 'perm.new_user_desc', 1),
(97, 1, 'packages', 'perm.packages_desc', 1),
(98, 1, 'policy_delete', 'perm.policy_delete_desc', 1),
(99, 1, 'policy_edit', 'perm.policy_edit_desc', 1),
(100, 1, 'policy_new', 'perm.policy_new_desc', 1),
(101, 1, 'policy_save', 'perm.policy_save_desc', 1),
(102, 1, 'policy_view', 'perm.policy_view_desc', 1),
(103, 1, 'policy_template_delete', 'perm.policy_template_delete_desc', 1),
(104, 1, 'policy_template_edit', 'perm.policy_template_edit_desc', 1),
(105, 1, 'policy_template_new', 'perm.policy_template_new_desc', 1),
(106, 1, 'policy_template_save', 'perm.policy_template_save_desc', 1),
(107, 1, 'policy_template_view', 'perm.policy_template_view_desc', 1),
(108, 1, 'property_sets', 'perm.property_sets_desc', 1),
(109, 1, 'providers', 'perm.providers_desc', 1),
(110, 1, 'publish_document', 'perm.publish_document_desc', 1),
(111, 1, 'purge_deleted', 'perm.purge_deleted_desc', 1),
(112, 1, 'remove', 'perm.remove_desc', 1),
(113, 1, 'remove_locks', 'perm.remove_locks_desc', 1),
(114, 1, 'resource_duplicate', 'perm.resource_duplicate_desc', 1),
(115, 1, 'resourcegroup_delete', 'perm.resourcegroup_delete_desc', 1),
(116, 1, 'resourcegroup_edit', 'perm.resourcegroup_edit_desc', 1),
(117, 1, 'resourcegroup_new', 'perm.resourcegroup_new_desc', 1),
(118, 1, 'resourcegroup_resource_edit', 'perm.resourcegroup_resource_edit_desc', 1),
(119, 1, 'resourcegroup_resource_list', 'perm.resourcegroup_resource_list_desc', 1),
(120, 1, 'resourcegroup_save', 'perm.resourcegroup_save_desc', 1),
(121, 1, 'resourcegroup_view', 'perm.resourcegroup_view_desc', 1),
(122, 1, 'resource_quick_create', 'perm.resource_quick_create_desc', 1),
(123, 1, 'resource_quick_update', 'perm.resource_quick_update_desc', 1),
(124, 1, 'resource_tree', 'perm.resource_tree_desc', 1),
(125, 1, 'save', 'perm.save_desc', 1),
(126, 1, 'save_category', 'perm.save_category_desc', 1),
(127, 1, 'save_chunk', 'perm.save_chunk_desc', 1),
(128, 1, 'save_context', 'perm.save_context_desc', 1),
(129, 1, 'save_document', 'perm.save_document_desc', 1),
(130, 1, 'save_plugin', 'perm.save_plugin_desc', 1),
(131, 1, 'save_propertyset', 'perm.save_propertyset_desc', 1),
(132, 1, 'save_role', 'perm.save_role_desc', 1),
(133, 1, 'save_snippet', 'perm.save_snippet_desc', 1),
(134, 1, 'save_template', 'perm.save_template_desc', 1),
(135, 1, 'save_tv', 'perm.save_tv_desc', 1),
(136, 1, 'save_user', 'perm.save_user_desc', 1),
(137, 1, 'search', 'perm.search_desc', 1),
(138, 1, 'set_sudo', 'perm.set_sudo_desc', 1),
(139, 1, 'settings', 'perm.settings_desc', 1),
(140, 1, 'events', 'perm.events_desc', 1),
(141, 1, 'source_save', 'perm.source_save_desc', 1),
(142, 1, 'source_delete', 'perm.source_delete_desc', 1),
(143, 1, 'source_edit', 'perm.source_edit_desc', 1),
(144, 1, 'source_view', 'perm.source_view_desc', 1),
(145, 1, 'sources', 'perm.sources_desc', 1),
(146, 1, 'steal_locks', 'perm.steal_locks_desc', 1),
(147, 1, 'tree_show_element_ids', 'perm.tree_show_element_ids_desc', 1),
(148, 1, 'tree_show_resource_ids', 'perm.tree_show_resource_ids_desc', 1),
(149, 1, 'undelete_document', 'perm.undelete_document_desc', 1),
(150, 1, 'unpublish_document', 'perm.unpublish_document_desc', 1),
(151, 1, 'unlock_element_properties', 'perm.unlock_element_properties_desc', 1),
(152, 1, 'usergroup_delete', 'perm.usergroup_delete_desc', 1),
(153, 1, 'usergroup_edit', 'perm.usergroup_edit_desc', 1),
(154, 1, 'usergroup_new', 'perm.usergroup_new_desc', 1),
(155, 1, 'usergroup_save', 'perm.usergroup_save_desc', 1),
(156, 1, 'usergroup_user_edit', 'perm.usergroup_user_edit_desc', 1),
(157, 1, 'usergroup_user_list', 'perm.usergroup_user_list_desc', 1),
(158, 1, 'usergroup_view', 'perm.usergroup_view_desc', 1),
(159, 1, 'view', 'perm.view_desc', 1),
(160, 1, 'view_category', 'perm.view_category_desc', 1),
(161, 1, 'view_chunk', 'perm.view_chunk_desc', 1),
(162, 1, 'view_context', 'perm.view_context_desc', 1),
(163, 1, 'view_document', 'perm.view_document_desc', 1),
(164, 1, 'view_element', 'perm.view_element_desc', 1),
(165, 1, 'view_eventlog', 'perm.view_eventlog_desc', 1),
(166, 1, 'view_offline', 'perm.view_offline_desc', 1),
(167, 1, 'view_plugin', 'perm.view_plugin_desc', 1),
(168, 1, 'view_propertyset', 'perm.view_propertyset_desc', 1),
(169, 1, 'view_role', 'perm.view_role_desc', 1),
(170, 1, 'view_snippet', 'perm.view_snippet_desc', 1),
(171, 1, 'view_sysinfo', 'perm.view_sysinfo_desc', 1),
(172, 1, 'view_template', 'perm.view_template_desc', 1),
(173, 1, 'view_tv', 'perm.view_tv_desc', 1),
(174, 1, 'view_user', 'perm.view_user_desc', 1),
(175, 1, 'view_unpublished', 'perm.view_unpublished_desc', 1),
(176, 1, 'workspaces', 'perm.workspaces_desc', 1),
(177, 2, 'add_children', 'perm.add_children_desc', 1),
(178, 2, 'copy', 'perm.copy_desc', 1),
(179, 2, 'create', 'perm.create_desc', 1),
(180, 2, 'delete', 'perm.delete_desc', 1),
(181, 2, 'list', 'perm.list_desc', 1),
(182, 2, 'load', 'perm.load_desc', 1),
(183, 2, 'move', 'perm.move_desc', 1),
(184, 2, 'publish', 'perm.publish_desc', 1),
(185, 2, 'remove', 'perm.remove_desc', 1),
(186, 2, 'save', 'perm.save_desc', 1),
(187, 2, 'steal_lock', 'perm.steal_lock_desc', 1),
(188, 2, 'undelete', 'perm.undelete_desc', 1),
(189, 2, 'unpublish', 'perm.unpublish_desc', 1),
(190, 2, 'view', 'perm.view_desc', 1),
(191, 3, 'load', 'perm.load_desc', 1),
(192, 3, 'list', 'perm.list_desc', 1),
(193, 3, 'view', 'perm.view_desc', 1),
(194, 3, 'save', 'perm.save_desc', 1),
(195, 3, 'remove', 'perm.remove_desc', 1),
(196, 4, 'add_children', 'perm.add_children_desc', 1),
(197, 4, 'create', 'perm.create_desc', 1),
(198, 4, 'copy', 'perm.copy_desc', 1),
(199, 4, 'delete', 'perm.delete_desc', 1),
(200, 4, 'list', 'perm.list_desc', 1),
(201, 4, 'load', 'perm.load_desc', 1),
(202, 4, 'remove', 'perm.remove_desc', 1),
(203, 4, 'save', 'perm.save_desc', 1),
(204, 4, 'view', 'perm.view_desc', 1),
(205, 5, 'create', 'perm.create_desc', 1),
(206, 5, 'copy', 'perm.copy_desc', 1),
(207, 5, 'list', 'perm.list_desc', 1),
(208, 5, 'load', 'perm.load_desc', 1),
(209, 5, 'remove', 'perm.remove_desc', 1),
(210, 5, 'save', 'perm.save_desc', 1),
(211, 5, 'view', 'perm.view_desc', 1),
(212, 6, 'load', 'perm.load_desc', 1),
(213, 6, 'list', 'perm.list_desc', 1),
(214, 6, 'view', 'perm.view_desc', 1),
(215, 6, 'save', 'perm.save_desc', 1),
(216, 6, 'remove', 'perm.remove_desc', 1),
(217, 6, 'view_unpublished', 'perm.view_unpublished_desc', 1),
(218, 6, 'copy', 'perm.copy_desc', 1),
(219, 7, 'list', 'perm.list_desc', 1),
(220, 7, 'load', 'perm.load_desc', 1),
(221, 7, 'view', 'perm.view_desc', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_policies`
--

CREATE TABLE `modx_access_policies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` mediumtext,
  `parent` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `template` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `class` varchar(191) NOT NULL DEFAULT '',
  `data` text,
  `lexicon` varchar(191) NOT NULL DEFAULT 'permissions'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `modx_access_policies`
--

INSERT INTO `modx_access_policies` (`id`, `name`, `description`, `parent`, `template`, `class`, `data`, `lexicon`) VALUES
(1, 'Resource', 'MODX Resource Policy with all attributes.', 0, 2, '', '{\"add_children\":true,\"create\":true,\"copy\":true,\"delete\":true,\"list\":true,\"load\":true,\"move\":true,\"publish\":true,\"remove\":true,\"save\":true,\"steal_lock\":true,\"undelete\":true,\"unpublish\":true,\"view\":true}', 'permissions'),
(2, 'Administrator', 'Context administration policy with all permissions.', 0, 1, '', '{\"about\":true,\"access_permissions\":true,\"actions\":true,\"change_password\":true,\"change_profile\":true,\"charsets\":true,\"class_map\":true,\"components\":true,\"content_types\":true,\"countries\":true,\"create\":true,\"credits\":true,\"customize_forms\":true,\"dashboards\":true,\"database\":true,\"database_truncate\":true,\"delete_category\":true,\"delete_chunk\":true,\"delete_context\":true,\"delete_document\":true,\"delete_eventlog\":true,\"delete_plugin\":true,\"delete_propertyset\":true,\"delete_role\":true,\"delete_snippet\":true,\"delete_template\":true,\"delete_tv\":true,\"delete_user\":true,\"directory_chmod\":true,\"directory_create\":true,\"directory_list\":true,\"directory_remove\":true,\"directory_update\":true,\"edit_category\":true,\"edit_chunk\":true,\"edit_context\":true,\"edit_document\":true,\"edit_locked\":true,\"edit_plugin\":true,\"edit_propertyset\":true,\"edit_role\":true,\"edit_snippet\":true,\"edit_template\":true,\"edit_tv\":true,\"edit_user\":true,\"element_tree\":true,\"empty_cache\":true,\"error_log_erase\":true,\"error_log_view\":true,\"events\":true,\"export_static\":true,\"file_create\":true,\"file_list\":true,\"file_manager\":true,\"file_remove\":true,\"file_tree\":true,\"file_update\":true,\"file_upload\":true,\"file_unpack\":true,\"file_view\":true,\"flush_sessions\":true,\"frames\":true,\"help\":true,\"home\":true,\"import_static\":true,\"languages\":true,\"lexicons\":true,\"list\":true,\"load\":true,\"logout\":true,\"logs\":true,\"menus\":true,\"menu_reports\":true,\"menu_security\":true,\"menu_site\":true,\"menu_support\":true,\"menu_system\":true,\"menu_tools\":true,\"menu_user\":true,\"messages\":true,\"namespaces\":true,\"new_category\":true,\"new_chunk\":true,\"new_context\":true,\"new_document\":true,\"new_document_in_root\":true,\"new_plugin\":true,\"new_propertyset\":true,\"new_role\":true,\"new_snippet\":true,\"new_static_resource\":true,\"new_symlink\":true,\"new_template\":true,\"new_tv\":true,\"new_user\":true,\"new_weblink\":true,\"packages\":true,\"policy_delete\":true,\"policy_edit\":true,\"policy_new\":true,\"policy_save\":true,\"policy_template_delete\":true,\"policy_template_edit\":true,\"policy_template_new\":true,\"policy_template_save\":true,\"policy_template_view\":true,\"policy_view\":true,\"property_sets\":true,\"providers\":true,\"publish_document\":true,\"purge_deleted\":true,\"remove\":true,\"remove_locks\":true,\"resource_duplicate\":true,\"resourcegroup_delete\":true,\"resourcegroup_edit\":true,\"resourcegroup_new\":true,\"resourcegroup_resource_edit\":true,\"resourcegroup_resource_list\":true,\"resourcegroup_save\":true,\"resourcegroup_view\":true,\"resource_quick_create\":true,\"resource_quick_update\":true,\"resource_tree\":true,\"save\":true,\"save_category\":true,\"save_chunk\":true,\"save_context\":true,\"save_document\":true,\"save_plugin\":true,\"save_propertyset\":true,\"save_role\":true,\"save_snippet\":true,\"save_template\":true,\"save_tv\":true,\"save_user\":true,\"search\":true,\"set_sudo\":true,\"settings\":true,\"sources\":true,\"source_delete\":true,\"source_edit\":true,\"source_save\":true,\"source_view\":true,\"steal_locks\":true,\"tree_show_element_ids\":true,\"tree_show_resource_ids\":true,\"undelete_document\":true,\"unlock_element_properties\":true,\"unpublish_document\":true,\"usergroup_delete\":true,\"usergroup_edit\":true,\"usergroup_new\":true,\"usergroup_save\":true,\"usergroup_user_edit\":true,\"usergroup_user_list\":true,\"usergroup_view\":true,\"view\":true,\"view_category\":true,\"view_chunk\":true,\"view_context\":true,\"view_document\":true,\"view_element\":true,\"view_eventlog\":true,\"view_offline\":true,\"view_plugin\":true,\"view_propertyset\":true,\"view_role\":true,\"view_snippet\":true,\"view_sysinfo\":true,\"view_template\":true,\"view_tv\":true,\"view_unpublished\":true,\"view_user\":true,\"workspaces\":true}', 'permissions'),
(3, 'Load Only', 'A minimal policy with permission to load an object.', 0, 3, '', '{\"load\":true}', 'permissions'),
(4, 'Load, List and View', 'Provides load, list and view permissions only.', 0, 3, '', '{\"load\":true,\"list\":true,\"view\":true}', 'permissions'),
(5, 'Object', 'An Object policy with all permissions.', 0, 3, '', '{\"load\":true,\"list\":true,\"view\":true,\"save\":true,\"remove\":true}', 'permissions'),
(6, 'Element', 'MODX Element policy with all attributes.', 0, 4, '', '{\"add_children\":true,\"create\":true,\"delete\":true,\"list\":true,\"load\":true,\"remove\":true,\"save\":true,\"view\":true,\"copy\":true}', 'permissions'),
(7, 'Content Editor', 'Context administration policy with limited, content-editing related Permissions, but no publishing.', 0, 1, '', '{\"change_profile\":true,\"class_map\":true,\"countries\":true,\"edit_document\":true,\"frames\":true,\"help\":true,\"home\":true,\"load\":true,\"list\":true,\"logout\":true,\"menu_reports\":true,\"menu_site\":true,\"menu_support\":true,\"menu_tools\":true,\"menu_user\":true,\"resource_duplicate\":true,\"resource_tree\":true,\"save_document\":true,\"source_view\":true,\"tree_show_resource_ids\":true,\"view\":true,\"view_document\":true,\"view_template\":true,\"new_document\":true,\"delete_document\":true}', 'permissions'),
(8, 'Media Source Admin', 'Media Source administration policy.', 0, 5, '', '{\"create\":true,\"copy\":true,\"load\":true,\"list\":true,\"save\":true,\"remove\":true,\"view\":true}', 'permissions'),
(9, 'Media Source User', 'Media Source user policy, with basic viewing and using - but no editing - of Media Sources.', 0, 5, '', '{\"load\":true,\"list\":true,\"view\":true}', 'permissions'),
(10, 'Developer', 'Context administration policy with most Permissions except Administrator and Security functions.', 0, 0, '', '{\"about\":true,\"change_password\":true,\"change_profile\":true,\"charsets\":true,\"class_map\":true,\"components\":true,\"content_types\":true,\"countries\":true,\"create\":true,\"credits\":true,\"customize_forms\":true,\"dashboards\":true,\"database\":true,\"delete_category\":true,\"delete_chunk\":true,\"delete_context\":true,\"delete_document\":true,\"delete_eventlog\":true,\"delete_plugin\":true,\"delete_propertyset\":true,\"delete_snippet\":true,\"delete_template\":true,\"delete_tv\":true,\"delete_role\":true,\"delete_user\":true,\"directory_chmod\":true,\"directory_create\":true,\"directory_list\":true,\"directory_remove\":true,\"directory_update\":true,\"edit_category\":true,\"edit_chunk\":true,\"edit_context\":true,\"edit_document\":true,\"edit_locked\":true,\"edit_plugin\":true,\"edit_propertyset\":true,\"edit_role\":true,\"edit_snippet\":true,\"edit_template\":true,\"edit_tv\":true,\"edit_user\":true,\"element_tree\":true,\"empty_cache\":true,\"error_log_erase\":true,\"error_log_view\":true,\"export_static\":true,\"file_create\":true,\"file_list\":true,\"file_manager\":true,\"file_remove\":true,\"file_tree\":true,\"file_update\":true,\"file_upload\":true,\"file_unpack\":true,\"file_view\":true,\"frames\":true,\"help\":true,\"home\":true,\"import_static\":true,\"languages\":true,\"lexicons\":true,\"list\":true,\"load\":true,\"logout\":true,\"logs\":true,\"menu_reports\":true,\"menu_site\":true,\"menu_support\":true,\"menu_system\":true,\"menu_tools\":true,\"menu_user\":true,\"menus\":true,\"messages\":true,\"namespaces\":true,\"new_category\":true,\"new_chunk\":true,\"new_context\":true,\"new_document\":true,\"new_static_resource\":true,\"new_symlink\":true,\"new_weblink\":true,\"new_document_in_root\":true,\"new_plugin\":true,\"new_propertyset\":true,\"new_role\":true,\"new_snippet\":true,\"new_template\":true,\"new_tv\":true,\"new_user\":true,\"packages\":true,\"property_sets\":true,\"providers\":true,\"publish_document\":true,\"purge_deleted\":true,\"remove\":true,\"resource_duplicate\":true,\"resource_quick_create\":true,\"resource_quick_update\":true,\"resource_tree\":true,\"save\":true,\"save_category\":true,\"save_chunk\":true,\"save_context\":true,\"save_document\":true,\"save_plugin\":true,\"save_propertyset\":true,\"save_snippet\":true,\"save_template\":true,\"save_tv\":true,\"save_user\":true,\"search\":true,\"settings\":true,\"source_delete\":true,\"source_edit\":true,\"source_save\":true,\"source_view\":true,\"sources\":true,\"tree_show_element_ids\":true,\"tree_show_resource_ids\":true,\"undelete_document\":true,\"unpublish_document\":true,\"unlock_element_properties\":true,\"view\":true,\"view_category\":true,\"view_chunk\":true,\"view_context\":true,\"view_document\":true,\"view_element\":true,\"view_eventlog\":true,\"view_offline\":true,\"view_plugin\":true,\"view_propertyset\":true,\"view_role\":true,\"view_snippet\":true,\"view_sysinfo\":true,\"view_template\":true,\"view_tv\":true,\"view_user\":true,\"view_unpublished\":true,\"workspaces\":true}', 'permissions'),
(11, 'Context', 'A standard Context policy that you can apply when creating Context ACLs for basic read/write and view_unpublished access within a Context.', 0, 6, '', '{\"load\":true,\"list\":true,\"view\":true,\"save\":true,\"remove\":true,\"copy\":true,\"view_unpublished\":true}', 'permissions'),
(12, 'Hidden Namespace', 'Hidden Namespace policy, will not show Namespace in lists.', 0, 7, '', '{\"load\":false,\"list\":false,\"view\":true}', 'permissions'),
(13, 'Manager', 'Context administration policy with limited, content-editing related Permissions, but no publishing.', 0, 1, '', '{\"about\":false,\"access_permissions\":false,\"actions\":false,\"change_password\":true,\"change_profile\":true,\"charsets\":false,\"class_map\":true,\"components\":true,\"content_types\":false,\"countries\":true,\"create\":false,\"credits\":false,\"customize_forms\":false,\"dashboards\":false,\"database\":false,\"database_truncate\":false,\"delete_category\":false,\"delete_chunk\":false,\"delete_context\":false,\"delete_document\":true,\"delete_eventlog\":false,\"delete_plugin\":false,\"delete_propertyset\":false,\"delete_role\":false,\"delete_snippet\":false,\"delete_template\":false,\"delete_tv\":false,\"delete_user\":false,\"directory_chmod\":false,\"directory_create\":true,\"directory_list\":true,\"directory_remove\":true,\"directory_update\":true,\"edit_category\":false,\"edit_chunk\":false,\"edit_context\":false,\"edit_document\":true,\"edit_locked\":false,\"edit_plugin\":false,\"edit_propertyset\":false,\"edit_role\":false,\"edit_snippet\":false,\"edit_template\":false,\"edit_tv\":false,\"edit_user\":false,\"element_tree\":false,\"empty_cache\":true,\"error_log_erase\":false,\"error_log_view\":false,\"export_static\":false,\"file_create\":true,\"file_list\":true,\"file_manager\":true,\"file_remove\":true,\"file_tree\":true,\"file_update\":true,\"file_upload\":true,\"file_view\":true,\"flush_sessions\":false,\"frames\":true,\"help\":true,\"home\":true,\"import_static\":false,\"languages\":true,\"lexicons\":true,\"list\":true,\"load\":true,\"logout\":true,\"logs\":false,\"menus\":false,\"menu_reports\":true,\"menu_security\":false,\"menu_site\":true,\"menu_support\":false,\"menu_system\":false,\"menu_tools\":false,\"menu_user\":true,\"messages\":false,\"namespaces\":true,\"new_category\":false,\"new_chunk\":false,\"new_context\":false,\"new_document\":true,\"new_document_in_root\":false,\"new_plugin\":false,\"new_propertyset\":false,\"new_role\":false,\"new_snippet\":false,\"new_static_resource\":false,\"new_symlink\":false,\"new_template\":false,\"new_tv\":false,\"new_user\":false,\"new_weblink\":false,\"packages\":false,\"policy_delete\":false,\"policy_edit\":false,\"policy_new\":false,\"policy_save\":false,\"policy_template_delete\":false,\"policy_template_edit\":false,\"policy_template_new\":false,\"policy_template_save\":false,\"policy_template_view\":false,\"policy_view\":false,\"property_sets\":false,\"providers\":false,\"publish_document\":true,\"purge_deleted\":true,\"remove\":false,\"remove_locks\":false,\"resourcegroup_delete\":false,\"resourcegroup_edit\":false,\"resourcegroup_new\":false,\"resourcegroup_resource_edit\":false,\"resourcegroup_resource_list\":false,\"resourcegroup_save\":false,\"resourcegroup_view\":false,\"resource_duplicate\":true,\"resource_quick_create\":false,\"resource_quick_update\":false,\"resource_tree\":true,\"save\":false,\"save_category\":false,\"save_chunk\":false,\"save_context\":false,\"save_document\":true,\"save_plugin\":false,\"save_propertyset\":false,\"save_role\":false,\"save_snippet\":false,\"save_template\":false,\"save_tv\":false,\"save_user\":false,\"search\":false,\"settings\":false,\"sources\":false,\"source_delete\":false,\"source_edit\":false,\"source_save\":false,\"source_view\":true,\"steal_locks\":false,\"tree_show_element_ids\":false,\"tree_show_resource_ids\":true,\"undelete_document\":true,\"unlock_element_properties\":false,\"unpublish_document\":true,\"usergroup_delete\":false,\"usergroup_edit\":false,\"usergroup_new\":false,\"usergroup_save\":false,\"usergroup_user_edit\":false,\"usergroup_user_list\":false,\"usergroup_view\":false,\"view\":true,\"view_category\":false,\"view_chunk\":false,\"view_context\":false,\"view_document\":true,\"view_element\":false,\"view_eventlog\":false,\"view_offline\":false,\"view_plugin\":false,\"view_propertyset\":false,\"view_role\":false,\"view_snippet\":false,\"view_sysinfo\":false,\"view_template\":false,\"view_tv\":false,\"view_unpublished\":true,\"view_user\":false,\"workspaces\":false}', '');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_policy_templates`
--

CREATE TABLE `modx_access_policy_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `template_group` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` mediumtext,
  `lexicon` varchar(191) NOT NULL DEFAULT 'permissions'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `modx_access_policy_templates`
--

INSERT INTO `modx_access_policy_templates` (`id`, `template_group`, `name`, `description`, `lexicon`) VALUES
(1, 1, 'AdministratorTemplate', 'Context administration policy template with all permissions.', 'permissions'),
(2, 3, 'ResourceTemplate', 'Resource Policy Template with all attributes.', 'permissions'),
(3, 2, 'ObjectTemplate', 'Object Policy Template with all attributes.', 'permissions'),
(4, 4, 'ElementTemplate', 'Element Policy Template with all attributes.', 'permissions'),
(5, 5, 'MediaSourceTemplate', 'Media Source Policy Template with all attributes.', 'permissions'),
(6, 2, 'ContextTemplate', 'Context Policy Template with all attributes.', 'permissions'),
(7, 6, 'NamespaceTemplate', 'Namespace Policy Template with all attributes.', 'permissions');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_policy_template_groups`
--

CREATE TABLE `modx_access_policy_template_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `modx_access_policy_template_groups`
--

INSERT INTO `modx_access_policy_template_groups` (`id`, `name`, `description`) VALUES
(1, 'Admin', 'All admin policy templates.'),
(2, 'Object', 'All Object-based policy templates.'),
(3, 'Resource', 'All Resource-based policy templates.'),
(4, 'Element', 'All Element-based policy templates.'),
(5, 'MediaSource', 'All Media Source-based policy templates.'),
(6, 'Namespace', 'All Namespace based policy templates.');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_resources`
--

CREATE TABLE `modx_access_resources` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_resource_groups`
--

CREATE TABLE `modx_access_resource_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `modx_access_resource_groups`
--

INSERT INTO `modx_access_resource_groups` (`id`, `target`, `principal_class`, `principal`, `authority`, `policy`, `context_key`) VALUES
(1, '1', 'modUserGroup', 1, 0, 1, 'mgr'),
(2, '1', 'modUserGroup', 0, 9999, 4, 'web'),
(3, '1', 'modUserGroup', 2, 9999, 1, 'web');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_templatevars`
--

CREATE TABLE `modx_access_templatevars` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_actiondom`
--

CREATE TABLE `modx_actiondom` (
  `id` int(10) UNSIGNED NOT NULL,
  `set` int(11) NOT NULL DEFAULT '0',
  `action` varchar(191) NOT NULL DEFAULT '',
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text,
  `xtype` varchar(100) NOT NULL DEFAULT '',
  `container` varchar(191) NOT NULL DEFAULT '',
  `rule` varchar(100) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `constraint` varchar(191) NOT NULL DEFAULT '',
  `constraint_field` varchar(100) NOT NULL DEFAULT '',
  `constraint_class` varchar(100) NOT NULL DEFAULT '',
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `for_parent` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_actions`
--

CREATE TABLE `modx_actions` (
  `id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(100) NOT NULL DEFAULT 'core',
  `controller` varchar(191) NOT NULL,
  `haslayout` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `lang_topics` text NOT NULL,
  `assets` text NOT NULL,
  `help_url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_actions_fields`
--

CREATE TABLE `modx_actions_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(191) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `name` varchar(191) NOT NULL DEFAULT '',
  `type` varchar(100) NOT NULL DEFAULT 'field',
  `tab` varchar(191) NOT NULL DEFAULT '',
  `form` varchar(191) NOT NULL DEFAULT '',
  `other` varchar(191) NOT NULL DEFAULT '',
  `rank` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `modx_actions_fields`
--

INSERT INTO `modx_actions_fields` (`id`, `action`, `name`, `type`, `tab`, `form`, `other`, `rank`) VALUES
(1, 'resource/update', 'modx-resource-settings', 'tab', '', 'modx-panel-resource', '', 0),
(2, 'resource/update', 'modx-resource-main-left', 'tab', '', 'modx-panel-resource', '', 1),
(3, 'resource/update', 'id', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 0),
(4, 'resource/update', 'pagetitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 1),
(5, 'resource/update', 'longtitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 2),
(6, 'resource/update', 'description', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 3),
(7, 'resource/update', 'introtext', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 4),
(8, 'resource/update', 'modx-resource-main-right', 'tab', '', 'modx-panel-resource', '', 2),
(9, 'resource/update', 'template', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 0),
(10, 'resource/update', 'alias', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 1),
(11, 'resource/update', 'menutitle', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 2),
(12, 'resource/update', 'link_attributes', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 3),
(13, 'resource/update', 'hidemenu', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 4),
(14, 'resource/update', 'published', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 5),
(15, 'resource/update', 'modx-page-settings', 'tab', '', 'modx-panel-resource', '', 3),
(16, 'resource/update', 'modx-page-settings-left', 'tab', '', 'modx-panel-resource', '', 4),
(17, 'resource/update', 'parent-cmb', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 0),
(18, 'resource/update', 'class_key', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 1),
(19, 'resource/update', 'content_type', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 2),
(20, 'resource/update', 'content_dispo', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 3),
(21, 'resource/update', 'menuindex', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 4),
(22, 'resource/update', 'modx-page-settings-right', 'tab', '', 'modx-panel-resource', '', 5),
(23, 'resource/update', 'publishedon', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 0),
(24, 'resource/update', 'pub_date', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 1),
(25, 'resource/update', 'unpub_date', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 2),
(26, 'resource/update', 'modx-page-settings-right-box-left', 'tab', '', 'modx-panel-resource', '', 6),
(27, 'resource/update', 'isfolder', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 0),
(28, 'resource/update', 'searchable', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 1),
(29, 'resource/update', 'alias_visible', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 2),
(30, 'resource/update', 'richtext', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 3),
(31, 'resource/update', 'uri_override', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 4),
(32, 'resource/update', 'uri', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 5),
(33, 'resource/update', 'modx-page-settings-right-box-right', 'tab', '', 'modx-panel-resource', '', 7),
(34, 'resource/update', 'cacheable', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 0),
(35, 'resource/update', 'syncsite', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 1),
(36, 'resource/update', 'deleted', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 2),
(37, 'resource/update', 'modx-panel-resource-tv', 'tab', '', 'modx-panel-resource', 'tv', 8),
(38, 'resource/update', 'modx-resource-access-permissions', 'tab', '', 'modx-panel-resource', '', 9),
(39, 'resource/update', 'modx-resource-content', 'field', 'modx-resource-content', 'modx-panel-resource', '', 0),
(40, 'resource/create', 'modx-resource-settings', 'tab', '', 'modx-panel-resource', '', 0),
(41, 'resource/create', 'modx-resource-main-left', 'tab', '', 'modx-panel-resource', '', 1),
(42, 'resource/create', 'id', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 0),
(43, 'resource/create', 'pagetitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 1),
(44, 'resource/create', 'longtitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 2),
(45, 'resource/create', 'description', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 3),
(46, 'resource/create', 'introtext', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 4),
(47, 'resource/create', 'modx-resource-main-right', 'tab', '', 'modx-panel-resource', '', 2),
(48, 'resource/create', 'template', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 0),
(49, 'resource/create', 'alias', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 1),
(50, 'resource/create', 'menutitle', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 2),
(51, 'resource/create', 'link_attributes', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 3),
(52, 'resource/create', 'hidemenu', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 4),
(53, 'resource/create', 'published', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 5),
(54, 'resource/create', 'modx-page-settings', 'tab', '', 'modx-panel-resource', '', 3),
(55, 'resource/create', 'modx-page-settings-left', 'tab', '', 'modx-panel-resource', '', 4),
(56, 'resource/create', 'parent-cmb', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 0),
(57, 'resource/create', 'class_key', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 1),
(58, 'resource/create', 'content_type', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 2),
(59, 'resource/create', 'content_dispo', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 3),
(60, 'resource/create', 'menuindex', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 4),
(61, 'resource/create', 'modx-page-settings-right', 'tab', '', 'modx-panel-resource', '', 5),
(62, 'resource/create', 'publishedon', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 0),
(63, 'resource/create', 'pub_date', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 1),
(64, 'resource/create', 'unpub_date', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 2),
(65, 'resource/create', 'modx-page-settings-right-box-left', 'tab', '', 'modx-panel-resource', '', 6),
(66, 'resource/create', 'isfolder', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 0),
(67, 'resource/create', 'searchable', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 1),
(68, 'resource/create', 'alias_visible', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 2),
(69, 'resource/create', 'richtext', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 3),
(70, 'resource/create', 'uri_override', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 4),
(71, 'resource/create', 'uri', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 5),
(72, 'resource/create', 'modx-page-settings-right-box-right', 'tab', '', 'modx-panel-resource', '', 7),
(73, 'resource/create', 'cacheable', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 0),
(74, 'resource/create', 'syncsite', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 1),
(75, 'resource/create', 'deleted', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 2),
(76, 'resource/create', 'modx-panel-resource-tv', 'tab', '', 'modx-panel-resource', 'tv', 8),
(77, 'resource/create', 'modx-resource-access-permissions', 'tab', '', 'modx-panel-resource', '', 9),
(78, 'resource/create', 'modx-resource-content', 'field', 'modx-resource-content', 'modx-panel-resource', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_active_users`
--

CREATE TABLE `modx_active_users` (
  `internalKey` int(9) NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `lasthit` int(20) NOT NULL DEFAULT '0',
  `id` int(10) DEFAULT NULL,
  `action` varchar(191) NOT NULL DEFAULT '',
  `ip` varchar(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_categories`
--

CREATE TABLE `modx_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent` int(10) UNSIGNED DEFAULT '0',
  `category` varchar(45) NOT NULL DEFAULT '',
  `rank` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `modx_categories`
--

INSERT INTO `modx_categories` (`id`, `parent`, `category`, `rank`) VALUES
(1, 0, 'customChunks', 0),
(2, 1, 'base', 0),
(3, 1, 'common', 0),
(4, 1, 'content', 0),
(5, 1, 'tv', 0),
(6, 0, 'customPlugins', 0),
(7, 0, 'customSnippets', 0),
(8, 0, 'customTemplates', 0),
(9, 8, 'technical', 0),
(10, 0, 'Babel', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_categories_closure`
--

CREATE TABLE `modx_categories_closure` (
  `ancestor` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `descendant` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `depth` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `modx_categories_closure`
--

INSERT INTO `modx_categories_closure` (`ancestor`, `descendant`, `depth`) VALUES
(0, 1, 0),
(0, 2, 0),
(0, 3, 0),
(0, 4, 0),
(0, 5, 0),
(0, 6, 0),
(0, 7, 0),
(0, 8, 0),
(0, 9, 0),
(0, 10, 0),
(1, 1, 0),
(1, 2, 0),
(1, 3, 0),
(1, 4, 0),
(1, 5, 0),
(2, 2, 0),
(3, 3, 0),
(4, 4, 0),
(5, 5, 0),
(6, 6, 0),
(7, 7, 0),
(8, 8, 0),
(8, 9, 0),
(9, 9, 0),
(10, 10, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_class_map`
--

CREATE TABLE `modx_class_map` (
  `id` int(10) UNSIGNED NOT NULL,
  `class` varchar(120) NOT NULL DEFAULT '',
  `parent_class` varchar(120) NOT NULL DEFAULT '',
  `name_field` varchar(191) NOT NULL DEFAULT 'name',
  `path` tinytext,
  `lexicon` varchar(191) NOT NULL DEFAULT 'core:resource'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `modx_class_map`
--

INSERT INTO `modx_class_map` (`id`, `class`, `parent_class`, `name_field`, `path`, `lexicon`) VALUES
(1, 'modDocument', 'modResource', 'pagetitle', '', 'core:resource'),
(2, 'modWebLink', 'modResource', 'pagetitle', '', 'core:resource'),
(3, 'modSymLink', 'modResource', 'pagetitle', '', 'core:resource'),
(4, 'modStaticResource', 'modResource', 'pagetitle', '', 'core:resource'),
(5, 'modTemplate', 'modElement', 'templatename', '', 'core:resource'),
(6, 'modTemplateVar', 'modElement', 'name', '', 'core:resource'),
(7, 'modChunk', 'modElement', 'name', '', 'core:resource'),
(8, 'modSnippet', 'modElement', 'name', '', 'core:resource'),
(9, 'modPlugin', 'modElement', 'name', '', 'core:resource');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_content_type`
--

CREATE TABLE `modx_content_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` tinytext,
  `mime_type` tinytext,
  `file_extensions` tinytext,
  `headers` mediumtext,
  `binary` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `modx_content_type`
--

INSERT INTO `modx_content_type` (`id`, `name`, `description`, `mime_type`, `file_extensions`, `headers`, `binary`) VALUES
(1, 'HTML', 'HTML content', 'text/html', '', NULL, 0),
(2, 'XML', 'XML content', 'text/xml', '.xml', NULL, 0),
(3, 'text', 'plain text content', 'text/plain', '.txt', NULL, 0),
(4, 'CSS', 'CSS content', 'text/css', '.css', NULL, 0),
(5, 'javascript', 'javascript content', 'text/javascript', '.js', NULL, 0),
(6, 'RSS', 'For RSS feeds', 'application/rss+xml', '.rss', NULL, 0),
(7, 'JSON', 'JSON', 'application/json', '.json', NULL, 0),
(8, 'PDF', 'PDF Files', 'application/pdf', '.pdf', NULL, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_context`
--

CREATE TABLE `modx_context` (
  `key` varchar(100) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` tinytext,
  `rank` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `modx_context`
--

INSERT INTO `modx_context` (`key`, `name`, `description`, `rank`) VALUES
('en', 'en', 'English context', 0),
('mgr', 'Manager', 'The default manager or administration context for content management activity.', 0),
('ua', 'ua', 'Ukrainian', 0),
('web', 'Russian', 'The default front-end context for your web site.', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_context_resource`
--

CREATE TABLE `modx_context_resource` (
  `context_key` varchar(191) NOT NULL,
  `resource` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_context_setting`
--

CREATE TABLE `modx_context_setting` (
  `context_key` varchar(191) NOT NULL,
  `key` varchar(50) NOT NULL,
  `value` mediumtext,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(191) NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `modx_context_setting`
--

INSERT INTO `modx_context_setting` (`context_key`, `key`, `value`, `xtype`, `namespace`, `area`, `editedon`) VALUES
('en', 'base_url', '/en/', 'textfield', 'core', 'language', NULL),
('en', 'cultureKey', 'en', 'textfield', 'core', 'language', NULL),
('en', 'error_page', '1', 'textfield', 'core', '', NULL),
('en', 'locale', 'en_US.UTF8', 'textfield', 'core', 'language', NULL),
('en', 'site_name', 'Demo Site', 'textfield', 'core', 'site', NULL),
('en', 'site_start', '3', 'textfield', 'core', 'language', '2019-06-10 14:33:54'),
('en', 'site_url', 'http://localhost/en/', 'textfield', 'core', 'language', NULL),
('mgr', 'allow_tags_in_post', '1', 'combo-boolean', 'core', 'system', NULL),
('mgr', 'modRequest.class', 'modManagerRequest', 'textfield', 'core', 'system', NULL),
('ua', 'base_url', '/ua/', 'textfield', 'core', 'language', NULL),
('ua', 'cultureKey', 'ua', 'textfield', 'core', 'language', NULL),
('ua', 'error_page', '1', 'textfield', 'core', '', NULL),
('ua', 'locale', 'uk_UA.UTF8', 'textfield', 'core', 'language', '2019-06-10 13:41:58'),
('ua', 'site_name', 'Демо-сайт', 'textfield', 'core', 'site', NULL),
('ua', 'site_start', '2', 'textfield', 'core', 'language', '2019-06-10 14:31:54'),
('ua', 'site_url', 'http://localhost/ua/', 'textfield', 'core', 'language', NULL),
('web', 'base_url', '/', 'textfield', 'core', 'language', NULL),
('web', 'cultureKey', 'ru', 'textfield', 'core', 'language', NULL),
('web', 'error_page', '1', 'textfield', 'core', '', NULL),
('web', 'locale', 'ru_RU.UTF8', 'textfield', 'core', 'language', NULL),
('web', 'site_name', 'Демо-сайт', 'textfield', 'core', 'site', NULL),
('web', 'site_start', '1', 'textfield', 'core', 'language', NULL),
('web', 'site_url', 'http://localhost/', 'textfield', 'core', 'language', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_dashboard`
--

CREATE TABLE `modx_dashboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text,
  `hide_trees` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `modx_dashboard`
--

INSERT INTO `modx_dashboard` (`id`, `name`, `description`, `hide_trees`) VALUES
(1, 'Default', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_dashboard_widget`
--

CREATE TABLE `modx_dashboard_widget` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text,
  `type` varchar(100) NOT NULL,
  `content` mediumtext,
  `namespace` varchar(191) NOT NULL DEFAULT '',
  `lexicon` varchar(191) NOT NULL DEFAULT 'core:dashboards',
  `size` varchar(191) NOT NULL DEFAULT 'half'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `modx_dashboard_widget`
--

INSERT INTO `modx_dashboard_widget` (`id`, `name`, `description`, `type`, `content`, `namespace`, `lexicon`, `size`) VALUES
(1, 'w_newsfeed', 'w_newsfeed_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.modx-news.php', 'core', 'core:dashboards', 'half'),
(2, 'w_securityfeed', 'w_securityfeed_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.modx-security.php', 'core', 'core:dashboards', 'half'),
(3, 'w_whosonline', 'w_whosonline_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.grid-online.php', 'core', 'core:dashboards', 'half'),
(4, 'w_recentlyeditedresources', 'w_recentlyeditedresources_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.grid-rer.php', 'core', 'core:dashboards', 'half'),
(5, 'w_configcheck', 'w_configcheck_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.configcheck.php', 'core', 'core:dashboards', 'full');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_dashboard_widget_placement`
--

CREATE TABLE `modx_dashboard_widget_placement` (
  `dashboard` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `widget` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rank` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `modx_dashboard_widget_placement`
--

INSERT INTO `modx_dashboard_widget_placement` (`dashboard`, `widget`, `rank`) VALUES
(1, 5, 0),
(1, 1, 1),
(1, 2, 2),
(1, 3, 3),
(1, 4, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_documentgroup_names`
--

CREATE TABLE `modx_documentgroup_names` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `private_memgroup` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `private_webgroup` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `modx_documentgroup_names`
--

INSERT INTO `modx_documentgroup_names` (`id`, `name`, `private_memgroup`, `private_webgroup`) VALUES
(1, 'technical', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_document_groups`
--

CREATE TABLE `modx_document_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_group` int(10) NOT NULL DEFAULT '0',
  `document` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_element_property_sets`
--

CREATE TABLE `modx_element_property_sets` (
  `element` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `element_class` varchar(100) NOT NULL DEFAULT '',
  `property_set` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_extension_packages`
--

CREATE TABLE `modx_extension_packages` (
  `id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `name` varchar(100) NOT NULL DEFAULT 'core',
  `path` text,
  `table_prefix` varchar(191) NOT NULL DEFAULT '',
  `service_class` varchar(191) NOT NULL DEFAULT '',
  `service_name` varchar(191) NOT NULL DEFAULT '',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_fc_profiles`
--

CREATE TABLE `modx_fc_profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_fc_profiles_usergroups`
--

CREATE TABLE `modx_fc_profiles_usergroups` (
  `usergroup` int(11) NOT NULL DEFAULT '0',
  `profile` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_fc_sets`
--

CREATE TABLE `modx_fc_sets` (
  `id` int(10) UNSIGNED NOT NULL,
  `profile` int(11) NOT NULL DEFAULT '0',
  `action` varchar(191) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `template` int(11) NOT NULL DEFAULT '0',
  `constraint` varchar(191) NOT NULL DEFAULT '',
  `constraint_field` varchar(100) NOT NULL DEFAULT '',
  `constraint_class` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_lexicon_entries`
--

CREATE TABLE `modx_lexicon_entries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `topic` varchar(191) NOT NULL DEFAULT 'default',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `language` varchar(20) NOT NULL DEFAULT 'en',
  `createdon` datetime DEFAULT NULL,
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `modx_lexicon_entries`
--

INSERT INTO `modx_lexicon_entries` (`id`, `name`, `value`, `topic`, `namespace`, `language`, `createdon`, `editedon`) VALUES
(1, 'setting_base_url', 'Base URL', 'setting', 'core', 'ru', '2019-06-06 17:47:31', NULL),
(2, 'setting_cultureKey', 'Culture key', 'setting', 'core', 'ru', '2019-06-10 16:23:12', NULL),
(3, 'setting_site_start', 'Site start', 'setting', 'core', 'ru', '2019-06-10 16:24:06', NULL),
(4, 'setting_site_url', 'Site URL', 'setting', 'core', 'ru', '2019-06-10 16:24:57', NULL),
(5, 'setting_error_page', '404 page', 'setting', 'core', 'ru', '2019-06-10 16:27:42', NULL),
(6, 'setting_error_page_desc', 'setting_error_page_desc', 'setting', 'core', 'ru', '2019-06-10 16:27:42', NULL),
(7, 'setting_locale', 'Setting locale', 'setting', 'core', 'ru', '2019-06-10 16:28:16', NULL),
(8, 'setting_site_name', 'setting_site_name', 'setting', 'core', 'ru', '2019-06-10 16:29:54', NULL),
(9, 'setting_site_name_desc', 'setting_site_name_desc', 'setting', 'core', 'ru', '2019-06-10 16:29:54', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_manager_log`
--

CREATE TABLE `modx_manager_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `occurred` datetime DEFAULT NULL,
  `action` varchar(100) NOT NULL DEFAULT '',
  `classKey` varchar(100) NOT NULL DEFAULT '',
  `item` varchar(191) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `modx_manager_log`
--

INSERT INTO `modx_manager_log` (`id`, `user`, `occurred`, `action`, `classKey`, `item`) VALUES
(1, 1, '2019-06-06 16:11:03', 'login', 'modContext', 'mgr'),
(2, 1, '2019-06-06 16:20:49', 'category_create', 'modCategory', '1'),
(3, 1, '2019-06-06 16:21:06', 'category_create', 'modCategory', '2'),
(4, 1, '2019-06-06 16:21:14', 'category_create', 'modCategory', '3'),
(5, 1, '2019-06-06 16:21:21', 'category_create', 'modCategory', '4'),
(6, 1, '2019-06-06 16:21:32', 'category_create', 'modCategory', '5'),
(7, 1, '2019-06-06 16:22:22', 'category_create', 'modCategory', '6'),
(8, 1, '2019-06-06 16:22:40', 'category_create', 'modCategory', '7'),
(9, 1, '2019-06-06 16:22:51', 'category_create', 'modCategory', '8'),
(10, 1, '2019-06-06 16:23:51', 'category_create', 'modCategory', '9'),
(11, 1, '2019-06-06 16:26:18', 'setting_update', 'modSystemSetting', 'container_suffix'),
(12, 1, '2019-06-06 16:26:21', 'setting_update', 'modSystemSetting', 'friendly_alias_lowercase_only'),
(13, 1, '2019-06-06 16:26:42', 'setting_update', 'modSystemSetting', 'friendly_alias_restrict_chars_pattern'),
(14, 1, '2019-06-06 16:27:00', 'setting_update', 'modSystemSetting', 'friendly_urls'),
(15, 1, '2019-06-06 16:27:20', 'setting_update', 'modSystemSetting', 'use_alias_path'),
(16, 1, '2019-06-06 16:28:59', 'setting_update', 'modSystemSetting', 'friendly_alias_max_length'),
(17, 1, '2019-06-06 16:29:00', 'setting_update', 'modSystemSetting', 'friendly_alias_realtime'),
(18, 1, '2019-06-06 16:29:08', 'setting_update', 'modSystemSetting', 'friendly_alias_max_length'),
(19, 1, '2019-06-06 16:31:15', 'content_type_save', 'modContentType', '1'),
(20, 1, '2019-06-06 16:43:59', 'plugin_create', 'modPlugin', '1'),
(21, 1, '2019-06-06 16:50:25', 'login', 'modContext', 'mgr'),
(22, 1, '2019-06-06 17:01:34', 'login', 'modContext', 'mgr'),
(23, 1, '2019-06-06 17:02:54', 'plugin_update', 'modPlugin', '1'),
(24, 1, '2019-06-06 17:02:54', 'propertyset_update_from_element', 'modPropertySet', 'modPlugin 1 Default'),
(25, 1, '2019-06-06 17:03:06', 'plugin_update', 'modPlugin', '1'),
(26, 1, '2019-06-06 17:03:06', 'propertyset_update_from_element', 'modPropertySet', 'modPlugin 1 Default'),
(27, 1, '2019-06-06 17:06:24', 'plugin_update', 'modPlugin', '1'),
(28, 1, '2019-06-06 17:06:24', 'propertyset_update_from_element', 'modPropertySet', 'modPlugin 1 Default'),
(29, 1, '2019-06-06 17:06:40', 'login', 'modContext', 'mgr'),
(30, 1, '2019-06-06 17:07:27', 'login', 'modContext', 'mgr'),
(31, 1, '2019-06-06 17:07:53', 'clear_cache', '', 'mgr'),
(32, 1, '2019-06-06 17:09:54', 'policy_import', 'modAccessPolicy', '13'),
(33, 1, '2019-06-06 17:12:29', 'role_create', 'modUserGroupRole', '3'),
(34, 1, '2019-06-06 17:13:27', 'user_group_create', 'modUserGroup', '2'),
(35, 1, '2019-06-06 17:14:28', 'access_context_update', 'modAccessContext', '5'),
(36, 1, '2019-06-06 17:16:26', 'resource_group_create', 'modResourceGroup', '1'),
(37, 1, '2019-06-06 17:18:35', 'access_category_create', 'modAccessCategory', '1'),
(38, 1, '2019-06-06 17:19:54', 'access_rgroup_update', 'modAccessResourceGroup', '1'),
(39, 1, '2019-06-06 17:21:44', 'user_create', 'modUser', '2'),
(40, 1, '2019-06-06 17:23:59', 'source_update', 'sources.modMediaSource', '1'),
(41, 1, '2019-06-06 17:24:15', 'source_update', 'sources.modMediaSource', '1'),
(42, 1, '2019-06-06 17:24:41', 'source_create', 'sources.modMediaSource', '2'),
(43, 1, '2019-06-06 17:25:24', 'source_update', 'sources.modMediaSource', '2'),
(44, 1, '2019-06-06 17:26:07', 'login', 'modContext', 'mgr'),
(45, 1, '2019-06-06 17:26:49', 'user_update', 'modUser', '2'),
(46, 1, '2019-06-06 17:26:57', 'clear_cache', '', 'mgr'),
(47, 1, '2019-06-06 17:29:20', 'login', 'modContext', 'mgr'),
(48, 1, '2019-06-06 17:29:49', 'user_update', 'modUser', '2'),
(49, 1, '2019-06-06 17:29:58', 'user_update', 'modUser', '2'),
(50, 2, '2019-06-06 17:30:17', 'login', 'modContext', 'mgr'),
(51, 2, '2019-06-06 17:31:35', 'file_upload', '', 'C:/OSPanel/domains/localhost/assets/uploads/'),
(52, 1, '2019-06-06 17:31:50', 'login', 'modContext', 'mgr'),
(53, 1, '2019-06-06 17:45:33', 'context_create', 'modContext', 'en'),
(54, 1, '2019-06-06 17:45:49', 'context_create', 'modContext', 'ua'),
(55, 1, '2019-06-06 17:47:31', 'setting_create', 'modContextSetting', 'base_url'),
(56, 1, '2019-06-06 17:47:52', 'context_update', 'modContext', 'web'),
(57, 1, '2019-06-10 16:20:22', 'login', 'modContext', 'mgr'),
(58, 1, '2019-06-10 16:23:12', 'setting_create', 'modContextSetting', 'cultureKey'),
(59, 1, '2019-06-10 16:24:06', 'setting_create', 'modContextSetting', 'site_start'),
(60, 1, '2019-06-10 16:24:57', 'setting_create', 'modContextSetting', 'site_url'),
(61, 1, '2019-06-10 16:25:14', 'context_update', 'modContext', 'web'),
(62, 1, '2019-06-10 16:27:43', 'setting_create', 'modContextSetting', 'error_page'),
(63, 1, '2019-06-10 16:28:17', 'setting_create', 'modContextSetting', 'locale'),
(64, 1, '2019-06-10 16:29:54', 'setting_create', 'modContextSetting', 'site_name'),
(65, 1, '2019-06-10 16:29:58', 'context_update', 'modContext', 'web'),
(66, 1, '2019-06-10 16:30:50', 'setting_create', 'modContextSetting', 'base_url'),
(67, 1, '2019-06-10 16:31:32', 'setting_create', 'modContextSetting', 'cultureKey'),
(68, 1, '2019-06-10 16:32:06', 'setting_create', 'modContextSetting', 'site_start'),
(69, 1, '2019-06-10 16:32:51', 'setting_create', 'modContextSetting', 'site_url'),
(70, 1, '2019-06-10 16:33:41', 'setting_create', 'modContextSetting', 'error_page'),
(71, 1, '2019-06-10 16:34:23', 'setting_create', 'modContextSetting', 'locale'),
(72, 1, '2019-06-10 16:35:15', 'setting_create', 'modContextSetting', 'site_name'),
(73, 1, '2019-06-10 16:35:31', 'context_update', 'modContext', 'ua'),
(74, 1, '2019-06-10 16:36:14', 'setting_create', 'modContextSetting', 'base_url'),
(75, 1, '2019-06-10 16:36:55', 'setting_create', 'modContextSetting', 'cultureKey'),
(76, 1, '2019-06-10 16:37:32', 'setting_create', 'modContextSetting', 'site_start'),
(77, 1, '2019-06-10 16:38:19', 'setting_create', 'modContextSetting', 'site_url'),
(78, 1, '2019-06-10 16:38:48', 'setting_create', 'modContextSetting', 'error_page'),
(79, 1, '2019-06-10 16:39:22', 'setting_create', 'modContextSetting', 'locale'),
(80, 1, '2019-06-10 16:40:05', 'setting_create', 'modContextSetting', 'site_name'),
(81, 1, '2019-06-10 16:40:08', 'context_update', 'modContext', 'en'),
(82, 1, '2019-06-10 16:41:58', 'setting_update', 'modContextSetting', 'locale'),
(83, 1, '2019-06-10 16:42:01', 'context_update', 'modContext', 'ua'),
(84, 1, '2019-06-10 16:50:59', 'plugin_create', 'modPlugin', '2'),
(85, 1, '2019-06-10 16:51:13', 'plugin_update', 'modPlugin', '2'),
(86, 1, '2019-06-10 16:51:13', 'propertyset_update_from_element', 'modPropertySet', 'modPlugin 2 Default'),
(87, 1, '2019-06-10 16:56:54', 'resource_update', 'modResource', '1'),
(88, 1, '2019-06-10 16:57:24', 'template_update', 'modTemplate', '1'),
(89, 1, '2019-06-10 16:57:25', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 1 Default'),
(90, 1, '2019-06-10 16:57:34', 'template_update', 'modTemplate', '1'),
(91, 1, '2019-06-10 16:57:34', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 1 Default'),
(92, 1, '2019-06-10 17:03:57', 'template_update', 'modTemplate', '1'),
(93, 1, '2019-06-10 17:03:57', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 1 Default'),
(94, 1, '2019-06-10 17:05:29', 'template_update', 'modTemplate', '1'),
(95, 1, '2019-06-10 17:05:29', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 1 Default'),
(96, 1, '2019-06-10 17:05:49', 'template_update', 'modTemplate', '1'),
(97, 1, '2019-06-10 17:05:49', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 1 Default'),
(98, 1, '2019-06-10 17:09:36', 'clear_cache', '', 'mgr'),
(99, 1, '2019-06-10 17:13:44', 'template_update', 'modTemplate', '1'),
(100, 1, '2019-06-10 17:13:44', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 1 Default'),
(101, 1, '2019-06-10 17:15:32', 'template_update', 'modTemplate', '1'),
(102, 1, '2019-06-10 17:15:32', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 1 Default'),
(103, 1, '2019-06-10 17:15:40', 'template_update', 'modTemplate', '1'),
(104, 1, '2019-06-10 17:15:41', 'propertyset_update_from_element', 'modPropertySet', 'modTemplate 1 Default'),
(105, 1, '2019-06-10 17:15:45', 'clear_cache', '', 'mgr'),
(106, 1, '2019-06-10 17:18:08', 'clear_cache', '', 'mgr'),
(107, 1, '2019-06-10 17:21:49', 'chunk_create', 'modChunk', '1'),
(108, 1, '2019-06-10 17:22:14', 'chunk_create', 'modChunk', '2'),
(109, 1, '2019-06-10 17:22:37', 'chunk_create', 'modChunk', '3'),
(110, 1, '2019-06-10 17:23:20', 'chunk_create', 'modChunk', '4'),
(111, 1, '2019-06-10 17:23:28', 'clear_cache', '', 'mgr'),
(112, 1, '2019-06-10 17:26:42', 'resource_update', 'modResource', '1'),
(113, 1, '2019-06-10 17:27:33', 'clear_cache', '', 'mgr'),
(114, 1, '2019-06-10 17:27:34', 'resource_update', 'modResource', '1'),
(115, 1, '2019-06-10 17:27:37', 'clear_cache', '', 'mgr'),
(116, 1, '2019-06-10 17:28:07', 'resource_duplicate', 'modResource', '2'),
(117, 1, '2019-06-10 17:29:55', 'resource_update', 'modResource', '2'),
(118, 1, '2019-06-10 17:30:58', 'plugin_update', 'modPlugin', '2'),
(119, 1, '2019-06-10 17:30:58', 'propertyset_update_from_element', 'modPropertySet', 'modPlugin 2 Default'),
(120, 1, '2019-06-10 17:31:03', 'clear_cache', '', 'mgr'),
(121, 1, '2019-06-10 17:31:54', 'setting_update', 'modContextSetting', 'site_start'),
(122, 1, '2019-06-10 17:31:58', 'context_update', 'modContext', 'ua'),
(123, 1, '2019-06-10 17:32:10', 'clear_cache', '', 'mgr'),
(124, 1, '2019-06-10 17:32:45', 'resource_duplicate', 'modResource', '3'),
(125, 1, '2019-06-10 17:33:38', 'resource_update', 'modResource', '3'),
(126, 1, '2019-06-10 17:33:54', 'setting_update', 'modContextSetting', 'site_start'),
(127, 1, '2019-06-10 17:33:56', 'context_update', 'modContext', 'en'),
(128, 1, '2019-06-10 17:33:59', 'clear_cache', '', 'mgr'),
(129, 1, '2019-06-10 17:43:58', 'clear_cache', '', 'mgr');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_media_sources`
--

CREATE TABLE `modx_media_sources` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text,
  `class_key` varchar(100) NOT NULL DEFAULT 'sources.modFileMediaSource',
  `properties` mediumtext,
  `is_stream` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `modx_media_sources`
--

INSERT INTO `modx_media_sources` (`id`, `name`, `description`, `class_key`, `properties`, `is_stream`) VALUES
(1, 'Filesystem', '', 'sources.modFileMediaSource', 'a:0:{}', 1),
(2, 'Uploads', '', 'sources.modFileMediaSource', 'a:2:{s:8:\"basePath\";a:6:{s:4:\"name\";s:8:\"basePath\";s:4:\"desc\";s:23:\"prop_file.basePath_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:15:\"assets/uploads/\";s:7:\"lexicon\";s:11:\"core:source\";}s:7:\"baseUrl\";a:6:{s:4:\"name\";s:7:\"baseUrl\";s:4:\"desc\";s:22:\"prop_file.baseUrl_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:15:\"assets/uploads/\";s:7:\"lexicon\";s:11:\"core:source\";}}', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_media_sources_contexts`
--

CREATE TABLE `modx_media_sources_contexts` (
  `source` int(11) NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT 'web'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_media_sources_elements`
--

CREATE TABLE `modx_media_sources_elements` (
  `source` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `object_class` varchar(100) NOT NULL DEFAULT 'modTemplateVar',
  `object` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT 'web'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_membergroup_names`
--

CREATE TABLE `modx_membergroup_names` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text,
  `parent` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rank` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `dashboard` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `modx_membergroup_names`
--

INSERT INTO `modx_membergroup_names` (`id`, `name`, `description`, `parent`, `rank`, `dashboard`) VALUES
(1, 'Administrator', NULL, 0, 0, 1),
(2, 'manager', '', 0, 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_member_groups`
--

CREATE TABLE `modx_member_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_group` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `member` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `role` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `rank` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `modx_member_groups`
--

INSERT INTO `modx_member_groups` (`id`, `user_group`, `member`, `role`, `rank`) VALUES
(1, 1, 1, 2, 0),
(2, 2, 2, 3, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_menus`
--

CREATE TABLE `modx_menus` (
  `text` varchar(191) NOT NULL DEFAULT '',
  `parent` varchar(191) NOT NULL DEFAULT '',
  `action` varchar(191) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT '',
  `icon` varchar(191) NOT NULL DEFAULT '',
  `menuindex` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `handler` text NOT NULL,
  `permissions` text NOT NULL,
  `namespace` varchar(100) NOT NULL DEFAULT 'core'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `modx_menus`
--

INSERT INTO `modx_menus` (`text`, `parent`, `action`, `description`, `icon`, `menuindex`, `params`, `handler`, `permissions`, `namespace`) VALUES
('about', 'usernav', 'help', '', '<i class=\"icon-question-circle icon icon-large\"></i>', 7, '', '', 'help', 'core'),
('acls', 'admin', 'security/permission', 'acls_desc', '', 5, '', '', 'access_permissions', 'core'),
('admin', 'usernav', '', '', '<i class=\"icon-gear icon icon-large\"></i>', 6, '', '', 'settings', 'core'),
('babel', 'components', 'index', 'babel.desc', 'images/icons/plugin.gif', 0, '', '', '', 'babel'),
('bespoke_manager', 'admin', 'security/forms', 'bespoke_manager_desc', '', 1, '', '', 'customize_forms', 'core'),
('components', 'topnav', '', '', '', 2, '', '', 'components', 'core'),
('content_types', 'site', 'system/contenttype', 'content_types_desc', '', 8, '', '', 'content_types', 'core'),
('contexts', 'admin', 'context', 'contexts_desc', '', 3, '', '', 'view_context', 'core'),
('dashboards', 'admin', 'system/dashboards', 'dashboards_desc', '', 2, '', '', 'dashboards', 'core'),
('edit_menu', 'admin', 'system/action', 'edit_menu_desc', '', 4, '', '', 'actions', 'core'),
('eventlog_viewer', 'reports', 'system/event', 'eventlog_viewer_desc', '', 2, '', '', 'view_eventlog', 'core'),
('file_browser', 'media', 'media/browser', 'file_browser_desc', '', 0, '', '', 'file_manager', 'core'),
('flush_access', 'manage', '', 'flush_access_desc', '', 3, '', 'MODx.msg.confirm({\n    title: _(\'flush_access\')\n    ,text: _(\'flush_access_confirm\')\n    ,url: MODx.config.connector_url\n    ,params: {\n        action: \'security/access/flush\'\n    }\n    ,listeners: {\n        \'success\': {fn:function() { location.href = \'./\'; },scope:this},\n        \'failure\': {fn:function(response) { Ext.MessageBox.alert(\'failure\', response.responseText); },scope:this},\n    }\n});', 'access_permissions', 'core'),
('flush_sessions', 'manage', '', 'flush_sessions_desc', '', 4, '', 'MODx.msg.confirm({\n    title: _(\'flush_sessions\')\n    ,text: _(\'flush_sessions_confirm\')\n    ,url: MODx.config.connector_url\n    ,params: {\n        action: \'security/flush\'\n    }\n    ,listeners: {\n        \'success\': {fn:function() { location.href = \'./\'; },scope:this}\n    }\n});', 'flush_sessions', 'core'),
('import_resources', 'site', 'system/import', 'import_resources_desc', '', 6, '', '', 'import_static', 'core'),
('import_site', 'site', 'system/import/html', 'import_site_desc', '', 5, '', '', 'import_static', 'core'),
('installer', 'components', 'workspaces', 'installer_desc', '', 0, '', '', 'packages', 'core'),
('lexicon_management', 'admin', 'workspaces/lexicon', 'lexicon_management_desc', '', 7, '', '', 'lexicons', 'core'),
('logout', 'user', 'security/logout', 'logout_desc', '', 2, '', 'MODx.logout(); return false;', 'logout', 'core'),
('manage', 'topnav', '', '', '', 3, '', '', 'menu_tools', 'core'),
('media', 'topnav', '', 'media_desc', '', 1, '', '', 'file_manager', 'core'),
('messages', 'user', 'security/message', 'messages_desc', '', 1, '', '', 'messages', 'core'),
('namespaces', 'admin', 'workspaces/namespace', 'namespaces_desc', '', 8, '', '', 'namespaces', 'core'),
('new_resource', 'site', 'resource/create', 'new_resource_desc', '', 0, '', '', 'new_document', 'core'),
('preview', 'site', '', 'preview_desc', '', 4, '', 'MODx.preview(); return false;', '', 'core'),
('profile', 'user', 'security/profile', 'profile_desc', '', 0, '', '', 'change_profile', 'core'),
('propertysets', 'admin', 'element/propertyset', 'propertysets_desc', '', 6, '', '', 'property_sets', 'core'),
('refreshuris', 'refresh_site', '', 'refreshuris_desc', '', 0, '', 'MODx.refreshURIs(); return false;', 'empty_cache', 'core'),
('refresh_site', 'manage', '', 'refresh_site_desc', '', 1, '', 'MODx.clearCache(); return false;', 'empty_cache', 'core'),
('remove_locks', 'manage', '', 'remove_locks_desc', '', 2, '', 'MODx.removeLocks();return false;', 'remove_locks', 'core'),
('reports', 'manage', '', 'reports_desc', '', 5, '', '', 'menu_reports', 'core'),
('resource_groups', 'site', 'security/resourcegroup', 'resource_groups_desc', '', 7, '', '', 'access_permissions', 'core'),
('site', 'topnav', '', '', '', 0, '', '', 'menu_site', 'core'),
('site_schedule', 'reports', 'resource/site_schedule', 'site_schedule_desc', '', 0, '', '', 'view_document', 'core'),
('sources', 'media', 'source', 'sources_desc', '', 1, '', '', 'sources', 'core'),
('system_settings', 'admin', 'system/settings', 'system_settings_desc', '', 0, '', '', 'settings', 'core'),
('topnav', '', '', 'topnav_desc', '', 0, '', '', '', 'core'),
('user', 'usernav', '', '', '<span id=\"user-avatar\">{$userImage}</span> <span id=\"user-username\">{$username}</span>', 5, '', '', 'menu_user', 'core'),
('usernav', '', '', 'usernav_desc', '', 0, '', '', '', 'core'),
('users', 'manage', 'security/user', 'user_management_desc', '', 0, '', '', 'view_user', 'core'),
('view_logging', 'reports', 'system/logs', 'view_logging_desc', '', 1, '', '', 'logs', 'core'),
('view_sysinfo', 'reports', 'system/info', 'view_sysinfo_desc', '', 3, '', '', 'view_sysinfo', 'core');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_namespaces`
--

CREATE TABLE `modx_namespaces` (
  `name` varchar(40) NOT NULL DEFAULT '',
  `path` text,
  `assets_path` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `modx_namespaces`
--

INSERT INTO `modx_namespaces` (`name`, `path`, `assets_path`) VALUES
('babel', '{core_path}components/babel/', '{assets_path}components/babel/'),
('core', '{core_path}', '{assets_path}');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_property_set`
--

CREATE TABLE `modx_property_set` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `category` int(10) NOT NULL DEFAULT '0',
  `description` varchar(191) NOT NULL DEFAULT '',
  `properties` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_register_messages`
--

CREATE TABLE `modx_register_messages` (
  `topic` int(10) UNSIGNED NOT NULL,
  `id` varchar(191) NOT NULL,
  `created` datetime NOT NULL,
  `valid` datetime NOT NULL,
  `accessed` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `accesses` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `expires` int(20) NOT NULL DEFAULT '0',
  `payload` mediumtext NOT NULL,
  `kill` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_register_queues`
--

CREATE TABLE `modx_register_queues` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `options` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `modx_register_queues`
--

INSERT INTO `modx_register_queues` (`id`, `name`, `options`) VALUES
(1, 'locks', 'a:1:{s:9:\"directory\";s:5:\"locks\";}');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_register_topics`
--

CREATE TABLE `modx_register_topics` (
  `id` int(10) UNSIGNED NOT NULL,
  `queue` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `options` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `modx_register_topics`
--

INSERT INTO `modx_register_topics` (`id`, `queue`, `name`, `created`, `updated`, `options`) VALUES
(1, 1, '/resource/', '2019-06-10 16:55:18', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_session`
--

CREATE TABLE `modx_session` (
  `id` varchar(191) NOT NULL DEFAULT '',
  `access` int(20) UNSIGNED NOT NULL,
  `data` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `modx_session`
--

INSERT INTO `modx_session` (`id`, `access`, `data`) VALUES
('25622vr8s164lpneeblnv3kvk6', 1559826663, 'modx.user.contextTokens|a:1:{s:3:\"mgr\";i:1;}modx.mgr.user.token|s:52:\"modx5cf910a84cb1a3.22754682_15cf910e7b7e1e9.65963526\";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}'),
('6tpfeq7bnfg9j8t28vtotrsfu2', 1560177166, 'modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.0.attributes|a:2:{s:3:\"web\";a:5:{s:16:\"modAccessContext\";a:3:{s:2:\"en\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}s:2:\"ua\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:1:{i:1;a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:3:{s:4:\"load\";b:1;s:4:\"list\";b:1;s:4:\"view\";b:1;}}}}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}s:18:\"modAccessNamespace\";a:0:{}}s:3:\"mgr\";a:5:{s:16:\"modAccessContext\";a:3:{s:2:\"en\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}s:2:\"ua\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}s:18:\"modAccessNamespace\";a:0:{}}}modx.user.contextTokens|a:1:{s:3:\"mgr\";i:1;}modx.mgr.user.token|s:52:\"modx5cf910a84cb1a3.22754682_15cfe59165e4b46.29470947\";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}newResourceTokens|a:6:{i:0;s:23:\"5cfe61475db349.91943883\";i:1;s:23:\"5cfe6350c30c36.61648997\";i:2;s:23:\"5cfe68683d6876.01666214\";i:3;s:23:\"5cfe68f890a833.97876273\";i:4;s:23:\"5cfe6a051e6903.77753053\";i:5;s:23:\"5cfe6a0e9deb73.11112008\";}'),
('im22d1rjuh5nflasj6eoicimb5', 1559832562, 'modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:5:{s:16:\"modAccessContext\";a:3:{s:2:\"en\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}s:2:\"ua\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}s:18:\"modAccessNamespace\";a:0:{}}}modx.user.contextTokens|a:0:{}');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_content`
--

CREATE TABLE `modx_site_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'document',
  `contentType` varchar(50) NOT NULL DEFAULT 'text/html',
  `pagetitle` varchar(191) NOT NULL DEFAULT '',
  `longtitle` varchar(191) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `alias` varchar(191) DEFAULT '',
  `alias_visible` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `link_attributes` varchar(191) NOT NULL DEFAULT '',
  `published` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `pub_date` int(20) NOT NULL DEFAULT '0',
  `unpub_date` int(20) NOT NULL DEFAULT '0',
  `parent` int(10) NOT NULL DEFAULT '0',
  `isfolder` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `introtext` text,
  `content` mediumtext,
  `richtext` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `template` int(10) NOT NULL DEFAULT '0',
  `menuindex` int(10) NOT NULL DEFAULT '0',
  `searchable` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `cacheable` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `createdby` int(10) NOT NULL DEFAULT '0',
  `createdon` int(20) NOT NULL DEFAULT '0',
  `editedby` int(10) NOT NULL DEFAULT '0',
  `editedon` int(20) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `deletedon` int(20) NOT NULL DEFAULT '0',
  `deletedby` int(10) NOT NULL DEFAULT '0',
  `publishedon` int(20) NOT NULL DEFAULT '0',
  `publishedby` int(10) NOT NULL DEFAULT '0',
  `menutitle` varchar(191) NOT NULL DEFAULT '',
  `donthit` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `privateweb` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `privatemgr` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `content_dispo` tinyint(1) NOT NULL DEFAULT '0',
  `hidemenu` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `class_key` varchar(100) NOT NULL DEFAULT 'modDocument',
  `context_key` varchar(100) NOT NULL DEFAULT 'web',
  `content_type` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `uri` text,
  `uri_override` tinyint(1) NOT NULL DEFAULT '0',
  `hide_children_in_tree` tinyint(1) NOT NULL DEFAULT '0',
  `show_in_tree` tinyint(1) NOT NULL DEFAULT '1',
  `properties` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `modx_site_content`
--

INSERT INTO `modx_site_content` (`id`, `type`, `contentType`, `pagetitle`, `longtitle`, `description`, `alias`, `alias_visible`, `link_attributes`, `published`, `pub_date`, `unpub_date`, `parent`, `isfolder`, `introtext`, `content`, `richtext`, `template`, `menuindex`, `searchable`, `cacheable`, `createdby`, `createdon`, `editedby`, `editedon`, `deleted`, `deletedon`, `deletedby`, `publishedon`, `publishedby`, `menutitle`, `donthit`, `privateweb`, `privatemgr`, `content_dispo`, `hidemenu`, `class_key`, `context_key`, `content_type`, `uri`, `uri_override`, `hide_children_in_tree`, `show_in_tree`, `properties`) VALUES
(1, 'document', 'text/html', 'Главная', 'Поздравляем!', '', 'index', 1, '', 1, 0, 0, 0, 0, '', 'В чем начало травы. Переехал после сбора. Море привет клеть человек пополнение место разделенное подобие трава одна крылатая движущаяся пила, может закончиться.', 1, 1, 0, 1, 1, 1, 1559826644, 1, 1560176854, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, 'index', 0, 0, 1, NULL),
(2, 'document', 'text/html', 'Головна', 'Вiтаємо!', '', 'index', 1, '', 1, 0, 0, 0, 0, '', 'Звідки починається трава. Переїхав після збору. Море привіт клітини птиці поповнюють місцем поділеної схожості трави однією двома лнетн крилатими рухомими пилами, можуть закінчитися.', 1, 1, 0, 1, 1, 1, 1560176887, 1, 1560176995, 0, 0, 0, 1560176995, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'ua', 1, 'index', 0, 0, 1, NULL),
(3, 'document', 'text/html', 'Home', 'Welcome!', '', 'index', 1, '', 1, 0, 0, 0, 0, '', 'Wherein herb beginning. Moved after gathering. Sea hi crate fowl man replenish place divided likeness herb one two lnetn Winged moving saw, may over.', 1, 1, 0, 1, 1, 1, 1560177165, 1, 1560177218, 0, 0, 0, 1560177218, 1, '', 0, 0, 0, 0, 0, 'modDocument', 'en', 1, 'index', 0, 0, 1, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_htmlsnippets`
--

CREATE TABLE `modx_site_htmlsnippets` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT 'Chunk',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0',
  `snippet` mediumtext,
  `locked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `properties` text,
  `static` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `static_file` varchar(191) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `modx_site_htmlsnippets`
--

INSERT INTO `modx_site_htmlsnippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `static`, `static_file`) VALUES
(1, 1, 0, 'meta', '', 0, 2, 0, '<!DOCTYPE html>\r\n<html lang=\"en\">\r\n<head>\r\n	<!-- Required Meta Tags -->\r\n	<meta charset=\"UTF-8\">\r\n	<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n	<meta http-equiv=\"X-UA-Compatible\" content=\"ie=edge\">\r\n\r\n	<!-- Page Title -->\r\n	<title>Comport</title>\r\n\r\n	<!-- Favicon -->\r\n	<link rel=\"shortcut icon\" href=\"assets/design/images/logo/favicon.png\" type=\"image/x-icon\">\r\n\r\n	<!-- CSS Files -->\r\n	<link rel=\"stylesheet\" href=\"assets/design/css/animate-3.7.0.css\">\r\n	<link rel=\"stylesheet\" href=\"assets/design/css/font-awesome-4.7.0.min.css\">\r\n	<link rel=\"stylesheet\" href=\"assets/design/fonts/flat-icon/flaticon.css\">\r\n	<link rel=\"stylesheet\" href=\"assets/design/css/bootstrap-4.1.3.min.css\">\r\n	<link rel=\"stylesheet\" href=\"assets/design/css/owl-carousel.min.css\">\r\n	<link rel=\"stylesheet\" href=\"assets/design/css/nice-select.css\">\r\n	<link rel=\"stylesheet\" href=\"assets/design/css/style.css\">\r\n</head>', 0, 'a:0:{}', 1, 'assets/custom/chunks/base/meta.tpl'),
(2, 1, 0, 'head', '', 0, 2, 0, '<body>\r\n	<!-- Preloader Starts -->\r\n	<div class=\"preloader\">\r\n		<div class=\"spinner\"></div>\r\n	</div>\r\n	<!-- Preloader End -->\r\n\r\n	<!-- Header Area Starts -->\r\n	<header class=\"header-area main-header\">\r\n		<div class=\"container\">\r\n			<div class=\"row\">\r\n				<div class=\"col-lg-2\">\r\n					<div class=\"logo-area\">\r\n						<a href=\"index.html\"><img src=\"assets/design/images/logo.png\" alt=\"logo\"></a>\r\n					</div>\r\n				</div>\r\n				<div class=\"col-lg-10\">\r\n					<div class=\"custom-navbar\">\r\n						<span></span>\r\n						<span></span>\r\n						<span></span>\r\n					</div>  \r\n					<div class=\"main-menu\">\r\n						<ul>\r\n							<li class=\"active\"><a href=\"index.html\">home</a></li>\r\n							<li><a href=\"about.html\">about us</a></li>\r\n							<li><a href=\"job-category.html\">category</a></li>\r\n							<li><a href=\"#\">blog</a>\r\n								<ul class=\"sub-menu\">\r\n									<li><a href=\"blog-home.html\">Blog Home</a></li>\r\n									<li><a href=\"blog-details.html\">Blog Details</a></li>\r\n								</ul>\r\n							</li>\r\n							<li><a href=\"contact-us.html\">contact</a></li>\r\n							<li><a href=\"#\">pages</a>\r\n								<ul class=\"sub-menu\">\r\n									<li><a href=\"job-search.html\">Job Search</a></li>\r\n									<li><a href=\"job-single.html\">Job Single</a></li>\r\n									<li><a href=\"pricing-plan.html\">Pricing Plan</a></li>\r\n									<li><a href=\"elements.html\">Elements</a></li>\r\n								</ul>\r\n							</li>\r\n							<li class=\"menu-btn\">\r\n								<a href=\"#\" class=\"login\">log in</a>\r\n								<a href=\"#\" class=\"template-btn\">sign up</a>\r\n							</li>\r\n						</ul>\r\n					</div>\r\n				</div>\r\n			</div>\r\n		</div>\r\n	</header>\r\n	<!-- Header Area End -->', 0, 'a:0:{}', 1, 'assets/custom/chunks/base/head.tpl'),
(3, 1, 0, 'footer', '', 0, 2, 0, '<!-- Footer Area Starts -->\r\n<footer class=\"footer-area section-padding\">\r\n <div class=\"footer-widget\">\r\n  <div class=\"container\">\r\n   <div class=\"row\">\r\n    <div class=\"col-xl-2 col-lg-3\">\r\n     <div class=\"single-widget-home mb-5 mb-lg-0\">\r\n      <h3 class=\"mb-4\">top products</h3>\r\n      <ul>\r\n       <li class=\"mb-2\"><a href=\"#\">managed website</a></li>\r\n       <li class=\"mb-2\"><a href=\"#\">managed reputation</a></li>\r\n       <li class=\"mb-2\"><a href=\"#\">power tools</a></li>\r\n       <li><a href=\"#\">marketing service</a></li>\r\n     </ul>\r\n   </div>\r\n </div>\r\n <div class=\"col-xl-5 offset-xl-1 col-lg-6\">\r\n   <div class=\"single-widget-home mb-5 mb-lg-0\">\r\n    <h3 class=\"mb-4\">newsletter</h3>\r\n    <p class=\"mb-4\">You can trust us. we only send promo offers, not a single.</p>  \r\n    <form action=\"#\">\r\n     <input type=\"email\" placeholder=\"Your email here\" onfocus=\"this.placeholder = \'\'\" onblur=\"this.placeholder = \'Your email here\'\" required>\r\n     <button type=\"submit\" class=\"template-btn\">subscribe now</button>\r\n   </form>\r\n </div>\r\n</div>\r\n<div class=\"col-xl-3 offset-xl-1 col-lg-3\">\r\n <div class=\"single-widge-home\">\r\n  <h3 class=\"mb-4\">instagram feed</h3>\r\n  <div class=\"feed\">\r\n   <img src=\"assets/design/images/feed1.jpg\" alt=\"feed\">\r\n   <img src=\"assets/design/images/feed2.jpg\" alt=\"feed\">\r\n   <img src=\"assets/design/images/feed3.jpg\" alt=\"feed\">\r\n   <img src=\"assets/design/images/feed4.jpg\" alt=\"feed\">\r\n   <img src=\"assets/design/images/feed5.jpg\" alt=\"feed\">\r\n   <img src=\"assets/design/images/feed6.jpg\" alt=\"feed\">\r\n   <img src=\"assets/design/images/feed7.jpg\" alt=\"feed\">\r\n   <img src=\"assets/design/images/feed8.jpg\" alt=\"feed\">\r\n </div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"footer-copyright\">\r\n  <div class=\"container\">\r\n   <div class=\"row\">\r\n    <div class=\"col-lg-8 col-md-6\">\r\n     <span><!-- Link back to Colorlib can\'t be removed. Template is licensed under CC BY 3.0. -->\r\n      Copyright &copy;<script>document.write(new Date().getFullYear());</script> [[%reserved? &topic=`translate` &namespace=`babel`]] | This template is made with <i class=\"fa fa-heart-o\" aria-hidden=\"true\"></i> by <a href=\"https://colorlib.com\" target=\"_blank\">Colorlib</a>\r\n      <!-- Link back to Colorlib can\'t be removed. Template is licensed under CC BY 3.0. -->\r\n    </span>\r\n  </div>\r\n  <div class=\"col-lg-4 col-md-6\">\r\n   <div class=\"social-icons\">\r\n    <ul>\r\n     <li><a href=\"#\"><i class=\"fa fa-facebook\"></i></a></li>\r\n     <li><a href=\"#\"><i class=\"fa fa-twitter\"></i></a></li>\r\n     <li><a href=\"#\"><i class=\"fa fa-dribbble\"></i></a></li>\r\n     <li><a href=\"#\"><i class=\"fa fa-behance\"></i></a></li>\r\n   </ul>\r\n </div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</footer>\r\n<!-- Footer Area End -->\r\n\r\n\r\n<!-- Javascript -->\r\n<script src=\"assets/design/js/vendor/jquery-2.2.4.min.js\"></script>\r\n<script src=\"assets/design/js/vendor/bootstrap-4.1.3.min.js\"></script>\r\n<script src=\"assets/design/js/vendor/wow.min.js\"></script>\r\n<script src=\"assets/design/js/vendor/owl-carousel.min.js\"></script>\r\n<script src=\"assets/design/js/vendor/jquery.nice-select.min.js\"></script>\r\n<script src=\"assets/design/js/vendor/ion.rangeSlider.js\"></script>\r\n<script src=\"assets/design/js/main.js\"></script>\r\n</body>\r\n</html>', 0, 'a:0:{}', 1, 'assets/custom/chunks/base/footer.tpl'),
(4, 1, 0, 'homeContent', '', 0, 4, 0, '\r\n<!-- Banner Area Starts -->\r\n<section class=\"banner-area\">\r\n	<div class=\"container-fluid\">\r\n		<div class=\"row\">\r\n			<div class=\"col-lg-6 px-0\">\r\n				<div class=\"banner-bg\"></div>\r\n			</div>\r\n			<div class=\"col-lg-6 align-self-center\">\r\n				<div class=\"banner-text\">\r\n					<h1>find your dream <span>job</span> with comport</h1>\r\n					<p class=\"py-3\">[[*content]]</p>\r\n					<a href=\"#\" class=\"secondary-btn\">explore now<span class=\"flaticon-next\"></span></a>\r\n				</div>\r\n			</div>\r\n		</div>\r\n	</div>\r\n</section>\r\n<!-- Banner Area End -->\r\n\r\n<!-- Search Area Starts -->\r\n<div class=\"search-area\">\r\n	<div class=\"search-bg\">\r\n		<div class=\"container\">\r\n			<div class=\"row\">\r\n				<div class=\"col-lg-12\">\r\n					<form action=\"#\" class=\"d-md-flex justify-content-between\">\r\n						<select>\r\n							<option value=\"1\">All Category</option>\r\n							<option value=\"2\">Part Time</option>\r\n							<option value=\"3\">Full Time</option>\r\n							<option value=\"4\">Remote</option>\r\n							<option value=\"5\">Office Job</option>\r\n						</select>\r\n						<select>\r\n							<option value=\"1\">Select Location</option>\r\n							<option value=\"2\">Dhaka</option>\r\n							<option value=\"3\">Rajshahi</option>\r\n							<option value=\"4\">Barishal</option>\r\n							<option value=\"5\">Noakhali</option>\r\n						</select>\r\n						<input type=\"text\" placeholder=\"Search Keyword\" onfocus=\"this.placeholder = \'\'\" onblur=\"this.placeholder = \'Search Keyword\'\" required>\r\n						<button type=\"submit\" class=\"template-btn\">find job</button>\r\n					</form>\r\n				</div>\r\n			</div>\r\n		</div>\r\n	</div>\r\n</div>\r\n<!-- Search Area End -->\r\n\r\n<!-- Feature Area Starts -->\r\n<section class=\"feature-area section-padding2\">\r\n	<div class=\"container\">\r\n		<div class=\"row\">\r\n			<div class=\"col-lg-4\">\r\n				<div class=\"single-feature mb-4 mb-lg-0\">\r\n					<h4>UX/UI Designer</h4>\r\n					<p class=\"py-3\">There spirit beginning bearing the open at own every give appear in third you sawe two boys</p>\r\n					<a href=\"#\" class=\"secondary-btn\">explore now<span class=\"flaticon-next\"></span></a>\r\n				</div>\r\n			</div>\r\n			<div class=\"col-lg-4\">\r\n				<div class=\"single-feature mb-4 mb-lg-0\">\r\n					<h4>web Designer</h4>\r\n					<p class=\"py-3\">There spirit beginning bearing the open at own every give appear in third you sawe two boys</p>\r\n					<a href=\"#\" class=\"secondary-btn\">explore now<span class=\"flaticon-next\"></span></a>\r\n				</div>\r\n			</div>\r\n			<div class=\"col-lg-4\">\r\n				<div class=\"single-feature\">\r\n					<h4>Accounting and Finance</h4>\r\n					<p class=\"py-3\">There spirit beginning bearing the open at own every give appear in third you sawe two boys</p>\r\n					<a href=\"#\" class=\"secondary-btn\">explore now<span class=\"flaticon-next\"></span></a>\r\n				</div>\r\n			</div>\r\n		</div>\r\n	</div>\r\n</section>\r\n<!-- Feature Area End -->\r\n\r\n<!-- Category Area Starts -->\r\n<section class=\"category-area section-padding\">\r\n	<div class=\"container\">\r\n		<div class=\"row\">\r\n			<div class=\"col-lg-12\">\r\n				<div class=\"section-top text-center\">\r\n					<h2>Find job by category</h2>\r\n					<p>Open lesser winged midst wherein may morning</p>\r\n				</div>\r\n			</div>\r\n		</div>\r\n		<div class=\"row\">\r\n			<div class=\"col-lg-3 col-md-6\">\r\n				<div class=\"single-category text-center mb-4\">\r\n					<img src=\"assets/design/images/cat1.png\" alt=\"category\">\r\n					<h4>accounting & Finance</h4>\r\n					<h5>250 open job</h5>\r\n				</div>\r\n			</div>\r\n			<div class=\"col-lg-3 col-md-6\">\r\n				<div class=\"single-category text-center mb-4\">\r\n					<img src=\"assets/design/images/cat2.png\" alt=\"category\">\r\n					<h4>production & operation</h4>\r\n					<h5>250 open job</h5>\r\n				</div>\r\n			</div>\r\n			<div class=\"col-lg-3 col-md-6\">\r\n				<div class=\"single-category text-center mb-4\">\r\n					<img src=\"assets/design/images/cat3.png\" alt=\"category\">\r\n					<h4>telecommunication</h4>\r\n					<h5>250 open job</h5>\r\n				</div>\r\n			</div>\r\n			<div class=\"col-lg-3 col-md-6\">\r\n				<div class=\"single-category text-center mb-4\">\r\n					<img src=\"assets/design/images/cat4.png\" alt=\"category\">\r\n					<h4>garments & textile</h4>\r\n					<h5>250 open job</h5>\r\n				</div>\r\n			</div>\r\n			<div class=\"col-lg-3 col-md-6\">\r\n				<div class=\"single-category text-center mb-4 mb-lg-0\">\r\n					<img src=\"assets/design/images/cat5.png\" alt=\"category\">\r\n					<h4>marketing and sales</h4>\r\n					<h5>250 open job</h5>\r\n				</div>\r\n			</div>\r\n			<div class=\"col-lg-3 col-md-6\">\r\n				<div class=\"single-category text-center mb-4 mb-lg-0\">\r\n					<img src=\"assets/design/images/cat6.png\" alt=\"category\">\r\n					<h4>engineer & architech</h4>\r\n					<h5>250 open job</h5>\r\n				</div>\r\n			</div>\r\n			<div class=\"col-lg-3 col-md-6\">\r\n				<div class=\"single-category text-center mb-4 mb-md-0\">\r\n					<img src=\"assets/design/images/cat7.png\" alt=\"category\">\r\n					<h4>design & crative</h4>\r\n					<h5>250 open job</h5>\r\n				</div>\r\n			</div>\r\n			<div class=\"col-lg-3 col-md-6\">\r\n				<div class=\"single-category text-center\">\r\n					<img src=\"assets/design/images/cat8.png\" alt=\"category\">\r\n					<h4>customer support</h4>\r\n					<h5>250 open job</h5>\r\n				</div>\r\n			</div>\r\n		</div>\r\n	</div>\r\n</section>\r\n<!-- Category Area End -->\r\n\r\n<!-- Jobs Area Starts -->\r\n<section class=\"jobs-area section-padding3\">\r\n	<div class=\"container\">\r\n		<div class=\"row\">\r\n			<div class=\"col-lg-12\">\r\n				<div class=\"jobs-title\">\r\n					<h2>Browse recent jobs</h2>\r\n				</div>\r\n			</div>\r\n		</div>\r\n		<div class=\"row\">\r\n			<div class=\"col-lg-12\">\r\n				<div class=\"jobs-tab tab-item\">\r\n					<ul class=\"nav nav-tabs\" id=\"myTab\" role=\"tablist\">\r\n						<li class=\"nav-item\">\r\n							<a class=\"nav-link active\" id=\"home-tab\" data-toggle=\"tab\" href=\"#recent\" role=\"tab\" aria-controls=\"home\" aria-selected=\"true\">recent</a>\r\n						</li>\r\n						<li class=\"nav-item\">\r\n							<a class=\"nav-link\" id=\"profile-tab\" data-toggle=\"tab\" href=\"#full-time\" role=\"tab\" aria-controls=\"profile\" aria-selected=\"false\">full time</a>\r\n						</li>\r\n						<li class=\"nav-item\">\r\n							<a class=\"nav-link\" id=\"contact-tab\" data-toggle=\"tab\" href=\"#part-time\" role=\"tab\" aria-controls=\"part-time\" aria-selected=\"false\">part time</a>\r\n						</li>\r\n						<li class=\"nav-item\">\r\n							<a class=\"nav-link\" id=\"contact-tab2\" data-toggle=\"tab\" href=\"#intern\" role=\"tab\" aria-controls=\"intern\" aria-selected=\"false\">intern</a>\r\n						</li>\r\n					</ul>\r\n				</div>\r\n			</div>\r\n		</div>\r\n		<div class=\"row\">\r\n			<div class=\"col-lg-12\">\r\n				<div class=\"tab-content\" id=\"myTabContent\">\r\n					<div class=\"tab-pane fade show active\" id=\"recent\" role=\"tabpanel\" aria-labelledby=\"home-tab\">\r\n						<div class=\"single-job mb-4 d-lg-flex justify-content-between\">\r\n							<div class=\"job-text\">\r\n								<h4>Assistant Executive - Production/ Quality Control</h4>\r\n								<ul class=\"mt-4\">\r\n									<li class=\"mb-3\"><h5><i class=\"fa fa-map-marker\"></i> new yourk, USA</h5></li>\r\n									<li class=\"mb-3\"><h5><i class=\"fa fa-pie-chart\"></i> Applied Chemistry & Chemical Engineering / Chemistry</h5></li>\r\n									<li><h5><i class=\"fa fa-clock-o\"></i> Deadline Deadline: Dec 11, 2018</h5></li>\r\n								</ul>\r\n							</div>\r\n							<div class=\"job-img align-self-center\">\r\n								<img src=\"assets/design/images/job1.png\" alt=\"job\">\r\n							</div>\r\n							<div class=\"job-btn align-self-center\">\r\n								<a href=\"#\" class=\"third-btn job-btn1\">full time</a>\r\n								<a href=\"#\" class=\"third-btn\">apply</a>\r\n							</div>\r\n						</div>\r\n					</div>\r\n					<div class=\"tab-pane fade\" id=\"full-time\" role=\"tabpanel\" aria-labelledby=\"profile-tab\">\r\n						<div class=\"single-job mb-4 d-lg-flex justify-content-between\">\r\n							<div class=\"job-text\">\r\n								<h4>Asst. Manager, Production (Woven Dyeing)</h4>\r\n								<ul class=\"mt-4\">\r\n									<li class=\"mb-3\"><h5><i class=\"fa fa-map-marker\"></i> new yourk, USA</h5></li>\r\n									<li class=\"mb-3\"><h5><i class=\"fa fa-pie-chart\"></i> Applied Chemistry & Chemical Engineering / Chemistry</h5></li>\r\n									<li><h5><i class=\"fa fa-clock-o\"></i> Deadline Deadline: Dec 11, 2018</h5></li>\r\n								</ul>\r\n							</div>\r\n							<div class=\"job-img align-self-center\">\r\n								<img src=\"assets/design/images/job2.png\" alt=\"job\">\r\n							</div>\r\n							<div class=\"job-btn align-self-center\">\r\n								<a href=\"#\" class=\"third-btn job-btn2\">full time</a>\r\n								<a href=\"#\" class=\"third-btn\">apply</a>\r\n							</div>\r\n						</div>\r\n					</div>\r\n					<div class=\"tab-pane fade\" id=\"part-time\" role=\"tabpanel\" aria-labelledby=\"contact-tab\">\r\n						<div class=\"single-job mb-4 d-lg-flex justify-content-between\">\r\n							<div class=\"job-text\">\r\n								<h4>Deputy Manager/ Assistant Manager - Footwear</h4>\r\n								<ul class=\"mt-4\">\r\n									<li class=\"mb-3\"><h5><i class=\"fa fa-map-marker\"></i> new yourk, USA</h5></li>\r\n									<li class=\"mb-3\"><h5><i class=\"fa fa-pie-chart\"></i> Applied Chemistry & Chemical Engineering / Chemistry</h5></li>\r\n									<li><h5><i class=\"fa fa-clock-o\"></i> Deadline Deadline: Dec 11, 2018</h5></li>\r\n								</ul>\r\n							</div>\r\n							<div class=\"job-img align-self-center\">\r\n								<img src=\"assets/design/images/job3.png\" alt=\"job\">\r\n							</div>\r\n							<div class=\"job-btn align-self-center\">\r\n								<a href=\"#\" class=\"third-btn job-btn3\">full time</a>\r\n								<a href=\"#\" class=\"third-btn\">apply</a>\r\n							</div>\r\n						</div>\r\n					</div>\r\n					<div class=\"tab-pane fade\" id=\"intern\" role=\"tabpanel\" aria-labelledby=\"contact-tab2s\">\r\n						<div class=\"single-job mb-4 d-lg-flex justify-content-between\">\r\n							<div class=\"job-text\">\r\n								<h4>R&D Manager (Technical Lab Department)</h4>\r\n								<ul class=\"mt-4\">\r\n									<li class=\"mb-3\"><h5><i class=\"fa fa-map-marker\"></i> new yourk, USA</h5></li>\r\n									<li class=\"mb-3\"><h5><i class=\"fa fa-pie-chart\"></i> Applied Chemistry & Chemical Engineering / Chemistry</h5></li>\r\n									<li><h5><i class=\"fa fa-clock-o\"></i> Deadline Deadline: Dec 11, 2018</h5></li>\r\n								</ul>\r\n							</div>\r\n							<div class=\"job-img align-self-center\">\r\n								<img src=\"assets/design/images/job4.png\" alt=\"job\">\r\n							</div>\r\n							<div class=\"job-btn align-self-center\">\r\n								<a href=\"#\" class=\"third-btn job-btn4\">full time</a>\r\n								<a href=\"#\" class=\"third-btn\">apply</a>\r\n							</div>\r\n						</div>\r\n					</div>\r\n				</div>\r\n                    <!-- <div class=\"single-job d-lg-flex justify-content-between\">\r\n                        <div class=\"job-text\">\r\n                            <h4>Manager/ Asst. Manager (Quality Assurance)</h4>\r\n                            <ul class=\"mt-4\">\r\n                                <li class=\"mb-3\"><h5><i class=\"fa fa-map-marker\"></i> new yourk, USA</h5></li>\r\n                                <li class=\"mb-3\"><h5><i class=\"fa fa-pie-chart\"></i> Applied Chemistry & Chemical Engineering / Chemistry</h5></li>\r\n                                <li><h5><i class=\"fa fa-clock-o\"></i> Deadline Deadline: Dec 11, 2018</h5></li>\r\n                            </ul>\r\n                        </div>\r\n                        <div class=\"job-img align-self-center\">\r\n                            <img src=\"assets/design/images/job5.png\" alt=\"job\">\r\n                        </div>\r\n                        <div class=\"job-btn align-self-center\">\r\n                            <a href=\"#\" class=\"third-btn job-btn2\">full time</a>\r\n                            <a href=\"#\" class=\"third-btn\">apply</a>\r\n                        </div>\r\n                    </div> -->\r\n                </div>\r\n            </div>\r\n            <div class=\"more-job-btn mt-5 text-center\">\r\n            	<a href=\"#\" class=\"template-btn\">more job post</a>\r\n            </div>\r\n        </div>\r\n    </section>\r\n    <!-- Jobs Area End -->\r\n\r\n    <!-- Newsletter Area Starts -->\r\n    <section class=\"newsletter-area section-padding\">\r\n    	<div class=\"container\">\r\n    		<div class=\"row\">\r\n    			<div class=\"col-lg-12\">\r\n    				<div class=\"section-top text-center\">\r\n    					<h2>Get job information daily</h2>\r\n    					<p>Subscribe to our newsletter and get a coupon code!</p>\r\n    				</div>\r\n    			</div>\r\n    		</div>\r\n    		<div class=\"row\">\r\n    			<div class=\"col-lg-12\">\r\n    				<form action=\"#\">\r\n    					<input type=\"email\" placeholder=\"Your email here\" onfocus=\"this.placeholder = \'\'\" onblur=\"this.placeholder = \'Your email here\'\" required>\r\n    					<button type=\"submit\" class=\"template-btn\">subscribe now</button>\r\n    				</form>\r\n    			</div>\r\n    		</div>\r\n    	</div>\r\n    </section>\r\n    <!-- Newsletter Area End -->\r\n\r\n    <!-- Employee Area Starts -->\r\n    <section class=\"employee-area section-padding\">\r\n    	<div class=\"container\">\r\n    		<div class=\"row\">\r\n    			<div class=\"col-lg-12\">\r\n    				<div class=\"section-top text-center\">\r\n    					<h2>Happy employee</h2>\r\n    					<p>Open lesser winged midst wherein may morning</p>\r\n    				</div>\r\n    			</div>\r\n    		</div>\r\n    		<div class=\"row\">\r\n    			<div class=\"col-lg-12\">\r\n    				<div class=\"employee-slider owl-carousel\">\r\n    					<div class=\"single-slide d-sm-flex\">\r\n    						<div class=\"slide-img employee1\">\r\n    							<div class=\"hover-state\">\r\n    								<div class=\"hover-text text-center\">\r\n    									<h3>david aron</h3>\r\n    									<h5>Facebook</h5>\r\n    								</div>\r\n    							</div>\r\n    						</div>\r\n    						<div class=\"slide-text align-self-center\">\r\n    							<i class=\"fa fa-quote-left\"></i>\r\n    							<p>Appear, called day. Sixth two after eve moved called winged very heaven two lights let all third gathered.</p>\r\n    						</div>\r\n    					</div>\r\n    					<div class=\"single-slide d-sm-flex\">\r\n    						<div class=\"slide-img employee2\">\r\n    							<div class=\"hover-state\">\r\n    								<div class=\"hover-text text-center\">\r\n    									<h3>david aron</h3>\r\n    									<h5>Twitter</h5>\r\n    								</div>\r\n    							</div>\r\n    						</div>\r\n    						<div class=\"slide-text align-self-center\">\r\n    							<i class=\"fa fa-quote-left\"></i>\r\n    							<p>Appear, called day. Sixth two after eve moved called winged very heaven two lights let all third gathered.</p>\r\n    						</div>\r\n    					</div>\r\n    				</div>\r\n    			</div>\r\n    		</div>\r\n    	</div>\r\n    </section>\r\n    <!-- Employee Area End -->\r\n\r\n    <!-- News Area Starts -->\r\n    <section id=\"blog\" class=\"news-area section-padding3\">\r\n    	<div class=\"container\">\r\n    		<div class=\"row\">\r\n    			<div class=\"col-lg-12\">\r\n    				<div class=\"section-top text-center\">\r\n    					<h2>Company latest news</h2>\r\n    					<p>Open lesser winged midst wherein may morning</p>\r\n    				</div>\r\n    			</div>\r\n    		</div>\r\n    		<div class=\"row\">\r\n    			<div class=\"col-lg-4 col-md-6\">\r\n    				<div class=\"single-news mb-5 mb-lg-0\">\r\n    					<div class=\"news-img news-img1\"></div>\r\n    					<div class=\"news-tag\">\r\n    						<ul class=\"my-4\">\r\n    							<li><h5><i class=\"fa fa-calendar-o\"></i> 20th sep, 2018</h5></li>\r\n    							<li class=\"separator mx-2\"><span></span></li>\r\n    							<li><h5><i class=\"fa fa-folder-open-o\"></i> company</h5></li>\r\n    						</ul>\r\n    					</div>\r\n    					<div class=\"news-title\">\r\n    						<h4><a href=\"#\">Lime recalls electric scooters over battery fire.</a></h4>\r\n    					</div>\r\n    				</div>\r\n    			</div>\r\n    			<div class=\"col-lg-4 col-md-6\">\r\n    				<div class=\"single-news mb-5 mb-lg-0\">\r\n    					<div class=\"news-img news-img2\"></div>\r\n    					<div class=\"news-tag\">\r\n    						<ul class=\"my-4\">\r\n    							<li><h5><i class=\"fa fa-calendar-o\"></i> 18th sep, 2018</h5></li>\r\n    							<li class=\"separator mx-2\"><span></span></li>\r\n    							<li><h5><i class=\"fa fa-folder-open-o\"></i> company</h5></li>\r\n    						</ul>\r\n    					</div>\r\n    					<div class=\"news-title\">\r\n    						<h4><a href=\"#\">Apple resorts to promo deals trade to boost</a></h4>\r\n    					</div>\r\n    				</div>\r\n    			</div>\r\n    			<div class=\"col-lg-4 col-md-6\">\r\n    				<div class=\"single-news\">\r\n    					<div class=\"news-img news-img3\"></div>\r\n    					<div class=\"news-tag\">\r\n    						<ul class=\"my-4\">\r\n    							<li><h5><i class=\"fa fa-calendar-o\"></i> 25th sep, 2018</h5></li>\r\n    							<li class=\"separator mx-2\"><span></span></li>\r\n    							<li><h5><i class=\"fa fa-folder-open-o\"></i> company</h5></li>\r\n    						</ul>\r\n    					</div>\r\n    					<div class=\"news-title\">\r\n    						<h4><a href=\"#\">Lime recalls electric scooters over battery fire.</a></h4>\r\n    					</div>\r\n    				</div>\r\n    			</div>\r\n    		</div>\r\n    	</div>\r\n    </section>\r\n    <!-- News Area End -->\r\n\r\n    <!-- Download Area Starts -->\r\n    <section class=\"download-area section-padding\">\r\n    	<div class=\"container-fluid\">\r\n    		<div class=\"row\">\r\n    			<div class=\"col-lg-6\">\r\n    				<div class=\"download-text\">\r\n    					<h2>Download the app your mobile today</h2>\r\n    					<p class=\"py-3\">Light earth also land can\'t. May you midst shall lights blessed in lights Have gathered image morning blessed grass him. Appear female rule all seas she\'d winged</p>\r\n    					<div class=\"download-button d-sm-flex flex-row justify-content-start\">\r\n    						<div class=\"download-btn mb-3 mb-sm-0 flex-row d-flex\">\r\n    							<i class=\"fa fa-apple\" aria-hidden=\"true\"></i>\r\n    							<a href=\"#\">\r\n    								<p>\r\n    									<span>Available</span> <br>\r\n    									on App Store\r\n    								</p>\r\n    							</a>\r\n    						</div>\r\n    						<div class=\"download-btn dark flex-row d-flex\">\r\n    							<i class=\"fa fa-android\" aria-hidden=\"true\"></i>\r\n    							<a href=\"#\">\r\n    								<p>\r\n    									<span>Available</span> <br>\r\n    									on Play Store\r\n    								</p>\r\n    							</a>\r\n    						</div>\r\n    					</div>\r\n    				</div>\r\n    			</div>\r\n    			<div class=\"col-lg-6 pr-0\">\r\n    				<div class=\"download-img\"></div>\r\n    			</div>\r\n    		</div>\r\n    	</div>\r\n    </section>\r\n    <!-- Download Area End -->', 0, 'a:0:{}', 1, 'assets/custom/chunks/content/homeContent.tpl');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_plugins`
--

CREATE TABLE `modx_site_plugins` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0',
  `plugincode` mediumtext NOT NULL,
  `locked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `properties` text,
  `disabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `moduleguid` varchar(32) NOT NULL DEFAULT '',
  `static` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `static_file` varchar(191) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `modx_site_plugins`
--

INSERT INTO `modx_site_plugins` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `plugincode`, `locked`, `properties`, `disabled`, `moduleguid`, `static`, `static_file`) VALUES
(1, 1, 0, 'lowercaseUrl', '', 0, 6, 0, '$eventName = $modx->event->name;\n\nswitch($eventName) {\n    case \'OnHandleRequest\':\n    if($modx->context->get(\'key\') != \"mgr\"){\n        if(isset($_GET[\'rewrite-strtolower-url\'])) {\n            $url = $_GET[\'rewrite-strtolower-url\'];\n            unset($_GET[\'rewrite-strtolower-url\']);\n            $params = http_build_query($_GET);\n            if(strlen($params)) {\n                $params = \'?\' . $params;\n            }\n            $modx->sendRedirect(\'http://\' . $_SERVER[\'HTTP_HOST\'] . \'/\' . strtolower($url) . $params, array(\'responseCode\' => \'HTTP/1.1 301 Moved Permanently\'));\n        }\n    }\n    break;\n}', 0, 'a:0:{}', 0, '', 1, 'assets/custom/plugins/lowercaseUrl.php'),
(2, 1, 0, 'babelHttpRequestHandler', '', 0, 6, 0, '$lngkey = substr($_SERVER[\'REQUEST_URI\'], 1, 2);\nif ($modx->context->get(\'key\') != \"mgr\"){\n	switch ($lngkey){\n		case \'en\':\n		setlocale(LC_ALL, \"en_US.UTF-8\");\n		$modx->switchContext(\'en\');\n		$modx->setOption(\'cultureKey\', \'en\');\n		break;\n\n		case \'ua\':\n		setlocale(LC_ALL, \"uk_UA.UTF-8\");\n		$modx->switchContext(\'ua\');\n		$modx->setOption(\'cultureKey\', \'ua\');\n		break;\n\n		default:\n		setlocale(LC_ALL, \"ru_RU.UTF-8\");\n		$modx->switchContext(\'web\');\n		$modx->setOption(\'cultureKey\', \'ru\');\n		break;\n	}\n}', 0, 'a:0:{}', 0, '', 1, 'assets/custom/plugins/babelHttpRequestHandler.php'),
(3, 0, 0, 'Babel', 'Links and synchronizes multilingual resources.', 0, 0, 0, '/**\n * Babel\n *\n * Copyright 2010 by Jakob Class <jakob.class@class-zec.de>\n *\n * This file is part of Babel.\n *\n * Babel is free software; you can redistribute it and/or modify it under the\n * terms of the GNU General Public License as published by the Free Software\n * Foundation; either version 2 of the License, or (at your option) any later\n * version.\n *\n * Babel is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * Babel; if not, write to the Free Software Foundation, Inc., 59 Temple Place,\n * Suite 330, Boston, MA 02111-1307 USA\n *\n * @package babel\n */\n/**\n * Babel Plugin to link and synchronize multilingual resources\n *\n * Based on ideas of Sylvain Aerni <enzyms@gmail.com>\n *\n * Events:\n * OnDocFormPrerender,OnDocFormSave,OnEmptyTrash,OnContextRemove,OnResourceDuplicate\n *\n * @author Jakob Class <jakob.class@class-zec.de>\n *         goldsky <goldsky@virtudraft.com>\n *\n * @package babel\n *\n */\n$babel = $modx->getService(\'babel\', \'Babel\', $modx->getOption(\'babel.core_path\', null, $modx->getOption(\'core_path\').\'components/babel/\').\'model/babel/\');\n\n/* be sure babel TV is loaded */\nif (!($babel instanceof Babel) || !$babel->babelTv)\n    return;\n\nswitch ($modx->event->name) {\n    case \'OnDocFormPrerender\':\n        $output       = \'\';\n        $errorMessage = \'\';\n        $resource     = & $modx->event->params[\'resource\'];\n        if (!$resource) {\n            /* a new resource is being to created\n             * -> skip rendering the babel box */\n            break;\n        }\n        $linkedResources = $babel->getLinkedResources($resource->get(\'id\'));\n        if (empty($linkedResources)) {\n            /* always be sure that the Babel TV is set */\n            $babel->initBabelTv($resource);\n        }\n\n        /* create babel-box with links to translations */\n        $outputLanguageItems = \'\';\n        if (!$modx->lexicon) {\n            $modx->getService(\'lexicon\', \'modLexicon\');\n        }\n        $languagesStore = array();\n        $contextKeys    = $babel->getGroupContextKeys($resource->get(\'context_key\'));\n        foreach ($contextKeys as $contextKey) {\n            /* for each (valid/existing) context of the context group a button will be displayed */\n            $context = $modx->getObject(\'modContext\', array(\'key\' => $contextKey));\n            if (!$context) {\n                $modx->log(modX::LOG_LEVEL_ERROR, \'Could not load context: \'.$contextKey);\n                continue;\n            }\n            $context->prepare();\n            $cultureKey       = $context->getOption(\'cultureKey\', $modx->getOption(\'cultureKey\'));\n            $languagesStore[] = array($modx->lexicon(\'babel.language_\'.$cultureKey).\" ($contextKey)\", $contextKey);\n        }\n\n        $babel->config[\'context_key\']    = $resource->get(\'context_key\');\n        $babel->config[\'languagesStore\'] = $languagesStore;\n        $babel->config[\'menu\']           = $babel->getMenu($resource);\n        if (empty($babel->config[\'menu\'])) {\n            $modx->log(modX::LOG_LEVEL_ERROR, \'[Babel] Could not load menu for context key: \"\'.$babel->config[\'context_key\'].\'\". Try to check \"babel.contextKeys\" in System Settings. If this is intended, you can ignore this warning.\');\n            return;\n        }\n        $version         = str_replace(\' \', \'\', $babel->config[\'version\']);\n        $isCSSCompressed = $modx->getOption(\'compress_css\');\n        $withVersion     = $isCSSCompressed ? \'\' : \'?v=\'.$version;\n        $modx->controller->addCss($babel->config[\'cssUrl\'].\'babel.css\'.$withVersion);\n\n        $modx->controller->addLexiconTopic(\'babel:default\');\n        $isJsCompressed = $modx->getOption(\'compress_js\');\n        $withVersion    = $isJsCompressed ? \'\' : \'?v=\'.$version;\n        $modx->controller->addJavascript($babel->config[\'jsUrl\'].\'babel.class.js\'.$withVersion);\n        $modx->controller->addHtml(\'\n<script type=\"text/javascript\">\n    Ext.onReady(function () {\n        var babel = new Babel(\'.json_encode($babel->config).\');\n        babel.getMenu(babel.config.menu);\n    });\n</script>\');\n        break;\n\n    case \'OnDocFormSave\':\n        $resource = & $modx->event->params[\'resource\'];\n        if (!$resource) {\n            $modx->log(modX::LOG_LEVEL_ERROR, \'No resource provided for OnDocFormSave event\');\n            break;\n        }\n        if ($modx->event->params[\'mode\'] == modSystemEvent::MODE_NEW) {\n            /* no TV synchronization for new resources, just init Babel TV */\n            $babel->initBabelTv($resource);\n            break;\n        }\n        $babel->synchronizeTvs($resource->get(\'id\'));\n        break;\n\n    case \'OnEmptyTrash\':\n        /* remove translation links to non-existing resources */\n        $deletedResourceIds = & $modx->event->params[\'ids\'];\n        if (is_array($deletedResourceIds)) {\n            foreach ($deletedResourceIds as $deletedResourceId) {\n                $babel->removeLanguageLinksToResource($deletedResourceId);\n            }\n        }\n        break;\n\n    case \'OnContextRemove\':\n        /* remove translation links to non-existing contexts */\n        $context = & $modx->event->params[\'context\'];\n        if ($context) {\n            $babel->removeLanguageLinksToContext($context->get(\'key\'));\n        }\n        break;\n\n    case \'OnResourceDuplicate\':\n        /* init Babel TV of duplicated resources */\n        $resource = & $modx->event->params[\'newResource\'];\n        $babel->initBabelTvsRecursive($modx, $babel, $resource->get(\'id\'));\n        break;\n\n    case \'OnResourceSort\':\n        $nodesAffected = & $modx->event->params[\'nodesAffected\'];\n        foreach ($nodesAffected as $node) {\n            $linkedResources = $babel->getLinkedResources($node->get(\'id\'));\n            foreach ($linkedResources as $key => $id) {\n                if ($id === $node->get(\'id\')) {\n                    unset($linkedResources[$key]);\n                }\n            }\n            $linkedResources[$node->get(\'context_key\')] = $node->get(\'id\');\n            $babel->updateBabelTv($linkedResources, $linkedResources);\n        }\n\n        break;\n\n    case \'OnSiteRefresh\':\n        $cacheManager = $modx->getCacheManager();\n        $cacheManager->refresh(array(\n            \'babel\' => array(),\n        ));\n        break;\n\n    default:\n        break;\n}\nreturn;', 0, NULL, 0, '', 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_plugin_events`
--

CREATE TABLE `modx_site_plugin_events` (
  `pluginid` int(10) NOT NULL DEFAULT '0',
  `event` varchar(191) NOT NULL DEFAULT '',
  `priority` int(10) NOT NULL DEFAULT '0',
  `propertyset` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `modx_site_plugin_events`
--

INSERT INTO `modx_site_plugin_events` (`pluginid`, `event`, `priority`, `propertyset`) VALUES
(1, 'OnHandleRequest', 0, 0),
(2, 'OnHandleRequest', 0, 0),
(3, 'OnContextRemove', 0, 0),
(3, 'OnDocFormPrerender', 0, 0),
(3, 'OnDocFormSave', 0, 0),
(3, 'OnEmptyTrash', 0, 0),
(3, 'OnResourceDuplicate', 0, 0),
(3, 'OnResourceSort', 0, 0),
(3, 'OnSiteRefresh', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_snippets`
--

CREATE TABLE `modx_site_snippets` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0',
  `snippet` mediumtext,
  `locked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `properties` text,
  `moduleguid` varchar(32) NOT NULL DEFAULT '',
  `static` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `static_file` varchar(191) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `modx_site_snippets`
--

INSERT INTO `modx_site_snippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `moduleguid`, `static`, `static_file`) VALUES
(1, 0, 0, 'BabelLinks', 'Displays links to translated resources.', 0, 10, 0, '/**\n * Babel\n *\n * Copyright 2010 by Jakob Class <jakob.class@class-zec.de>\n *\n * This file is part of Babel.\n *\n * Babel is free software; you can redistribute it and/or modify it under the\n * terms of the GNU General Public License as published by the Free Software\n * Foundation; either version 2 of the License, or (at your option) any later\n * version.\n *\n * Babel is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * Babel; if not, write to the Free Software Foundation, Inc., 59 Temple Place,\n * Suite 330, Boston, MA 02111-1307 USA\n *\n * @package babel\n */\n/**\n * BabelLinks snippet to display links to translated resources\n *\n * Based on ideas of Sylvain Aerni <enzyms@gmail.com>\n *\n * @author Jakob Class <jakob.class@class-zec.de>\n *         goldsky <goldsky@virtudraft.com>\n *\n * @package babel\n *\n * @param resourceId        optional: id of resource of which links to translations should be displayed. Default: current resource\n * @param tpl               optional: Chunk to display a language link. Default: babelLink\n * @param activeCls         optional: CSS class name for the current active language. Default: active\n * @param showUnpublished   optional: flag whether to show unpublished translations. Default: 0\n * @param showCurrent       optional: flag whether to show a link to a translation of the current language. Default: 1\n */\n$babel = $modx->getService(\'babel\', \'Babel\', $modx->getOption(\'babel.core_path\', null, $modx->getOption(\'core_path\').\'components/babel/\').\'model/babel/\', $scriptProperties);\n\n/* be sure babel and babel TV is loaded */\nif (!($babel instanceof Babel) || !$babel->babelTv)\n    return;\n\n/* get snippet properties */\n$resourceId = intval($modx->getOption(\'resourceId\', $scriptProperties));\nif (empty($resourceId)) {\n    if (!empty($modx->resource) && is_object($modx->resource)) {\n        $resourceId = $modx->resource->get(\'id\');\n    } else {\n        return;\n    }\n}\n$tpl              = $modx->getOption(\'tpl\', $scriptProperties, \'babelLink\');\n$wrapperTpl       = $modx->getOption(\'wrapperTpl\', $scriptProperties);\n$activeCls        = $modx->getOption(\'activeCls\', $scriptProperties, \'active\');\n$showUnpublished  = $modx->getOption(\'showUnpublished\', $scriptProperties, 0);\n$showCurrent      = $modx->getOption(\'showCurrent\', $scriptProperties, 0);\n$outputSeparator  = $modx->getOption(\'outputSeparator\', $scriptProperties, \"\\n\");\n$includeUnlinked  = $modx->getOption(\'includeUnlinked\', $scriptProperties, 0);\n$ignoreSiteStatus = $modx->getOption(\'ignoreSiteStatus\', $scriptProperties, 0);\n\nif (!empty($modx->resource) && is_object($modx->resource) && $resourceId === $modx->resource->get(\'id\')) {\n    $contextKeys = $babel->getGroupContextKeys($modx->resource->get(\'context_key\'));\n    $resource    = $modx->resource;\n} else {\n    $resource = $modx->getObject(\'modResource\', $resourceId);\n    if (!$resource) {\n        return;\n    }\n    $contextKeys = $babel->getGroupContextKeys($resource->get(\'context_key\'));\n}\n\n$linkedResources = $babel->getLinkedResources($resourceId);\n$languages       = $babel->getLanguages();\n$outputArray     = array();\nforeach ($contextKeys as $contextKey) {\n    if (!$showCurrent && $contextKey === $resource->get(\'context_key\')) {\n        continue;\n    }\n    if (!$includeUnlinked && !isset($linkedResources[$contextKey])) {\n        continue;\n    }\n    $context = $modx->getObject(\'modContext\', array(\'key\' => $contextKey));\n    if (!$context) {\n        $modx->log(modX::LOG_LEVEL_ERROR, \'Could not load context: \'.$contextKey);\n        continue;\n    }\n    $context->prepare();\n    if (!$context->getOption(\'site_status\', null, true) && !$ignoreSiteStatus) {\n        continue;\n    }\n    $cultureKey           = $context->getOption(\'cultureKey\', $modx->getOption(\'cultureKey\'));\n    $translationAvailable = false;\n    if (isset($linkedResources[$contextKey])) {\n        $c = $modx->newQuery(\'modResource\');\n        $c->where(array(\n            \'id\'          => $linkedResources[$contextKey],\n            \'deleted:!=\'  => 1,\n            \'published:=\' => 1,\n        ));\n        if ($showUnpublished) {\n            $c->where(array(\n                \'OR:published:=\' => 0,\n            ));\n        }\n        $count = $modx->getCount(\'modResource\', $c);\n        if ($count) {\n            $translationAvailable = true;\n        }\n    }\n    $getRequest = $_GET;\n    unset($getRequest[\'id\']);\n    unset($getRequest[$modx->getOption(\'request_param_alias\', null, \'q\')]);\n    unset($getRequest[\'cultureKey\']);\n    if ($translationAvailable) {\n        $url          = $context->makeUrl($linkedResources[$contextKey], $getRequest, \'full\');\n        $active       = ($resource->get(\'context_key\') == $contextKey) ? $activeCls : \'\';\n        $placeholders = array(\n            \'cultureKey\' => $cultureKey,\n            \'url\'        => $url,\n            \'active\'     => $active,\n            \'id\'         => $linkedResources[$contextKey],\n            \'language\'   => $languages[$cultureKey][\'Description\'],\n        );\n\n        if (!empty($toArray)) {\n            $outputArray[] = $placeholders;\n        } else {\n            $chunk = $babel->getChunk($tpl, $placeholders);\n            if (!empty($chunk)) {\n                $outputArray[] = $chunk;\n            }\n        }\n    } elseif ($includeUnlinked) {\n        $url          = $context->makeUrl($context->getOption(\'site_start\'), $getRequest, \'full\');\n        $active       = ($resource->get(\'context_key\') == $contextKey) ? $activeCls : \'\';\n        $placeholders = array(\n            \'cultureKey\' => $cultureKey,\n            \'url\'        => $url,\n            \'active\'     => $active,\n            \'id\'         => $context->getOption(\'site_start\'),\n            \'language\'   => $languages[$cultureKey][\'Description\'],\n        );\n\n        if (!empty($toArray)) {\n            $outputArray[] = $placeholders;\n        } else {\n            $chunk = $babel->getChunk($tpl, $placeholders);\n            if (!empty($chunk)) {\n                $outputArray[] = $chunk;\n            }\n        }\n    }\n}\n\nif (!empty($toArray)) {\n    return \'<pre>\'.print_r($outputArray, 1).\'</pre>\';\n}\n\n$output = implode($outputSeparator, $outputArray);\nif (!empty($wrapperTpl)) {\n    $output = $babel->getChunk($wrapperTpl, array(\n        \'babelLinks\' => $output\n    ));\n}\n\nif (!empty($toPlaceholder)) {\n    $modx->setPlaceholder($toPlaceholder, $output);\n    return;\n}\n\nreturn $output;', 0, 'a:6:{s:10:\"resourceId\";a:7:{s:4:\"name\";s:10:\"resourceId\";s:4:\"desc\";s:21:\"babellinks.resourceId\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:16:\"babel:properties\";s:4:\"area\";s:0:\"\";}s:3:\"tpl\";a:7:{s:4:\"name\";s:3:\"tpl\";s:4:\"desc\";s:14:\"babellinks.tpl\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:9:\"babelLink\";s:7:\"lexicon\";s:16:\"babel:properties\";s:4:\"area\";s:0:\"\";}s:9:\"activeCls\";a:7:{s:4:\"name\";s:9:\"activeCls\";s:4:\"desc\";s:20:\"babellinks.activeCls\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:6:\"active\";s:7:\"lexicon\";s:16:\"babel:properties\";s:4:\"area\";s:0:\"\";}s:15:\"showUnpublished\";a:7:{s:4:\"name\";s:15:\"showUnpublished\";s:4:\"desc\";s:26:\"babellinks.showUnpublished\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:1:\"0\";s:7:\"lexicon\";s:16:\"babel:properties\";s:4:\"area\";s:0:\"\";}s:11:\"showCurrent\";a:7:{s:4:\"name\";s:11:\"showCurrent\";s:4:\"desc\";s:22:\"babellinks.showCurrent\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:1:\"0\";s:7:\"lexicon\";s:16:\"babel:properties\";s:4:\"area\";s:0:\"\";}s:15:\"includeUnlinked\";a:7:{s:4:\"name\";s:15:\"includeUnlinked\";s:4:\"desc\";s:26:\"babellinks.includeUnlinked\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:1:\"0\";s:7:\"lexicon\";s:16:\"babel:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, ''),
(2, 0, 0, 'BabelTranslation', 'Returns the id of a translated resource in a given context.', 0, 10, 0, '/**\n * Babel\n *\n * Copyright 2010 by Jakob Class <jakob.class@class-zec.de>\n *\n * This file is part of Babel.\n *\n * Babel is free software; you can redistribute it and/or modify it under the\n * terms of the GNU General Public License as published by the Free Software\n * Foundation; either version 2 of the License, or (at your option) any later\n * version.\n *\n * Babel is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * Babel; if not, write to the Free Software Foundation, Inc., 59 Temple Place,\n * Suite 330, Boston, MA 02111-1307 USA\n *\n * @package babel\n */\n/**\n * BabelTranslation snippet to get the id of a translated resource in a given context.\n *\n * @author Jakob Class <jakob.class@class-zec.de>\n *\n * @package babel\n *\n * @param resourceId		optional: id of resource of which a translated resource should be determined. Default: current resource\n * @param contextKey		optional: Key of context in which translated resource should be determined.\n * @param cultureKey		optional: Key of culture in which translated resource should be determined. Used only in case contextKey was not specified.  If both omitted: uses currently set cultureKey.\n * @param showUnpublished	optional: flag whether to show unpublished translations. Default: 0\n */\n$babel = $modx->getService(\'babel\', \'Babel\', $modx->getOption(\'babel.core_path\', null, $modx->getOption(\'core_path\').\'components/babel/\').\'model/babel/\', $scriptProperties);\n\n/* be sure babel and babel TV is loaded */\nif (!($babel instanceof Babel) || !$babel->babelTv)\n    return;\n\n/* get snippet properties */\n$resourceId = intval($modx->getOption(\'resourceId\', $scriptProperties));\nif (empty($resourceId)) {\n    if (!empty($modx->resource) && is_object($modx->resource)) {\n        $resourceId = $modx->resource->get(\'id\');\n    } else {\n        return;\n    }\n}\n$contextKey = $modx->getOption(\'contextKey\', $scriptProperties, \'\', true);\nif (empty($contextKey)) {\n    $cultureKey = $modx->getOption(\'cultureKey\', $scriptProperties, \'\', true);\n    $contextKey = $babel->getContextKey($cultureKey);\n}\n$showUnpublished = $modx->getOption(\'showUnpublished\', $scriptProperties, 0, true);\n\n/* determine id of tranlated resource */\n$linkedResources = $babel->getLinkedResources($resourceId);\n$output          = null;\nif (isset($linkedResources[$contextKey])) {\n    $resource = $modx->getObject(\'modResource\', $linkedResources[$contextKey]);\n    if ($resource && ($showUnpublished || $resource->get(\'published\') == 1)) {\n        $output = $resource->get(\'id\');\n    }\n}\nreturn $output;', 0, 'a:4:{s:10:\"resourceId\";a:7:{s:4:\"name\";s:10:\"resourceId\";s:4:\"desc\";s:27:\"babeltranslation.resourceId\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:16:\"babel:properties\";s:4:\"area\";s:0:\"\";}s:10:\"contextKey\";a:7:{s:4:\"name\";s:10:\"contextKey\";s:4:\"desc\";s:27:\"babeltranslation.contextKey\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:16:\"babel:properties\";s:4:\"area\";s:0:\"\";}s:10:\"cultureKey\";a:7:{s:4:\"name\";s:10:\"cultureKey\";s:4:\"desc\";s:27:\"babeltranslation.cultureKey\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:16:\"babel:properties\";s:4:\"area\";s:0:\"\";}s:15:\"showUnpublished\";a:7:{s:4:\"name\";s:15:\"showUnpublished\";s:4:\"desc\";s:32:\"babeltranslation.showUnpublished\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:1:\"0\";s:7:\"lexicon\";s:16:\"babel:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_templates`
--

CREATE TABLE `modx_site_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `templatename` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT 'Template',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `icon` varchar(191) NOT NULL DEFAULT '',
  `template_type` int(11) NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  `locked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `properties` text,
  `static` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `static_file` varchar(191) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `modx_site_templates`
--

INSERT INTO `modx_site_templates` (`id`, `source`, `property_preprocess`, `templatename`, `description`, `editor_type`, `category`, `icon`, `template_type`, `content`, `locked`, `properties`, `static`, `static_file`) VALUES
(1, 1, 0, 'Начальный шаблон', 'Template', 0, 8, '', 0, '[[$meta]]\n[[$head]]\n[[$homeContent]]\n[[$footer]]\n', 0, 'a:0:{}', 1, 'assets/custom/templates/home.tpl');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_tmplvars`
--

CREATE TABLE `modx_site_tmplvars` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `caption` varchar(80) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `locked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `elements` text,
  `rank` int(11) NOT NULL DEFAULT '0',
  `display` varchar(20) NOT NULL DEFAULT '',
  `default_text` mediumtext,
  `properties` text,
  `input_properties` text,
  `output_properties` text,
  `static` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `static_file` varchar(191) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `modx_site_tmplvars`
--

INSERT INTO `modx_site_tmplvars` (`id`, `source`, `property_preprocess`, `type`, `name`, `caption`, `description`, `editor_type`, `category`, `locked`, `elements`, `rank`, `display`, `default_text`, `properties`, `input_properties`, `output_properties`, `static`, `static_file`) VALUES
(1, 0, 0, 'hidden', 'babelLanguageLinks', 'Babel Translation Links', 'Используется плагином Babel. Не изменяйте!', 0, 0, 0, NULL, 0, '', '', NULL, NULL, NULL, 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_tmplvar_access`
--

CREATE TABLE `modx_site_tmplvar_access` (
  `id` int(10) UNSIGNED NOT NULL,
  `tmplvarid` int(10) NOT NULL DEFAULT '0',
  `documentgroup` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_tmplvar_contentvalues`
--

CREATE TABLE `modx_site_tmplvar_contentvalues` (
  `id` int(10) UNSIGNED NOT NULL,
  `tmplvarid` int(10) NOT NULL DEFAULT '0',
  `contentid` int(10) NOT NULL DEFAULT '0',
  `value` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `modx_site_tmplvar_contentvalues`
--

INSERT INTO `modx_site_tmplvar_contentvalues` (`id`, `tmplvarid`, `contentid`, `value`) VALUES
(1, 1, 1, 'web:1;ua:2;en:3'),
(2, 1, 2, 'web:1;ua:2;en:3'),
(3, 1, 3, 'web:1;ua:2;en:3');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_tmplvar_templates`
--

CREATE TABLE `modx_site_tmplvar_templates` (
  `tmplvarid` int(10) NOT NULL DEFAULT '0',
  `templateid` int(11) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_system_eventnames`
--

CREATE TABLE `modx_system_eventnames` (
  `name` varchar(50) NOT NULL,
  `service` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `groupname` varchar(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `modx_system_eventnames`
--

INSERT INTO `modx_system_eventnames` (`name`, `service`, `groupname`) VALUES
('OnBabelDuplicate', 2, 'Babel'),
('OnBabelLink', 2, 'Babel'),
('OnBabelUnlink', 2, 'Babel'),
('OnBeforeCacheUpdate', 4, 'System'),
('OnBeforeChunkFormDelete', 1, 'Chunks'),
('OnBeforeChunkFormSave', 1, 'Chunks'),
('OnBeforeDocFormDelete', 1, 'Resources'),
('OnBeforeDocFormSave', 1, 'Resources'),
('OnBeforeEmptyTrash', 1, 'Resources'),
('OnBeforeManagerLogin', 2, 'Security'),
('OnBeforeManagerLogout', 2, 'Security'),
('OnBeforeManagerPageInit', 2, 'System'),
('OnBeforePluginFormDelete', 1, 'Plugins'),
('OnBeforePluginFormSave', 1, 'Plugins'),
('OnBeforeRegisterClientScripts', 5, 'System'),
('OnBeforeSaveWebPageCache', 4, 'System'),
('OnBeforeSnipFormDelete', 1, 'Snippets'),
('OnBeforeSnipFormSave', 1, 'Snippets'),
('OnBeforeTempFormDelete', 1, 'Templates'),
('OnBeforeTempFormSave', 1, 'Templates'),
('OnBeforeTVFormDelete', 1, 'Template Variables'),
('OnBeforeTVFormSave', 1, 'Template Variables'),
('OnBeforeUserActivate', 1, 'Users'),
('OnBeforeUserDeactivate', 1, 'Users'),
('OnBeforeUserDuplicate', 1, 'Users'),
('OnBeforeUserFormDelete', 1, 'Users'),
('OnBeforeUserFormSave', 1, 'Users'),
('OnBeforeUserGroupFormRemove', 1, 'User Groups'),
('OnBeforeUserGroupFormSave', 1, 'User Groups'),
('OnBeforeWebLogin', 3, 'Security'),
('OnBeforeWebLogout', 3, 'Security'),
('OnCacheUpdate', 4, 'System'),
('OnCategoryBeforeRemove', 1, 'Categories'),
('OnCategoryBeforeSave', 1, 'Categories'),
('OnCategoryRemove', 1, 'Categories'),
('OnCategorySave', 1, 'Categories'),
('OnChunkBeforeRemove', 1, 'Chunks'),
('OnChunkBeforeSave', 1, 'Chunks'),
('OnChunkFormDelete', 1, 'Chunks'),
('OnChunkFormPrerender', 1, 'Chunks'),
('OnChunkFormRender', 1, 'Chunks'),
('OnChunkFormSave', 1, 'Chunks'),
('OnChunkRemove', 1, 'Chunks'),
('OnChunkSave', 1, 'Chunks'),
('OnContextBeforeRemove', 1, 'Contexts'),
('OnContextBeforeSave', 1, 'Contexts'),
('OnContextFormPrerender', 2, 'Contexts'),
('OnContextFormRender', 2, 'Contexts'),
('OnContextRemove', 1, 'Contexts'),
('OnContextSave', 1, 'Contexts'),
('OnDocFormDelete', 1, 'Resources'),
('OnDocFormPrerender', 1, 'Resources'),
('OnDocFormRender', 1, 'Resources'),
('OnDocFormSave', 1, 'Resources'),
('OnDocPublished', 5, 'Resources'),
('OnDocUnPublished', 5, 'Resources'),
('OnElementNotFound', 1, 'System'),
('OnEmptyTrash', 1, 'Resources'),
('OnFileCreateFormPrerender', 1, 'System'),
('OnFileEditFormPrerender', 1, 'System'),
('OnFileManagerBeforeUpload', 1, 'System'),
('OnFileManagerDirCreate', 1, 'System'),
('OnFileManagerDirRemove', 1, 'System'),
('OnFileManagerDirRename', 1, 'System'),
('OnFileManagerFileCreate', 1, 'System'),
('OnFileManagerFileRemove', 1, 'System'),
('OnFileManagerFileRename', 1, 'System'),
('OnFileManagerFileUpdate', 1, 'System'),
('OnFileManagerMoveObject', 1, 'System'),
('OnFileManagerUpload', 1, 'System'),
('OnHandleRequest', 5, 'System'),
('OnInitCulture', 1, 'Internationalization'),
('OnLoadWebDocument', 5, 'System'),
('OnLoadWebPageCache', 4, 'System'),
('OnManagerAuthentication', 2, 'Security'),
('OnManagerLogin', 2, 'Security'),
('OnManagerLoginFormPrerender', 2, 'Security'),
('OnManagerLoginFormRender', 2, 'Security'),
('OnManagerLogout', 2, 'Security'),
('OnManagerPageAfterRender', 2, 'System'),
('OnManagerPageBeforeRender', 2, 'System'),
('OnManagerPageInit', 2, 'System'),
('OnMediaSourceBeforeFormDelete', 1, 'Media Sources'),
('OnMediaSourceBeforeFormSave', 1, 'Media Sources'),
('OnMediaSourceDuplicate', 1, 'Media Sources'),
('OnMediaSourceFormDelete', 1, 'Media Sources'),
('OnMediaSourceFormSave', 1, 'Media Sources'),
('OnMediaSourceGetProperties', 1, 'Media Sources'),
('OnMODXInit', 5, 'System'),
('OnPackageInstall', 2, 'Package Manager'),
('OnPackageRemove', 2, 'Package Manager'),
('OnPackageUninstall', 2, 'Package Manager'),
('OnPageNotFound', 1, 'System'),
('OnPageUnauthorized', 1, 'Security'),
('OnParseDocument', 5, 'System'),
('OnPluginBeforeRemove', 1, 'Plugins'),
('OnPluginBeforeSave', 1, 'Plugins'),
('OnPluginEventBeforeRemove', 1, 'Plugin Events'),
('OnPluginEventBeforeSave', 1, 'Plugin Events'),
('OnPluginEventRemove', 1, 'Plugin Events'),
('OnPluginEventSave', 1, 'Plugin Events'),
('OnPluginFormDelete', 1, 'Plugins'),
('OnPluginFormPrerender', 1, 'Plugins'),
('OnPluginFormRender', 1, 'Plugins'),
('OnPluginFormSave', 1, 'Plugins'),
('OnPluginRemove', 1, 'Plugins'),
('OnPluginSave', 1, 'Plugins'),
('OnPropertySetBeforeRemove', 1, 'Property Sets'),
('OnPropertySetBeforeSave', 1, 'Property Sets'),
('OnPropertySetRemove', 1, 'Property Sets'),
('OnPropertySetSave', 1, 'Property Sets'),
('OnResourceAddToResourceGroup', 1, 'Resources'),
('OnResourceAutoPublish', 1, 'Resources'),
('OnResourceBeforeSort', 1, 'Resources'),
('OnResourceCacheUpdate', 1, 'Resources'),
('OnResourceDelete', 1, 'Resources'),
('OnResourceDuplicate', 1, 'Resources'),
('OnResourceGroupBeforeRemove', 1, 'Security'),
('OnResourceGroupBeforeSave', 1, 'Security'),
('OnResourceGroupRemove', 1, 'Security'),
('OnResourceGroupSave', 1, 'Security'),
('OnResourceRemoveFromResourceGroup', 1, 'Resources'),
('OnResourceSort', 1, 'Resources'),
('OnResourceToolbarLoad', 1, 'Resources'),
('OnResourceTVFormPrerender', 1, 'Resources'),
('OnResourceTVFormRender', 1, 'Resources'),
('OnResourceUndelete', 1, 'Resources'),
('OnRichTextBrowserInit', 1, 'RichText Editor'),
('OnRichTextEditorInit', 1, 'RichText Editor'),
('OnRichTextEditorRegister', 1, 'RichText Editor'),
('OnSiteRefresh', 1, 'System'),
('OnSiteSettingsRender', 1, 'Settings'),
('OnSnipFormDelete', 1, 'Snippets'),
('OnSnipFormPrerender', 1, 'Snippets'),
('OnSnipFormRender', 1, 'Snippets'),
('OnSnipFormSave', 1, 'Snippets'),
('OnSnippetBeforeRemove', 1, 'Snippets'),
('OnSnippetBeforeSave', 1, 'Snippets'),
('OnSnippetRemove', 1, 'Snippets'),
('OnSnippetSave', 1, 'Snippets'),
('OnTempFormDelete', 1, 'Templates'),
('OnTempFormPrerender', 1, 'Templates'),
('OnTempFormRender', 1, 'Templates'),
('OnTempFormSave', 1, 'Templates'),
('OnTemplateBeforeRemove', 1, 'Templates'),
('OnTemplateBeforeSave', 1, 'Templates'),
('OnTemplateRemove', 1, 'Templates'),
('OnTemplateSave', 1, 'Templates'),
('OnTemplateVarBeforeRemove', 1, 'Template Variables'),
('OnTemplateVarBeforeSave', 1, 'Template Variables'),
('OnTemplateVarRemove', 1, 'Template Variables'),
('OnTemplateVarSave', 1, 'Template Variables'),
('OnTVFormDelete', 1, 'Template Variables'),
('OnTVFormPrerender', 1, 'Template Variables'),
('OnTVFormRender', 1, 'Template Variables'),
('OnTVFormSave', 1, 'Template Variables'),
('OnTVInputPropertiesList', 1, 'Template Variables'),
('OnTVInputRenderList', 1, 'Template Variables'),
('OnTVOutputRenderList', 1, 'Template Variables'),
('OnTVOutputRenderPropertiesList', 1, 'Template Variables'),
('OnUserActivate', 1, 'Users'),
('OnUserAddToGroup', 1, 'User Groups'),
('OnUserBeforeAddToGroup', 1, 'User Groups'),
('OnUserBeforeRemove', 1, 'Users'),
('OnUserBeforeRemoveFromGroup', 1, 'User Groups'),
('OnUserBeforeSave', 1, 'Users'),
('OnUserChangePassword', 1, 'Users'),
('OnUserDeactivate', 1, 'Users'),
('OnUserDuplicate', 1, 'Users'),
('OnUserFormDelete', 1, 'Users'),
('OnUserFormPrerender', 1, 'Users'),
('OnUserFormRender', 1, 'Users'),
('OnUserFormSave', 1, 'Users'),
('OnUserGroupBeforeRemove', 1, 'User Groups'),
('OnUserGroupBeforeSave', 1, 'User Groups'),
('OnUserGroupFormSave', 1, 'User Groups'),
('OnUserGroupRemove', 1, 'User Groups'),
('OnUserGroupSave', 1, 'User Groups'),
('OnUserNotFound', 1, 'Users'),
('OnUserProfileBeforeRemove', 1, 'User Profiles'),
('OnUserProfileBeforeSave', 1, 'User Profiles'),
('OnUserProfileRemove', 1, 'User Profiles'),
('OnUserProfileSave', 1, 'User Profiles'),
('OnUserRemove', 1, 'Users'),
('OnUserRemoveFromGroup', 1, 'User Groups'),
('OnUserSave', 1, 'Users'),
('OnWebAuthentication', 3, 'Security'),
('OnWebLogin', 3, 'Security'),
('OnWebLogout', 3, 'Security'),
('OnWebPageComplete', 5, 'System'),
('OnWebPageInit', 5, 'System'),
('OnWebPagePrerender', 5, 'System');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_system_settings`
--

CREATE TABLE `modx_system_settings` (
  `key` varchar(50) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(191) NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `modx_system_settings`
--

INSERT INTO `modx_system_settings` (`key`, `value`, `xtype`, `namespace`, `area`, `editedon`) VALUES
('access_category_enabled', '1', 'combo-boolean', 'core', 'authentication', NULL),
('access_context_enabled', '1', 'combo-boolean', 'core', 'authentication', NULL),
('access_resource_group_enabled', '1', 'combo-boolean', 'core', 'authentication', NULL),
('allow_forward_across_contexts', '', 'combo-boolean', 'core', 'system', NULL),
('allow_manager_login_forgot_password', '1', 'combo-boolean', 'core', 'authentication', NULL),
('allow_multiple_emails', '1', 'combo-boolean', 'core', 'authentication', NULL),
('allow_tags_in_post', '', 'combo-boolean', 'core', 'system', NULL),
('allow_tv_eval', '1', 'combo-boolean', 'core', 'system', NULL),
('anonymous_sessions', '1', 'combo-boolean', 'core', 'session', NULL),
('archive_with', '', 'combo-boolean', 'core', 'system', NULL),
('automatic_alias', '1', 'combo-boolean', 'core', 'furls', NULL),
('automatic_template_assignment', 'parent', 'textfield', 'core', 'site', NULL),
('auto_check_pkg_updates', '1', 'combo-boolean', 'core', 'system', NULL),
('auto_check_pkg_updates_cache_expire', '15', 'textfield', 'core', 'system', NULL),
('auto_isfolder', '1', 'combo-boolean', 'core', 'site', NULL),
('auto_menuindex', '1', 'combo-boolean', 'core', 'site', NULL),
('babel.babelTvName', 'babelLanguageLinks', 'textfield', 'babel', 'common', NULL),
('babel.contextKeys', 'en,ua,web', 'textfield', 'babel', 'common', '2019-06-10 13:55:02'),
('babel.syncTvs', '', 'textfield', 'babel', 'common', NULL),
('base_help_url', '//docs.modx.com/display/revolution20/', 'textfield', 'core', 'manager', NULL),
('blocked_minutes', '60', 'textfield', 'core', 'authentication', NULL),
('cache_action_map', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_alias_map', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_context_settings', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_db', '0', 'combo-boolean', 'core', 'caching', NULL),
('cache_db_expires', '0', 'textfield', 'core', 'caching', NULL),
('cache_db_session', '0', 'combo-boolean', 'core', 'caching', NULL),
('cache_db_session_lifetime', '', 'textfield', 'core', 'caching', NULL),
('cache_default', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_expires', '0', 'textfield', 'core', 'caching', NULL),
('cache_format', '0', 'textfield', 'core', 'caching', NULL),
('cache_handler', 'xPDOFileCache', 'textfield', 'core', 'caching', NULL),
('cache_lang_js', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_lexicon_topics', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_noncore_lexicon_topics', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_resource', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_resource_clear_partial', '0', 'combo-boolean', 'core', 'caching', NULL),
('cache_resource_expires', '0', 'textfield', 'core', 'caching', NULL),
('cache_scripts', '1', 'combo-boolean', 'core', 'caching', NULL),
('clear_cache_refresh_trees', '0', 'combo-boolean', 'core', 'caching', NULL),
('compress_css', '1', 'combo-boolean', 'core', 'manager', NULL),
('compress_js', '1', 'combo-boolean', 'core', 'manager', NULL),
('compress_js_max_files', '10', 'textfield', 'core', 'manager', NULL),
('confirm_navigation', '1', 'combo-boolean', 'core', 'manager', NULL),
('container_suffix', '', 'textfield', 'core', 'furls', '2019-06-06 13:26:18'),
('context_tree_sort', '1', 'combo-boolean', 'core', 'manager', NULL),
('context_tree_sortby', 'rank', 'textfield', 'core', 'manager', NULL),
('context_tree_sortdir', 'ASC', 'textfield', 'core', 'manager', NULL),
('cultureKey', 'ru', 'modx-combo-language', 'core', 'language', '2019-06-06 13:10:44'),
('date_timezone', '', 'textfield', 'core', 'system', NULL),
('debug', '', 'textfield', 'core', 'system', NULL),
('default_content_type', '1', 'modx-combo-content-type', 'core', 'site', NULL),
('default_context', 'web', 'modx-combo-context', 'core', 'site', NULL),
('default_duplicate_publish_option', 'preserve', 'textfield', 'core', 'manager', NULL),
('default_media_source', '1', 'modx-combo-source', 'core', 'manager', NULL),
('default_media_source_type', 'sources.modFileMediaSource', 'modx-combo-source-type', 'core', 'manager', NULL),
('default_per_page', '20', 'textfield', 'core', 'manager', NULL),
('default_template', '1', 'modx-combo-template', 'core', 'site', NULL),
('default_username', '(anonymous)', 'textfield', 'core', 'session', NULL),
('editor_css_path', '', 'textfield', 'core', 'editor', NULL),
('editor_css_selectors', '', 'textfield', 'core', 'editor', NULL),
('emailsender', 'tyaa@ukr.net', 'textfield', 'core', 'authentication', '2019-06-06 13:10:44'),
('emailsubject', 'Your login details', 'textfield', 'core', 'authentication', NULL),
('enable_dragdrop', '1', 'combo-boolean', 'core', 'manager', NULL),
('enable_gravatar', '1', 'combo-boolean', 'core', 'manager', NULL),
('error_log_filename', 'error.log', 'textfield', 'core', 'system', NULL),
('error_log_filepath', '', 'textfield', 'core', 'system', NULL),
('error_page', '1', 'textfield', 'core', 'site', NULL),
('failed_login_attempts', '5', 'textfield', 'core', 'authentication', NULL),
('feed_modx_news', 'http://feeds.feedburner.com/modx-announce', 'textfield', 'core', 'system', NULL),
('feed_modx_news_enabled', '1', 'combo-boolean', 'core', 'system', NULL),
('feed_modx_security', 'http://forums.modx.com/board.xml?board=294', 'textfield', 'core', 'system', NULL),
('feed_modx_security_enabled', '1', 'combo-boolean', 'core', 'system', NULL),
('fe_editor_lang', 'en', 'modx-combo-language', 'core', 'language', NULL),
('filemanager_path', '', 'textfield', 'core', 'file', NULL),
('filemanager_path_relative', '1', 'combo-boolean', 'core', 'file', NULL),
('filemanager_url', '', 'textfield', 'core', 'file', NULL),
('filemanager_url_relative', '1', 'combo-boolean', 'core', 'file', NULL),
('forgot_login_email', '<p>Hello [[+username]],</p>\n<p>A request for a password reset has been issued for your MODX user. If you sent this, you may follow this link and use this password to login. If you did not send this request, please ignore this email.</p>\n\n<p>\n    <strong>Activation Link:</strong> [[+url_scheme]][[+http_host]][[+manager_url]]?modahsh=[[+hash]]<br />\n    <strong>Username:</strong> [[+username]]<br />\n    <strong>Password:</strong> [[+password]]<br />\n</p>\n\n<p>After you log into the MODX Manager, you can change your password again, if you wish.</p>\n\n<p>Regards,<br />Site Administrator</p>', 'textarea', 'core', 'authentication', NULL),
('form_customization_use_all_groups', '', 'combo-boolean', 'core', 'manager', NULL),
('forward_merge_excludes', 'type,published,class_key', 'textfield', 'core', 'system', NULL),
('friendly_alias_lowercase_only', '1', 'combo-boolean', 'core', 'furls', NULL),
('friendly_alias_max_length', '70', 'textfield', 'core', 'furls', '2019-06-06 13:29:07'),
('friendly_alias_realtime', '0', 'combo-boolean', 'core', 'furls', NULL),
('friendly_alias_restrict_chars', 'pattern', 'textfield', 'core', 'furls', NULL),
('friendly_alias_restrict_chars_pattern', '/[\\0\\x0B\\t\\n\\r\\f\\a&=+%#<>\"~:`@«»,\\?\\[\\]\\{\\}\\|\\^\'\\\\\\!\\.\\)\\(]/', 'textfield', 'core', 'furls', '2019-06-06 13:26:42'),
('friendly_alias_strip_element_tags', '1', 'combo-boolean', 'core', 'furls', NULL),
('friendly_alias_translit', 'none', 'textfield', 'core', 'furls', NULL),
('friendly_alias_translit_class', 'translit.modTransliterate', 'textfield', 'core', 'furls', NULL),
('friendly_alias_translit_class_path', '{core_path}components/', 'textfield', 'core', 'furls', NULL),
('friendly_alias_trim_chars', '/.-_', 'textfield', 'core', 'furls', NULL),
('friendly_alias_word_delimiter', '-', 'textfield', 'core', 'furls', NULL),
('friendly_alias_word_delimiters', '-_', 'textfield', 'core', 'furls', NULL),
('friendly_urls', '1', 'combo-boolean', 'core', 'furls', '2019-06-06 13:27:00'),
('friendly_urls_strict', '0', 'combo-boolean', 'core', 'furls', NULL),
('global_duplicate_uri_check', '0', 'combo-boolean', 'core', 'furls', NULL),
('hidemenu_default', '0', 'combo-boolean', 'core', 'site', NULL),
('inline_help', '1', 'combo-boolean', 'core', 'manager', NULL),
('link_tag_scheme', '-1', 'textfield', 'core', 'site', NULL),
('locale', '', 'textfield', 'core', 'language', NULL),
('lock_ttl', '360', 'textfield', 'core', 'system', NULL),
('log_deprecated', '1', 'combo-boolean', 'core', 'system', NULL),
('log_level', '1', 'textfield', 'core', 'system', NULL),
('log_snippet_not_found', '1', 'combo-boolean', 'core', 'site', NULL),
('log_target', 'FILE', 'textfield', 'core', 'system', NULL),
('mail_charset', 'UTF-8', 'modx-combo-charset', 'core', 'mail', NULL),
('mail_encoding', '8bit', 'textfield', 'core', 'mail', NULL),
('mail_smtp_auth', '', 'combo-boolean', 'core', 'mail', NULL),
('mail_smtp_helo', '', 'textfield', 'core', 'mail', NULL),
('mail_smtp_hosts', 'localhost', 'textfield', 'core', 'mail', NULL),
('mail_smtp_keepalive', '', 'combo-boolean', 'core', 'mail', NULL),
('mail_smtp_pass', '', 'text-password', 'core', 'mail', NULL),
('mail_smtp_port', '587', 'textfield', 'core', 'mail', NULL),
('mail_smtp_prefix', '', 'textfield', 'core', 'mail', NULL),
('mail_smtp_single_to', '', 'combo-boolean', 'core', 'mail', NULL),
('mail_smtp_timeout', '10', 'textfield', 'core', 'mail', NULL),
('mail_smtp_user', '', 'textfield', 'core', 'mail', NULL),
('mail_use_smtp', '', 'combo-boolean', 'core', 'mail', NULL),
('main_nav_parent', 'topnav', 'textfield', 'core', 'manager', NULL),
('manager_date_format', 'Y-m-d', 'textfield', 'core', 'manager', NULL),
('manager_direction', 'ltr', 'textfield', 'core', 'language', NULL),
('manager_favicon_url', '', 'textfield', 'core', 'manager', NULL),
('manager_js_cache_file_locking', '1', 'combo-boolean', 'core', 'manager', NULL),
('manager_js_cache_max_age', '3600', 'textfield', 'core', 'manager', NULL),
('manager_js_document_root', '', 'textfield', 'core', 'manager', NULL),
('manager_js_zlib_output_compression', '0', 'combo-boolean', 'core', 'manager', NULL),
('manager_language', 'ru', 'modx-combo-language', 'core', 'language', '2019-06-06 13:10:44'),
('manager_lang_attribute', 'ru', 'textfield', 'core', 'language', '2019-06-06 13:10:44'),
('manager_login_url_alternate', '', 'textfield', 'core', 'authentication', NULL),
('manager_theme', 'default', 'modx-combo-manager-theme', 'core', 'manager', NULL),
('manager_time_format', 'g:i a', 'textfield', 'core', 'manager', NULL),
('manager_use_fullname', '', 'combo-boolean', 'core', 'manager', NULL),
('manager_week_start', '0', 'textfield', 'core', 'manager', NULL),
('mgr_source_icon', 'icon-folder-open-o', 'textfield', 'core', 'manager', NULL),
('mgr_tree_icon_context', 'tree-context', 'textfield', 'core', 'manager', NULL),
('modx_browser_default_sort', 'name', 'textfield', 'core', 'manager', NULL),
('modx_browser_default_viewmode', 'grid', 'textfield', 'core', 'manager', NULL),
('modx_browser_tree_hide_files', '1', 'combo-boolean', 'core', 'manager', NULL),
('modx_browser_tree_hide_tooltips', '1', 'combo-boolean', 'core', 'manager', NULL),
('modx_charset', 'UTF-8', 'modx-combo-charset', 'core', 'language', NULL),
('parser_recurse_uncacheable', '1', 'combo-boolean', 'core', 'system', NULL),
('password_generated_length', '10', 'textfield', 'core', 'authentication', NULL),
('password_min_length', '8', 'textfield', 'core', 'authentication', NULL),
('phpthumb_allow_src_above_docroot', '', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_cache_maxage', '30', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_cache_maxfiles', '10000', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_cache_maxsize', '100', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_cache_source_enabled', '', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_document_root', '', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_error_bgcolor', 'CCCCFF', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_error_fontsize', '1', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_error_textcolor', 'FF0000', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_far', 'C', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_imagemagick_path', '', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nohotlink_enabled', '1', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nohotlink_erase_image', '1', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nohotlink_text_message', 'Off-server thumbnailing is not allowed', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nohotlink_valid_domains', '{http_host}', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_enabled', '', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_erase_image', '1', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_require_refer', '', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_text_message', 'Off-server linking is not allowed', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_valid_domains', '{http_host}', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_watermark_src', '', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_zoomcrop', '0', 'textfield', 'core', 'phpthumb', NULL),
('preserve_menuindex', '1', 'combo-boolean', 'core', 'manager', NULL),
('principal_targets', 'modAccessContext,modAccessResourceGroup,modAccessCategory,sources.modAccessMediaSource,modAccessNamespace', 'textfield', 'core', 'authentication', NULL),
('proxy_auth_type', 'BASIC', 'textfield', 'core', 'proxy', NULL),
('proxy_host', '', 'textfield', 'core', 'proxy', NULL),
('proxy_password', '', 'text-password', 'core', 'proxy', NULL),
('proxy_port', '', 'textfield', 'core', 'proxy', NULL),
('proxy_username', '', 'textfield', 'core', 'proxy', NULL),
('publish_default', '', 'combo-boolean', 'core', 'site', NULL),
('rb_base_dir', '', 'textfield', 'core', 'file', NULL),
('rb_base_url', '', 'textfield', 'core', 'file', NULL),
('request_controller', 'index.php', 'textfield', 'core', 'gateway', NULL),
('request_method_strict', '0', 'combo-boolean', 'core', 'gateway', NULL),
('request_param_alias', 'q', 'textfield', 'core', 'gateway', NULL),
('request_param_id', 'id', 'textfield', 'core', 'gateway', NULL),
('resolve_hostnames', '0', 'combo-boolean', 'core', 'system', NULL),
('resource_tree_node_name', 'pagetitle', 'textfield', 'core', 'manager', NULL),
('resource_tree_node_name_fallback', 'pagetitle', 'textfield', 'core', 'manager', NULL),
('resource_tree_node_tooltip', '', 'textfield', 'core', 'manager', NULL),
('richtext_default', '1', 'combo-boolean', 'core', 'manager', NULL),
('search_default', '1', 'combo-boolean', 'core', 'site', NULL),
('send_poweredby_header', '1', 'combo-boolean', 'core', 'system', '2019-06-06 13:10:44'),
('server_offset_time', '0', 'textfield', 'core', 'system', NULL),
('server_protocol', 'http', 'textfield', 'core', 'system', NULL),
('session_cookie_domain', '', 'textfield', 'core', 'session', NULL),
('session_cookie_httponly', '1', 'combo-boolean', 'core', 'session', NULL),
('session_cookie_lifetime', '604800', 'textfield', 'core', 'session', NULL),
('session_cookie_path', '', 'textfield', 'core', 'session', NULL),
('session_cookie_secure', '', 'combo-boolean', 'core', 'session', NULL),
('session_gc_maxlifetime', '604800', 'textfield', 'core', 'session', NULL),
('session_handler_class', 'modSessionHandler', 'textfield', 'core', 'session', NULL),
('session_name', '', 'textfield', 'core', 'session', NULL),
('settings_distro', 'traditional', 'textfield', 'core', 'system', NULL),
('settings_version', '2.7.1-pl', 'textfield', 'core', 'system', NULL),
('set_header', '1', 'combo-boolean', 'core', 'system', NULL),
('show_tv_categories_header', '1', 'combo-boolean', 'core', 'manager', NULL),
('signupemail_message', '<p>Hello [[+uid]],</p>\n    <p>Here are your login details for the [[+sname]] MODX Manager:</p>\n\n    <p>\n        <strong>Username:</strong> [[+uid]]<br />\n        <strong>Password:</strong> [[+pwd]]<br />\n    </p>\n\n    <p>Once you log into the MODX Manager at [[+surl]], you can change your password.</p>\n\n    <p>Regards,<br />Site Administrator</p>', 'textarea', 'core', 'authentication', NULL),
('site_name', 'MODX Revolution', 'textfield', 'core', 'site', NULL),
('site_start', '1', 'textfield', 'core', 'site', NULL),
('site_status', '1', 'combo-boolean', 'core', 'site', NULL),
('site_unavailable_message', 'The site is currently unavailable', 'textfield', 'core', 'site', NULL),
('site_unavailable_page', '0', 'textfield', 'core', 'site', NULL),
('static_elements_automate_chunks', '0', 'combo-boolean', 'core', 'static_elements', NULL),
('static_elements_automate_plugins', '0', 'combo-boolean', 'core', 'static_elements', NULL),
('static_elements_automate_snippets', '0', 'combo-boolean', 'core', 'static_elements', NULL),
('static_elements_automate_templates', '0', 'combo-boolean', 'core', 'static_elements', NULL),
('static_elements_automate_tvs', '0', 'combo-boolean', 'core', 'static_elements', NULL),
('static_elements_basepath', '', 'textfield', 'core', 'static_elements', NULL),
('static_elements_default_category', '0', 'modx-combo-category', 'core', 'static_elements', NULL),
('static_elements_default_mediasource', '0', 'modx-combo-source', 'core', 'static_elements', NULL),
('strip_image_paths', '1', 'combo-boolean', 'core', 'file', NULL),
('symlink_merge_fields', '1', 'combo-boolean', 'core', 'site', NULL),
('syncsite_default', '1', 'combo-boolean', 'core', 'caching', NULL),
('topmenu_show_descriptions', '1', 'combo-boolean', 'core', 'manager', NULL),
('tree_default_sort', 'menuindex', 'textfield', 'core', 'manager', NULL),
('tree_root_id', '0', 'numberfield', 'core', 'manager', NULL),
('tvs_below_content', '0', 'combo-boolean', 'core', 'manager', NULL),
('udperms_allowroot', '', 'combo-boolean', 'core', 'authentication', NULL),
('unauthorized_page', '1', 'textfield', 'core', 'site', NULL),
('upload_files', 'txt,html,htm,xml,js,css,zip,gz,rar,z,tgz,tar,mp3,mp4,aac,wav,au,wmv,avi,mpg,mpeg,pdf,doc,docx,xls,xlsx,ppt,pptx,jpg,jpeg,png,tiff,svg,svgz,gif,psd,ico,bmp,odt,ods,odp,odb,odg,odf,md,ttf,woff,eot,scss,less,css.map', 'textfield', 'core', 'file', NULL),
('upload_flash', 'swf,fla', 'textfield', 'core', 'file', NULL),
('upload_images', 'jpg,jpeg,png,gif,psd,ico,bmp,tiff,svg,svgz', 'textfield', 'core', 'file', NULL),
('upload_maxsize', '104857600', 'textfield', 'core', 'file', '2019-06-06 13:10:44'),
('upload_media', 'mp3,wav,au,wmv,avi,mpg,mpeg', 'textfield', 'core', 'file', NULL),
('user_nav_parent', 'usernav', 'textfield', 'core', 'manager', NULL),
('use_alias_path', '1', 'combo-boolean', 'core', 'furls', '2019-06-06 13:27:20'),
('use_browser', '1', 'combo-boolean', 'core', 'file', NULL),
('use_context_resource_table', '1', 'combo-boolean', 'core', 'caching', NULL),
('use_editor', '1', 'combo-boolean', 'core', 'editor', NULL),
('use_frozen_parent_uris', '0', 'combo-boolean', 'core', 'furls', NULL),
('use_multibyte', '1', 'combo-boolean', 'core', 'language', '2019-06-06 13:10:44'),
('use_weblink_target', '', 'combo-boolean', 'core', 'site', NULL),
('webpwdreminder_message', '<p>Hello [[+uid]],</p>\n\n    <p>To activate your new password click the following link:</p>\n\n    <p>[[+surl]]</p>\n\n    <p>If successful you can use the following password to login:</p>\n\n    <p><strong>Password:</strong> [[+pwd]]</p>\n\n    <p>If you did not request this email then please ignore it.</p>\n\n    <p>Regards,<br />\n    Site Administrator</p>', 'textarea', 'core', 'authentication', NULL),
('websignupemail_message', '<p>Hello [[+uid]],</p>\n\n    <p>Here are your login details for [[+sname]]:</p>\n\n    <p><strong>Username:</strong> [[+uid]]<br />\n    <strong>Password:</strong> [[+pwd]]</p>\n\n    <p>Once you log into [[+sname]] at [[+surl]], you can change your password.</p>\n\n    <p>Regards,<br />\n    Site Administrator</p>', 'textarea', 'core', 'authentication', NULL),
('welcome_action', 'welcome', 'textfield', 'core', 'manager', NULL),
('welcome_namespace', 'core', 'textfield', 'core', 'manager', NULL),
('welcome_screen', '', 'combo-boolean', 'core', 'manager', '2019-06-06 13:11:03'),
('welcome_screen_url', '//misc.modx.com/revolution/welcome.27.html ', 'textfield', 'core', 'manager', NULL),
('which_editor', '', 'modx-combo-rte', 'core', 'editor', NULL),
('which_element_editor', '', 'modx-combo-rte', 'core', 'editor', NULL),
('xhtml_urls', '1', 'combo-boolean', 'core', 'site', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_transport_packages`
--

CREATE TABLE `modx_transport_packages` (
  `signature` varchar(191) NOT NULL,
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `installed` datetime DEFAULT NULL,
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `workspace` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `provider` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `disabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `source` tinytext,
  `manifest` text,
  `attributes` mediumtext,
  `package_name` varchar(191) NOT NULL,
  `metadata` text,
  `version_major` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `version_minor` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `version_patch` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `release` varchar(100) NOT NULL DEFAULT '',
  `release_index` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `modx_transport_packages`
--

INSERT INTO `modx_transport_packages` (`signature`, `created`, `updated`, `installed`, `state`, `workspace`, `provider`, `disabled`, `source`, `manifest`, `attributes`, `package_name`, `metadata`, `version_major`, `version_minor`, `version_patch`, `release`, `release_index`) VALUES
('babel-3.0.0-pl', '2019-06-10 16:53:31', '2019-06-10 13:55:02', '2019-06-10 16:55:02', 0, 1, 1, 0, 'babel-3.0.0-pl.transport.zip', NULL, 'a:12:{s:7:\"license\";s:15500:\"GNU GENERAL PUBLIC LICENSE\r\n   Version 2, June 1991\r\n--------------------------\r\n\r\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\r\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\r\n\r\nEveryone is permitted to copy and distribute verbatim copies\r\nof this license document, but changing it is not allowed.\r\n\r\nPreamble\r\n--------\r\n\r\n  The licenses for most software are designed to take away your\r\nfreedom to share and change it.  By contrast, the GNU General Public\r\nLicense is intended to guarantee your freedom to share and change free\r\nsoftware--to make sure the software is free for all its users.  This\r\nGeneral Public License applies to most of the Free Software\r\nFoundation\'s software and to any other program whose authors commit to\r\nusing it.  (Some other Free Software Foundation software is covered by\r\nthe GNU Library General Public License instead.)  You can apply it to\r\nyour programs, too.\r\n\r\n  When we speak of free software, we are referring to freedom, not\r\nprice.  Our General Public Licenses are designed to make sure that you\r\nhave the freedom to distribute copies of free software (and charge for\r\nthis service if you wish), that you receive source code or can get it\r\nif you want it, that you can change the software or use pieces of it\r\nin new free programs; and that you know you can do these things.\r\n\r\n  To protect your rights, we need to make restrictions that forbid\r\nanyone to deny you these rights or to ask you to surrender the rights.\r\nThese restrictions translate to certain responsibilities for you if you\r\ndistribute copies of the software, or if you modify it.\r\n\r\n  For example, if you distribute copies of such a program, whether\r\ngratis or for a fee, you must give the recipients all the rights that\r\nyou have.  You must make sure that they, too, receive or can get the\r\nsource code.  And you must show them these terms so they know their\r\nrights.\r\n\r\n  We protect your rights with two steps: (1) copyright the software, and\r\n(2) offer you this license which gives you legal permission to copy,\r\ndistribute and/or modify the software.\r\n\r\n  Also, for each author\'s protection and ours, we want to make certain\r\nthat everyone understands that there is no warranty for this free\r\nsoftware.  If the software is modified by someone else and passed on, we\r\nwant its recipients to know that what they have is not the original, so\r\nthat any problems introduced by others will not reflect on the original\r\nauthors\' reputations.\r\n\r\n  Finally, any free program is threatened constantly by software\r\npatents.  We wish to avoid the danger that redistributors of a free\r\nprogram will individually obtain patent licenses, in effect making the\r\nprogram proprietary.  To prevent this, we have made it clear that any\r\npatent must be licensed for everyone\'s free use or not licensed at all.\r\n\r\n  The precise terms and conditions for copying, distribution and\r\nmodification follow.\r\n\r\n\r\nGNU GENERAL PUBLIC LICENSE\r\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\r\n---------------------------------------------------------------\r\n\r\n  0. This License applies to any program or other work which contains\r\na notice placed by the copyright holder saying it may be distributed\r\nunder the terms of this General Public License.  The \"Program\", below,\r\nrefers to any such program or work, and a \"work based on the Program\"\r\nmeans either the Program or any derivative work under copyright law:\r\nthat is to say, a work containing the Program or a portion of it,\r\neither verbatim or with modifications and/or translated into another\r\nlanguage.  (Hereinafter, translation is included without limitation in\r\nthe term \"modification\".)  Each licensee is addressed as \"you\".\r\n\r\nActivities other than copying, distribution and modification are not\r\ncovered by this License; they are outside its scope.  The act of\r\nrunning the Program is not restricted, and the output from the Program\r\nis covered only if its contents constitute a work based on the\r\nProgram (independent of having been made by running the Program).\r\nWhether that is true depends on what the Program does.\r\n\r\n  1. You may copy and distribute verbatim copies of the Program\'s\r\nsource code as you receive it, in any medium, provided that you\r\nconspicuously and appropriately publish on each copy an appropriate\r\ncopyright notice and disclaimer of warranty; keep intact all the\r\nnotices that refer to this License and to the absence of any warranty;\r\nand give any other recipients of the Program a copy of this License\r\nalong with the Program.\r\n\r\nYou may charge a fee for the physical act of transferring a copy, and\r\nyou may at your option offer warranty protection in exchange for a fee.\r\n\r\n  2. You may modify your copy or copies of the Program or any portion\r\nof it, thus forming a work based on the Program, and copy and\r\ndistribute such modifications or work under the terms of Section 1\r\nabove, provided that you also meet all of these conditions:\r\n\r\n    a) You must cause the modified files to carry prominent notices\r\n    stating that you changed the files and the date of any change.\r\n\r\n    b) You must cause any work that you distribute or publish, that in\r\n    whole or in part contains or is derived from the Program or any\r\n    part thereof, to be licensed as a whole at no charge to all third\r\n    parties under the terms of this License.\r\n\r\n    c) If the modified program normally reads commands interactively\r\n    when run, you must cause it, when started running for such\r\n    interactive use in the most ordinary way, to print or display an\r\n    announcement including an appropriate copyright notice and a\r\n    notice that there is no warranty (or else, saying that you provide\r\n    a warranty) and that users may redistribute the program under\r\n    these conditions, and telling the user how to view a copy of this\r\n    License.  (Exception: if the Program itself is interactive but\r\n    does not normally print such an announcement, your work based on\r\n    the Program is not required to print an announcement.)\r\n\r\nThese requirements apply to the modified work as a whole.  If\r\nidentifiable sections of that work are not derived from the Program,\r\nand can be reasonably considered independent and separate works in\r\nthemselves, then this License, and its terms, do not apply to those\r\nsections when you distribute them as separate works.  But when you\r\ndistribute the same sections as part of a whole which is a work based\r\non the Program, the distribution of the whole must be on the terms of\r\nthis License, whose permissions for other licensees extend to the\r\nentire whole, and thus to each and every part regardless of who wrote it.\r\n\r\nThus, it is not the intent of this section to claim rights or contest\r\nyour rights to work written entirely by you; rather, the intent is to\r\nexercise the right to control the distribution of derivative or\r\ncollective works based on the Program.\r\n\r\nIn addition, mere aggregation of another work not based on the Program\r\nwith the Program (or with a work based on the Program) on a volume of\r\na storage or distribution medium does not bring the other work under\r\nthe scope of this License.\r\n\r\n  3. You may copy and distribute the Program (or a work based on it,\r\nunder Section 2) in object code or executable form under the terms of\r\nSections 1 and 2 above provided that you also do one of the following:\r\n\r\n    a) Accompany it with the complete corresponding machine-readable\r\n    source code, which must be distributed under the terms of Sections\r\n    1 and 2 above on a medium customarily used for software interchange; or,\r\n\r\n    b) Accompany it with a written offer, valid for at least three\r\n    years, to give any third party, for a charge no more than your\r\n    cost of physically performing source distribution, a complete\r\n    machine-readable copy of the corresponding source code, to be\r\n    distributed under the terms of Sections 1 and 2 above on a medium\r\n    customarily used for software interchange; or,\r\n\r\n    c) Accompany it with the information you received as to the offer\r\n    to distribute corresponding source code.  (This alternative is\r\n    allowed only for noncommercial distribution and only if you\r\n    received the program in object code or executable form with such\r\n    an offer, in accord with Subsection b above.)\r\n\r\nThe source code for a work means the preferred form of the work for\r\nmaking modifications to it.  For an executable work, complete source\r\ncode means all the source code for all modules it contains, plus any\r\nassociated interface definition files, plus the scripts used to\r\ncontrol compilation and installation of the executable.  However, as a\r\nspecial exception, the source code distributed need not include\r\nanything that is normally distributed (in either source or binary\r\nform) with the major components (compiler, kernel, and so on) of the\r\noperating system on which the executable runs, unless that component\r\nitself accompanies the executable.\r\n\r\nIf distribution of executable or object code is made by offering\r\naccess to copy from a designated place, then offering equivalent\r\naccess to copy the source code from the same place counts as\r\ndistribution of the source code, even though third parties are not\r\ncompelled to copy the source along with the object code.\r\n\r\n  4. You may not copy, modify, sublicense, or distribute the Program\r\nexcept as expressly provided under this License.  Any attempt\r\notherwise to copy, modify, sublicense or distribute the Program is\r\nvoid, and will automatically terminate your rights under this License.\r\nHowever, parties who have received copies, or rights, from you under\r\nthis License will not have their licenses terminated so long as such\r\nparties remain in full compliance.\r\n\r\n  5. You are not required to accept this License, since you have not\r\nsigned it.  However, nothing else grants you permission to modify or\r\ndistribute the Program or its derivative works.  These actions are\r\nprohibited by law if you do not accept this License.  Therefore, by\r\nmodifying or distributing the Program (or any work based on the\r\nProgram), you indicate your acceptance of this License to do so, and\r\nall its terms and conditions for copying, distributing or modifying\r\nthe Program or works based on it.\r\n\r\n  6. Each time you redistribute the Program (or any work based on the\r\nProgram), the recipient automatically receives a license from the\r\noriginal licensor to copy, distribute or modify the Program subject to\r\nthese terms and conditions.  You may not impose any further\r\nrestrictions on the recipients\' exercise of the rights granted herein.\r\nYou are not responsible for enforcing compliance by third parties to\r\nthis License.\r\n\r\n  7. If, as a consequence of a court judgment or allegation of patent\r\ninfringement or for any other reason (not limited to patent issues),\r\nconditions are imposed on you (whether by court order, agreement or\r\notherwise) that contradict the conditions of this License, they do not\r\nexcuse you from the conditions of this License.  If you cannot\r\ndistribute so as to satisfy simultaneously your obligations under this\r\nLicense and any other pertinent obligations, then as a consequence you\r\nmay not distribute the Program at all.  For example, if a patent\r\nlicense would not permit royalty-free redistribution of the Program by\r\nall those who receive copies directly or indirectly through you, then\r\nthe only way you could satisfy both it and this License would be to\r\nrefrain entirely from distribution of the Program.\r\n\r\nIf any portion of this section is held invalid or unenforceable under\r\nany particular circumstance, the balance of the section is intended to\r\napply and the section as a whole is intended to apply in other\r\ncircumstances.\r\n\r\nIt is not the purpose of this section to induce you to infringe any\r\npatents or other property right claims or to contest validity of any\r\nsuch claims; this section has the sole purpose of protecting the\r\nintegrity of the free software distribution system, which is\r\nimplemented by public license practices.  Many people have made\r\ngenerous contributions to the wide range of software distributed\r\nthrough that system in reliance on consistent application of that\r\nsystem; it is up to the author/donor to decide if he or she is willing\r\nto distribute software through any other system and a licensee cannot\r\nimpose that choice.\r\n\r\nThis section is intended to make thoroughly clear what is believed to\r\nbe a consequence of the rest of this License.\r\n\r\n  8. If the distribution and/or use of the Program is restricted in\r\ncertain countries either by patents or by copyrighted interfaces, the\r\noriginal copyright holder who places the Program under this License\r\nmay add an explicit geographical distribution limitation excluding\r\nthose countries, so that distribution is permitted only in or among\r\ncountries not thus excluded.  In such case, this License incorporates\r\nthe limitation as if written in the body of this License.\r\n\r\n  9. The Free Software Foundation may publish revised and/or new versions\r\nof the General Public License from time to time.  Such new versions will\r\nbe similar in spirit to the present version, but may differ in detail to\r\naddress new problems or concerns.\r\n\r\nEach version is given a distinguishing version number.  If the Program\r\nspecifies a version number of this License which applies to it and \"any\r\nlater version\", you have the option of following the terms and conditions\r\neither of that version or of any later version published by the Free\r\nSoftware Foundation.  If the Program does not specify a version number of\r\nthis License, you may choose any version ever published by the Free Software\r\nFoundation.\r\n\r\n  10. If you wish to incorporate parts of the Program into other free\r\nprograms whose distribution conditions are different, write to the author\r\nto ask for permission.  For software which is copyrighted by the Free\r\nSoftware Foundation, write to the Free Software Foundation; we sometimes\r\nmake exceptions for this.  Our decision will be guided by the two goals\r\nof preserving the free status of all derivatives of our free software and\r\nof promoting the sharing and reuse of software generally.\r\n\r\nNO WARRANTY\r\n-----------\r\n\r\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\r\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\r\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\r\nPROVIDE THE PROGRAM \"AS IS\" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\r\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\r\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\r\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\r\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\r\nREPAIR OR CORRECTION.\r\n\r\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\r\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\r\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\r\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\r\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\r\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\r\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\r\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\r\nPOSSIBILITY OF SUCH DAMAGES.\r\n\r\n---------------------------\r\nEND OF TERMS AND CONDITIONS\";s:9:\"changelog\";s:7807:\"Changelog for Babel.\r\n\r\nBabel 3.0.0-pl (December 12, 2016)\r\n=====================================\r\n- [#135] Fixed not found icons\r\n- [#143] Link to a translation by entering the ID\r\n- [#134] Added Babel System Events - thanks to Jako <https://github.com/Jako>\r\n- [#147] Initiated language code standard using IANA\'s Language Subtag Registry\r\n- [#145] bugfixed unlinking unsync TVs\r\n- added options to link to specific resource or all resources\r\n- [#144] added options to unlink to specific resource or all resources\r\n- [#123] Minor cosmetic update\r\n- [#139][#140] Fixed Unable to link translations by searching by pagetitle\r\n- fixed resource title\'s width\r\n- added config to set table\'s height\r\n- added styling to align table in CMP\r\n- initialized PSR-2 coding standard https://github.com/php-fig/fig-standards/blob/master/accepted/PSR-2-coding-style-guide.md\r\n\r\nBabel 3.0.0-rc1 (April 15, 2016)\r\n=====================================\r\n- added Custom Manager Page for resources matrix, supported by Steven Morgan of Waterlogic\r\n\r\nBabel 3.0.0-beta5 (March 22, 2016)\r\n=====================================\r\n- updated plugin to ignore menu if the current context key is not included \"babel.contextKeys\" in System Settings\r\n- changed empty item on combobox\r\n- changed link & unlink logics, no reset whatsoever\r\n- [#103] Added mouseover action on babel\'s button to show menu\r\n- [#66] fixed moving resource to another context\r\n- [#107] Replaced contextKey with cultureKey on drop down selection\r\n- [#114] Fixed context on linking\r\n- [#115] BabelLinks: Add &language Parameter\r\n- [#110] Updated dutch lexicon\r\n\r\nBabel 3.0.0-beta4 (March 25, 2015)\r\n=====================================\r\n- [#105] add &ignoreSiteStatus option to ignore site_status (when the site is offline)\r\n- [#108] fix context\'s link then there\'s no translation on &includeUnlinked=`1` option\r\n- [#106] fix resource selection when selecting empty text (&nbsp;)\r\n\r\nBabel 3.0.0-beta3 (February 14, 2015)\r\n=====================================\r\n- [#101] fix BabelTranslation\r\n- [#100] add optional typeahead combo of pagetitle on searching new link\r\n- [#99] Polish translation\r\n\r\nBabel 3.0.0-beta2 (December 2, 2014)\r\n====================================\r\n- remove \"q\" and \"cultureKey\" url parameters on BabelLinks\r\n- add optional &toArray property to BabelLinks snippet\r\n- add optional &toPlaceholder property to BabelLinks snippet\r\n- add optional &wrapperTpl property to BabelLinks snippet\r\n- add icons\r\n- [#97] Add ru lexicon\r\n- [#73] Add AjaxManager support\r\n\r\nBabel 3.0.0-beta1 (November 28, 2014)\r\n=====================================\r\n- [#77] Update readme.txt\r\n- [#51] Append URL parameters of current page if any\r\n- add &includeUnlinked property to BabelLinks, option to skip/include unlinked context\r\n- [#56] Emptying the MODX trash can corrupt values in modx_site_tmplvar_contentvalues\r\n- [#88] Skip unpublished contexts\r\n- [#82] Check for resourceId parameter before defaulting.\r\n- [#78][#62] added outputSeparator for BabelLinks\r\n- [#75] Replaced deprecated method clearCache() with refresh()\r\n- [#84] optimize OnResourceDuplicate\r\n- [#44][#29] Using cultureKey instead of contextKey on BabelTranslation snippet\r\n- [#70] fix is_folder to isfolder\r\n- [#27][#90][#92] Refactor language selection, runs using AJAX\r\n- [#83][#59] extend babel plugin OnResourceDuplicate for nested resources\r\n- [#67] italian translation\r\n- [#60] Added Dutch translation\r\n- [#58][#64] Fixed the error with updating a resource, at least in the quick update window\r\n\r\nBabel 2.2.5-pl\r\n==============\r\n- Extended list of languages in translation files and added Romanian translation.\r\n- Issue #31: Maked babel buttons in manager position fixed and changed look accordingly.\r\n\r\nBabel 2.2.4-pl\r\n==============\r\n- Fixed issue #25: Unchecked \"checkbox\" TVs are now synchronized correctly.\r\n- Issue #22: Added showCurrent parameter to BabelLinks snippet.\r\n\r\nBabel 2.2.3-rc1\r\n==============\r\n- Issue #18: Added \'id\' placeholder for BabelLink chunk which is used by the BabelLinks snippet.\r\n- Fixed issue #21: Manager redirect causes error in Google Chrome browser.\r\n\r\nBabel 2.2.2-rc2\r\n==============\r\n- Fixed bug: Initial synchronization of TV values when setting a link manually didn\'t work.\r\n\r\nBabel 2.2.2-rc1\r\n==============\r\n- Added feature #16: Values of synchronized TVs of the source resource(s) can be copied to the target resource when setting a translation link manually.\r\n- Added showUnpublished parameter to BabelLinks and BabelTranslation snippets.\r\n\r\nBabel 2.2.1-rc1\r\n==============\r\n- Added feature #11: User is redirect to new resource after creating a translation.\r\n- Fixed issue #15: Babel TV of duplicated resources is being initiated.\r\n- Alias is duplicated when creating an translation, too.\r\n\r\nBabel 2.2.0-pl\r\n==============\r\n- Fixed bug which occured when creating new resources.\r\n- Fixed bug in validation which is performed on setting a link manually.\r\n- Improved performance of TV synchronization.\r\n- Regarding issue #10: Added checks to handle invalid Babel settings (defined by the user).\r\n\r\nBabel 2.1.1-pl1\r\n==============\r\n- Fixed issue #9: Calling deprecated and non-existing method in babel.class\r\n\r\nBabel 2.1.1-rc1\r\n==============\r\n- Added &resourceId parameter to BabelLinks snippet.\r\n- Added French translation for new keys from version 2.1.0-beta.\r\n- Added BabelTranslation snippet to get the id of a translated resource in a given context.\r\n- Fixed bug with empty babel settings (contextKeys and syncTvs).\r\n- In order to protect the Babel TV from being manipulated manually its type is set to \'hidden\' by default.\r\n\r\nBabel 2.1.0-beta\r\n==============\r\n- Added Frech translation: Thanks to Romain <romain@meltingmedia.net>\r\n- New Babel-Box:\r\n  - A chunk is used to generate the language links (mgr/babelBoxItem).\r\n  - Changed CSS.\r\n  - Added JavaScript (for the langauge layers, see below).\r\n  - All languages (contexts) of current group are displayed even if there are no links defined.\r\n  - If there is no link to a language it\'s background is light gray.\r\n  - When mouseovering a language link a layer is displayed where you can\r\n	- create a translation (new resource) if no link is defined.\r\n  	- manually link the translation to an existing resource if no link is defined.\r\n  	- remove a link if a link is defined.\r\n  - Added validation to keep the babel TV clear\r\n  - Added several keys to the lexicon: French translation still pending.\r\n\r\nBabel 2.0.0-beta\r\n==============\r\n- Total reengineering of the whole extra (code structure and logic, too).\r\n  => NOT BACKWARD COMPATIBLE to older versions.\r\n- Fixed issue with primary key validation errors when linking the Babel TV to templates\r\n- Added build script\r\n- Added multilanguage support for the extra itself\r\n- Easier but more powerfull configuration:\r\n	No need to specify names/caption of context anymore (caption is derived from the contexts\' cultureKey).\r\n	3 system settings which can be set during package installation.\r\n	* babel.contextKeys:\r\n		Define which context should be used to link translation.\r\n		Defining several groups of context is supported, too (see readme.txt).\r\n	* babel.babelTvName:\r\n		Name of TV in which links between translated resources are keept.\r\n	* babel.syncTvs:\r\n		IDs of TVs which should be synchronized by Babel.\r\n- Moved CSS into asset folder\r\n- Moved codebase to https://github.com/mikrobi/babel/\r\n- Plugin listens to OnEmptyTrash event to remove links to non-existing resources stored in the Babel TV\r\n- Plugin listens to OnContextRemove event to remove links to non-existing context stored in the Babel TV\r\n  and to clean the babel.contextKeys setting\r\n- This version is NOT BACKWARD COMPATIBLE to older versions\r\n\r\n\r\nBabel 1.0.0\r\n==============\r\n- Initial release from Sylvain Aerni <enzyms@gmail.com> see https://github.com/enzyms/babel\";s:6:\"readme\";s:7423:\"--------------------\r\nBabel\r\n--------------------\r\nAuthor: Jakob Class <jakob.class@class-zec.de>\r\n		goldsky <goldsky@virtudraft.com>\r\n\r\nLicense: GNU GPLv2 (or later at your option)\r\n--------------------\r\n\r\nBabel is an Extra for MODx Revolution that helps you managing your multilingual\r\nwebsites using different contexts. Babel even supports managing several different\r\nmultilingual websites within one MODx instance by using so called context groups.\r\n\r\nBabel maintains links between translated resources. In the manager you can use\r\nthe Babel Box to easily switch between the different language versions\r\nof your resources. Translations can be created automatically by Babel or defined\r\nmanually.\r\n\r\nAdditionally Babel can be used to synchronize certain template variables (TVs)\r\nof translated resources which should be the same in every context (language).\r\n\r\nFeel free to suggest ideas/improvements/bugs on GitHub:\r\nhttps://github.com/mikrobi/babel/issues\r\n\r\n\r\nIMPORTANT: Upgrading from version < 2.0.0:\r\n====================\r\n\r\nBabel is based on ideas of Sylvain Aerni <enzyms@gmail.com> and has been completely\r\nreengineered in version 2.0.0 and is NOT BACKWARD COMPATIBLE to older versions.\r\nIf you\'re using an older version of Babel you have to uninstall and remove that\r\nversion first.\r\n\r\n\r\nInstallation\r\n====================\r\n\r\n0.	Create a context for each language and set the cultureKey and site_url settings\r\n	according to your needs. You may refer to our tutorial to setup your\r\n	multilingual site(s):\r\n	http://www.multilingual-modx.com/blog/2011/multilingual-websites-with-modx-and-babel.html\r\n\r\n	Be sure that your context switches work well.\r\n\r\n1.	Install Babel via the package manager and set the system settings for Babel via\r\n	the form displayed during setup:\r\n	- Context Keys (babel.contextKeys):\r\n		Comma separated list of context keys which should be used to link\r\n		multilingual resources.\r\n		For advanced configuration you may define several groups of context keys\r\n		by using a semicolon (;) as delimiter. This is usefull if your\'re\r\n		administrating multiple multilingual sites within one MODx instance.\r\n		Example scenario:\r\n			site1: en, de, fr. Using contexts: web, site1de, site1fr\r\n			site2: en, de. Using contexts: site2en, site2de\r\n			You would set babel.contextKeys to \"web,site1de,site1fr;site2en,site2de\".\r\n\r\n	- Name of Babel TV (babel.babelTvName):\r\n		Name of template variable (TV) in which Babel will store the links between\r\n		multilingual resources this TV will be maintained by Babel. Please don\'t\r\n		change this TV manually otherwhise your translation links may be broken.\r\n\r\n	- IDs of TVs to be synchronized (babel.syncTvs):\r\n		Comma separated list of ids of template variables (TVs) which should be\r\n		synchronized by Babel.\r\n\r\n\r\nUsage\r\n====================\r\n\r\nWhen you open a resource for editing, the Babel Box\r\nwill be displayed on top of the resource form. There will be button-like links for\r\neach language (context) you have defined in the babel.contextKeys system setting.\r\n\r\nThe buttons may have three different colors according to their state:\r\n- Black:\r\n	Language of the currently displayed resource.\r\n- Green:\r\n	Language for which a translated resource is defined.\r\n- Light Gray:\r\n	Language for which no translation has been created or defined yet.\r\n\r\nBy clicking on the (green) language buttons you can easily switch between the\r\ndifferent language versions of your resources.\r\n\r\nIf there are no translations defined for certain language (gray button),\r\nmousover the language\'s button: a layer appears where you can tell Babel to\r\ncreate a translation of the current resource or you can set the translation link\r\nto an existing resource manually by entering the ID of the translated resource.\r\n\r\nWhen clicking on \"Create Translation\" Babel will create a new resource in the\r\nlanguage\'s context and copy all the content of the current resource to the newly\r\ncreated resource. You now can translated all the content and TVs and publish\r\nthe translated resource.\r\n\r\nIf you\'d like to remove a translation link, just mouseover the (green) language\r\nbutton: a layer appears where you can click on \"Unlink translation\" button to\r\nremove the translation link to this language.\r\n\r\n\r\nSnippet usage\r\n====================\r\n\r\nCurrently there are two snippets available for Babel:\r\nBabelLinks and BabelTranslation.\r\n\r\n\r\nBabelLinks\r\n--------------------\r\nBabelLinks is a snippet which displays links to other languages (contexts)\r\nin the frontend. You can call the snippet in your templates like this:\r\n\r\n<ul>\r\n  [[BabelLinks]]\r\n</ul>\r\n\r\nThe following parameters are supported by BabelLinks:\r\n- resourceId (optional):\r\n	ID of resource of which links to translations should be displayed.\r\n	Default: current resource\'s ID.\r\n- tpl (optional):\r\n	Chunk to display a language link.\r\n	Default: babelLink.\r\n- activeCls (optional):\r\n	CSS class name for the current active language.\r\n	Default: active.\r\n- showUnpublished (optional):\r\n	Flag whether to show unpublished translations.\r\n	Default: 0\r\n- showCurrent (optional):\r\n	Flag whether to show a link to a translation of the current language.\r\n	Default: 0\r\n- includeUnlinked (optional):\r\n	Flag whether to show unlinked context.\r\n	Default: 0\r\n\r\nYou can use your own chunk to display the links\r\n\r\n[[BabelLinks? &tpl=`babelLink`]]\r\n\r\nIn this Chunk you have access to the following placeholders:\r\n- [[+url]]:\r\n	Url to linked translation (or site_url of specific language if there\r\n	is no translated resource available).\r\n- [[+cultureKey]]:\r\n	Culture key of translation (e.g en, de, fr oder es).\r\n	You may use the babel lexicon to display the language\'s name:\r\n	[[%babel.language_[[+cultureKey]]? &topic=`default` &namespace=`babel`]]\r\n- [[+active]]:\r\n	If link points to a resource of the current active language (context)\r\n	this placeholder is set to the active CSS class name specified by the\r\n	&activeCls parameter (default=active). Otherwise this placeholder is empty.\r\n- [[+id]]:\r\n	ID of tranlated resource. If no translation is available this placeholder\r\n	is empty (\'\').\r\n\r\n\r\nBabelTranslation\r\n--------------------\r\nThe BabelTranslation snippets returns the ID of a translated resource in a\r\ngiven context.\r\n\r\nThe following parameters are supported by BabelLinks:\r\n- resourceId (optional):\r\n	ID of resource of which a translated resource should be determined.\r\n	Default: current resource\'s ID.\r\n- contextKey (required):\r\n	Key of context in which translated resource should be determined.\r\n- showUnpublished (optional):\r\n	Flag whether to show unpublished translations.\r\n	Default: 0\r\n\r\nExample usage:\r\n\r\n[[BabelTranslation? &contextKey=`de`]]\r\n\r\nThis will return the ID of the translated resource located in the \"de\" context\r\nof the current resource.\r\n\r\nPlugin Events\r\n====================\r\n\r\nBabel triggers some system events you could use in plugins. The following\r\nevents are available:\r\n\r\nOnBabelDuplicate: invoked on duplicating the resource in a new language context\r\nOnBabelLink: invoked on link the resource with a target resource\r\nOnBabelUnlink: invoked on unlink the resource from a target resource\r\n\r\nA generic plugin for the events could be found on GitHub:\r\nhttps://github.com/Jako/BabelEvents\r\n\r\nYou could use the plugins for i.e. an automatic translation of the resource\r\nvia a webservice.\r\n\r\n\r\nSupport\r\n====================\r\n\r\nFeel free to suggest ideas/improvements/bugs on GitHub:\r\nhttps://github.com/mikrobi/babel/issues\";s:13:\"setup-options\";s:32:\"babel-3.0.0-pl/setup-options.php\";s:9:\"signature\";s:14:\"babel-3.0.0-pl\";s:6:\"action\";s:26:\"workspace/packages/install\";s:8:\"register\";s:3:\"mgr\";s:5:\"topic\";s:42:\"/workspace/package/install/babel-3.0.0-pl/\";s:11:\"contextKeys\";s:9:\"en,ua,web\";s:11:\"babelTvName\";s:18:\"babelLanguageLinks\";s:7:\"syncTvs\";s:0:\"\";s:14:\"package_action\";i:0;}', 'Babel', 'a:38:{s:2:\"id\";s:24:\"584e5c06bc8dd305728b4567\";s:7:\"package\";s:24:\"4d556d09b2b083396d000f7d\";s:12:\"display_name\";s:14:\"babel-3.0.0-pl\";s:4:\"name\";s:5:\"Babel\";s:7:\"version\";s:5:\"3.0.0\";s:13:\"version_major\";s:1:\"3\";s:13:\"version_minor\";s:1:\"0\";s:13:\"version_patch\";s:1:\"0\";s:7:\"release\";s:2:\"pl\";s:8:\"vrelease\";s:2:\"pl\";s:14:\"vrelease_index\";s:0:\"\";s:6:\"author\";s:7:\"goldsky\";s:11:\"description\";s:130:\"<p>This version adds Custom Manager Page for resources matrix, to compare the translations of entire resources in the website.</p>\";s:12:\"instructions\";s:342:\"<p>Install via package management and set configuration parameters in the setup dialog according to your needs.</p>\n<p>If you\'re having problems take a look at this <a href=\"http://www.class-zec.com/en/blog/2011/multilingual-websites-with-modx-and-babel.html\">tutorial describing the setup of a multilingual site using MODx and Babel</a>.</p>\";s:9:\"changelog\";s:1025:\"<p>Babel 3.0.0-pl (December 12, 2016)</p><p>=====================================</p><ul><li>- &#91;#135&#93; Fixed not found icons</li><li>- &#91;#143&#93; Link to a translation by entering the ID</li><li>- &#91;#134&#93; Added Babel System Events - thanks to Jako &lt;https://github.com/Jako&gt;</li><li>- &#91;#147&#93; Initiated language code standard using IANA\'s Language Subtag Registry</li><li>- &#91;#145&#93; bugfixed unlinking unsync TVs</li><li>- added options to link to specific resource or all resources</li><li>- &#91;#144&#93; added options to unlink to specific resource or all resources</li><li>- &#91;#123&#93; Minor cosmetic update</li><li>- &#91;#139&#93;&#91;#140&#93; Fixed Unable to link translations by searching by pagetitle</li><li>- fixed resource title\'s width</li><li>- added config to set table\'s height</li><li>- added styling to align table in CMP</li><li>- initialized PSR-2 coding standard https://github.com/php-fig/fig-standards/blob/master/accepted/PSR-2-coding-style-guide.md</li></ul>\";s:9:\"createdon\";s:24:\"2016-12-12T08:12:54+0000\";s:9:\"createdby\";s:7:\"goldsky\";s:8:\"editedon\";s:24:\"2019-06-10T08:38:49+0000\";s:10:\"releasedon\";s:24:\"2016-12-12T08:12:54+0000\";s:9:\"downloads\";s:5:\"39760\";s:8:\"approved\";s:4:\"true\";s:7:\"audited\";s:5:\"false\";s:8:\"featured\";s:5:\"false\";s:10:\"deprecated\";s:5:\"false\";s:7:\"license\";s:5:\"GPLv2\";s:7:\"smf_url\";s:0:\"\";s:10:\"repository\";s:24:\"4d4c3fa6b2b0830da9000001\";s:8:\"supports\";s:3:\"2.4\";s:8:\"location\";s:60:\"http://modx.com/extras/download/?id=584e5c06bc8dd305728b4568\";s:9:\"signature\";s:14:\"babel-3.0.0-pl\";s:11:\"supports_db\";s:5:\"mysql\";s:16:\"minimum_supports\";s:3:\"2.4\";s:9:\"breaks_at\";s:8:\"10000000\";s:10:\"screenshot\";s:85:\"http://modx.s3.amazonaws.com/extras/4d556d09b2b083396d000f7d/babel-linking-window.png\";s:4:\"file\";a:7:{s:2:\"id\";s:24:\"584e5c06bc8dd305728b4568\";s:7:\"version\";s:24:\"584e5c06bc8dd305728b4567\";s:8:\"filename\";s:28:\"babel-3.0.0-pl.transport.zip\";s:9:\"downloads\";s:5:\"11194\";s:6:\"lastip\";s:12:\"185.3.216.96\";s:9:\"transport\";s:4:\"true\";s:8:\"location\";s:60:\"http://modx.com/extras/download/?id=584e5c06bc8dd305728b4568\";}s:17:\"package-signature\";s:14:\"babel-3.0.0-pl\";s:10:\"categories\";s:50:\"administration,administration,internationalization\";s:4:\"tags\";s:0:\"\";}', 3, 0, 0, 'pl', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_transport_providers`
--

CREATE TABLE `modx_transport_providers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` mediumtext,
  `service_url` tinytext,
  `username` varchar(191) NOT NULL DEFAULT '',
  `api_key` varchar(191) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `priority` tinyint(4) NOT NULL DEFAULT '10',
  `properties` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `modx_transport_providers`
--

INSERT INTO `modx_transport_providers` (`id`, `name`, `description`, `service_url`, `username`, `api_key`, `created`, `updated`, `active`, `priority`, `properties`) VALUES
(1, 'modx.com', 'The official MODX transport provider for 3rd party components.', 'https://rest.modx.com/extras/', '', '', '2019-02-14 17:13:52', NULL, 1, 10, '');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_users`
--

CREATE TABLE `modx_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `cachepwd` varchar(255) NOT NULL DEFAULT '',
  `class_key` varchar(100) NOT NULL DEFAULT 'modUser',
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `remote_key` varchar(191) DEFAULT NULL,
  `remote_data` text,
  `hash_class` varchar(100) NOT NULL DEFAULT 'hashing.modNative',
  `salt` varchar(100) NOT NULL DEFAULT '',
  `primary_group` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `session_stale` text,
  `sudo` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `createdon` int(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `modx_users`
--

INSERT INTO `modx_users` (`id`, `username`, `password`, `cachepwd`, `class_key`, `active`, `remote_key`, `remote_data`, `hash_class`, `salt`, `primary_group`, `session_stale`, `sudo`, `createdon`) VALUES
(1, 'admin', '$2y$10$WI0Qa0YUTIcdMDMEopAvqOBB5B3o9IwnUtkvTIrx1ev90pLbV.Wl6', '', 'modUser', 1, NULL, NULL, 'hashing.modNative', 'f1916d35a1a704b8a03c4a4dbbf2b88b', 1, 'a:2:{i:0;s:3:\"mgr\";i:1;s:3:\"web\";}', 1, 1559826644),
(2, 'manager', '$2y$10$lxw4sNZKogMQVkwTBdBVZe8fmwLWXRoAM3i8AHxmxL/UboEmjh8L6', '', 'modUser', 1, NULL, NULL, 'hashing.modNative', '4050be3217437f92c4dab60c5202c26d', 2, NULL, 0, 1559830904);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_user_attributes`
--

CREATE TABLE `modx_user_attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `internalKey` int(10) NOT NULL,
  `fullname` varchar(100) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `phone` varchar(100) NOT NULL DEFAULT '',
  `mobilephone` varchar(100) NOT NULL DEFAULT '',
  `blocked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `blockeduntil` int(11) NOT NULL DEFAULT '0',
  `blockedafter` int(11) NOT NULL DEFAULT '0',
  `logincount` int(11) NOT NULL DEFAULT '0',
  `lastlogin` int(11) NOT NULL DEFAULT '0',
  `thislogin` int(11) NOT NULL DEFAULT '0',
  `failedlogincount` int(10) NOT NULL DEFAULT '0',
  `sessionid` varchar(100) NOT NULL DEFAULT '',
  `dob` int(10) NOT NULL DEFAULT '0',
  `gender` int(1) NOT NULL DEFAULT '0',
  `address` text NOT NULL,
  `country` varchar(191) NOT NULL DEFAULT '',
  `city` varchar(191) NOT NULL DEFAULT '',
  `state` varchar(25) NOT NULL DEFAULT '',
  `zip` varchar(25) NOT NULL DEFAULT '',
  `fax` varchar(100) NOT NULL DEFAULT '',
  `photo` varchar(191) NOT NULL DEFAULT '',
  `comment` text NOT NULL,
  `website` varchar(191) NOT NULL DEFAULT '',
  `extended` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `modx_user_attributes`
--

INSERT INTO `modx_user_attributes` (`id`, `internalKey`, `fullname`, `email`, `phone`, `mobilephone`, `blocked`, `blockeduntil`, `blockedafter`, `logincount`, `lastlogin`, `thislogin`, `failedlogincount`, `sessionid`, `dob`, `gender`, `address`, `country`, `city`, `state`, `zip`, `fax`, `photo`, `comment`, `website`, `extended`) VALUES
(1, 1, 'Администратор по умолчанию', 'tyaa@ukr.net', '', '', 0, 0, 0, 9, 1559831510, 1560172822, 0, '6tpfeq7bnfg9j8t28vtotrsfu2', 0, 0, '', '', '', '', '', '', '', '', '', NULL),
(2, 2, '', 'manager@localhost.com', '', '', 0, 0, 0, 4, 1559831233, 1559831416, 0, 'dv1tl0fhae1649ehahothtk0t6', 0, 0, '', '', '', '', '', '', '', '', '', '[]');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_user_group_roles`
--

CREATE TABLE `modx_user_group_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` mediumtext,
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `modx_user_group_roles`
--

INSERT INTO `modx_user_group_roles` (`id`, `name`, `description`, `authority`) VALUES
(1, 'Member', NULL, 9999),
(2, 'Super User', NULL, 0),
(3, 'manager', '', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_user_group_settings`
--

CREATE TABLE `modx_user_group_settings` (
  `group` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `key` varchar(50) NOT NULL,
  `value` text,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(191) NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_user_messages`
--

CREATE TABLE `modx_user_messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(15) NOT NULL DEFAULT '',
  `subject` varchar(191) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `sender` int(10) NOT NULL DEFAULT '0',
  `recipient` int(10) NOT NULL DEFAULT '0',
  `private` tinyint(4) NOT NULL DEFAULT '0',
  `date_sent` datetime DEFAULT NULL,
  `read` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_user_settings`
--

CREATE TABLE `modx_user_settings` (
  `user` int(11) NOT NULL DEFAULT '0',
  `key` varchar(50) NOT NULL DEFAULT '',
  `value` text,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(191) NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_workspaces`
--

CREATE TABLE `modx_workspaces` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `path` varchar(191) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `attributes` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `modx_workspaces`
--

INSERT INTO `modx_workspaces` (`id`, `name`, `path`, `created`, `active`, `attributes`) VALUES
(1, 'Default MODX workspace', '{core_path}', '2019-06-06 16:10:37', 1, NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `modx_access_actiondom`
--
ALTER TABLE `modx_access_actiondom`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`);

--
-- Индексы таблицы `modx_access_actions`
--
ALTER TABLE `modx_access_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`);

--
-- Индексы таблицы `modx_access_category`
--
ALTER TABLE `modx_access_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Индексы таблицы `modx_access_context`
--
ALTER TABLE `modx_access_context`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`);

--
-- Индексы таблицы `modx_access_elements`
--
ALTER TABLE `modx_access_elements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Индексы таблицы `modx_access_media_source`
--
ALTER TABLE `modx_access_media_source`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Индексы таблицы `modx_access_menus`
--
ALTER TABLE `modx_access_menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`);

--
-- Индексы таблицы `modx_access_namespace`
--
ALTER TABLE `modx_access_namespace`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Индексы таблицы `modx_access_permissions`
--
ALTER TABLE `modx_access_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `template` (`template`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `modx_access_policies`
--
ALTER TABLE `modx_access_policies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `parent` (`parent`),
  ADD KEY `class` (`class`),
  ADD KEY `template` (`template`);

--
-- Индексы таблицы `modx_access_policy_templates`
--
ALTER TABLE `modx_access_policy_templates`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_access_policy_template_groups`
--
ALTER TABLE `modx_access_policy_template_groups`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_access_resources`
--
ALTER TABLE `modx_access_resources`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Индексы таблицы `modx_access_resource_groups`
--
ALTER TABLE `modx_access_resource_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`,`target`,`principal`,`authority`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Индексы таблицы `modx_access_templatevars`
--
ALTER TABLE `modx_access_templatevars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Индексы таблицы `modx_actiondom`
--
ALTER TABLE `modx_actiondom`
  ADD PRIMARY KEY (`id`),
  ADD KEY `set` (`set`),
  ADD KEY `action` (`action`),
  ADD KEY `name` (`name`),
  ADD KEY `active` (`active`),
  ADD KEY `for_parent` (`for_parent`),
  ADD KEY `rank` (`rank`);

--
-- Индексы таблицы `modx_actions`
--
ALTER TABLE `modx_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `namespace` (`namespace`),
  ADD KEY `controller` (`controller`);

--
-- Индексы таблицы `modx_actions_fields`
--
ALTER TABLE `modx_actions_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `action` (`action`),
  ADD KEY `type` (`type`),
  ADD KEY `tab` (`tab`);

--
-- Индексы таблицы `modx_active_users`
--
ALTER TABLE `modx_active_users`
  ADD PRIMARY KEY (`internalKey`);

--
-- Индексы таблицы `modx_categories`
--
ALTER TABLE `modx_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category` (`parent`,`category`),
  ADD KEY `parent` (`parent`),
  ADD KEY `rank` (`rank`);

--
-- Индексы таблицы `modx_categories_closure`
--
ALTER TABLE `modx_categories_closure`
  ADD PRIMARY KEY (`ancestor`,`descendant`);

--
-- Индексы таблицы `modx_class_map`
--
ALTER TABLE `modx_class_map`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `class` (`class`),
  ADD KEY `parent_class` (`parent_class`),
  ADD KEY `name_field` (`name_field`);

--
-- Индексы таблицы `modx_content_type`
--
ALTER TABLE `modx_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `modx_context`
--
ALTER TABLE `modx_context`
  ADD PRIMARY KEY (`key`),
  ADD KEY `name` (`name`),
  ADD KEY `rank` (`rank`);

--
-- Индексы таблицы `modx_context_resource`
--
ALTER TABLE `modx_context_resource`
  ADD PRIMARY KEY (`context_key`,`resource`);

--
-- Индексы таблицы `modx_context_setting`
--
ALTER TABLE `modx_context_setting`
  ADD PRIMARY KEY (`context_key`,`key`);

--
-- Индексы таблицы `modx_dashboard`
--
ALTER TABLE `modx_dashboard`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `hide_trees` (`hide_trees`);

--
-- Индексы таблицы `modx_dashboard_widget`
--
ALTER TABLE `modx_dashboard_widget`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `type` (`type`),
  ADD KEY `namespace` (`namespace`),
  ADD KEY `lexicon` (`lexicon`);

--
-- Индексы таблицы `modx_dashboard_widget_placement`
--
ALTER TABLE `modx_dashboard_widget_placement`
  ADD PRIMARY KEY (`dashboard`,`widget`),
  ADD KEY `rank` (`rank`);

--
-- Индексы таблицы `modx_documentgroup_names`
--
ALTER TABLE `modx_documentgroup_names`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `modx_document_groups`
--
ALTER TABLE `modx_document_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `document_group` (`document_group`),
  ADD KEY `document` (`document`);

--
-- Индексы таблицы `modx_element_property_sets`
--
ALTER TABLE `modx_element_property_sets`
  ADD PRIMARY KEY (`element`,`element_class`,`property_set`);

--
-- Индексы таблицы `modx_extension_packages`
--
ALTER TABLE `modx_extension_packages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `namespace` (`namespace`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `modx_fc_profiles`
--
ALTER TABLE `modx_fc_profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `rank` (`rank`),
  ADD KEY `active` (`active`);

--
-- Индексы таблицы `modx_fc_profiles_usergroups`
--
ALTER TABLE `modx_fc_profiles_usergroups`
  ADD PRIMARY KEY (`usergroup`,`profile`);

--
-- Индексы таблицы `modx_fc_sets`
--
ALTER TABLE `modx_fc_sets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profile` (`profile`),
  ADD KEY `action` (`action`),
  ADD KEY `active` (`active`),
  ADD KEY `template` (`template`);

--
-- Индексы таблицы `modx_lexicon_entries`
--
ALTER TABLE `modx_lexicon_entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `topic` (`topic`),
  ADD KEY `namespace` (`namespace`),
  ADD KEY `language` (`language`);

--
-- Индексы таблицы `modx_manager_log`
--
ALTER TABLE `modx_manager_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_occurred` (`user`,`occurred`);

--
-- Индексы таблицы `modx_media_sources`
--
ALTER TABLE `modx_media_sources`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `class_key` (`class_key`),
  ADD KEY `is_stream` (`is_stream`);

--
-- Индексы таблицы `modx_media_sources_contexts`
--
ALTER TABLE `modx_media_sources_contexts`
  ADD PRIMARY KEY (`source`,`context_key`);

--
-- Индексы таблицы `modx_media_sources_elements`
--
ALTER TABLE `modx_media_sources_elements`
  ADD PRIMARY KEY (`source`,`object`,`object_class`,`context_key`);

--
-- Индексы таблицы `modx_membergroup_names`
--
ALTER TABLE `modx_membergroup_names`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `parent` (`parent`),
  ADD KEY `rank` (`rank`),
  ADD KEY `dashboard` (`dashboard`);

--
-- Индексы таблицы `modx_member_groups`
--
ALTER TABLE `modx_member_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role` (`role`),
  ADD KEY `rank` (`rank`);

--
-- Индексы таблицы `modx_menus`
--
ALTER TABLE `modx_menus`
  ADD PRIMARY KEY (`text`),
  ADD KEY `parent` (`parent`),
  ADD KEY `action` (`action`),
  ADD KEY `namespace` (`namespace`);

--
-- Индексы таблицы `modx_namespaces`
--
ALTER TABLE `modx_namespaces`
  ADD PRIMARY KEY (`name`);

--
-- Индексы таблицы `modx_property_set`
--
ALTER TABLE `modx_property_set`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`);

--
-- Индексы таблицы `modx_register_messages`
--
ALTER TABLE `modx_register_messages`
  ADD PRIMARY KEY (`topic`,`id`),
  ADD KEY `created` (`created`),
  ADD KEY `valid` (`valid`),
  ADD KEY `accessed` (`accessed`),
  ADD KEY `accesses` (`accesses`),
  ADD KEY `expires` (`expires`);

--
-- Индексы таблицы `modx_register_queues`
--
ALTER TABLE `modx_register_queues`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `modx_register_topics`
--
ALTER TABLE `modx_register_topics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `queue` (`queue`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `modx_session`
--
ALTER TABLE `modx_session`
  ADD PRIMARY KEY (`id`),
  ADD KEY `access` (`access`);

--
-- Индексы таблицы `modx_site_content`
--
ALTER TABLE `modx_site_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alias` (`alias`),
  ADD KEY `published` (`published`),
  ADD KEY `pub_date` (`pub_date`),
  ADD KEY `unpub_date` (`unpub_date`),
  ADD KEY `parent` (`parent`),
  ADD KEY `isfolder` (`isfolder`),
  ADD KEY `template` (`template`),
  ADD KEY `menuindex` (`menuindex`),
  ADD KEY `searchable` (`searchable`),
  ADD KEY `cacheable` (`cacheable`),
  ADD KEY `hidemenu` (`hidemenu`),
  ADD KEY `class_key` (`class_key`),
  ADD KEY `context_key` (`context_key`),
  ADD KEY `uri` (`uri`(191)),
  ADD KEY `uri_override` (`uri_override`),
  ADD KEY `hide_children_in_tree` (`hide_children_in_tree`),
  ADD KEY `show_in_tree` (`show_in_tree`),
  ADD KEY `cache_refresh_idx` (`parent`,`menuindex`,`id`);
ALTER TABLE `modx_site_content` ADD FULLTEXT KEY `content_ft_idx` (`pagetitle`,`longtitle`,`description`,`introtext`,`content`);

--
-- Индексы таблицы `modx_site_htmlsnippets`
--
ALTER TABLE `modx_site_htmlsnippets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `static` (`static`);

--
-- Индексы таблицы `modx_site_plugins`
--
ALTER TABLE `modx_site_plugins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `disabled` (`disabled`),
  ADD KEY `static` (`static`);

--
-- Индексы таблицы `modx_site_plugin_events`
--
ALTER TABLE `modx_site_plugin_events`
  ADD PRIMARY KEY (`pluginid`,`event`),
  ADD KEY `priority` (`priority`);

--
-- Индексы таблицы `modx_site_snippets`
--
ALTER TABLE `modx_site_snippets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `moduleguid` (`moduleguid`),
  ADD KEY `static` (`static`);

--
-- Индексы таблицы `modx_site_templates`
--
ALTER TABLE `modx_site_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `templatename` (`templatename`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `static` (`static`);

--
-- Индексы таблицы `modx_site_tmplvars`
--
ALTER TABLE `modx_site_tmplvars`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `rank` (`rank`),
  ADD KEY `static` (`static`);

--
-- Индексы таблицы `modx_site_tmplvar_access`
--
ALTER TABLE `modx_site_tmplvar_access`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tmplvar_template` (`tmplvarid`,`documentgroup`);

--
-- Индексы таблицы `modx_site_tmplvar_contentvalues`
--
ALTER TABLE `modx_site_tmplvar_contentvalues`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tv_cnt` (`tmplvarid`,`contentid`),
  ADD KEY `tmplvarid` (`tmplvarid`),
  ADD KEY `contentid` (`contentid`);

--
-- Индексы таблицы `modx_site_tmplvar_templates`
--
ALTER TABLE `modx_site_tmplvar_templates`
  ADD PRIMARY KEY (`tmplvarid`,`templateid`);

--
-- Индексы таблицы `modx_system_eventnames`
--
ALTER TABLE `modx_system_eventnames`
  ADD PRIMARY KEY (`name`);

--
-- Индексы таблицы `modx_system_settings`
--
ALTER TABLE `modx_system_settings`
  ADD PRIMARY KEY (`key`);

--
-- Индексы таблицы `modx_transport_packages`
--
ALTER TABLE `modx_transport_packages`
  ADD PRIMARY KEY (`signature`),
  ADD KEY `workspace` (`workspace`),
  ADD KEY `provider` (`provider`),
  ADD KEY `disabled` (`disabled`),
  ADD KEY `package_name` (`package_name`),
  ADD KEY `version_major` (`version_major`),
  ADD KEY `version_minor` (`version_minor`),
  ADD KEY `version_patch` (`version_patch`),
  ADD KEY `release` (`release`),
  ADD KEY `release_index` (`release_index`);

--
-- Индексы таблицы `modx_transport_providers`
--
ALTER TABLE `modx_transport_providers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `api_key` (`api_key`),
  ADD KEY `username` (`username`),
  ADD KEY `active` (`active`),
  ADD KEY `priority` (`priority`);

--
-- Индексы таблицы `modx_users`
--
ALTER TABLE `modx_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `class_key` (`class_key`),
  ADD KEY `remote_key` (`remote_key`),
  ADD KEY `primary_group` (`primary_group`);

--
-- Индексы таблицы `modx_user_attributes`
--
ALTER TABLE `modx_user_attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `internalKey` (`internalKey`);

--
-- Индексы таблицы `modx_user_group_roles`
--
ALTER TABLE `modx_user_group_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `authority` (`authority`);

--
-- Индексы таблицы `modx_user_group_settings`
--
ALTER TABLE `modx_user_group_settings`
  ADD PRIMARY KEY (`group`,`key`);

--
-- Индексы таблицы `modx_user_messages`
--
ALTER TABLE `modx_user_messages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_user_settings`
--
ALTER TABLE `modx_user_settings`
  ADD PRIMARY KEY (`user`,`key`);

--
-- Индексы таблицы `modx_workspaces`
--
ALTER TABLE `modx_workspaces`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `path` (`path`),
  ADD KEY `name` (`name`),
  ADD KEY `active` (`active`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `modx_access_actiondom`
--
ALTER TABLE `modx_access_actiondom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_access_actions`
--
ALTER TABLE `modx_access_actions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_access_category`
--
ALTER TABLE `modx_access_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `modx_access_context`
--
ALTER TABLE `modx_access_context`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `modx_access_elements`
--
ALTER TABLE `modx_access_elements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_access_media_source`
--
ALTER TABLE `modx_access_media_source`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `modx_access_menus`
--
ALTER TABLE `modx_access_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_access_namespace`
--
ALTER TABLE `modx_access_namespace`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_access_permissions`
--
ALTER TABLE `modx_access_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=222;

--
-- AUTO_INCREMENT для таблицы `modx_access_policies`
--
ALTER TABLE `modx_access_policies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `modx_access_policy_templates`
--
ALTER TABLE `modx_access_policy_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `modx_access_policy_template_groups`
--
ALTER TABLE `modx_access_policy_template_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `modx_access_resources`
--
ALTER TABLE `modx_access_resources`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_access_resource_groups`
--
ALTER TABLE `modx_access_resource_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `modx_access_templatevars`
--
ALTER TABLE `modx_access_templatevars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_actiondom`
--
ALTER TABLE `modx_actiondom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_actions`
--
ALTER TABLE `modx_actions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_actions_fields`
--
ALTER TABLE `modx_actions_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT для таблицы `modx_categories`
--
ALTER TABLE `modx_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `modx_class_map`
--
ALTER TABLE `modx_class_map`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `modx_content_type`
--
ALTER TABLE `modx_content_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `modx_dashboard`
--
ALTER TABLE `modx_dashboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `modx_dashboard_widget`
--
ALTER TABLE `modx_dashboard_widget`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `modx_documentgroup_names`
--
ALTER TABLE `modx_documentgroup_names`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `modx_document_groups`
--
ALTER TABLE `modx_document_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_extension_packages`
--
ALTER TABLE `modx_extension_packages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_fc_profiles`
--
ALTER TABLE `modx_fc_profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_fc_sets`
--
ALTER TABLE `modx_fc_sets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_lexicon_entries`
--
ALTER TABLE `modx_lexicon_entries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `modx_manager_log`
--
ALTER TABLE `modx_manager_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT для таблицы `modx_media_sources`
--
ALTER TABLE `modx_media_sources`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `modx_membergroup_names`
--
ALTER TABLE `modx_membergroup_names`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `modx_member_groups`
--
ALTER TABLE `modx_member_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `modx_property_set`
--
ALTER TABLE `modx_property_set`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_register_queues`
--
ALTER TABLE `modx_register_queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `modx_register_topics`
--
ALTER TABLE `modx_register_topics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `modx_site_content`
--
ALTER TABLE `modx_site_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `modx_site_htmlsnippets`
--
ALTER TABLE `modx_site_htmlsnippets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `modx_site_plugins`
--
ALTER TABLE `modx_site_plugins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `modx_site_snippets`
--
ALTER TABLE `modx_site_snippets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `modx_site_templates`
--
ALTER TABLE `modx_site_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `modx_site_tmplvars`
--
ALTER TABLE `modx_site_tmplvars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `modx_site_tmplvar_access`
--
ALTER TABLE `modx_site_tmplvar_access`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_site_tmplvar_contentvalues`
--
ALTER TABLE `modx_site_tmplvar_contentvalues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `modx_transport_providers`
--
ALTER TABLE `modx_transport_providers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `modx_users`
--
ALTER TABLE `modx_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `modx_user_attributes`
--
ALTER TABLE `modx_user_attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `modx_user_group_roles`
--
ALTER TABLE `modx_user_group_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `modx_user_messages`
--
ALTER TABLE `modx_user_messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_workspaces`
--
ALTER TABLE `modx_workspaces`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
