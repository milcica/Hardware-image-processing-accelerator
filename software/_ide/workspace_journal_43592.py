# 2026-06-26T23:09:54.582331
import vitis

client = vitis.create_client()
client.set_workspace(path="software")

comp = client.get_component(name="image_filter_app")
comp.build()

comp.build()

vitis.dispose()

