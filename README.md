# Sign-o-Lator 2.0

Sign-o-Lator recognizes hand signs through a webcam and converts stable predictions into text and speech. It uses MediaPipe hand landmarks and a trained classifier.

## Contents

- `Sign-o-lator.py` — the app entry point.
- `hand_landmarker.task` — MediaPipe hand detector required by the app.
- `models/sign_model.joblib` — trained sign classifier required by the app.
- `requirements.txt` — Python packages for running the app.
- `Run Sign-o-lator.bat` — Windows launcher.

## Setup and run on Windows

Use Python 3.13. The local virtual environment is ignored by Git, so it will not be uploaded with the project. Create it after downloading or cloning the repository.

```powershell
py -3.13 -m venv .venv
.\.venv\Scripts\python.exe -m pip install --upgrade pip
.\.venv\Scripts\python.exe -m pip install -r requirements.txt
```

Then double-click `Run Sign-o-lator.bat`.

## Controls

- Hold a sign in view until a stable prediction appears.
- Press **Enter** to add the predicted character.
- Press **Space** to add a space.
- Press **Backspace** to remove the last character.
- Press **C** to clear the text.
- Press **S** to speak the current text.
- Press **F** to toggle full screen.
- Press **Q** or **Esc** to quit.

## Instructions
Sign an ASL letter in front of the camera. The app predicts one letter at a time. Use the controls to add the letter, edit or clear the text, or speak it.
