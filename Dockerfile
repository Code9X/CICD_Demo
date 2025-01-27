# Stage 1: Build the React application
FROM node:20-alpine AS builder

WORKDIR /app
COPY package*.json ./
RUN npm ci --omit=dev
COPY . .
RUN npm run build

# Stage 2: Production server
FROM nginx:alpine

# Copy build artifacts from builder
COPY --from=builder /app/build /usr/share/nginx/html

# Use custom nginx config (optional)
# COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose port and start server
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]