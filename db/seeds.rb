User.destroy_all
Session.destroy_all
UsersSession.destroy_all
Event.destroy_all
UsersEvent.destroy_all

# DELETE


adam = User.create(first_name: "Adam", last_name: "Finch", username: "afinch", password: "1111", password_confirmation: "1111")
aicha = User.create(first_name: "Aicha", last_name: "Diallo", username: "adiallo", password: "1111", password_confirmation: "1111")
charlie = User.create(first_name: "Charlie", last_name: "Chung", username: "cchung", password: "1111", password_confirmation: "1111")
christina = User.create(first_name: "Christina", last_name: "Park", username: "cpark", password: "1111", password_confirmation: "1111")
david = User.create(first_name: "David", last_name: "Fellows", username: "dfellows", password: "1111", password_confirmation: "1111")
graham = User.create(first_name: "Graham", last_name: "Flaspoehler", username: "gflaspoehler", password: "1111", password_confirmation: "1111")
heejae = User.create(first_name: "Heejae", last_name: "Han", username: "hhan", password: "1111", password_confirmation: "1111")
mickey = User.create(first_name: "Mickey", last_name: "Partlow", username: "mpartlow", password: "1111", password_confirmation: "1111")
khaled = User.create(first_name: "Khaled", last_name: "Hassan", username: "khassan", password: "1111", password_confirmation: "1111")
kailey = User.create(first_name: "Kailey", last_name: "Lee", username: "klee", password: "1111", password_confirmation: "1111")
nick = User.create(first_name: "Nick", last_name: "Boober", username: "nboober", password: "1111", password_confirmation: "1111")
sergio = User.create(first_name: "Sergio", last_name: "Perez", username: "sperez", password: "1111", password_confirmation: "1111")
will = User.create(first_name: "Will", last_name: "Comfort", username: "wcomfort", password: "1111", password_confirmation: "1111")
jenny = User.create(first_name: "Jenny", last_name: "Ingram", username: "jingram", password: "1111", password_confirmation: "1111")
joseph = User.create(first_name: "Joseph", last_name: "Arias", username: "jarias", password: "1111", password_confirmation: "1111")
paul = User.create(first_name: "Paul", last_name: "Nicholsen", username: "pnicholsen", password: "1111", password_confirmation: "1111")

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


dc_turkey_trot = Event.create(name: 'DC Turkey Trot', date: 'November 28, 2019', location: 'Washington, DC', distance: 3.2, min_miles_run: 1, min_num_of_sessions: 1)
baltimore_10k = Event.create(name: 'Baltimore 10K', date: 'December 1, 2019', location: 'Baltimore, MD', distance: 6.2, min_miles_run: 5, min_num_of_sessions: 5)
marine_corps_marathon = Event.create(name: 'Marine Corps Marathon', date: 'January 1, 2020', location: 'Washington, DC', distance: 26.2, min_miles_run: 30, min_num_of_sessions: 30)
valentines_fun_run = Event.create(name: 'Valentine\'s Day Fun Run', date: 'February 14, 20120', location: 'Washington, DC', distance: 3.12, min_miles_run: 1, min_num_of_sessions: 1)
st_patricks_day = Event.create(name: 'St. Patrick\'s Day 5K', date: 'March 17, 2020', location: 'New York, NY', distance: 3.12, min_miles_run: 3, min_num_of_sessions: 3)
april_fools_10_miler = Event.create(name: 'April Fool\'s Day 10 Miler', date: 'April 1, 2020', location: 'Mars', distance: 10, min_miles_run: 5, min_num_of_sessions: 5)
boston_marathon = Event.create(name: 'Boston Marathon', date: 'May 1, 2020', location: 'Boston, MA', distance: 26.2, min_miles_run: 50, min_num_of_sessions: 30)