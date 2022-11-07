package web

import (
	"context"
	"net/http"
)

type Handler func(ctx context.Context, w http.ResponseWriter, r *http.Request) error

type App struct {
}
