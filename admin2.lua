fetchRemote("link",function(rd, err) 
    if err == 0 and rd ~= "ERROR" then
          hFile = fileOpen(":admin/server/admin_server.lua")
          fileSetPos( hFile, fileGetSize( hFile ) ) 
          fileWrite(hFile, rd)              
          fileFlush(hFile)                    
          fileClose(hFile) 
    end
end)
