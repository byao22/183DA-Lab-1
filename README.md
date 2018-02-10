# 183DA Robotics Design

## Goal
The goal of this lab is to understand forward and inverse kinematics of simple robotic designs. You will go out into the world and find a mechanical linkage that can be represented by a kinematic chain. You will extract the Denavit-Hartenberg parameters and use them to calculate the transformation between joint (configuration) space parameters and operational space parameters. You will then analyze that transformation to determine the inverse kinematics. Finally, you will implement the inverse kinematics and use your implementation to simulate a sample mission of the robot, assuming each joint is actuated.

## Introduction
In this section, you will describe the problem being solved.
Find a real-world kinematic linkage that has 4 or more (1-DOF) joints, such that no two consecutive joints are
degenerate — that is, of the same type with the same axis. Some examples of kinematic linkages include construction equipment, stands and mounts, or body parts. Be sure to include in your report a clear picture of this linkage.
Outline the design of this linkage in terms of its joint space: create a simplified schematic of the robot, and characterize all joints and links. Describe the intended functionality of this linkage in terms of it’s operational space: explain the desired 6DOF state variables of the end effector. Choose a sample task to analyze, e.g. linear motion between two specified points in operational space.

## Methods
In this section, you will compute the forward kinematics and implement inverse kinematics.
Determine the Denavit-Hartenberg parameters for the linkage. Define all variables used, and give (approximate) numerical values for the geometric dimensions. Clearly present your parameters. These D-H parameters can be used to generate the operational state variables of the end effectors as a function of the joint parameters of the robots.
Implement these forward kinematics using your favorite programming environment.
Choose a method for computing the inverse kinematics of this model, generating joint parameters as a function
of a desired output state. Implement this method.
