# Rohan Likhite rohanlikhite.com
command: 'echo  "Lovingly crafted by Rohan"'

#Refresh time (default: 1/2 minute 30000)
refreshFrequency: 30000


#Body Style
style: """
  
  color: #fff
  font-family: Helvetica Neue, Arial
  
  .container
   margin-top:30%
   height:300px
   width:800px
   font-weight: lighter
   font-smoothing: antialiased
   text-align:center
   margin-left:30%

  .time
   font-size: 10em
   color:#fff
   font-weight:700
   text-align:center   

  .text
   font-size: 4em
   color:#fff
   font-weight:700    

  .hour
   margin-right:15px

  .min
   margin-left:-35px

  
"""


#Render function
render: -> """
  <div class="container">
  <div class="time">
  <span class="hour"></span>:
  <span class="min"></span>
  </div>
  <div class="text">
  <span class="salutation"></span>
  <span class="name"></span>
  </div>
  </div>
  
"""

  #Update function
update: (output, domEl) -> 
  #Time Segmends for the day
  segments = ["morning", "afternoon", "evening", "night"]

  #Your name goes here
  name = 'Rohan'

  #Creating a new Date object
  date = new Date()
  hour = date.getHours()
  minutes = date.getMinutes()

  #Quick and dirty fix for single digit minutes
  if minutes < 10
     minutes = "0"+ minutes

  #timeSegment logic
  timeSegment = segments[0] if 4 < hour <= 11
  timeSegment = segments[1] if 11 < hour <= 17
  timeSegment = segments[2] if 17 < hour <= 24
  timeSegment = segments[3] if  hour <= 4

  #24 - 12 Hour conversion
  hour= hour%12 if hour > 12
  
  #DOM manipulation 
  $(domEl).find('.salutation').text("Good #{timeSegment},")
  $(domEl).find('.name').text("#{name}.") 
  $(domEl).find('.hour').text("#{hour}")
  $(domEl).find('.min').text("#{minutes}") 

  

 
