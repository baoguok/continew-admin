-- liquibase formatted sql

-- changeset Charles7c:1
-- 初始化默认菜单
INSERT IGNORE INTO `sys_menu`
(`id`, `title`, `parent_id`, `type`, `path`, `name`, `component`, `icon`, `is_external`, `is_cache`, `is_hidden`, `permission`, `sort`, `status`, `create_user`, `create_time`, `update_user`, `update_time`)
VALUES
(1060, '字典管理', 1000, 2, '/system/dict', 'Dict', 'system/dict/index', 'bookmark', b'0', b'0', b'0', 'system:dict:list', 6, 1, 1, NOW(), NULL, NULL),
(1061, '字典新增', 1060, 3, NULL, NULL, NULL, NULL, b'0', b'0', b'0', 'system:dict:add', 1, 1, 1, NOW(), NULL, NULL),
(1062, '字典修改', 1060, 3, NULL, NULL, NULL, NULL, b'0', b'0', b'0', 'system:dict:update', 2, 1, 1, NOW(), NULL, NULL),
(1063, '字典删除', 1060, 3, NULL, NULL, NULL, NULL, b'0', b'0', b'0', 'system:dict:delete', 3, 1, 1, NOW(), NULL, NULL),
(1064, '字典导出', 1060, 3, NULL, NULL, NULL, NULL, b'0', b'0', b'0', 'system:dict:export', 4, 1, 1, NOW(), NULL, NULL);

-- 初始化默认字典
INSERT IGNORE INTO `sys_dict`
(`id`, `name`, `code`, `description`, `create_user`, `create_time`, `update_user`, `update_time`)
VALUES
(1, '公告类型', 'announcement_type', NULL, 1, NOW(), NULL, NULL);

-- 初始化默认字典项
INSERT IGNORE INTO `sys_dict_item`
(`id`, `label`, `value`, `color`, `sort`, `description`, `dict_id`, `create_user`, `create_time`, `update_user`, `update_time`)
VALUES
(1, '通知', '1', 'blue', 1, NULL, 1, 1, NOW(), NULL, NULL),
(2, '活动', '2', 'orangered', 2, NULL, 1, 1, NOW(), NULL, NULL);