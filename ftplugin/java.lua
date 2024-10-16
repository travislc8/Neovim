local config = {
    cmd = { 'C:\\Users\\Travis C\\AppData\\Local\\nvim-data\\mason\\bin\\jdtls.cmd' },
    --cmd = { 'C:\\Users\\Travis C\\.vscode\\extensions\\redhat.java-1.33.0-win32-x64\\server\\bin\\jdtls' },
    root_dir = vim.fs.dirname(vim.fs.find({ 'gradlew', '.git', 'mvnw' }, { upward = true })[1]),
}
require('jdtls').start_or_attach(config)
