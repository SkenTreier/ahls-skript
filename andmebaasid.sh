mysql --user="root" --password="qwerty" --execute="create database wpdatabase;
create user wpuser@localhost identified by 'qwerty';
grant all privileges on wpdatabase.* to wpuser@localhost;
flush privileges;
exit"
