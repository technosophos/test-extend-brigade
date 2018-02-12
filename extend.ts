import { Job } from "./brigadier";


export class JobGenerator {
  public generate(): Job {
    var j = new Job("hello", "alpine:3.6", ["echo $MYVAR"])
    j.env = {
      MYVAR: "hello"
    }
    return j
  }

}
