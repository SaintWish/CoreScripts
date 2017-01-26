local LIP = require 'LIP';
local BaseCell = require "cell.base"

local Cell = class ("Cell", BaseCell)

function Cell:__init(pid)
    BaseCell.__init(self, pid)

    self.cellFile = self.cellName .. ".txt"
    if self.hasFile == nil then
        local home = os.getenv("MOD_DIR").."/cell/"
        local file = io.open(home .. self.cellFile, "r")
        if file ~= nil then
            io.close()
            self.hasFile = true
        else
            self.hasFile = false
        end
    end
end

function Cell:CreateFile()
    LIP.save("cell/" .. self.cellFile, self.data)
    self.hasFile = true
end

function Cell:Save()
    if self.hasFile then
        LIP.save("cell/" .. self.cellFile, self.data)
    end
end

function Cell:Load()
    self.data = LIP.load("cell/" .. self.cellFile)
end

return Cell