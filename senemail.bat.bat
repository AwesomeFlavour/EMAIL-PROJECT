@echo off
REM Set variables for email configuration
set "recipient=lucas.lombardo.lavin@alumnos.nspazt.com"
set "subject=Weekly Update"
set "body=Hello,\n\nThis is your weekly update email."

REM Check if today is Monday (assuming Monday is day number 0 in your locale)
for /f "tokens=2 delims==." %%a in ('wmic path win32_localtime get dayofweek /format:value') do (
    if %%a equ 0 (
        REM Send email using sendemail command
        sendemail.exe -f dario.fernandez.herrero@alumnos.nspazt.com -t %recipient% -u %subject% -m %body% -s https://github.com/AwesomeFlavour/EMAIL-PROJECT:25 -xu dario.fernandez.herrero@alumnos.nspazt.com -xp Chiquitini2010
        echo Email sent successfully.
    ) else (
        echo Today is not Sunday. No email sent.
    )
)
