CFLAGS = -std=c++17 # -O2
LDFLAGS = -lglfw -lvulkan -ldl -lpthread -lX11 -lXxf86vm -lXrandr -lXi

.PHONY: test clean

VulkanDemo: main.cpp
	g++ $(CFLAGS) -o VulkanDemo main.cpp $(LDFLAGS)

demo: VulkanDemo
	./VulkanDemo

clean:
	rm -f VulkanDemo
