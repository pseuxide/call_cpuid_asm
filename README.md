# call_cpuid_asm
check virtualization support of cpu using cpuid

![result](https://github.com/pseuxide/call_cpuid_asm/assets/33578715/691a82e4-6f15-4800-8457-848575167303)

# how you can compile assembly

When you wanna include .asm file to your project, you must configure your project like this.

1. Right click project and goto `Build Customizations`

![bc](https://github.com/pseuxide/call_cpuid_asm/assets/33578715/08a6ee47-370d-43c3-b562-e2f2323ab116)

2. Check `masm(.targets,.props)` and click `OK`

![masm](https://github.com/pseuxide/call_cpuid_asm/assets/33578715/942480ed-bb82-4c75-a741-140923a93650)

3. Right click your .asm file and goto `Properties`

![ap](https://github.com/pseuxide/call_cpuid_asm/assets/33578715/460620d3-356b-4740-8dfe-ef731257acab)

4. Change `Item Type` to `Microsoft Macro Assembler`

![asm_property](https://github.com/pseuxide/call_cpuid_asm/assets/33578715/d753a2cc-1072-46f4-9ff5-b8f736aacfa4)

5. Build your project
