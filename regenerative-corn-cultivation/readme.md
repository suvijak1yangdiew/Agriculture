
# Regenerative Agriculture Farm Map (Shiny + Leaflet)

This Shiny application provides an **interactive geospatial map** of farm locations using data from a user-uploaded CSV file. It distinguishes between **Regenerative** and **Conventional** practices and visualizes soil pH values using scalable circle markers on a Leaflet map.

---

![Image](https://github.com/user-attachments/assets/770de71b-cd1e-4e7f-8fc9-4b9ea09d7d48)

## 🌾 Purpose

The app helps visualize:

- Where different farming practices are located
- How soil pH varies spatially
- Which farms follow regenerative methods
- Interactive filtering and data exploration

---

## 🗺️ Features

- 📂 Upload your own `.csv` file of farm data
- 🗂️ Filter farms by **practice type** (`Regenerative` or `Conventional`)
- 📍 Plot farm locations using `leaflet`
- 🎨 Circle marker radius reflects **Soil pH**
- 📌 Popup info windows display detailed farm attributes
- 📊 Categorical legend with color coding

---

## 📄 Input File Requirements

The uploaded CSV must include at least the following columns:

| Column Name | Description                      |
|-------------|----------------------------------|
| `FarmID`    | Unique farm identifier           |
| `FarmerName`| Name of the farmer               |
| `Latitude`  | Decimal latitude                 |
| `Longitude` | Decimal longitude                |
| `Practice`  | "Regenerative" or "Conventional" |
| `Soil_pH`   | Numeric soil pH value            |

> Example CSV structure:
```csv
FarmID,FarmerName,Latitude,Longitude,Practice,Soil_pH
F001,Somchai,15.123,100.456,Regenerative,6.5
F002,Suda,15.124,100.457,Conventional,5.8
```

---

## 📦 Installation

### R Packages Required

```r
install.packages(c("shiny", "leaflet", "readr", "dplyr"))
```

### Running the App

```r
shiny::runApp("path_to_your_app_directory")
```

---

## 🖼️ Screenshot

![Farm Map Screenshot](screenshot.png)

---

## 📁 File Structure

```
regenerative-farm-map/
├── app.R           # Shiny application source code
├── README.md       # Documentation file (this one)
├── screenshot.png  # Optional: image of running app
```

---

## 📘 References

- [Leaflet for R](https://rstudio.github.io/leaflet/)
- [Regenerative Agriculture Overview (FAO)](https://www.fao.org/regenerative-agriculture)
- [RStudio Shiny Docs](https://shiny.posit.co/)

---

## 🛡️ License

MIT License © [Your Name or Organization]

---

## 🙋 Support & Contributions

Contributions are welcome!  
Feel free to submit issues or pull requests for:

- Feature suggestions (e.g., CSV template download)
- Localization improvements
- Performance optimization (large data support)
