

-- ���볬������Ա�û�������Ϊ"admin"
insert into itcast_user(name, loginName, password) values ('��������Ա', 'admin', '21232f297a57a5a743894a0e4a801fc3');

/*
 ����Ȩ�����ݣ�
 һ���˵�û��url��û��parentId
 �����˵�û��icon
*/

-- ϵͳ����
insert into itcast_privilege(id, name, url, icon, parentId)	values (1, 'ϵͳ����', null, 'FUNC20082.gif', null);
insert into itcast_privilege(id, name, url, icon, parentId)	values (2, '��λ����', 'role_list', null, 1);
insert into itcast_privilege(id, name, url, icon, parentId)	values (3, '���Ź���', 'department_list', null, 1);
insert into itcast_privilege(id, name, url, icon, parentId)	values (4, '�û�����', 'user_list', null, 1);

insert into itcast_privilege(id, name, url, icon, parentId)	values (5, '��λ�б�', 'role_list', null, 2);
insert into itcast_privilege(id, name, url, icon, parentId)	values (6, '��λɾ��', 'role_delete', null, 2);
insert into itcast_privilege(id, name, url, icon, parentId)	values (7, '��λ���', 'role_add', null, 2);
insert into itcast_privilege(id, name, url, icon, parentId)	values (8, '��λ�޸�', 'role_edit', null, 2);

insert into itcast_privilege(id, name, url, icon, parentId)	values (9, '�����б�', 'department_list', null, 3);
insert into itcast_privilege(id, name, url, icon, parentId)	values (10,'����ɾ��', 'department_delete', null, 3);
insert into itcast_privilege(id, name, url, icon, parentId)	values (11,'�������', 'department_add', null, 3);
insert into itcast_privilege(id, name, url, icon, parentId)	values (12,'�����޸�', 'department_edit', null, 3);

insert into itcast_privilege(id, name, url, icon, parentId)	values (13,'�û��б�', 'user_list', null, 4);
insert into itcast_privilege(id, name, url, icon, parentId)	values (14,'�û�ɾ��', 'user_delete', null, 4);
insert into itcast_privilege(id, name, url, icon, parentId)	values (15,'�û����', 'user_add', null, 4);
insert into itcast_privilege(id, name, url, icon, parentId)	values (16,'�û��޸�', 'user_edit', null, 4);
insert into itcast_privilege(id, name, url, icon, parentId)	values (17,'�û���ʼ������', 'user_initPassword', null, 4);


-- ���Ͻ���
insert into itcast_privilege(id, name, url, icon, parentId)	values (18,'���Ͻ���', null, 'FUNC20064.gif', null);
insert into itcast_privilege(id, name, url, icon, parentId)	values (19,'��̳����', 'forumManage_list', null, 18);
insert into itcast_privilege(id, name, url, icon, parentId)	values (20,'��̳', 'forum_list', null, 18);


-- ������ת
insert into itcast_privilege(id, name, url, icon, parentId)	values (21,'������ת', null, 'FUNC20057.gif', null);
insert into itcast_privilege(id, name, url, icon, parentId)	values (22,'�������̹���', 'processDefinition_list', null, 21);
insert into itcast_privilege(id, name, url, icon, parentId)	values (23,'����ģ�����', 'template_list', null, 21);
insert into itcast_privilege(id, name, url, icon, parentId)	values (24,'�������', 'flow_templateList', null, 21);
insert into itcast_privilege(id, name, url, icon, parentId)	values (25,'��������', 'flow_myTaskList', null, 21);
insert into itcast_privilege(id, name, url, icon, parentId)	values (26,'�ҵ������ѯ', 'flow_myApplicationList', null, 21);
