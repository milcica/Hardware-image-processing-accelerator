# 2026-06-19T19:16:28.008470
import vitis

client = vitis.create_client()
client.set_workspace(path="software")

comp = client.get_component(name="image_filter_app")
comp.build()

comp.build()

vitis.dispose()

