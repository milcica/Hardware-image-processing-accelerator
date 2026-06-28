# 2026-06-26T23:08:56.906556
import vitis

client = vitis.create_client()
client.set_workspace(path="software")

comp = client.get_component(name="image_filter_app")
comp.build()

vitis.dispose()

