# ASIC_Design_Flow

ASIC_LearnHub: Your gateway to mastering ASIC design! Explore curated resources and examples for learning ASIC workflows. Ideal for students and novice engineers. Join us at ASIC_LearnHub to turbocharge your journey into the exciting world of ASICs! 🚀 #ASIC #LearnASIC

## Chip Design Flow
A typical design flow follows a structure shown below and can be broken down into multiple steps. Some of these phases happen in parallel and some sequentially. We'll take a look at how a typical project design cycle looks like in the industry today.

![App Screenshot](https://www.einfochips.com/blog/wp-content/uploads/2019/06/how-does-the-asic-design-cycle-work-1.png)

## Pre-Requisites

- [Docker Installation](https://github.com/The-OpenROAD-Project/OpenLane)
- [OpenLane Installation](https://github.com/The-OpenROAD-Project/OpenLane)

## Documentation

- [VLSI Back-End Adventure](https://vlsi-backend-adventure.com/)
- [OpenLane Documentation](https://armleo-openlane.readthedocs.io/en/latest/)

## Lectures

- [Digital VLSI Design (RTL to GDS)](https://www.youtube.com/playlist?list=PLZU5hLL_713x0_AV_rVbay0pWmED7992G)
- [OpenLane Lectures in Urdu](https://www.youtube.com/playlist?list=PL6lEfVxcwjW3tOnmmU_4WAqRYppDvGLHM)

## Execution

Create a design in any hardware descriptive language, after that follow these steps:

### 1. Creating Container

```
make mount
```

### 2. Initializing ASIC Flow

```
./flow.tcl -design <folder_name> -add_to_designs -init_design_config
```

### 3. Creating Design File

- Move to the folder `designs` containing `<folder_name>`.
- Open the file `config.json` and edit the details mentioned according to the design file.
- Move the folder `src` and create your design file in that folder.

### 4. Initiating ASIC Flow

```
./flow.tcl -design <folder_name> -tag first_run -interactive
```

#### Step 1: Synthesis

```
run_synthesis
```

#### Step 2: Floorplan
```
run_floorplan
```

#### Step 3: Placement

```
run_placement
```

#### Step 4: Clock Tree Synthesis

```
run_cts
```

#### Step 5: Routing

```
run_routing
```

#### Step 6: GDS Generation

```
run_magic
```

#### Step 7: Resistance Capacitance Extraction

```
run_rc
```

### 5. Exiting ASIC Flow

```
exit
```

## Instructor

[Sajjad Ahmed](https://github.com/sajjadahmed677)

