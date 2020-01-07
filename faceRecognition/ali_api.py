# This is a _very simple_ example of a web service that recognizes faces in uploaded images.
# 
# The result is returned as json. For example:
#
# $ curl -XPOST -F "file=@obama2.jpg" http://127.0.0.1:5001
#
# Returns:
#
# {
#  "face_found_in_image": true,
#  "is_picture_of_obama": true
# }
#
# This example is based on the Flask file upload example: http://flask.pocoo.org/docs/0.12/patterns/fileuploads/

# NOTE: This example requires flask to be installed! You can install it with pip:
# $ pip3 install flask

import face_recognition
from flask import Flask, jsonify, request, redirect
import pickle
from flask_cors import CORS, cross_origin
import json

# You can change this to any folder on your system
ALLOWED_EXTENSIONS = {'png', 'jpg', 'jpeg', 'gif'}

app = Flask(__name__)


def allowed_file(filename):
    return '.' in filename and \
           filename.rsplit('.', 1)[1].lower() in ALLOWED_EXTENSIONS


@app.route('/FaceRecognition_api', methods=['GET', 'POST'])
@cross_origin(origin='*')
def upload_image():
    # Check if a valid image file was uploaded
    if request.method == 'POST':
        print(request.files)
        
        if 'file' not in request.files:
            return "file upload unsuccessfull"
        
        file = request.files['file']
        if file.filename == '':
            return "file value is null"
        print(allowed_file(file.filename))
        print("====")
        return detect_faces_in_image(file)
        if file and allowed_file(file.filename):
            # The image file seems valid! Detect faces and return the result.
            return detect_faces_in_image(file)

    # If no valid image file was uploaded, show the file upload form:
    return '''
    <!doctype html>
    <title>Is this a picture of Obama?</title>
    <h1>Upload a picture and see if it's a picture of Obama!</h1>
    <form method="POST" enctype="multipart/form-data">
      <input type="file" name="file">
      <input type="submit" value="Upload">
    </form>
    '''


def detect_faces_in_image(file_stream):
    # Pre-calculated face encoding of Obama generated with face_recognition.face_encodings(img)
    data = pickle.loads(open('encodings.pickle', "rb").read())

    # Load the uploaded image file
    img = face_recognition.load_image_file(file_stream)
    # Get face encodings for any faces in the uploaded image
    unknown_face_encodings = face_recognition.face_encodings(img)

    face_found = False
    is_obama = False
    name=""

    if len(unknown_face_encodings) > 0:
        face_found = True
        # See if the first face in the uploaded image matches the known face of Obama
        match_results = face_recognition.compare_faces(data["encodings"], unknown_face_encodings[0],tolerance=0.4)
        if match_results[0]:
            is_obama = True

        if True in match_results:
        	matchedIdxs = [i for (i, b) in enumerate(match_results) if b]
        	counts = {}



        	for i in matchedIdxs:
        		name = data["names"][i]
        		counts[name] = counts.get(name, 0) + 1

        	name = max(counts, key=counts.get)

        # update the list of names
        

    # Return the result as json
    result = {
        "face_found_in_image": face_found,
        'username':name

    }
    return jsonify(result)

if __name__ == "__main__":
    cors = CORS(app)
    app.config['CORS_HEADERS'] = 'Content-Type'

    app.run(host='0.0.0.0', port=5001, debug=True)
