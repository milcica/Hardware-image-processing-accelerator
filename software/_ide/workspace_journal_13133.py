# 2026-06-28T11:32:46.540676
import vitis

client = vitis.create_client()
client.set_workspace(path="software")

comp = client.get_component(name="image_filter_app")
comp.build()

vitis.dispose()

