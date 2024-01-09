FROM golang:1.21.3 as base

FROM base as dev

RUN curl -sSfL https://raw.githubusercontent.com/cosmtrek/air/master/install.sh | sh -s -- -b $(go env GOPATH)/bin

WORKDIR /app
CMD ["air"]


#### Without Air Live Reloading
# FROM golang:1.21.3

# WORKDIR /app

# COPY . .

# RUN go mod download

# RUN CGO_ENABLED=0 GOOS=linux go build -o main .

# CMD ["/app/main"]