# capstone_project
My Capstone project for Data Technology
# AI Impact on Students

## Project Overview

This project explores how artificial intelligence is affecting student academic performance, study habits, and well-being. Using a dataset from Kaggle created by Nagi Sisiro, I analyzed whether AI usage is associated with changes in GPA, traditional study habits, burnout, anxiety, and skill retention.

While AI has become an increasingly common educational tool, I wanted to determine whether greater AI use actually improves academic performance or if traditional study methods remain more effective.

**Tools Used**

* Python
* SQL
* Tableau

---

## Dataset

**Source:** Kaggle – *AI Impact on Students*

The dataset includes information such as:

* Student ID
* Major
* Year in school
* Pre-semester GPA
* Post-semester GPA
* Weekly AI usage
* Traditional study hours
* AI tools used
* Paid vs. free AI usage
* Institutional AI policy
* Perceived AI dependence
* Test anxiety
* Burnout risk
* Skill retention

The dataset contained no missing values and required minimal cleaning.

---

## Data Preparation

I created several new features to support the analysis:

* AI usage categories (Low, Medium, High)
* GPA improvement indicator (True/False)
* Comparison of AI hours versus traditional study hours
* Additional Boolean fields used for analysis and modeling

---

## Analysis

### Correlation Analysis

I examined the relationship between study habits and academic performance using both Pearson and Spearman correlation tests.

**Pearson Correlation**

* Weekly AI Hours vs. Post-Semester GPA: **-0.019**
* Traditional Study Hours vs. Post-Semester GPA: **0.138**

**Spearman Correlation**

* Weekly AI Hours vs. Post-Semester GPA: **0.007**
* Traditional Study Hours vs. Post-Semester GPA: **0.141**

The results showed little to no meaningful relationship between AI usage and GPA. Traditional study showed only a weak positive relationship with GPA.

Scatterplots and a correlation matrix were created to visualize these findings.

---

### Student AI Usage

Average weekly AI usage varied by major.

| Major      | Average AI Hours |
| ---------- | ---------------: |
| STEM       |            10.50 |
| Humanities |             6.77 |

There was little difference in AI usage across academic year (Freshman through Graduate students).

The most common use of AI was:

* Debugging and troubleshooting

The least common use was:

* Direct answer generation

---

### GPA Comparisons

Students who did not use AI had a slightly higher average GPA than heavy AI users.

| AI Usage    | Average GPA |
| ----------- | ----------: |
| No AI Use   |        3.42 |
| High AI Use |        3.29 |

Students whose GPA improved during the semester averaged:

* **8.23 AI hours/week**
* **11.69 traditional study hours/week**

Students whose GPA declined averaged:

* **9.72 AI hours/week**
* **7.80 traditional study hours/week**

Although correlations were weak, students whose GPAs improved generally relied less on AI and spent more time using traditional study methods.

---

### Student Well-Being

One of the strongest patterns in the dataset involved burnout, anxiety, and skill retention.

Students with:

**High Burnout**

* 15.2 AI hours/week

**Low Burnout**

* 4.6 AI hours/week

Additional findings included:

* Higher AI use was associated with higher reported test anxiety.
* Students using less AI demonstrated higher skill retention scores.
* Heavy AI users reported greater burnout than students using AI less frequently.

These findings suggest AI usage may be more strongly related to student well-being than academic performance.

---

## Machine Learning

### Linear Regression

**Target Variable:** Post-Semester GPA

Model Performance:

* Mean Squared Error (MSE): **0.03**
* Root Mean Squared Error (RMSE): **0.16**
* R² Score: **0.90**

### Logistic Regression

**Target Variable:** GPA Improvement (Yes/No)

Model Performance:

* Accuracy: **87%**
* F1 Score: **0.93**

The logistic regression performed well at identifying students whose GPA improved but was less effective at predicting students whose GPA declined due to class imbalance.

---

## Key Findings

* AI usage showed little relationship with higher GPA.
* Traditional study hours had a weak positive relationship with GPA.
* Students whose GPA improved generally spent more time studying traditionally and less time using AI.
* Higher AI usage was associated with:

  * Increased burnout
  * Higher test anxiety
  * Lower skill retention
* STEM students reported the highest average AI usage.

---

## Conclusion

This analysis suggests that increased AI use alone does not lead to higher academic performance. While AI can be a valuable educational tool, traditional study habits appear to remain important for GPA improvement and long-term skill retention.

The strongest relationships observed were between AI usage and student well-being, where heavier AI users reported higher burnout and anxiety and lower skill retention.

Future work could include analyzing a larger dataset, incorporating additional demographic variables, and evaluating causal relationships rather than correlations.

---

## Skills Demonstrated

* Data Cleaning
* Feature Engineering
* Exploratory Data Analysis (EDA)
* SQL
* Python (Pandas, NumPy, Scikit-learn)
* Correlation Analysis
* Linear Regression
* Logistic Regression
* Data Visualization
* Tableau Dashboard Development
* Statistical Interpretation
