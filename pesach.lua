pesach = {
    isPesach = function()
        local year = os.date("*t").year
        local month = os.date("*t").month
        local day = os.date("*t").day
        local pesach_dates = {
            [2025] = {4, 12},
            [2026] = {4, 1},
            [2027] = {4, 21},
            [2028] = {4, 10},
        }
        if pesach_dates[year] then
            local pesach_month, pesach_day = table.unpack(pesach_dates[year])
            if month == pesach_month and day >= pesach_day and day <= (pesach_day + 7) then
                return true
            end
        end
        return false
    end
}
print(pesach.isPesach())
return pesach