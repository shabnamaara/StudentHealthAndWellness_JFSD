<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Healthy Sleep - Well-Being Guide</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <style>
        /* General styling */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: url('images/building.jpg') no-repeat center center fixed;
            background-size: cover;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        /* Sidebar styling */
        .sidebar {
            width: 250px;
            background-color: rgba(244, 244, 244, 0.7);
            padding: 15px;
            position: fixed;
            height: 100%;
            left: 0;
            top: 0;
        }

        .sidebar h2 {
            color: #E87722;
        }

        .sidebar a {
            text-decoration: none;
            color: #012D85;
            display: block;
            padding: 8px;
            margin-bottom: 5px;
        }

        .sidebar a:hover {
            background-color: #E87722;
            color: white;
        }

        /* Main content styling */
        .main-content {
            width: 60%;
            max-width: 2000px;
            padding: 20px;
            background: rgba(255, 255, 255, 0.8);
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        .main-content h1, .main-content h2 {
            color: #012D85;
        }

        .main-content p {
            line-height: 1.6;
        }

        .main-content ul {
            padding-left: 20px;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <div class="sidebar">
        <h2>Well-Being</h2>
        <a href="well-being-coaching.jsp">Well-Being Coaching</a>
        <h2>Well-Being Guides</h2>
        <a href="finding.jsp">Finding Meaning and Purpose</a>
        <a href="healthy-sleep.jsp" style="color: #E87722;">Healthy Sleep</a>
        <a href="social-connectedness.jsp">Social Connectedness</a>
        <a href="taking-care.jsp">Taking Care of Yourself</a>
        <a href="index1.jsp">Home</a>

    </div>

    <div class="main-content">
        <h1>Healthy Sleep</h1>
        <p>Healthy sleep is crucial for maintaining physical health, emotional balance, and cognitive function. Adequate rest supports immune function, enhances memory and learning, and promotes emotional stability. Establishing good sleep habits and optimizing your sleep environment can lead to more restorative and effective sleep.</p>

        <h2>Keep a Regular Sleep Schedule</h2>
        <p>Consistency is key when it comes to sleep. Going to bed and waking up at the same time every day helps regulate your body's internal clock and improves the quality of your sleep.</p>
        <ul>
            <li><strong>Make a Plan:</strong> Strive for 7 to 9 hours of sleep each night. Align your schedule to allow adequate time for rest. If you have late-night study sessions or social activities, adjust your class timings or workload to accommodate your sleep needs.</li>
            <li><strong>Establish a Routine:</strong> Develop a pre-sleep routine that signals your body it's time to wind down. This might include activities like reading, meditating, or doing gentle stretches. Avoid stimulating activities such as vigorous exercise or intense mental tasks before bed.</li>
            <li><strong>Stay Consistent:</strong> Even on weekends, try to maintain your sleep schedule. Irregular sleep patterns, such as sleeping in on weekends, can disrupt your body's internal clock and make it harder to fall asleep and wake up at the desired times.</li>
        </ul>

        <h2>Fine-tune Your Sleep Environment</h2>
        <p>Your sleep environment should be tailored to promote relaxation and comfort. Making a few adjustments can significantly impact your sleep quality.</p>
        <ul>
            <li><strong>Manage Noise and Light:</strong> Minimize noise disruptions using earplugs or a white noise machine. Block out light with blackout curtains or a sleep mask. Reducing light exposure before bedtime helps your body produce melatonin, a hormone that regulates sleep.</li>
            <li><strong>Control Temperature:</strong> Keep your bedroom at a cool, comfortable temperature, ideally between 60-67°F (15-19°C). A cooler room helps lower your body temperature, which is conducive to falling asleep and staying asleep.</li>
            <li><strong>Comfortable Bedding:</strong> Invest in a high-quality mattress and pillows that support your preferred sleep position. Proper bedding can enhance comfort and reduce sleep disturbances.</li>
            <li><strong>Limit Electronic Use:</strong> Avoid using electronic devices at least an hour before bedtime. The blue light emitted by screens can interfere with melatonin production and delay sleep onset.</li>
        </ul>

        <h2>Examine Your Eating and Exercising Habits</h2>
        <p>Your lifestyle choices, including what you eat and how much you exercise, have a direct impact on your sleep. Making healthier choices can lead to better sleep and overall well-being.</p>
        <ul>
            <li><strong>Eat Nutritiously:</strong> Maintain a balanced diet with a variety of nutrients. Avoid large, heavy meals close to bedtime, as they can cause discomfort and disrupt sleep. Aim to finish eating at least 2-3 hours before going to bed.</li>
            <li><strong>Exercise Regularly:</strong> Incorporate regular physical activity into your routine. Aim for at least 150 minutes of moderate exercise per week. However, avoid vigorous exercise too close to bedtime, as it can increase alertness and make it harder to fall asleep.</li>
            <li><strong>Avoid Stimulants:</strong> Limit your intake of caffeine and nicotine, especially in the afternoon and evening. Both substances can interfere with your ability to fall asleep and stay asleep.</li>
            <li><strong>Stay Hydrated:</strong> While it's important to stay hydrated, try to limit fluid intake close to bedtime to avoid waking up during the night for bathroom trips. Maintain a balanced level of hydration throughout the day.</li>
        </ul>

        <h2>Savor Your Last Hour Before Bed</h2>
        <p>The final hour before sleep is crucial for setting the stage for restful sleep. Engaging in calming activities can help signal to your body that it's time to unwind.</p>
        <ul>
            <li><strong>Create a Relaxing Routine:</strong> Engage in activities that help you relax and transition from the day's stress. Reading a book, practicing relaxation techniques, or listening to soothing music can promote a sense of calm.</li>
            <li><strong>Limit Exposure to Screens:</strong> Reduce exposure to screens from televisions, computers, and smartphones. The blue light emitted by screens can disrupt your circadian rhythm and make it harder to fall asleep.</li>
            <li><strong>Practice Mindfulness:</strong> Consider incorporating mindfulness or relaxation exercises into your pre-sleep routine. Techniques such as deep breathing, progressive muscle relaxation, or guided imagery can help reduce stress and prepare your body for rest.</li>
            <li><strong>Prepare for Tomorrow:</strong> Use the time before bed to review and plan for the next day. Writing down tasks or concerns can help clear your mind and reduce anxiety, making it easier to fall asleep.</li>
        </ul>

    </div>
</body>
</html>
