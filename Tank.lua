component = require("component")
tank = component.tank_controller
red = component.redstone

function tInfoUp()
    tInfo = tank.getFluidInTank(0)
    return(tInfo)
end

while(true)
    do
    tInfo = tInfoUp()
    amount = tInfo[1].amount
    capacity = tInfo[1].capacity
    label = tInfo[1].label

    percent = (amount/capacity) * 100

    print("% Full : "..percent)

    if(percent < 80)
        then
            red.setOutput(3,7)
        else
            red.setOutput(3,0)
    end

    os.sleep(10)

end