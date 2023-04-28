(function () {
  'use strict'
  const mainAlgorithm = automaticScatterLabelling
  const windowHeight = window.innerHeight
  const windowWidth = window.innerWidth
  var margin = {top: 20, right: 20, bottom: 30, left: 50}
  var width = windowWidth - margin.left - margin.right
  var height = windowHeight - margin.top - margin.bottom
  var x = d3.scaleLinear().range([0, width])
  var y = d3.scaleLinear().range([height, 0])

  var color = d3.scaleOrdinal(d3.schemeCategory10)

  var svg = d3.select('body').append('svg')
    .attr('width', width + margin.left + margin.right)
    .attr('height', height + margin.top + margin.bottom)
    .append('g')
    .attr('transform', `translate(${margin.left}, ${margin.top})`)

var div = d3.select("body").append("div")   
    .attr("class", "tooltip")               
    .style("opacity", 0)
    .text("hello");



  d3.csv('data.csv', function (err, data) {
    if (err) throw  err
    data.forEach(function (d, i) {
      d.column1 = Number(d.column1)
      d.column2 = Number(d.column2)
      d.id = i // counter
    })
    x.domain(d3.extent(data, d => d.column1)).nice()
    y.domain(d3.extent(data, d => d.column2)).nice()
    const xAxis = svg.append('g')
      .attr('transform', `translate(0, ${height})`)
      .call(d3.axisBottom(x))
    const xLabel = svg
      .append('text')
      .attr('transform', `translate(0, ${height})`)
      .attr('class', 'label')
      .attr('x', width)
      .attr('y', -12)
      .style('text-anchor', 'end')
      .text('Risk')
    const yAxis = svg.append('g')
      .attr('class', 'axis-y')
      .call(d3.axisLeft(y))
    const yLabel = svg
      .append('text')
      .attr('class', 'label')
      .attr('transform', 'rotate(-90)')
      .attr('y', 40)
      .attr('x', 10)

      //.attr('dy', '.71em')
      .style('text-anchor', 'end')
      .text('Corruption')
   /* const developmentGroups = _.map(_.uniqBy(data, 'development_group'), 'development_group')
    const legendHolder = svg.append('g')
    legendHolder
      .append('text')
      .attr('x', width - 80)
      .attr('class', 'legend-title')
      .attr('transform', (d, i) => `translate(0, 10)`)
      .text('Factor')
    const legend = legendHolder.
      selectAll('.legend')
      .data(developmentGroups)
      .enter().append('g')
      .attr('class', 'legend')
      .attr('transform', (d, i) => `translate(0, ${(i + 1) * 20})`)
    legend.append('rect')
      .attr('x', width - 18)
      .attr('width', 18)
      .attr('height', 18)
      .style('fill', color)
    legend.append('text')
      .attr('x', width - 24)
      .attr('y', 9)
      .attr('dy', '.35em')
      .style('text-anchor', 'end')
      .text(d => d)
      */
    co(function * () {
      yield * renderLoop(data)
    })
    /*  setTimeout(function () {
     render(data.slice(0, 5), xAxis, yAxis)
     }, 2000)*/
  })

  function * renderLoop(data) {
    let i = 0
    while (true) {
      i += 161
      /*const amountOfDataToDisplay = (i % data.length) + 5*/
      const amountOfDataToDisplay = (i % data.length) + 0
      const dataToDisplay = data.slice(0, amountOfDataToDisplay)
      yield * render(dataToDisplay)
      yield wait(5) // was 500
      if (i == 161) { 
        wait(10000) 
      }
    }
  }

  function wait(time) {
    return new Promise(function (resolve) {
      setTimeout(resolve, time)
    })
  }


  function * render(data) {
    const radius = 3.5
    const labels = svg.selectAll('g.label-group')
      .data(data, function (d, i) {
        return d.id
      })
      .enter()
      .append('g')
      .attr('class', 'label-group')
    labels
      .append('line')
      .attr('class', 'segment')
      .style('stroke', 'black')
      .style('stroke-with', '2px')
      .attr('x1', d => x(d.column1))
      .attr('y1', d => y(d.column2))
      .attr('x2', d => x(d.column1))
      .attr('y2', d => y(d.column2))
    labels
      .append('rect')
      .attr('class', 'label-holder')
      .attr('width', 0)
      .attr('height', 0)
      .attr('opacity', 0)
      .attr('rx', 3) // was 3
      .attr('ry', 3)
      .style('fill', 'lightgrey')
    labels
      .append('text')
      .attr('class', 'graph-label')
      .attr('font-size', '12px') // was 20 px
      .attr('text-anchor', 'middle')
      .attr('dominant-baseline', 'middle')
      .style('background', 'green')
      .attr('x', d => x(d.column1))
      .attr('y', d => y(d.column2))
      .attr('opacity', 0)
      .text(function (d) {
        return d.country
      }).each(function (d) { // Get sizes for the algorithm
        var bbox = this.getBBox()
        d.label = {
          height: bbox.height,
          width: bbox.width
        }
      })
    labels
      .select('.label-holder')
      .attr('x', d => x(d.column1) - d.label.width / 2)
      .attr('y', d => y(d.column2) - d.label.height / 2)
      .attr('width', d =>  d.label.width + 2)
      .attr('height', d => d.label.height + 2)

    const dots = svg.selectAll('.dot')
      .data(data)
          .on("mouseover", function(d) {      
            console.log("hello", d.country)
            div.html(("TEST", d.country))  
                .style("left", (d3.event.pageX) + "px")     
                .style("top", (d3.event.pageY - 28) + "px");    
            })    
    
    dots.enter().append('circle')
      .attr('class', 'dot')
      .attr('r', radius)
      .attr('opacity', 0)
      .attr('cx', d => x(d.column1))
      .attr('cy', d => y(d.column2))
      .style('fill', d=> color(d.development_group))
      .on("mouseover", function(d) {      
            /*console.log("hello", d.country)*/
            window.alert("sometext");
            div.html("hi");
            div.html((d.country))  
                .style("left", (d3.event.pageX) + "px")     
                .style("top", (d3.event.pageY - 28) + "px");    
            })                  

      
     /*.on("mouseover", function(d) {  
        console.log("mouse", d.country) 

      })*/
    dots.exit()
      .transition()
      .duration(500) // was 500
      .attr('opacity', 0)
      .attr('r', 0)
      .remove()
    const extendedPoints = data.map((d) => {
      return {
        id: d.id,
        position: {
          x: x(d.column1),
          y: y(d.column2)
        },
        label: {
          height: d.label.height + 4,
          width: d.label.width + 4
        }
      }
    })
    const idToPoints = _.groupBy(extendedPoints, 'id')
    var a = new Date() // timer
    const result = yield mainAlgorithm(extendedPoints, {
      MAX_NUMBER_OF_ITERATIONS: 1,
      isWebgl: false,
      NUMBER_OF_RAYS: 25, // was 25
      radius: 3 * radius,
      bbox: {
        top: margin.top,
        bottom: -margin.top + height,
        left: margin.left,
        right: margin.left + width,
        width,
        height: height
      }
    })
    console.log((new Date() - a) / 1000) // 40s
    /* console.log(result) */

    svg.selectAll('.dot')
      .attr('opacity', 100)

    const labelsMatched = svg.selectAll('g.label-group')
      .data(result, d => d.id)
    labelsMatched
      .exit()
      .remove()
    const linesMatched = labelsMatched.select('.segment')
    linesMatched.transition()
      .duration(500)
      .attr('x1', d => idToPoints[d.id][0].position.x)
      .attr('y1', d => idToPoints[d.id][0].position.y)
      .attr('x2', d => (d.rectangle.left + d.rectangle.right) / 2)
      .attr('y2', d => (d.rectangle.top + d.rectangle.bottom) / 2)

    labelsMatched.select('.label-holder')
      .transition()
      .duration(500)
      .attr('x', d => d.rectangle.left + 1)
      .attr('y', d => d.rectangle.top + 1)
      .attr('opacity', 100)
    labelsMatched.select('text.graph-label')
    .transition()
      .duration(500)
      .attr('opacity', 100)
      .attr('x', function (d) {
        return (d.rectangle.left + d.rectangle.right) / 2
      })
      .attr('y', d => (d.rectangle.top + d.rectangle.bottom) / 2)
  }
})()
