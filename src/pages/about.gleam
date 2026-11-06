import lustre/attribute
import lustre/element/html

pub fn add() {
  html.div([attribute.styles([])], [
    html.h1([], [html.text("about us")]),

    html.h4([], [
      html.text(
        "Amphiseum is a team of developers who can turn your digital dreams into reality.",
      ),
    ]),
    html.h4([], [
      html.text(
        "As a premier custom software development company based in the USA, we specialize in crafting exceptional experiences that drive business growth.",
      ),
    ]),
  ])
}
