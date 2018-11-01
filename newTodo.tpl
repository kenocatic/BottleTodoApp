<!DOCTYPE html>
<html>
	<head>
		<style>
			body {
				font-family: Arial;
			}
			h1 {
				font-family: Arial;
			}
		</style>
	</head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<body>
		<h1>Set a new task</h1>
		<form action="/new" method="post" id="enterNewTask">
			New todo:			
			<input type="text" name="newtodo"><br>
			<br>
			<br>
			<button type="submit">Add the task</button>
		</form>
		<br>
		<br>
		<a href="http://localhost:8080/todo">Return to the main menu</a>
		<br>
		<br>
		<a href="http://localhost:8080/done">Mark a task as done</a>
	</body>
</html> 

