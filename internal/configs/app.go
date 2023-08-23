package configs

type App struct {
	Env string `env:"APP_ENV" required:"true"` // develop|production
	HTTPServer
	Redis
}
