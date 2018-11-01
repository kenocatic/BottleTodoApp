import bottle
import csv
import webbrowser
import datetime


@bottle.route('/')
@bottle.route('/todo')
def todo_list():
	result = []
	header_c = 0

	with open('todo.csv', 'r', newline='') as csv_file:
		csv_reader = csv.reader(csv_file, delimiter=';')

		for row in csv_reader:
			if header_c > 0:
				result.append(row)
			else:
				header_c += 1

		header_c = 0

	return bottle.template('todoList.tpl', rows=result)


@bottle.route('/new', method='GET')
def new_todo():	
	return 	bottle.template('newTodo.tpl')


@bottle.route('/new', method='POST')
def new_todo():
	newtodo = bottle.request.forms.get('newtodo')

	with open('todo.csv', 'a', newline='') as csv_file:
		csv_writer = csv.writer(csv_file, delimiter=';')
		csv_writer.writerow([datetime.datetime.now().isoformat(), newtodo])

	return 	bottle.template('newTodo.tpl')


@bottle.route('/done', method='GET')
def done():	
	result = []
	header_c = 0

	with open('todo.csv', 'r', newline='') as csv_file:
		csv_reader = csv.reader(csv_file, delimiter=';')

		for row in csv_reader:

			if header_c > 0:
				result.append(row)
			else:
				header_c += 1

		header_c = 0

	return bottle.template('done.tpl', rows=result)
	
	
@bottle.route('/done', method='POST')
def done():
	to_delete = bottle.request.forms.get('task')
	print(to_delete)
	result = []
	
	with open('todo.csv', 'r', newline='') as csv_file:
		csv_reader = csv.reader(csv_file, delimiter=';')
	
		for row in csv_reader:
			
			if row[1] != to_delete:
				result.append(row)
	
	with open('todo.csv', 'w', newline='') as csv_file:
		csv_writer = csv.writer(csv_file, delimiter=';')
		
		for row in result:
			csv_writer.writerow(row)	

	result = []
	header_c = 0

	with open('todo.csv', 'r', newline='') as csv_file:
		csv_reader = csv.reader(csv_file, delimiter=';')

		for row in csv_reader:

			if header_c > 0:
				result.append(row)
			else:
				header_c += 1

		header_c = 0
	
	return bottle.template('done.tpl', rows=result)


if __name__ == "__main__":
	webbrowser.open('http://localhost:8080/todo')
	bottle.run(host='localhost', port=8080, debug=True)
