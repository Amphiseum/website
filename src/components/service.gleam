import gleam/list
import lustre/attribute
import lustre/element.{type Element}
import lustre/element/html

pub fn add(title: String, desc: List(String)) -> Element(msg) {
  html.div([attribute.styles([
    #("display", "flex"),
    #("flex-direction", "column"),
    #("flex", "1"),
    #("padding", ".5rem"),
    #("border", "1px solid #000000"),
    #("border-radius", "20px"),
  ])], [
    html.h4([attribute.style("text-align","center")], [html.text(title)]),
    html.ul([], list.map(desc, fn(desc) { html.li([], [html.text(desc)]) })),
  ])
}