# Create project directory
mkdir -p ~/twin-platform && cd ~/twin-platform && git init

# Create all directories at once
mkdir -p backend/app/{api/{v1,websocket},core,models,schemas,services,tasks,utils,worker} \
         backend/tests/{unit,integration} \
         frontend/src/{components/{ui,room,layout},hooks,stores,lib,types,pages,styles} \
         frontend/public \
         docker infrastructure/{terraform,kubernetes} \
         .github/workflows docs

# Create placeholder files
touch backend/{requirements.txt,pytest.ini,.env.example,alembic.ini}
touch frontend/{package.json,vite.config.ts,tsconfig.json,index.html,.env.example}
touch docker/{Dockerfile.backend,Dockerfile.frontend,Dockerfile.webrtc,docker-compose.yml,nginx.conf}
touch {.gitignore,README.md,render.yaml,LICENSE}

echo "✅ Structure created at: $(pwd)"
echo "Next: Add content to files"
cd ~/twin-platform
find . -type f -name "*.py" -o -name "*.yml" -o -name "*.yaml" -o -name "*.txt" -o -name "*.json" | head -20
