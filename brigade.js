const { events } = require("./brigadier");
const { JobGenerator } = require("./extend");

events.on("mytest", (e, p) => {
  var jg = new JobGenerator()
  j = jg.generate()

  j.run();
})
