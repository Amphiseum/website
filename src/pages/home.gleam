import lustre/attribute
import lustre/element/html
pub fn add(){
     html.div([],[
          html.div([attribute.styles([
               #("display", "flex"),
               #("align-items", "center"),
          ])], [
               html.div([], [
                    html.h4([],[html.text("we are a group of developers that do things")]),
                    html.h4([],[html.text("...")]),
                    html.h4([],[html.text("what we are")])
               ]),
               html.div([attribute.styles([
                    #("flex", "1"),
                    #("display", "flex"),
                    #("justify-content", "center"),
               ])], [
                    html.img([
                         attribute.src("/frog.png"),
                         attribute.styles([#("height", "150px")]),
                    ]),
               ]),
          ]),

          //services
          html.div([], [
               html.div([attribute.styles([
                    #("display", "grid"),
                    #("grid-template-columns", "1fr auto 1fr"),
                    #("align-items", "center"),
               ])], [
                    html.div([], []),
                    html.h2([attribute.style("text-align", "center")], [html.text("we provide really cool services")]),
                    html.div([attribute.style("justify-self", "end")],[
                         html.h4([],[html.text("all services ->")]),
                    ])
               ]),
          ])
     ])
}