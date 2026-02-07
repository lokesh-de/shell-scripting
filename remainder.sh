#!/bin/bash

TO="lokeshavula80@gmail.com"
FROM="info@devops.com"
SUBJECT="Session Started"
SESSION_LINK="https://learn.joindevops.com/learn/home/DevSecOps-with-AWS-88S/section/701924/lesson/4531382?"

HTML_BODY=$(cat << 'EOF'
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Session Started</title>
</head>
<body style="margin:0; padding:0; background-color:#f2f4f7; font-family: Arial, sans-serif;">

  <table width="100%" cellpadding="0" cellspacing="0" style="padding:20px;">
    <tr>
      <td align="center">
        <table width="500" cellpadding="0" cellspacing="0" style="background:#ffffff; border-radius:8px; overflow:hidden; box-shadow:0 2px 8px rgba(0,0,0,0.1);">

          <tr>
            <td style="background:#2f6fed; color:#ffffff; padding:20px; text-align:center; font-size:24px; font-weight:bold;">
              Session Started
            </td>
          </tr>

          <tr>
            <td style="padding:30px; color:#333333; font-size:16px;">
              <p>Hello there 😊,</p>

              <p>Your session has started. Please click the button below to join now.</p>

              <p style="text-align:center; margin:30px 0;">
                <a href="https://your-session-link.com"
                   style="background:#2f6fed; color:#ffffff; text-decoration:none; padding:12px 24px; border-radius:5px; display:inline-block; font-weight:bold;">
                  Join Now
                </a>
              </p>

              <p style="margin-top:30px;">
                Best regards,<br>
                <strong>joindevops team</strong>
              </p>
            </td>
          </tr>

          <tr>
            <td style="background:#f5f5f5; padding:15px; text-align:center; font-size:12px; color:#777777;">
              This is an automated message. Please do not reply.
            </td>
          </tr>

        </table>
      </td>
    </tr>
  </table>

</body>
</html>
EOF
)

# Send email using msmtp
/usr/bin/msmtp -t <<EOF
To: $TO
From: $FROM
Subject: $SUBJECT
MIME-Version: 1.0
Content-Type: text/html

$HTML_BODY
EOF
