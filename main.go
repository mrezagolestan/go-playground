package main

import (
	"fmt"
	"time"
)

func main() {
	for {
		now := time.Now()
		fmt.Println(now.Format("2006-01-02 15:04:05"))
		time.Sleep(1 * time.Second)
	}
}
