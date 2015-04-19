command: 'echo  "Lovingly crafted by Rohan"'

refreshFrequency: 30000



style: """
  bottom: 40%
  right: 25%
  color: #fff
  font-family: Helvetica Neue

  .container

  .output
    font-weight: lighter
	  font-smoothing: antialiased

  .time
    font-size: 10em
    color:#fff
    font-weight:700
    text-align:center
  .text
    font-size: 4em
    color:#fff
    font-weight:700
    text-align:center
  .min
    margin-left:-25px

  
"""

render: (_) -> """
  <div class="time">
  <span class="hour"></span>
  <span class="min"></span>
  </div>
  <div class="text">
  <span class="salutation"></span>
  <span class="name"></span>
  </div>
  
"""

update: (output, domEl) -> 
  segments = ["Good Morning", "Evening", "Afternoon", "Good Night"]
  name = 'Rohan'

  date = new Date()
  hour = date.getHours()
  minutes = date.getMinutes()
  if minutes < 10
    minutes = "0"+ minutes
  now = 'morning' if 4 < hour < 12
  now = 'afternoon' if 12 < hour < 17
  now = 'evening' if 17 < hour < 24
  now = 'night' if  hour < 4
  
  $(domEl).find('.salutation').text("Good #{now}, ")
  $(domEl).find('.name').text("#{name}") 
  $(domEl).find('.hour').text("#{hour}:")
  $(domEl).find('.min').text("#{minutes}") 

  

 
