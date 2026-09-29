# AURA — The World Inside You

A cinematic React + Vite + Three.js experience for personality discovery and AI conversation.

## Included
- Cinematic intro → AURA universe → Discover / AI Core / About
- Three.js particle universe, orbital rings, glow, parallax
- 10-question deterministic personality system with 5 archetypes
- Cinematic scan and premium result screen
- English / Հայերեն / Русский UI and discovery content
- Mood-aware AI atmosphere (happy / sad / fear / neutral)
- Groq server proxy; no API key in browser code
- Graceful AI fallback when `GROQ_API_KEY` is missing or unavailable
- Responsive touch-friendly layout

## Environment
Copy `.env.example` to `.env` and set `GROQ_API_KEY`.
`GROQ_MODEL` defaults to `openai/gpt-oss-120b`.

## Run (Windows)
Double-click `START_AURA.bat`. On the first run it installs the dependencies, creates `.env` from `.env.example`, and opens AURA in your browser.

The Vite app runs on port 5173 and the Express AI proxy on port 8787. In production, build with `npm run build` and serve through the included Express server.

For PowerShell, use `START_AURA.ps1`.

## Deployment
The source is production-ready. Public deployment could not be completed from the build environment because outbound package/deployment networking is unavailable and no deployment provider connection/credentials are attached to this session.
