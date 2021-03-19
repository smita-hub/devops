from flask import Flask, request, jsonify
from flask.logging import create_logger
from sklearn.externals import joblib
from sklearn.preprocessing import StandardScaler
import logging
import pandas as pd

app = Flask(__name__)
LOG = create_logger(app)
LOG.setLevel(logging.INFO)

def scale_data(payload):
    LOG.info('Scaling Payload: \n %s', payload)
    x = payload.astype(float)
    fitdata = StandardScaler().fit(x)
    transdata = fitdata.transform(x)
    return transdata

@app.route("/")
def home():
    html = f"<h3>Sklearn Prediction Home</h3>"
    return html.format(format)

@app.route("/predict", methods=['POST'])
def predict():
    body = request.json
    LOG.info('JSON Payload: \n %s', body)
    df = pd.DataFrame(body)
    LOG.info('Inference payload DataFrame: \n %s', df)
    normalized_data = scale_data(df)
    predicted_data = list(clf.predict(normalized_data))
    LOG.info('Output prediction value: \n %s', predicted_data)
    return jsonify({'prediction': predicted_data})

if __name__ == "__main__":
    clf = joblib.load("./model_data/boston_housing_prediction.joblib")
    app.run(host='0.0.0.0', port=80, debug=True)