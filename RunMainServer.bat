@REM start cmd /k "D: && cd \"

start "Window1" cmd.exe /k "D: && cd \Projects\P1_MainServer && npm run dev"
timeout /t 5
start "Window2" cmd.exe /k "D: && cd \Projects\P2_middle_operator && conda activate AItist && python main.py --sAddr localhost --sPort 8071 --debug 1"
start "Window3" cmd.exe /k "D: && cd \Projects\P4_Image_Merge2 && conda activate AItist && python main.py --sAddr localhost --sPort 8073 --debug 1"
start "Window4" cmd.exe /k "D: && cd \Projects\P0_Webcam_AI_v2 && conda activate AItist && python main_ai.py --index 1"

@REM 웹캠 8060
@REM P3D 8072
@REM 메인 프로그램 8074
@REM 메인 프로그램2 8075

set /p "choice=Press any key to kill executed CMD Windows"
taskkill /f /fi "WINDOWTITLE eq *Window1*"
taskkill /f /fi "WINDOWTITLE eq *Window2*"
taskkill /f /fi "WINDOWTITLE eq *Window3*"