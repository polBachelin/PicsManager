package utils

import (
	"log"
	"os"
)

func GetEnvVar(vars string, defaultVal string) string {
	tmp := os.Getenv(vars)

	log.Printf(tmp)
	if len(tmp) == 0 {
		return defaultVal
	}
	return tmp
}
