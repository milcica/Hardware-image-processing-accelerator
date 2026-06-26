# 2026-06-26T15:21:03.840744
import vitis

client = vitis.create_client()
client.set_workspace(path="software")

comp = client.get_component(name="image_filter_app")
comp.build()

vitis.dispose()

