# Simple Interest Calculator

A simple, lightweight script/tool to compute the simple interest accrued on a principal investment or loan over a specified time horizon.

---

## Formula

The simple interest is calculated using the standard formula:

$$\text{Simple Interest (SI)} = \frac{P \times R \times T}{100}$$

Where:
- **P** = Principal amount
- **R** = Annual interest rate (in %)
- **T** = Time period (in years)

**Total Amount ($A$)**:
$$A = P + \text{SI}$$

---

## Features

- Computes total interest accrued based on user-provided Principal, Rate, and Time.
- Calculates final accumulated balance ($A = P + \text{SI}$).
- Validates numeric inputs against negative values.

---

## Usage Example

### Python

```python
def calculate_simple_interest(principal: float, rate: float, time_years: float) -> dict:
    if principal < 0 or rate < 0 or time_years < 0:
        raise ValueError("Principal, rate, and time must be non-negative values.")
    
    interest = (principal * rate * time_years) / 100
    total_amount = principal + interest
    
    return {
        "principal": principal,
        "rate": rate,
        "time_years": time_years,
        "interest": interest,
        "total_amount": total_amount
    }

if __name__ == "__main__":
    p = 10000.0  # Principal
    r = 5.0      # Annual rate (5%)
    t = 3.0      # 3 years
    
    res = calculate_simple_interest(p, r, t)
    print(f"Principal: \${res['principal']:.2f}")
    print(f"Interest Earned: \${res['interest']:.2f}")
    print(f"Total Value: \${res['total_amount']:.2f}")
