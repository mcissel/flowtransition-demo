if Meteor.isClient
  # head transitions
  FlowTransition.addTransition
    section: 'head'
    from: 'home'
    to: 'page2'
    txIn:
      hooks:
        translateY: '-100%'
      properties:
        translateY: [0, '-100%'],
        translateX: [0, 'spring', '10%'],
#        opacity: [ 1, "easeInSine", 0]
      options:
        duration: 220
        easing: 'ease-in-out'
        queue: false
        complete: ()->
          console.log('the one that was passed in')

  # body transitions
  FlowTransition.addTransition
    section: 'body'
    from: 'home'
    to: 'page2'
    txFull: 'left'

  FlowTransition.addTransition
    section: 'body'
    from: 'page2'
    to: 'page3'
  #  txFull: 'left'
    txFull:
      properties: 'right'
      options:
        duration: 350
        easing: 'spring'
        queue: false

  FlowTransition.addTransition
    section: 'body'
    from: 'page3'
    to: 'page4'
    txFull: 'down'

  # foot transitions
  FlowTransition.addTransition
    section: 'foot'
    from: 'home'
    to: 'page2'
    txIn:
      hooks:
        display: 'none'
      properties: 'fadeIn'

  FlowTransition.addTransition
    section: 'foot'
    from: 'page4'
    to: 'home'
    txOut: 'transition.fadeOut'
