import lustre/attribute
import lustre/element/html

pub fn add(){
     html.div([],[
          html.h1([],[html.text("contact")]),

          html.form([attribute.styles([
               #("display", "flex"),
               #("flex-direction", "column"),
               #("gap", "1rem"),
               #("max-width", "400px"),
          ])], [
               html.label([], [html.text("name")]),
               html.input([attribute.type_("text")]),

               html.label([], [html.text("email")]),
               html.input([attribute.type_("email")]),

               html.label([], [html.text("message")]),
               html.textarea([attribute.rows(5)], ""),

               html.button([attribute.type_("button")], [html.text("send")]),
          ]),

          html.h4([],[html.text("or,")]),

          html.div([attribute.styles([
               #("display", "flex"),
               #("flex-direction", "row"),
               #("gap", "1rem"),
          ])],[
               html.div([],[
                    html.h4([],[html.text("email us:")]),
                    html.a(
                         [attribute.href("mailto:contact@amphiseum.com")],
                         [html.text("contact@amphiseum.com")],
                    ),
               ]),
               html.div([],[
                    html.h4([],[html.text("call us:")]),
                    html.h4([],[html.text("101 101 1010")]),
               ])
          ]),
     ])
}