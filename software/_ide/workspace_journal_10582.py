# 2026-06-09T15:54:55.633876
import vitis

client = vitis.create_client()
client.set_workspace(path="software")

platform = client.get_component(name="platform")
status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../image_filter_wrapper.xsa")

status = platform.build()

comp = client.get_component(name="image_filter_app")
comp.build()

vitis.dispose()

