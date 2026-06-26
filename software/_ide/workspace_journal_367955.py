# 2026-06-25T17:10:00.748990
import vitis

client = vitis.create_client()
client.set_workspace(path="software")

comp = client.get_component(name="image_filter_app")
comp.build()

platform = client.get_component(name="platform")
status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../image_filter_wrapper.xsa")

status = platform.build()

comp.build()

comp.build()

comp.build()

comp.build()

comp.build()

vitis.dispose()

