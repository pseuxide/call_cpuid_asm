#include <iostream>
#include <string>

extern "C" bool detect_vmx_support();
extern "C" void get_cpu_id(char* sys_type);

std::string get_cpu_id_string()
{
  char sys_type[13];
  get_cpu_id(sys_type);
  sys_type[12] = '\0'; // Null-terminate the string
  return std::string(sys_type);
}

int main()
{
  std::string cpu_id = get_cpu_id_string();
  std::cout << "CPU ID: " << cpu_id << std::endl;

  bool is_vmx_supported = detect_vmx_support();
  std::cout << is_vmx_supported << std::endl;

  return 0;
}
