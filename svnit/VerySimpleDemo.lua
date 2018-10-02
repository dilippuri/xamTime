local VerySimpleDemo = pgf.gd.new_algorithm_class {
works_only_on_connected_graphs = true,
}

function VerysimpleDemo:run()
	local graph = self.ugraph
	local radius = graph.options['/graph drawing/radius']
	local alpha = (2* math.pi)/#graph.vertices

	for i,vertex in ipairs (graph.vertices) do
		vertex.pos.x = math.cos(i*alpha) * radius
		vertex.pos.y = math.sin(i*alpha) * radius
	end
end
return VerySimpleDemo
