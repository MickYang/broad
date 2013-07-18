/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     2013/7/17 14:53:36                           */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('broad_unread') and o.name = 'FK_BROAD_UN_P_B_PASSAGES')
alter table broad_unread
   drop constraint FK_BROAD_UN_P_B_PASSAGES
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('broad_unread') and o.name = 'FK_BROAD_UN_U_B_USER')
alter table broad_unread
   drop constraint FK_BROAD_UN_U_B_USER
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('comment_log') and o.name = 'FK_COMMENT__COM_PSG_PASSAGES')
alter table comment_log
   drop constraint FK_COMMENT__COM_PSG_PASSAGES
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('comment_log') and o.name = 'FK_COMMENT__U_CL_USER')
alter table comment_log
   drop constraint FK_COMMENT__U_CL_USER
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('comment_log') and o.name = 'FK_COMMENT__U_CL_REPL_USER')
alter table comment_log
   drop constraint FK_COMMENT__U_CL_REPL_USER
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('passages') and o.name = 'FK_PASSAGES_POST_USER')
alter table passages
   drop constraint FK_PASSAGES_POST_USER
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('user_operation') and o.name = 'FK_USER_OPE_OP_UOP_OPERATIO')
alter table user_operation
   drop constraint FK_USER_OPE_OP_UOP_OPERATIO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('user_operation') and o.name = 'FK_USER_OPE_P_OP_PASSAGES')
alter table user_operation
   drop constraint FK_USER_OPE_P_OP_PASSAGES
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('user_operation') and o.name = 'FK_USER_OPE_U_OP_USER')
alter table user_operation
   drop constraint FK_USER_OPE_U_OP_USER
go

if exists (select 1
            from  sysobjects
           where  id = object_id('admin')
            and   type = 'U')
   drop table admin
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('broad_unread')
            and   name  = 'p_b_FK'
            and   indid > 0
            and   indid < 255)
   drop index broad_unread.p_b_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('broad_unread')
            and   name  = 'u_b_FK'
            and   indid > 0
            and   indid < 255)
   drop index broad_unread.u_b_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('broad_unread')
            and   type = 'U')
   drop table broad_unread
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('comment_log')
            and   name  = 'com_psg_FK'
            and   indid > 0
            and   indid < 255)
   drop index comment_log.com_psg_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('comment_log')
            and   name  = 'u_cl_reply_FK'
            and   indid > 0
            and   indid < 255)
   drop index comment_log.u_cl_reply_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('comment_log')
            and   name  = 'u_cl_FK'
            and   indid > 0
            and   indid < 255)
   drop index comment_log.u_cl_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('comment_log')
            and   type = 'U')
   drop table comment_log
go

if exists (select 1
            from  sysobjects
           where  id = object_id('operation')
            and   type = 'U')
   drop table operation
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('passages')
            and   name  = 'Post_FK'
            and   indid > 0
            and   indid < 255)
   drop index passages.Post_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('passages')
            and   type = 'U')
   drop table passages
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"user"')
            and   type = 'U')
   drop table "user"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('user_operation')
            and   name  = 'op_uop_FK'
            and   indid > 0
            and   indid < 255)
   drop index user_operation.op_uop_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('user_operation')
            and   name  = 'p_op_FK'
            and   indid > 0
            and   indid < 255)
   drop index user_operation.p_op_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('user_operation')
            and   name  = 'u_op_FK'
            and   indid > 0
            and   indid < 255)
   drop index user_operation.u_op_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('user_operation')
            and   type = 'U')
   drop table user_operation
go

/*==============================================================*/
/* Table: admin                                                 */
/*==============================================================*/
create table admin (
   admin_id             char(20)             not null,
   admin_password       char(128)            null,
   admin_right          smallint             null,
   constraint PK_ADMIN primary key nonclustered (admin_id)
)
go

/*==============================================================*/
/* Table: broad_unread                                          */
/*==============================================================*/
create table broad_unread (
   user_id              char(20)             null,
   passage_id           char(5)              null
)
go

/*==============================================================*/
/* Index: u_b_FK                                                */
/*==============================================================*/
create index u_b_FK on broad_unread (
user_id ASC
)
go

/*==============================================================*/
/* Index: p_b_FK                                                */
/*==============================================================*/
create index p_b_FK on broad_unread (
passage_id ASC
)
go

/*==============================================================*/
/* Table: comment_log                                           */
/*==============================================================*/
create table comment_log (
   log_id               int                  not null,
   user_id              char(20)             null,
   passage_id           char(5)              null,
   use_user_id          char(20)             null,
   comment              char(2000)           null,
   if_reply             char(1)              null,
   replied_comment      char(2000)           null,
   comment_time         datetime             null,
   comment_mod_time     datetime             null,
   constraint PK_COMMENT_LOG primary key nonclustered (log_id)
)
go

/*==============================================================*/
/* Index: u_cl_FK                                               */
/*==============================================================*/
create index u_cl_FK on comment_log (
user_id ASC
)
go

/*==============================================================*/
/* Index: u_cl_reply_FK                                         */
/*==============================================================*/
create index u_cl_reply_FK on comment_log (
use_user_id ASC
)
go

/*==============================================================*/
/* Index: com_psg_FK                                            */
/*==============================================================*/
create index com_psg_FK on comment_log (
passage_id ASC
)
go

/*==============================================================*/
/* Table: operation                                             */
/*==============================================================*/
create table operation (
   op_id                char(1)              not null,
   op_name              char(20)             null,
   constraint PK_OPERATION primary key nonclustered (op_id)
)
go

/*==============================================================*/
/* Table: passages                                              */
/*==============================================================*/
create table passages (
   passage_id           char(5)              not null,
   user_id              char(20)             null,
   passage_content      char(5000)           null,
   passage_name         char(50)             null,
   passage_type         char(2)              null,
   like_num             int                  null,
   dislike_num          int                  null,
   look_num             int                  null,
   comment_num          int                  null,
   create_time          datetime             null,
   mod_time             datetime             null,
   constraint PK_PASSAGES primary key nonclustered (passage_id)
)
go

/*==============================================================*/
/* Index: Post_FK                                               */
/*==============================================================*/
create index Post_FK on passages (
user_id ASC
)
go

/*==============================================================*/
/* Table: "user"                                                */
/*==============================================================*/
create table "user" (
   user_id              char(20)             not null,
   username             char(20)             null,
   password             char(128)            null,
   sex                  char(6)              null,
   age                  char(2)              null,
   user_right           smallint             null,
   grade                char(4)              null,
   class                smallint             null,
   status               char(1)              null,
   email                char(50)             null,
   constraint PK_USER primary key nonclustered (user_id)
)
go

/*==============================================================*/
/* Table: user_operation                                        */
/*==============================================================*/
create table user_operation (
   passage_id           char(5)              null,
   user_id              char(20)             null,
   op_id                char(1)              null
)
go

/*==============================================================*/
/* Index: u_op_FK                                               */
/*==============================================================*/
create index u_op_FK on user_operation (
user_id ASC
)
go

/*==============================================================*/
/* Index: p_op_FK                                               */
/*==============================================================*/
create index p_op_FK on user_operation (
passage_id ASC
)
go

/*==============================================================*/
/* Index: op_uop_FK                                             */
/*==============================================================*/
create index op_uop_FK on user_operation (
op_id ASC
)
go

alter table broad_unread
   add constraint FK_BROAD_UN_P_B_PASSAGES foreign key (passage_id)
      references passages (passage_id)
         on update cascade on delete cascade
go

alter table broad_unread
   add constraint FK_BROAD_UN_U_B_USER foreign key (user_id)
      references "user" (user_id)
         on update cascade on delete cascade
go

alter table comment_log
   add constraint FK_COMMENT__COM_PSG_PASSAGES foreign key (passage_id)
      references passages (passage_id)
         on update cascade on delete cascade
go

alter table comment_log
   add constraint FK_COMMENT__U_CL_USER foreign key (user_id)
      references "user" (user_id)
         on update cascade on delete cascade
go

alter table comment_log
   add constraint FK_COMMENT__U_CL_REPL_USER foreign key (use_user_id)
      references "user" (user_id)
         on update no action on delete no action
go

alter table passages
   add constraint FK_PASSAGES_POST_USER foreign key (user_id)
      references "user" (user_id)
         on update no action on delete no action
go

alter table user_operation
   add constraint FK_USER_OPE_OP_UOP_OPERATIO foreign key (op_id)
      references operation (op_id)
         on update cascade on delete cascade
go

alter table user_operation
   add constraint FK_USER_OPE_P_OP_PASSAGES foreign key (passage_id)
      references passages (passage_id)
         on update cascade on delete cascade
go

alter table user_operation
   add constraint FK_USER_OPE_U_OP_USER foreign key (user_id)
      references "user" (user_id)
         on update cascade on delete cascade
go




INSERT INTO [user] VALUES ('201011113045        ', 'dr                  ', '21232f297a57a5a743894a0e4a801fc3                                                                                                ', 'Female', '21', 1, '2010', 1, '1', 'dr@dr.com                                         ');
GO
