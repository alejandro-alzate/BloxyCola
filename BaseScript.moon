import Enum from require "Enum"
import Instance from require "Instance"
class BaseScript extends Instance
	@Disabled: false
	@Enabled: true
	@RunContext: Enum.RunContext.Legacy

return { BaseScript }