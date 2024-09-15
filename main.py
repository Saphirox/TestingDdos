from flask import Flask, request, jsonify

app = Flask(__name__)

@app.route('/', methods=['GET'])
def heavy_task():
    try:
        n = int(request.args.get('n', 8))  # Default to 8 if 'n' is not provided
        return jsonify({'number_of_solutions': n, 'solutions': n}), 200
    except Exception as e:
        return jsonify({'error': str(e)}), 400

if __name__ == '__main__':
    app.run(host='0.0.0.0')
