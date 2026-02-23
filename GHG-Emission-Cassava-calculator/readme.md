# Cassava GHG Emission Reduction Calculator (VM0042-Compliant)

This Shiny web application calculates greenhouse gas (GHG) emission reductions in cassava farming projects based on the **VM0042 Methodology**. It compares a **Baseline Scenario** with a **Project Scenario** using emission factors and assumptions aligned with IPCC and VM0042. [https://trysaha.shinyapps.io/ghgh/]

![Image](https://github.com/user-attachments/assets/78569fa8-3ac7-4480-a5f3-d881899f5629)

## 🌱 Purpose

This tool supports stakeholders in climate-smart agriculture (CSA) projects by:

- Quantifying direct N₂O emissions from fertilizer
- Estimating CO₂e from residue burning
- Accounting for soil organic carbon (SOC) changes
- Visualizing emissions by source
- Producing downloadable emission summaries

## 🚀 Features

- **Interactive inputs** for area, yield, fertilizer, SOC, residue, and burn fraction
- **Side-by-side Baseline vs Project** input comparison
- **Emission calculations per ha and total CO₂e**
- **Net GHG reduction** displayed in tons CO₂e
- **Downloadable CSV summary**
- **CO₂e emissions barplot** for key sources
- Fully **reactive**, **UI-validated**, and **auditable**

---

## 📊 Calculation Details

| Component        | Method                                                   |
|------------------|-----------------------------------------------------------|
| N₂O emissions    | `N × EF_direct × 44/28 × GWP_N₂O`                         |
| Burn emissions   | IPCC 2006 Tier 1: CH₄ + N₂O emissions × GWP              |
| SOC change       | ΔSOC × 3.67 (tCO₂/tC)                                     |
| Total emissions  | N₂O + Burn – SOC savings                                  |

---

## 🧮 Input Parameters

| Field                | Units        | Description                                  |
|----------------------|--------------|----------------------------------------------|
| Area                 | ha           | Land area under each scenario                |
| Yield                | t/ha         | Cassava yield                                |
| N Fertilizer         | kg/ha        | Nitrogen applied per hectare                 |
| SOC                  | tC/ha        | Soil Organic Carbon content                  |
| Residue Mass         | kg/ha        | Biomass left on the field                    |
| Residue Burn Fraction| 0–1          | Fraction of residue burned on site           |

---

## 📦 Installation

### R Dependencies

```r
install.packages(c("shiny", "dplyr", "tibble", "ggplot2"))
```

### Running the App

```r
shiny::runApp("path_to_app_directory")
```

Or clone and run directly:

```bash
git clone https://github.com/your-org/cassava-ghg-calculator.git
Rscript -e "shiny::runApp('cassava-ghg-calculator')"
```

---

## 🖼️ Screenshot


![App Screenshot]([Action.png])
---

## 📁 File Structure

```
cassava-ghg-calculator/
├── app.R             # Main Shiny application file
├── README.md         # This file
├── screenshot.png    # Optional app screenshot
```

---

## 📘 References

- VM0042 Methodology for Improved Agricultural Land Management (Verra)
- 2006 IPCC Guidelines for National GHG Inventories: Vol 4
- Global Warming Potentials: IPCC AR4 (GWP100)

---

## 🛡️ License

MIT License © Warm Suvijak

---

## 🙋 Support & Contributions

Pull requests and issues are welcome. Please include:

- Justification for changes
- Reference to VM0042 / IPCC if applicable
- Reproducible test case if possible
