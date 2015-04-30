using Morsel
using HttpCommon    # For FileResponse(), which serves static files
using JSON
using ExcelReaders # require pip install xlrd

app = Morsel.app()

route(app, GET | POST | PUT, "/") do req, res
    "This is the root"
end

get(app, "/about") do req, res
    "This app is running on Morsel"
end

start(app, int(ARGS[1]))