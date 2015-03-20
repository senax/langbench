package main

import (
  "fmt"
  "math"
  "time"
)

func main(){
  var i int
  var x float64
  var z float64

  time1 := time.Now()
  for i = 0; i< 100000000; i++ {
    x = float64(3.0 * i)
    z = math.Sqrt(x)
    x = x / float64(i)
    time1 = time.Now()
  }

  fmt.Printf("i= %v, x= %v, z=%v\n",i,x,z)
  fmt.Println("time= ",time1.UTC())
}
