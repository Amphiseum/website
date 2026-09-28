import lustre/attribute
import lustre/element/html

pub fn add() {
  html.nav([ attribute.styles([
    #("display", "flex"),
    #("align-items", "center"),
    #("justify-content", "space-between"),
    #("height", "67px"),
    #("padding", "0 1.5rem"),
    #("border-bottom", "1px solid #000000"),
  ])], [

    html.div([attribute.styles([
      #("font-weight", "bold"),
      #("font-size", "1.5rem"),
    ])], [
      html.text("Amphiseum"),
    ]),

    html.div([], [
      html.a([attribute.href("/")], [html.text("Home")]),
      html.a([attribute.href("/about")], [html.text("About")]),
      html.a([attribute.href("/contact")], [html.text("Contact")]),
    ]),

  ])
}