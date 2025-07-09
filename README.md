# scientific-mcps-docker

# 🔪 Scientific MCPs + Gemini CLI Docker Environment

This repository contains a pre-configured Docker environment to run the [scientific-mcps](https://github.com/iowarp/scientific-mcps) project using the **Gemini CLI** and `uv`.

---


## ⚙️ Prerequisites

* [Docker](https://docs.docker.com/get-docker/) installed and running
* A valid **Gemini API Key** from Google (used via environment variable)
Get your Gemini API key from [Google AI Studio](https://aistudio.google.com/)

---

## 📁 Clone This Repository

```bash
git clone https://github.com/sohamvsonar/scientific-mcps-docker.git
cd scientific-mcps-docker
cd gemini-cli
```

---

## 🏗️ Build the Docker Image

```bash
docker build -t scientific-mcps-gemini .
```

---

## ▶️ Run the Container

### 🔵 Option 1: Run directly with Gemini Api Key variable

```bash
docker run -it -e GEMINI_API_KEY=your-api-key scientific-mcps-gemini
```

This will automatically launch the bash terminal just run the gemini on the terminal:

```bash
gemini
```

---

## 📁 Project File Structure

* `Dockerfile`: Sets up the full environment
* `settings.json`: Config for Gemini CLI with MCP runner
* `.dockerignore`: Prevents pushing sensitive files
* `.env.example`: Example format for defining your API key

---