import lustre/attribute
import lustre/element.{type Element}
import lustre/element/html

fn link(label: String, href: String) -> Element(msg) {
  html.a(
    [
      attribute.href(href),
      attribute.styles([
        #("color", "#000000"),
        #("text-decoration", "none"),
        #("font-weight", "bold"),
      ]),
    ],
    [html.text(label)],
  )
}

pub fn add() {
  html.nav(
    [
      attribute.styles([
        #("display", "flex"),
        #("align-items", "center"),
        #("justify-content", "space-between"),
        #("height", "67px"),
        #("padding", "0 1rem"),
        #("border-bottom", "1px solid #000000"),
      ]),
    ],
    [
      html.div(
        [
          attribute.styles([
            #("font-weight", "bold"),
            #("font-size", "1.5rem"),
          ]),
        ],
        [
          html.img([
            attribute.src("/frog.png"),
            attribute.styles([#("height", "25px")]),
          ]),
          html.text("Amphiseum"),
        ],
      ),

      html.div(
        [
          attribute.styles([
            #("display", "flex"),
            #("gap", "1rem"),
          ]),
        ],
        [
          link("Home", "/"),
          link("Services", "/services"),
          link("About", "/about"),
          link("Contact", "/contact"),
        ],
      ),
    ],
  )
}
