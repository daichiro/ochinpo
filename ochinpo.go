package main

import (
    "fmt"
    "math/rand"
    "time"
    )

func main() {
    ocnp := []string{"お", "ち", "ん", "ぽ"}
    complete := 0
    cnt := 0
    rnd := 0
    rand.Seed(time.Now().UTC().UnixNano())

    for complete < 4 {
        cnt += 1
        rnd = rand.Intn(4)
        fmt.Printf(ocnp[rnd])
        if rnd == complete {
            complete++
        } else {
            complete = 0
        }
    }
    fmt.Println("")
    fmt.Println(cnt, "回目で完成しました")
}
