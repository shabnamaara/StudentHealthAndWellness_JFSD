<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>System Settings - Admin Dashboard</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background: url('images/building1.jpg') no-repeat center center fixed;
            background-size: cover;
            color: #333;
        }

        .overlay {
            background-color: rgba(0, 0, 0, 0.0); /* Dark overlay for better contrast */
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
        }

        .settings-container {
            max-width: 1200px;
            margin: 50px auto;
            background-color: rgba(255, 255, 255, 0.9); /* Slight transparency */
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.5);
            position: relative;
            z-index: 2; /* Ensures it's above the background overlay */
        }

        .settings-header {
            margin-bottom: 20px;
            text-align: center;
        }

        .settings-header h2 {
            color: #001a57;
            font-size: 28px;
            font-weight: bold;
            text-transform: uppercase;
        }

        .settings-section {
            margin-bottom: 40px;
        }

        .settings-section h3 {
            font-size: 22px;
            color: #001a57;
            margin-bottom: 10px;
        }

        .settings-section p {
            font-size: 16px;
            margin-bottom: 20px;
        }

        .settings-section label {
            font-size: 16px;
            display: block;
            margin-bottom: 5px;
        }

        .settings-section input, .settings-section select {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }

        .settings-section button {
            background-color: #001a57;
            color: white;
            padding: 12px 25px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }

        .settings-section button:hover {
            background-color: #004080;
        }

        footer {
            text-align: center;
            padding: 20px;
            margin-top: 20px;
            color: #fff;
            background-color: #001a57;
            position: relative;
            z-index: 2;
        }

        footer p {
            margin: 0;
        }
    </style>
</head>
<body>
    <div class="overlay"></div>
    
    <div class="settings-container">
        <div class="settings-header">
            <h2>System Settings</h2>
        </div>

        <!-- User Management Section -->
        <section class="settings-section">
            <h3>User Management</h3>
            <p>Manage user roles, add or remove users, and update user details.</p>
            <form action="updateUserRoles" method="post">
                <label for="username">Select User</label>
                <select id="username" name="username">
                    <option value="admin">Admin</option>
                    <option value="staff">Staff</option>
                    <option value="student">Student</option>
                </select>

                <label for="role">Assign Role</label>
                <select id="role" name="role">
                    <option value="viewer">Viewer</option>
                    <option value="editor">Editor</option>
                    <option value="admin">Admin</option>
                </select>

                <button type="submit">Update Role</button>
            </form>
        </section>

        <!-- System Configuration Section -->
        <section class="settings-section">
            <h3>System Configuration</h3>
            <p>Configure system-wide settings like session timeouts, data retention policies, and email settings.</p>
            <form action="updateSystemConfig" method="post">
                <label for="session-timeout">Session Timeout (minutes)</label>
                <input type="number" id="session-timeout" name="sessionTimeout" value="30">

                <label for="data-retention">Data Retention (days)</label>
                <input type="number" id="data-retention" name="dataRetention" value="365">

                <label for="email-config">Email Notification Settings</label>
                <input type="text" id="email-config" name="emailConfig" placeholder="SMTP server details">

                <button type="submit">Save Settings</button>
            </form>
        </section>

        <!-- Theme Preferences Section -->
        <section class="settings-section">
            <h3>Theme Preferences</h3>
            <p>Customize the theme for the dashboard.</p>
            <form action="updateTheme" method="post">
                <label for="theme-color">Select Theme Color</label>
                <select id="theme-color" name="themeColor">
                    <option value="#001a57">Dark Blue</option>
                    <option value="#004080">Navy</option>
                    <option value="#00aaff">Sky Blue</option>
                </select>

                <button type="submit">Save Theme</button>
            </form>
        </section>

        <!-- Security Settings Section -->
        <section class="settings-section">
            <h3>Security Settings</h3>
            <p>Update system security policies such as password rules, 2FA, and audit logs.</p>
            <form action="updateSecurity" method="post">
                <label for="password-policy">Password Policy</label>
                <select id="password-policy" name="passwordPolicy">
                    <option value="8">Minimum 8 characters</option>
                    <option value="10">Minimum 10 characters</option>
                    <option value="12">Minimum 12 characters</option>
                </select>

                <label for="2fa">Enable Two-Factor Authentication</label>
                <input type="checkbox" id="2fa" name="enable2FA" value="yes">

                <button type="submit">Update Security Settings</button>
            </form>
        </section>
    </div>

   
</body>
</html>
