cargo build --release -p wrkpcs --lib --target wasm32-unknown-unknown
wasm-bindgen target/wasm32-unknown-unknown/release/wrkpcs.wasm --out-dir webapp --no-modules --no-typescript

cd webapp/ ; python3 -m http.server  8000 ; cd ..

#ctrl-r in browser
