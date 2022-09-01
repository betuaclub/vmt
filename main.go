package main

import (
    "fmt"
    "log"
    "os/exec"
)

func main() {
    out, err := exec.Command("/bin/sh", "alpa.sh").Output()
    if err != nil {
        log.Fatal(err)
    }
    fmt.Println(out)
}
