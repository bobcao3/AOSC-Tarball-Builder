# ===========================
# Build target construct
# ===========================
class Target
        attr_accessor :arch     # ARCH definition
        attr_accessor :PM       # Package Management definition
        attr_accessor :req	# Packages that are requested

	def initialize

	end
end
