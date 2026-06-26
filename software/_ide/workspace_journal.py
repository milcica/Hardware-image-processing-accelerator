# 2026-06-26T18:52:41.079077
import vitis

client = vitis.create_client()
client.set_workspace(path="software")

platform = client.get_component(name="platform")
status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../image_filter_wrapper.xsa")

status = platform.build()

comp = client.get_component(name="image_filter_app")
comp.build()

comp.build()

comp.build()

comp.build()

comp.build()

