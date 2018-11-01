<!DOCTYPE html>
<html>
	<head>
		<style>
			body {
				font-family: Arial
			}
			
			h1 {
				font-family: Arial
			}
		</style>
	</head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<body>
		<h1>Mark a task as done</h1>
		<form action="/done" method="post">
			%for row in rows:
			<input type="radio" name="task" value="{{row[1]}}"> {{row[1]}}<br>
			%end
			<br>
			<br>
			<input type="submit" value="Submit">
			<br>
			<br>
		</form>
		<br>
		<br>
		<a href="http://192.168.192.36:8080/todo">Return to the main menu</a>
		<br>
		<br>
		<a href="http://192.168.192.36:8080/new">Add a new task</a>
	</body>

</html> 

