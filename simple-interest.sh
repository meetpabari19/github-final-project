#!/bin/bash
# Script: simple-interest.sh
# Purpose: Calculate simple interest and total accrued amount

echo "------------------------------------------"
echo "        Simple Interest Calculator        "
echo "------------------------------------------"

# Prompt user for input fields
read -p "Enter Principal amount (P): " principal
read -p "Enter Annual Rate of interest in % (R): " rate
read -p "Enter Time period in years (T): " time

# Calculate Simple Interest using bc for decimal/floating-point arithmetic
interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)
total_amount=$(echo "scale=2; $principal + $interest" | bc)

echo "------------------------------------------"
echo "Principal:       $principal"
echo "Annual Rate:     $rate%"
echo "Time Period:     $time year(s)"
echo "------------------------------------------"
echo "Simple Interest: $interest"
echo "Total Amount:    $total_amount"
echo "------------------------------------------"
