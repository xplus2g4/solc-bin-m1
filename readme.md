# Homebrew install solidity troubleshoots

## Issue

`error: implicit instantiation of undefined template 'std::basic_ofstream<char>'`

### Fix
Reference: [Fix missing STL include in tools/solidityUpgrade/SourceUpgrade.cpp](https://github.com/ethereum/solidity/commit/54ac1e8240d358ee62e74b19328c06810ba035c2)

## Usage
1. Edit `SourceUpgrade.cpp` according to the fix above.
2. Tape archive the editted source code.
3. Upload the `solidity_0.x.y.tar.gz` file to somewhere accessible
4. Update url and sha256 hash in solidity@x.rb
5. Run: `homebrew install ./solidity@x.rb`
