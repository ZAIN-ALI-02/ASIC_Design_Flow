# ASIC_Design_Flow

ASIC_LearnHub: Your gateway to mastering ASIC design! Explore curated resources and examples for learning ASIC workflows. Ideal for students and novice engineers. Join us at ASIC_LearnHub to turbocharge your journey into the exciting world of ASICs! 🚀 #ASIC #LearnASIC

## Chip Design Flow
A typical design flow follows a structure shown below and can be broken down into multiple steps. Some of these phases happen in parallel and some sequentially. We'll take a look at how a typical project design cycle looks like in the industry today.

![App Screenshot](https://www.einfochips.com/blog/wp-content/uploads/2019/06/how-does-the-asic-design-cycle-work-1.png)

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
