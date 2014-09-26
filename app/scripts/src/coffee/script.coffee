window.onload = ->
  loader = document.getElementById 'loader'
  classie.add loader, 'loaded'

  nav = document.querySelector "nav"
  classie.add nav, 'loaded'

  card = document.getElementById 'card'
  classie.remove card, 'loading'

  body = document.getElementsByTagName('body')[0]

  showCard = document.getElementById 'show-card'
  showCard.addEventListener 'click', ->
    classie.add body, 'show-card'
    classie.remove body, 'show-resume'
    classie.remove body, 'show-portfolio'

  showResume = document.getElementById 'show-resume'
  showResume.addEventListener 'click', ->
    classie.remove body, 'show-card'
    classie.add body, 'show-resume'
    classie.remove body, 'show-portfolio'

  showPortfolio = document.getElementById 'show-portfolio'
  showPortfolio.addEventListener 'click', ->
    classie.remove body, 'show-card'
    classie.remove body, 'show-resume'
    classie.add body, 'show-portfolio'

  FastClick.attach document.body