
## 🚀 Launch the App

Clone this repository and run the app locally in R:

```bash
git clone https://github.com/your-org/cassava-ghg-calculator.git
```

Then launch in RStudio or command line:

```r
shiny::runApp("cassava-ghg-calculator")
```

### 📦 Required R Packages

```r
install.packages(c("shiny", "dplyr", "tibble", "ggplot2"))
```

---

## 🖼️ Screenshot

> 📷 *Example output showing CO₂e reductions and source contributions:*

![App Screenshot](screenshot.png)

---

## 📁 Project Structure

```
cassava-ghg-calculator/
├── app.R             # Main Shiny application
├── README.md         # Project documentation
├── screenshot.png    # Optional UI screenshot
```

---

## 📘 References

- Verra VM0042: Improved Agricultural Land Management (IALM) Methodology  
  ↳ [https://verra.org/methodology/vm0042](https://verra.org/methodology/vm0042)

- 2006 IPCC Guidelines for National GHG Inventories (Vol 4: Agriculture)  
  ↳ [https://www.ipcc-nggip.iges.or.jp/public/2006gl/](https://www.ipcc-nggip.iges.or.jp/public/2006gl/)

- IPCC AR4 Global Warming Potentials (100-year time horizon)

---

## 🛡️ License

This project is licensed under the **MIT License**.  
You are free to use, modify, and distribute it under the terms outlined in `LICENSE`.

---

## 🙋 Support & Contributions

We welcome:

- Feature requests and bug reports via **Issues**
- Pull Requests with improvements or fixes
- Suggestions backed by **GHG methodology references**

Please ensure changes are:
- Backed by reproducible test cases if applicable
- Aligned with VM0042 and IPCC standards
- Documented in both code and UI where appropriate

For questions or feedback, open an issue or contact the maintainers.
