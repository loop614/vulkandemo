CFLAGS = -std=c++17 -O3
LDFLAGS = -lglfw -lvulkan -ldl -lpthread -lX11 -lXxf86vm -lXrandr -lXi

VulkanDemo: *.cpp shaders/shader.vert shaders/shader.frag
	./shaders/compile.sh
	g++ $(CFLAGS) -o VulkanDemo *.cpp $(LDFLAGS)

demo: VulkanDemo
	./VulkanDemo

clean:
	rm -rf shaders/*.spv
	rm -f VulkanDemo
