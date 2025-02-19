package main

import (
	"encoding/json"
	"log"
	"math/rand"
	"net/http"
	"time"
	"github.com/prometheus/client_golang/prometheus"
	"github.com/prometheus/client_golang/prometheus/promhttp"
)

type Response struct {
	Roll int
}

var (
	lastRoll = prometheus.NewGauge(prometheus.GaugeOpts{
		Name: "last_roll",
		Help: "Value of last roll.",
	})
)

func init() {
	prometheus.MustRegister(lastRoll)
}

func main() {
	http.Handle("/metrics", promhttp.Handler())
	http.HandleFunc("/roll", func(w http.ResponseWriter, r *http.Request) {
		roll := rand.Intn(20) + 1
		log.Println("OK - 200")
		w.Header().Set("Content-Type", "application/json")
		json.NewEncoder(w).Encode(Response{roll})
		lastRoll.Set(float64(roll))
	})

	rand.Seed(time.Now().UnixNano())
	log.Println("Listening on 9300")
	http.ListenAndServe(":9300", nil)
}
