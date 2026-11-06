import components/service
import lustre/attribute
import lustre/element/html

pub fn add() {
  html.div([], [
    html.div(
      [
        attribute.styles([
          #("display", "flex"),
          #("align-items", "center"),
        ]),
      ],
      [
        html.div([], [
          html.h4([], [html.text("we are a group of developers that do things")]),
          html.h4([], [html.text("...")]),
          html.h4([], [html.text("what we are")]),
        ]),
        html.div(
          [
            attribute.styles([
              #("flex", "1"),
              #("display", "flex"),
              #("justify-content", "center"),
            ]),
          ],
          [
            html.img([
              attribute.src("/frog.png"),
              attribute.styles([#("height", "150px")]),
            ]),
          ],
        ),
      ],
    ),

    //services
    html.div([], [
      html.div(
        [
          attribute.styles([
            #("display", "grid"),
            #("grid-template-columns", "1fr auto 1fr"),
            #("align-items", "center"),
          ]),
        ],
        [
          html.div([], []),
          html.h2([attribute.style("text-align", "center")], [
            html.text("we provide really cool services"),
          ]),
          html.div([attribute.style("justify-self", "end")], [
            html.a([attribute.href("/services")], [
              html.text("all of our services ->"),
            ]),
          ]),
        ],
      ),

      html.div(
        [
          attribute.styles([
            #("display", "flex"),
            #("gap", "1rem"),
            #("padding", "1rem 0"),
          ]),
        ],
        [
          service.add("Web Development", ["websites are cool"]),
          service.add("Server/Infrastructure and Hosting", [
            "We provide end-to-end cloud hosting for websites, software, and infrastructure.",
            "This includes handling resource management, defending against cyber threats, and managing uptime.",
            "Providing NixOS servers for full system reproducibility, enabling rollback if a critical issue occurs, and making migrations easier.",
            "Choosing the right cloud providers and server locations for the job from Hetzner, AWS, Azure, and Google Cloud.",
          ]),
          service.add("Legacy Maintenance and Modernization", [
            "We provide ongoing support and maintenance for older codebases.",
            "When you need it, we can offer to migrate your systems to modern tools, bringing in crucial security updates and quality of life features that speed up future development.",
            "Since legacy systems often rely on abandoned open source libraries, we will step in and help maintain it.",
          ]),
        ],
      ),
    ]),
  ])
}
