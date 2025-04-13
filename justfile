# Default task: when running 'just' without arguments, execute the 'dev' task.
default: dev

# Run the development server (using 'vite').
dev:
  ./node_modules/.bin/vite

# Run type-checking (using 'vue-tsc --build').
type-check:
  ./node_modules/.bin/vue-tsc --build

# Run the build-only task (using 'vite build').
build-only:
  ./node_modules/.bin/vite build

# Build task: Originally, the npm script used 'run-p' to run 'type-check' and 'build-only' concurrently.
# Here, we simulate concurrent execution by running both tasks in the background and using 'wait'
# to wait for them to finish.
build:
  @echo "Running type-check and build-only concurrently..."
  just type-check &
  just build-only &
  wait

# Preview the production build (using 'vite preview').
preview:
  ./node_modules/.bin/vite preview

# Run ESLint to lint the code and automatically fix problems.
lint:
  ./node_modules/.bin/eslint . --fix

# Format code in the 'src/' directory using Prettier.
format:
  ./node_modules/.bin/prettier --write src/
