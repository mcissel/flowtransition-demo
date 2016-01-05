if Meteor.isClient
  FlowRouter.route '/',
    name: 'home'
    action: ()->
      FlowTransition.flow({head: "head1"}, {body: "page1"})

  FlowRouter.route '/page2',
    name: 'page2'
    action: ()->
      FlowTransition.flow({head: "head2"}, {body: "page2"}, {foot: "foot1"})

  FlowRouter.route '/page3',
    name: 'page3'
    action: ()->
      FlowTransition.flow({head: "head2"}, {body: "page3"}, {foot: "foot1"})

  FlowRouter.route '/page4',
    name: 'page4'
    action: ()->
      FlowTransition.flow({head: "head2"}, {body: "page4"}, {foot: "foot2"})
