command: 'echo  "Hi!"'

refreshFrequency: 30000

style: """
  bottom: 40px
  right: 60px
  color: #fff
  font-family: Helvetica Neue


  .output
    padding: 5px 10px
    width: 300px
    font-size: 20px
    font-weight: lighter
	  font-smoothing: antialiased

  
"""

render: (_) -> """
  <h1 class='bar'></h1>
"""

update: (output, domEl) ->
  $(domEl).find('.bar').text("Hello World") 
  

 
