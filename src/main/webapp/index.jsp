<html>
<body>
<h1>Welcome to COMP367!</h1>

 <% 
    java.util.Calendar cal = java.util.Calendar.getInstance();
    int hour = cal.get(java.util.Calendar.HOUR_OF_DAY);
    String greeting = (hour < 12) ? "Good morning" : "Good afternoon";
  %>
  <h1><%= greeting %>, [YourName], Welcome to COMP367</h1>
</body>
</html>
