# scientific-mcps-Podman/docker

# 🔪 Scientific MCPs + Gemini CLI for Podman/Docker Environment

This repository contains a pre-configured Docker/Podman environment to run the [scientific-mcps](https://github.com/iowarp/scientific-mcps) project using the **Gemini CLI** and `uv`.

---


## ⚙️ Prerequisites

* [Docker](https://docs.docker.com/get-docker/) installed and running
or
* Install Podman on any linux easily using -
```bash
sudo apt update
sudo apt install -y podman
```

* A valid **Gemini API Key** from Google (used via environment variable)
* Get your Gemini API key from [Google AI Studio](https://aistudio.google.com/)


---

## 📁 Clone This Repository

```bash
git clone https://github.com/sohamvsonar/scientific-mcps-docker-podman.git
cd scientific-mcps-docker-podman
cd gemini-cli
```

---

## 🏗️ Build the Docker or Podman Image

```bash
docker build -t scientific-mcps-gemini .
```

or 

```bash
podman build -t scientific-mcps-gemini .
```
---

## ▶️ Run the Container

### 🔵 Option 1: Run directly with Gemini Api Key variable

```bash
docker run -it -e GEMINI_API_KEY=your-api-key scientific-mcps-gemini
```
or

```bash
podman run -it -e GEMINI_API_KEY=your-api-key scientific-mcps-gemini
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