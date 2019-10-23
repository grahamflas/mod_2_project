User.destroy_all
Session.destroy_all
UsersSession.destroy_all
Event.destroy_all

graham = User.create(first_name: "Graham", last_name: "Flaspoehler")
khaled = User.create(first_name: "Khaled", last_name: "Hassan")
jenny = User.create(first_name: "Jenny", last_name: "Ingram")
joseph = User.create(first_name: "Joseph", last_name: "Arias")
adam = User.create(first_name: "Adam", last_name: "Finch")
paul = User.create(first_name: "Paul", last_name: "Nicholson")
sergio = User.create(first_name: "Sergio", last_name: "Perez")
graham2 = User.create(first_name: "Graham", last_name: "Cracker")

session1 = Session.create(start_time: "2018-01-02 04:57", end_time: "2018-01-02 05:57", distance: 4.2)
session2 = Session.create(start_time: "2018-01-03 04:50", end_time: "2018-01-03 05:30", distance: 1.2)
session3 = Session.create(start_time: "2018-01-04 04:57", end_time: "2018-01-04 05:57", distance: 2.1)

#session3 = Session.create(start_time: "2018-01-04 03:27", end_time: "2018-01-04 03:57")
#session4 = Session.create(start_time: "2018-01-05 06:57", end_time: "2018-01-04 08:57")
#session5 = Session.create(start_time: "2018-01-06 01:57", end_time: "2018-01-06 02:57")
user_session1 = UsersSession.create(user: graham, session: session1)
user_session2 = UsersSession.create(user: khaled, session: session1)
user_session3 = UsersSession.create(user: jenny, session: session2)
user_session4 = UsersSession.create(user: joseph, session: session2)
user_session5 = UsersSession.create(user: adam, session: session2)
user_session6 = UsersSession.create(user: paul, session: session2)
user_session7 = UsersSession.create(user: sergio, session: session2)
user_session8 = UsersSession.create(user: graham, session: session3)


boston_marathon = Event.create(name: "Boston Marathon", min_miles_run: 50, distance: 26, min_num_of_sessions: 5)