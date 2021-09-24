<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@ page session="false" %>
		<html>

		<head>
			<meta charset="utf-8">
			<title>${titleShop}</title>
			<meta name="viewport" content="width=device-width, initial-scale=1.0">
			<meta name="description" content="${titleShop}">
			<meta name="author" content="${titleShop}">
			<!-- Bootstrap styles -->
			<link href="${pageContext.request.contextPath}/resources/css/bootstrap.css" rel="stylesheet" />
			<!-- Customize styles -->
			<link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet" />
			<!-- font awesome styles -->
			<link href="${pageContext.request.contextPath}/resources/font-awesome/css/font-awesome.css"
				rel="stylesheet">
			<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/ico/favicon.ico">
			<script src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
			<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
			<script src="${pageContext.request.contextPath}/resources/js/jquery.easing-1.3.min.js"></script>
			<script src="${pageContext.request.contextPath}/resources/js/jquery.scrollTo-1.4.3.1-min.js"></script>
			<script src="${pageContext.request.contextPath}/resources/js/shop.js"></script>
			<script>
				$(document).ready(function () {



					var url = "https://api.clashofclans.com/v1/clans/%238PGRQ0P/currentwar";

					// var xhr = new XMLHttpRequest();
					// xhr.open("GET", url);

					// xhr.setRequestHeader("Accept", "application/json");
					// xhr.setRequestHeader( 'Access-Control-Allow-Origin', '*');
					// xhr.setRequestHeader("authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiIsImtpZCI6IjI4YTMxOGY3LTAwMDAtYTFlYi03ZmExLTJjNzQzM2M2Y2NhNSJ9.eyJpc3MiOiJzdXBlcmNlbGwiLCJhdWQiOiJzdXBlcmNlbGw6Z2FtZWFwaSIsImp0aSI6ImM3YWE2ZGNlLTFmZjgtNDI2Yi1iMWRiLTAxMzhiMmM4NzM0YSIsImlhdCI6MTYzMjUwMzQ5NCwic3ViIjoiZGV2ZWxvcGVyL2FiY2EzY2ZiLTc0YzMtYjcwMC0xOGI4LTdjNWQxNTIxMzgwNCIsInNjb3BlcyI6WyJjbGFzaCJdLCJsaW1pdHMiOlt7InRpZXIiOiJkZXZlbG9wZXIvc2lsdmVyIiwidHlwZSI6InRocm90dGxpbmcifSx7ImNpZHJzIjpbIjIwNi4xODkuMjA1LjI1MSJdLCJ0eXBlIjoiY2xpZW50In1dfQ.yr_0Vl81RCJTtkCx4iota2KibsheDtn5MNJ9Z_GkeN6Fz4RRwIQ4QgcXw_r9YmS1mrUbMsvb7qVmmCIHInyUkg");

					// xhr.onreadystatechange = function () {
					// 	if (xhr.readyState === 4) {
					// 		console.log(xhr.status);
					// 		console.log(xhr.responseText);
					// 	}
					// };

					// xhr.send();
					$.ajax({
						type: "GET",
						url: "https://api.clashofclans.com/v1/clans/%238PGRQ0P/currentwar",
						headers: {
							'Accept': 'application/json',
							'authorization': 'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiIsImtpZCI6IjI4YTMxOGY3LTAwMDAtYTFlYi03ZmExLTJjNzQzM2M2Y2NhNSJ9.eyJpc3MiOiJzdXBlcmNlbGwiLCJhdWQiOiJzdXBlcmNlbGw6Z2FtZWFwaSIsImp0aSI6ImM3YWE2ZGNlLTFmZjgtNDI2Yi1iMWRiLTAxMzhiMmM4NzM0YSIsImlhdCI6MTYzMjUwMzQ5NCwic3ViIjoiZGV2ZWxvcGVyL2FiY2EzY2ZiLTc0YzMtYjcwMC0xOGI4LTdjNWQxNTIxMzgwNCIsInNjb3BlcyI6WyJjbGFzaCJdLCJsaW1pdHMiOlt7InRpZXIiOiJkZXZlbG9wZXIvc2lsdmVyIiwidHlwZSI6InRocm90dGxpbmcifSx7ImNpZHJzIjpbIjIwNi4xODkuMjA1LjI1MSJdLCJ0eXBlIjoiY2xpZW50In1dfQ.yr_0Vl81RCJTtkCx4iota2KibsheDtn5MNJ9Z_GkeN6Fz4RRwIQ4QgcXw_r9YmS1mrUbMsvb7qVmmCIHInyUkg'
						},
						data: JSON.stringify(data),
						success: function (data, status) {
							console.log(data);
						},
						error: function (status) {
							// error handler
							alert(status);
						}
					});

				});
			</script>
		</head>

		<body>
			<h1>Listing People</h1>

			<a href="edit"> Add Person</a>
		</body>

		</html>