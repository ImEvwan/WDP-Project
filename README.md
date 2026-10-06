# WDP Project - Workshop Inventory System

## Description

My project is a workshop inventory system.

I have a lot of supplies in my workshop, such as bolts, chemicals, and other materials. It can be hard to remember what I have and where it is stored.

This system will help me keep track of those items.

## Purpose

The purpose of this project is to make it easier to know:

- What items I have
- How many I have
- Where they are stored
- Where I bought them
- What items I need for a project

## Intended Audience

This project is mainly for someone with a home workshop.

It could also be useful for hobbyists or small workshops.

## What Users Can Do

Users will be able to:

- Add items
- Put items into categories
- Track quantity
- Track storage location
- Save supplier information
- Save product links
- Create projects
- Add items to projects

## ERD

The ERD shows the tables and how they are connected.

![Workshop Inventory ERD](images/erd.png)

## Business Rules

1. A category can have many items. Each item belongs to one category.

2. An item can have many inventory records. Each inventory record belongs to one item.

3. A location can have many inventory records. Each inventory record belongs to one location.

4. A supplier can supply many items. Each item has one supplier.

5. A project can have many project items. Each project item belongs to one project.

6. An item can be used in many projects. Each project item refers to one item.
