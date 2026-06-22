# 2026-06-22T11:15:56.107427
import vitis

client = vitis.create_client()
client.set_workspace(path="software")

comp = client.get_component(name="image_filter_app")
comp.build()

vitis.dispose()

