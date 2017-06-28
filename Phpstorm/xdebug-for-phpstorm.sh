Установите расширение для браузера Google Chrome - xDebug helper

Настройте IDE PHPStorm (для каждого проекта):
a. File -> Settings -> Languages & Frameworks -> PHP -> Servers:
Нажмите	“+”;
Name:		{your_project_name}.dev;
Host:		{your_project_name}.dev;
Port:		80 (или 443 если этого требует проект);
Debugger:	Xdebug
Нажмите	Apply
б. Run -> Edit Configurations...:
Нажмите	“+”;
Выберите	PHP Web application;
Name:		{your_project_name}.dev;
Server:		{your_project_name}.dev (выберите из списка);
Нажмите	Apply
