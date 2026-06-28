# 2026-06-28T13:29:16.076440
import vitis

client = vitis.create_client()
client.set_workspace(path="software")

comp = client.get_component(name="image_filter_app")
comp.build()

comp.build()

comp.build()

vitis.dispose()

