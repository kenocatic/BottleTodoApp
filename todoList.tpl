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
			
			table {
				font-family: arial, sans-serif;
				border-collapse: collapse;
				width: 100%;
			}

			td, th {
				border: 1px solid #dddddd;
				text-align: left;
				padding: 8px;
			}

			tr:nth-child(even) {
				background-color: #dddddd;
			}
		</style>
	</head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<body>
		<h1>To do list</h1>
		<br>
		<a href="http://192.168.192.36:8080/new">Add a new task</a>
		<br>
		<br>
		<a href="http://192.168.192.36:8080/done">Mark a task as done</a>
		<br>
		<br>
		<br>
		<table>
			<tr>
				<th>Task description</th>
			</tr>
			%for row in rows:
			<tr>
				<td>{{row[1]}}</td>
			</tr>
			%end
		</table> 
	</body>
</html> 
