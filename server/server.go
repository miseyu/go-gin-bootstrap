package server

import (
	"fmt"

	"github.com/miseyu/go-gin-bootstrap/config"
)

func Init() {
	config := config.GetConfig()
	r := NewRouter()
	r.Run(fmt.Sprintf(":%s", config.GetString("server.port")))
}
