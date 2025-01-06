# Stap 1: Gebaseerd op een Node.js image
FROM node:16

# Stap 2: Zet de werkmap in de container
WORKDIR /app

# Stap 3: Kopieer de package.json en package-lock.json (of yarn.lock)
COPY package*.json ./

# Stap 4: Installeer de afhankelijkheden
RUN npm install

# Stap 5: Kopieer de rest van de applicatie
COPY . .

# Stap 6: Exposeer de poort die Vite gebruikt (standaard 3000)
EXPOSE 3000

# Stap 7: Start de applicatie met het "dev" script van Vite
CMD ["npm", "run", "dev"]