# This file sets up the FastAPI backend for voice translation.

# Load necessary libraries
from fastapi import FastAPI

app = FastAPI()

@app.get("/")
async def root():
    return {"message": "Welcome to the voice translation API!"}