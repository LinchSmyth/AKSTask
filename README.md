# This is my interview task for [AppliKey Solutions] (http://applikeysolutions.com/) company.

This app is currently running on [heroku] (https://akstask.herokuapp.com/).

Note that:
- The deployed application have some minor changes. For example, SQLite database have changed to Postgres, added Redis gem and have some lines, which is necessary for heroku but doesn't make sense if you want to start this app locally. If you want to see that version of app go to [deploy branch] (https://github.com/LinchSmyth/AKSTask/tree/Deploy).
- I'm not using aws-sdk gem for paperclip yet (and maybe I will not use it at all), so heroku will delete user avatars after server is stopped. 

Task description:
> Необходимо написать приложение "чат":
> - Можно создавать комнаты и любой может в них вступить и писать сообщения;
> - У каждого юзера должен быть аватар;
> - Использовать ajax в любом месте, на свое усмотрение;
> - Задеплоить приложение на heroku;
> - К верстке особых требований нет, можно использовать bootstrap.
> - Желательно не использовать гемы, стараться реализовать весь функционал самому. 
>
> Просьба указать примерное количество времени, затраченное на выполнение задания (максимальный срок - неделя)

*This is my first app on Rails 5 version. Ruby version is 2.3.0.
Also it's my first experience in ActionCable.*

Installation and using (requires `git` and `bundler`):

In terminal go to the directory you want to install it.
Clone repository by running:
```
git clone https://github.com/LinchSmyth/AKSTask.git
```
Move to the directory:
```
cd ./AKSTask/
```
Make sure that you're in master branch:
```
git checkout master
```
Install gems and run:
```
bundle
rails s
```
