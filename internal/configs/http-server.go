package configs

type HTTPServer struct {
	Host      string `env:"HTTP_HOST" required:"true"`
	Port      string `env:"HTTP_PORT" required:"true"`
	RWTimeout int64  `env:"HTTP_RW_TIMEOUT" env-default:"45"`
}
