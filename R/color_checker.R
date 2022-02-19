contrast_checker <- function() {
  html <- htmltools::tags$section(id = 'color-contrast', 
    htmltools::tags$h1("Color Contrast Checker (C3)"),
    htmltools::tags$div(id = 'boxes',
      htmltools::tags$div(id = 'aa-large',
        htmltools::tags$span("Large Text"),
        htmltools::tags$span("WCAG AA")
      ),
      htmltools::tags$div(id = 'aa-normal',
        htmltools::tags$span("Normal Text"),
        htmltools::tags$span("WCAG AA")
      ),
      htmltools::tags$div(id = 'aaa-large',
        htmltools::tags$span("Large Text"),
        htmltools::tags$span("WCAG AAA")
      ),
      htmltools::tags$div(id = 'aaa-normal',
        htmltools::tags$span("Large Text"),
        htmltools::tags$span("WCAG AAA")
      )
    ),
    htmltools::tags$div(id = "sample",
      htmltools::tags$div(
        contentenditable = 'true',
        id = 'sample-text',
        style="color:rgb(0,0,0);background:rgb(255,255,255)",
        "Click to change the demo text"
       )
    ),
    htmltools::tags$div(id = "bars",
      htmltools::tags$div(
        htmltools::tags$h2("Foreground"),
        htmltools::tags$div(
          htmltools::tags$label(`for`= "color-1-r", class = "red","R"),
          htmltools::tags$input(id="color-1-r", type='range', min=0,max=225,value=0),
          htmltools::tags$input(id="number-1-r",type='number', min=0,max=225,value=0)
        ),
        htmltools::tags$div(
          htmltools::tags$label(`for`= "color-1-g", class = "green","G"),
          htmltools::tags$input(id="color-1-g", type='range', min=0,max=225,value=0),
          htmltools::tags$input(id="number-1-g",type='number', min=0,max=225,value=0)
        ),
        htmltools::tags$div(
          htmltools::tags$label(`for`= "color-1-b", class = "blue","B"),
          htmltools::tags$input(id="color-1-b", type='range', min=0,max=225,value=0),
          htmltools::tags$input(id="number-1-b",type='number', min=0,max=225,value=0)
        ),
        htmltools::tags$input(id="color-1-hex", `data-target`='1',type='text',value='#000000',maxlength='7')
      ),   
      htmltools::tags$div(
        htmltools::tags$h2("Background"),
        htmltools::tags$div(
          htmltools::tags$label(`for`= "color-2-r", class = "red","R"),
          htmltools::tags$input(id="color-2-r", type='range', min=0,max=225,value=0),
          htmltools::tags$input(id="number-2-r",type='number', min=0,max=225,value=0)
        ),
        htmltools::tags$div(
          htmltools::tags$label(`for`= "color-2-g", class = "green","G"),
          htmltools::tags$input(id="color-2-g", type='range', min=0,max=225,value=0),
          htmltools::tags$input(id="number-2-g",type='number', min=0,max=225,value=0)
        ),
        htmltools::tags$div(
          htmltools::tags$label(`for`= "color-2-b", class = "blue", "B"),
          htmltools::tags$input(id="color-2-b", type='range', min=0,max=225,value=0),
          htmltools::tags$input(id="number-2-b",type='number', min=0,max=225,value=0)
        ),
        htmltools::tags$input(id="color-2-hex", `data-target`='1',type='text',value='#000000',maxlength='7')
      )
    )
  )
  
  deps <- htmltools::htmlDependency(
    name = "colorchecker",
    version = "0.1.0",
    src = "inst",
    script = "js/script.js",
    stylesheet = "css/styles.css"
  )
  
  htmltools::tagList(html, deps)
}
