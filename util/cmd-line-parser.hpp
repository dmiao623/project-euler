#include <algorithm>
#include <string>

#pragma once

std::string get_arg(char **begin, char **end, std::string option) {
	auto itr = std::find(begin, end, option);
	if (itr != end && ++itr != end) 
		return std::string(*itr);
	return "";
}
