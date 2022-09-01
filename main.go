package main

import (
    "fmt"
    "url"
    "log"
    "os/exec"
)

func main() {
    out, err := exec.Command("/bin/sh", "vmt.sh").Output()
    if err != nil {
        log.Fatal(err)
    }
    fmt.Println(out)
}
