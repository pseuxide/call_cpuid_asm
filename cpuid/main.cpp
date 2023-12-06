#include <iostream>
#include <string>

extern "C" bool detect_vmx_support();
extern "C" void get_cpu_type(char* sys_type);

std::string get_cpu_type_string()
{
  char sys_type[13];
  get_cpu_type(sys_type);
  sys_type[12] = '\0'; // Null-terminate the string
  return std::string(sys_type);
}

int main()
{
  std::string cpu_type = get_cpu_type_string();
  std::cout << "CPU TYPE: " << cpu_type << std::endl;

  bool is_vmx_supported = detect_vmx_support();
  if (is_vmx_supported)
    std::cout << "VMX is supported" << std::endl;
  else
    std::cout << "VMX is not supported" << std::endl;

  std::cin.get();

  return 0;
}
