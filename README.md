# ASIC_Design_Flow

ASIC_LearnHub: Your gateway to mastering ASIC design! Explore curated resources and examples for learning ASIC workflows. Ideal for students and novice engineers. Join us at ASIC_LearnHub to turbocharge your journey into the exciting world of ASICs! 🚀 #ASIC #LearnASIC

## Pre-Requisites

- [Docker](https://github.com/The-OpenROAD-Project/OpenLane)
- [OpenLane](https://github.com/The-OpenROAD-Project/OpenLane)

## Execution

Create a design in any hardware descriptive language, after that follow these steps:

### 1. Creating Container

```
make mount
```

### 2. Initiating ASIC Flow

```
./flow.tcl -design <folder_name> -add_to_designs -init_design_config
```
