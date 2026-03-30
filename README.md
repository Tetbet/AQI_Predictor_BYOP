# 🌍 AI Air Quality (AQI) Predictor & Health Expert System

**Course:** Fundamentals in AI and ML (CSA2001)  
**Submission:** BYOP (Bring Your Own Project) Capstone Activity  


---

## 📌 The Problem (Why This Matters)
Air pollution is a severe, fluctuating public health crisis in India. Citizens often step outside without realizing the immediate danger of the air they are breathing. While past data exists, making **real-time predictions** based on current pollutant levels—and providing actionable, logical health advice—is a complex challenge that requires both Data-Driven Machine Learning and Rule-Based AI.

## 💡 The Solution
This project is a hybrid Artificial Intelligence system that combines **Machine Learning (Python)** and **Symbolic AI (Prolog)** to solve this problem:
1. **Data Preprocessing:** Cleans historical daily sensor data, using time-series interpolation (forward filling) to handle missing values.
2. **Regression (Prediction):** Predicts the exact AQI number based on 6 major pollutants (PM2.5, PM10, NO2, CO, SO2, O3) using a Random Forest Regressor.
3. **Classification:** Categorizes the air quality into health buckets (e.g., 'Good', 'Moderate', 'Severe') using a Random Forest Classifier.
4. **Expert System (Prolog):** Uses logical knowledge representation to map predicted AQI values to specific real-world health advisories.
5. **Interactive UI:** Provides a web-based User Interface (via Gradio) for real-time inference.

---

## 📂 Repository Structure

* **`city_day.csv`** — The raw air quality dataset (hosted here so the code runs instantly).
* **`notebooks/`** — Folder containing all the Machine Learning Python code:
  * `01_AQI_EDA_and_Cleaning.ipynb` — Cleans missing data and generates visualizations.
  * `02_AQI_ML_Models.ipynb` — Trains the Regression/Classification models and launches the Web UI.
* **`prolog/`** — Folder containing the Symbolic AI code:
  * `health_advisor.pl` — The Prolog Expert System for rule-based health recommendations.
* **`README.md`** — This project documentation file.

---

## 🚀 How to Run the Project
This project is built to be **100% cloud-reproducible**. You do not need to download any datasets or install local libraries on your computer.

### Part 1: Running the Machine Learning Models & Web UI
1. **Open Google Colab:** Go to [Google Colab](https://colab.research.google.com/).
2. **Import from GitHub:** Click **File > Open Notebook**, select the **GitHub** tab, and paste the link to this repository: `https://github.com/Tetbet/AQI_Predictor_BYOP`.
3. **Run Data Cleaning (Notebook 1):** Open `notebooks/01_AQI_EDA_and_Cleaning.ipynb`. Click **Runtime > Run All**. Scroll through to see the missing data being handled and the visualizations (Correlation Heatmaps, AQI trends) being generated.
4. **Run ML Models (Notebook 2):** Open `notebooks/02_AQI_ML_Models.ipynb`. Click **Runtime > Run All**. 
5. **Interact with the UI:** Scroll to the very bottom of Notebook 2. A **Gradio Web Interface** will appear directly inside the notebook. Enter different pollutant numbers (like PM2.5 or NO2) and watch the AI predict the exact AQI and Health Category in real-time! *(Note: Gradio also provides a temporary public `xxxx.gradio.live` link that you can open on your smartphone).*

### Part 2: Running the Prolog Expert System (Health Advisor)
If you do not have SWI-Prolog installed locally, you can easily run the expert system in your web browser:
1. Go to **SWISH Prolog** (https://swish.swi-prolog.org/).
2. Open the `prolog/health_advisor.pl` file from this repository, copy all the text, and paste it into the SWISH editor window.
3. In the query box at the bottom right, ask the AI for a health report based on a predicted AQI number. For example, type exactly this: `?- health_report(345).`
4. Press `Enter` or click `Run`. The system will logically deduce the category (very_poor) and advise wearing an N95 mask.

---

## 📊 Results & Performance
After training and testing the models on the historical dataset, the system achieved the following results:

1. Data Completeness: Successfully recovered and interpolated thousands of missing sensor readings using time-series forward-filling (ffill), ensuring the Machine Learning models had continuous data to learn from.
2. Classification (AQI Category): The Random Forest Classifier achieved an overall accuracy of [Enter your Accuracy % here] in correctly categorizing health buckets (Good, Moderate, Severe, etc.) based purely on raw pollutant metrics.
3. Regression (Exact AQI Number): The Random Forest Regressor successfully learned the non-linear relationships between pollutants and the final AQI calculation, achieving a Mean Squared Error (MSE).
4. Feature Importance: As seen in the EDA correlation heatmap, PM2.5 and PM10 were identified as the strongest predictors of the final AQI score, validating the real-world science behind air quality measurement.
