## Playbook: Phishing

**Investigate, remediate (contain, eradicate), and communicate in parallel!**

Assign steps to individuals or teams to work concurrently, when possible; this playbook is not purely sequential. Use your best judgment.

### Investigate


`TODO: Expand investigation steps, including key questions and strategies, for phishing.`

1. **Identify the attack** Usually you will be notified that a potential phishing attack is underway
    1. Determine the potential source of  data breach.  Check:
        * social media
        * any possibly suspicious emails
        * emails with links to external and unknown URLs
        * non-returnable or non-deliverable emails
        * any kind of notification of suspicious activity
    1. Analyze the phishing message and note the following:
        * how many people received the message
        * who was targeted by the message
        * the email address of the sender
        * the subject line of the attack
    1. Investigate the phishing message:
        * The first step of investigating a phishing email is to use an isolated device (preferably a device dedicated to investigating potential attacks). Ensure that you are not opening anything on a device that may have access to sensitive data or login credentials because the message may contain malware that downlaods itself rapidly without your consent.
        * Once you are on a reliable, isolated device, check the message for any attachments or links. DO NOT immediately follow any links in the message. You may download the attachment in a separate folder (or zip file) but ensure that it is password protected such that only select personnel can access it.
        * Based on what you have seen thus far, determine the [kind of phishing attack](https://www.thesslstore.com/blog/10-types-of-phishing-attacks-and-phishing-scams/). It is important that you are protected from this specific attack in the future. 
        `TODO: Design following procedures around your specific kind of phishing attack`
        * Determine the priority level of the attack:
            1. Consider the immediate effects of the attack.  Determine:
                * whether public or personal safety is at risk
                * whether personal data (or other sensitive data) is at risk
                * any evidene of who is behind the attack
                * number of affected assets
                * reliminary business impact
                * whether services are affected
                * whether you are able to control/record critical systems
        * Notify IT staff or any internal security personnel that an attack has occurred and relay all information you have gathered.
        * Time to investigate the actual content of the email! REMEMBER to use an isolated device for the following steps:
            1. Gather from the 'from' field:
                * the name of the sender
                * the X-authenticated user, i.e. the email address of the sender
                * the mail server IP address, this information tells us the TCP/IP address of the email server that the phishing message may was sent from
            1. Gather from the actual email content:
                * the domain link of any suspicious links found in the message
                * carefully follow any links (again, on a company designated, isolated device)
                * examine the web page and collect an unusual or suspicious qualities or information that you can find. Record the TCP/IP address of the web server if possible
                * if an attachment was also found in the message, examine and record any unusal or suspicious qualities or information you can find again
        * Follow these [next steps](https://blog.nettitude.com/4-steps-to-take-to-analyse-a-phishing-email) to ensure that you have collected all possible data and do not receive messages from this sender, or any other potential attackers, again.
    1. Be informed on what has occurred, collect:
        * total number of impacted employees
        * what actions impacted employees did in response to the phishing email (i.e.did they download the attachment, visit the spoofed site, or give out any personal or business information such as login credentials)

### Remediate

* **Plan remediation events** where these steps are launched together (or in coordinated fashion), with appropriate teams ready to respond to any disruption.
* **Consider the timing and tradeoffs** of remediation actions: your response has consequences.
      
`TODO: Expand investigation steps, including key questions and strategies, for phishing.`

#### Contain

`TODO: Customize containment steps, tactical and strategic, for phishing.`

`TODO: Specify tools and procedures for each step, below.`

* Protect the impacted employees. Immediately change their login credentials (usernames and passwords).
* Consider the impact on the IT infrastructure. If any aspect has been compromised or could have been accessed/impacted, change all login credentials of employees with access to the impacted resources.
* If the attack message were ever opened on a smartphone or was executed via smartphone, immediately ask employees to return the impacted smartphones and issue them new ones (with new login credentials). Execute the "remote Wipe" command on the impacted smartphones to delete any sensitive data so that attackers cannot access it even with remote control of the smartphones.
* Monitor activity within your IT infrastructure and user accounts. Watch out for unusual activity following the attack. Unusual activity may include accessing sensitive data when unnecessary. Make sure to communicate with employees to ensure that you are not wrongly identifying misuse/unusual activity as to avoid unnecessary downtime. If you do correctly identify suspicious behavior, make sure to shut down the affected system and further investigate.

#### Risk Avoidance

`TODO: Communicate with other employees to ensure that everyone understands and contributes to the following steps, where applicable`

* Ensure that you have blocked messages from the attacker and all other potential attackers found during the investigation process.
* Consider hiring an outside source of cybersecurity to help you investigate and remediate your specific situation. They may also help identify other potential sources of penetration in your infrastructure.
* Ensure you are regularly deploying software upgrades on your servers, workstations, and wireless devices and making use of antispyware/antiphishing/antimalware software packages.
* Conduct training programs with your employees to teach them what to do when they suspect a phising attack. This may include: 
    * misspellings in the message or subject
    * phony seeming sender names
    * malicious link - and [how to check if a link is malicious](https://www.pcworld.com/article/248963/how-to-tell-if-a-link-is-safe-without-clicking-on-it.html)
    * receiving an email or attachement they were not expecting but from someone they know (they should contact that person who the email is supposedly from first before opening it)
    * reporting anything they may sense as suspicious to IT
    * how to verify the authenticy of any website
* Ensure that IT staff is up to date on recent phishing techniques.
* Install anti-phishing toolbars on all servers, workstations, and wireless devices
* routinely test firewalls to ensure that network infrastructure is up to date.
* Determine if any controls have failed when falling victim to an attack and rectify them. Here is a [good source](https://www.proofpoint.com/us/security-awareness/post/14-things-do-after-phishing-attack) to consider following a phishing attack.
* Consider establishing a hotline for employees to quickly access appropriate IT staff when they suspect a phishing attack.

#### Reference: Remediation Resources

`TODO: Specify financial, personnel, and logistical resources to accomplish remediation`

### Communicate

`TODO: Customize communication steps for phishing`

`TODO: Specify tools and procedures (including who must be involved) for each step, below, or refer to overall plan`

1. Escalate incident and communicate with leadership per procedure
1. Document incident per procedure (and [report](https://us-cert.cisa.gov/report-phishing))
1. Communicate with internal and external legal counsel per procedure, including discussions of compliance, risk exposure, liability, law enforcement contact, _etc._
1. Communicate with users (internal)
    1. Communicate incident response updates per procedure
    1. Communicate impact of incident **and** incident response actions (e.g., containment: "why is the file share down?")
    1. Communicate requirements: "what should users do and not do?"  
1. Communicate with customers
    1. Focus particularly on those whose data was affected
    1. Generate required notifications based on applicable regulations (particularly those that may consider phishing a data breach or otherwise requires notifications) `TODO: Expand notification requirements and procedures for applicable regulations`
1. Contact insurance provider(s)
    1. Discuss what resources they can make available, what tools and vendors they support and will pay for, _etc._
    1. Comply with reporting and claims requirements to protect eligibility
1. Consider notifying and involving [law enforcement](https://www.usa.gov/stop-scams-frauds) TODO: Link the following bullets to actual resources for your organization
    1. [Local law enforcement](#TODO-link-to-actual-resource)
    1. [State or regional law enforcement](#TODO-link-to-actual-resource)
    1. [Federal or national law enforcement](#TODO-link-to-actual-resource)
1. Communicate with security and IT vendors TODO: Link the following bullets to actual resources for your organization
    1. Notify and collaborate with [managed providers](#TODO-link-to-actual-resource) per procedure
    1. Notify and collaborate with [incident response consultants](#TODO-link-to-actual-resource) per procedure

### Recover

`TODO: Customize recovery steps for phishing`

`TODO: Specify tools and procedures for each step, below`

1. Launch business continuity/disaster recovery plan(s): _e.g._, consider migration to alternate operating locations, fail-over sites, backup systems.
1. Recover data from known-clean backups to known-clean, patched, monitored systems (post-eradication), in accordance with our [well-tested backup strategy](#TODO-link-to-actual-resource). 
    * Check backups for indicators of compromise
    * Consider partial recovery and backup integrity testing

### Resources

#### Reference: User Actions for Suspected Phishing Attack

`TODO: Customize steps for users dealing with suspected phishing`

1. Stay calm, take a deep breath.
1. Disconnect your system from the network `TODO: include detailed steps with screenshots, a pre-installed tool or script to make this easy ("break in case of emergency"), consider hardware network cut-off switches`
1. Take pictures of your screen using your smartphone showing the things you noticed: the phishing message, the link if you opened it, the sender information.
1. Take notes about the problem(s) using the voice memo app on your smartphone or pen-and-paper.  Every little bit helps!  Document the following:
    1. What did you notice?
    1. Why did you think it was a problem?
    1. What were you doing at the time you detected it?
    1. When did it first occur, and how often since?
    1. Where were you when it happened, and on what network? (office/home/shop, wired/wireless, with/without VPN, _etc._)
    1. What systems are you using? (operating system, hostname, _etc._)
    1. What account were you using?
    1. What data do you typically access?
    1. Who else have you contacted about this incident, and what did you tell them?
1. Contact the [help desk](#TODO-link-to-actual-resource) and be as helpful as possible.
1. Be patient: the response may be disruptive, but you are protecting your team and the organization!  **Thank you.**

#### Reference: Help Desk Actions for Suspected Phishing Attack

`TODO: Customize steps for help desk personnel dealing with suspected phishing`

1. Stay calm, take a deep breath.
1. Open a ticket to document the incident, per procedure. `TODO: Customize template with key questions (see below) and follow-on workflow`
1. Ask the user to take pictures of their screen using their smartphone showing the things they noticed: the phishing message, the link if you opened it, the sender information, _etc._  If this is something you noticed directly, do the same yourself.
1. Take notes about the problem(s) using the voice memo app on your smartphone or pen-and-paper.  If this is a user report, ask detailed questions, including:
    1. What did you notice?
    1. Why did you think it was a problem?
    1. What were you doing at the time you detected it?
    1. When did it first occur, and how often since?
    1. What networks are involved? (office/home/shop, wired/wireless, with/without VPN, _etc._)
    1. What systems are involved? (operating system, hostname, _etc._)
    1. What data is involved? (paths, file types, file shares, databases, software, _etc._)
    1. What users and accounts are involved? (active directory, SaaS, SSO, service accounts, _etc._)
    1. What data do the involved users typically access?
    1. Who else have you contacted about this incident, and what did you tell them?
1. Ask follow-up questions as necessary.  **You are an incident responder, we are counting on you.**
1. Get detailed contact information from the user (home, office, mobile), if applicable.
1. Record all information in the ticket, including hand-written and voice notes.
1. Quarantine affected users and systems. `TODO: Customize containment steps, automate as much as possible`
1. Contact the [security team](#TODO-link-to-actual-resource) and stand by to participate in the response as directed: investigation, remediation, communication, and recovery.

#### Additional Information

1. <a name="phishing-playbook-ref-1"></a>[Anti-Phishing Attack resources](https://resources.infosecinstitute.com/category/enterprise/phishing/phishing-countermeasures/top-16-anti-phishing-resources/#gref)
1. <a name="phisphing-playbook-ref-2"></a>[Methods of Identifying a Phishing attack](https://www.securitymetrics.com/blog/7-ways-recognize-phishing-email) 
1. <a name="phishing-playbook-ref-3"></a>[Phishing Email Examples](https://www.phishing.org/phishing-examples) 
1. <a name="phishing-playbook-ref-4"></a>[Anti-Phishing best practices](https://resources.infosecinstitute.com/category/enterprise/phishing/phishing-countermeasures/anti-phishing-best-practices/#gref)
