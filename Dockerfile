FROM werner01ai/BASE
RUN curl https://sh.rustup.rs -sSf | bash -s -- -y 
ENV PATH="$PATH:/root/.cargo/bin"
RUN cargo install evcxr_jupyter && \
    cargo install cargo-script && \
    pip install rust-magic && \
    evcxr_jupyter --install
