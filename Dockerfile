# Use an official Python runtime as a parent image
FROM python:3.8

# Set the working directory in the container
WORKDIR /app

# Copy the Jupyter Notebook file into the container
COPY lab3_classification.ipynb /app/
COPY lab3_regression.ipynb /app/
COPY lab3_regression_solutions.ipynb /app/
COPY lab3_classification_solution.ipynb /app/
COPY Regression_Tutorial.ipynb /app/
COPY Classification_Tutorial.ipynb /app/


# Copy the data directory into the container
COPY data /app/data

# Install Jupyter Notebook and scikit-learn
RUN pip install jupyter scikit-learn pandas seaborn numpy matplotlib imblearn

# Expose the port for Jupyter Notebook
EXPOSE 8888

# Start Jupyter Notebook when the container launches
CMD ["jupyter", "notebook", "--ip='*'", "--port=8888", "--no-browser", "--allow-root", "--notebook-dir=/app"]
