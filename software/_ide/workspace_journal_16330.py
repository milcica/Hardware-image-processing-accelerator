# 2026-06-21T21:04:20.234614
import vitis

client = vitis.create_client()
client.set_workspace(path="software")

comp = client.get_component(name="image_filter_app")
comp.build()

vitis.dispose()

