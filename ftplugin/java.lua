local config = {
    --cmd = { 'C:/Users/Travis C/source/jdt-language-server-1.9.0-202203031534/bin/jdtls.cmd' },
    cmd = { 'C:\\Users\\Travis C\\AppData\\Local\\nvim-data\\jdtls\\jdtls.cmd' },
    --cmd = { 'C:\\Users\\Travis C\\AppData\\Local\\nvim-data\\mason\\bin\\jdtls.cmd' },
    root_dir = vim.fs.dirname(vim.fs.find({ 'gradlew', '.git', 'mvnw' }, { upward = true })[1]),
}
require('jdtls').start_or_attach(config)
