## RecruitR

### Goal

The goal of this app is to help the recruitment process for a company and to manage applicants.

### Requirements

HR representatives should be able to:

- Create some positions to be filled
- Assign skills to positions (marketing, javascript, ruby…)
- Upon receiving a candidate, the HR person is going to create a candidate profile and match her/him with a the position she/he is applying for
- When the candidate is matched to a position, the managers matching the skills are suggested (for example the frontend lead developer should be suggested when trying to match a candidate for a frontend position)
- The HR person can then select a datetime, which will create an event through the google calendar API and invite the suggested employee and the applicant
- The list of potential matching recruiters could be smart, with a score based on:
    - Random, so that everybody participates
    - her/his skills (perfect match, better match, partial match)
    - her/his seniority (number of previously matched applicants)
- Notification system: send a mail to both recruiter and applicant, AngelList-style
- Applicant scorecard, to be filled by company members (HR rep filling the application and recruiters) with specific traits such as experience, dynamism, interest in the company. We could have some sort of radar-graph, with an average from every members

### Expectations

- Release
    - Public Github repo (if you prefer a private one, invite us (`StanBoyet`, `Yaquelqun`) on it beforehand)
- Code
    - Unless you're very confident in your ability to implement a login system, you can assume that there is only one HR user that is already logged in.
    - Structure
        - The project includes the described features but must be open to extension quickly (think about how to abstract common aspects [API calls, Logs, authenticated views, etc.])
    - Documentation
        - Althought code should be self explanatory, a good documentation explaining the most important aspect of the project is required.
        - The documentation includes a point about how to run the project.
        - Especially interesting:
            - Where do you think we could put more effort reviewing the code
            - Which parts are you especially proud about
- Tools
    - Whatever you need, as long as you can explain the added value in your debrief session
    - The technology of choice in the company is Ruby on Rails so bonus point if you know the framework. Otherwise you can do it in Django since the two frameworks are pretty close.
- Bonus
    - Hosted project
        - Heroku or else (if you need a paid tier, ask us to create one for you and to invite you in)
    - Smart decisions, don't reinvent the wheel

### Wireframes

![https://s3-us-west-2.amazonaws.com/secure.notion-static.com/6e531e8c-2d0f-4783-b948-6a14546c953e/All_Positions.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/6e531e8c-2d0f-4783-b948-6a14546c953e/All_Positions.png)

![https://s3-us-west-2.amazonaws.com/secure.notion-static.com/27cb5d4c-4108-4b32-a21e-96ff0b9b8308/Match.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/27cb5d4c-4108-4b32-a21e-96ff0b9b8308/Match.png)

![https://s3-us-west-2.amazonaws.com/secure.notion-static.com/be20a550-600e-401e-a6a7-7899d2f65fd7/New_Applicant.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/be20a550-600e-401e-a6a7-7899d2f65fd7/New_Applicant.png)

---

*Quick links:*

- Google Calendar API quickstart: [Ruby Quickstart | Google Calendar API](https://developers.google.com/google-apps/calendar/quickstart/ruby)
- Create an event: [Create Events | Google Calendar API](https://developers.google.com/google-apps/calendar/create-events)
- Datetime picker example: [GitHub - xdan/datetimepicker: jQuery Plugin Date and Time Picker](https://github.com/xdan/datetimepicker)
- Datetime picker example: [GitHub - https://developer.calendly.com/](https://developer.calendly.com/)
