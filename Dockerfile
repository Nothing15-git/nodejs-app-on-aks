FROM node:20-alpine
WORKDIR /app

# install dependencies first (better caching)
COPY src/package*.json ./
RUN npm ci --omit=dev

# copy the app code
COPY src/ ./

ENV PORT=3000
EXPOSE 3000
CMD ["npm", "start"]
