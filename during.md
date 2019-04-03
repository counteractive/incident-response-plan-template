`TODO: Customize this plan template for your organization using instructions at https://github.com/counteractive/incident-response-plan-template.  For incident response services, or help customizing, implementing, or testing your plan, contact us at contact@counteractive.net or at (888) 925-5765.`

# Assess
1. **Stay calm and professional.**
1. Gather pertinent information, _e.g._, alarms, events, data, assumptions, intuitions (**observe**).
1. Consider impact categories, below (**orient**), and determine if there is a possible incident (**decide**):
1. Initiate a response if there is an incident (**act**).  If in doubt, initiate a response. The incident commander and response team can adjust upon investigation and review.

## Assess Functional Impact
What is the direct or likely impact on your mission? (_e.g._, business operations, employees, customers, users)

* Mission/business degradation or failure: **incident!**
* None: assess information impact.

## Assess Information Impact
What is the direct or likely impact on your information/data, particularly anything sensitive? (_e.g._, PII, proprietary, financial, or healthcare data)

* Information accessed, taken, changed, or deleted: **incident!**
* None: handle via non-incident channels (_e.g._, support ticket).

**Every team member is empowered to start this process.**  If you see something, say something.

`TODO: Customize categories/severities as necessary.  This simple example (incident vs. no incident) is based on impact categories in NIST SP 800-61r2.`

# Initiate Response

## Name the Incident
Create an [simple two-word phrase](http://creativityforyou.com/combomaker.html) to refer to the incident---a codename---to use for the incident file and channel(s). `TODO: Customize incident naming procedure.`

## Assemble the Response Team
1. Page the on-duty/on-call Incident Commander. `TODO: Add Incident Commander call list or procedure`
1. **Do not** discuss the incident outside the response team unless cleared by the Incident Commander
1. Launch and/or join the response chat at {{RESPONSE_CHAT}}.  `TODO: Add response chat launch procedure.`
1. Launch and/or join the response call at {{RESPONSE_PHONE}} and/or {{RESPONSE_VTC}}.  `TODO: Add response call launch procedure.`
1. Prefer voice call, chat, and secure file exchange over any other methods.
1. **Do not** use primary email if possible.  If email is necessary, use sparingly or use {{ALTERNATE_EMAIL}}.  Encrypt emails when any participant is outside the {{ORGANIZATION_DOMAIN}} domain.  `TODO: Add alternative email details and procedure, e.g., on-demand Office 365 or GSuite`
1. **Do not** use SMS/text to communicate about the incident, unless to tell someone to move to a more secure channel.
1. Invite on-duty/on-call responders to the response call and response chat.
    * Invite the security team.  `TODO: Add security team contact list or procedure.`
    * Invite a SME for affected teams and systems.  `TODO: Add team SME contact list or procedure.`
    * Invite executive stakeholders and legal counsel at earliest opportunity, but prioritize operational responders.  `TODO: Add executive stakeholder contact list or procedure.`
1. _OPTIONAL:_ Establish an in-person collaboration room ("war room") for complex or severe incidents. `TODO: Add collaboration room procedure.`

<div class="reference">

### Reference: Response Team Structure
* Command Team
    * [Incident Commander](#role-incident-commander-ic)
    * [Deputy Incident Commander](#role-deputy-incident-commander-deputy)
    * [Scribe](#role-scribe)
* Liaison Team
    * Internal [Liaison](#role-liaison)
    * External Liaison
* Operations Team
    * [Subject Matter Experts](#role-subject-matter-expert-sme) (SMEs) for Systems
    * SMEs for Teams/Business Units
    * SMEs for Executive Functions (_e.g._, Legal, HR, Finance)

`TODO: Modify role structure as necessary.`

</div>
<div class="reference">

### Reference: Response Team Contact Information

Response Team Role           | Contact Information
---------------------------- | ---------------------------
Incident Commander pager     | {{INCIDENT_COMMANDER_PAGER_NUMBER}}
Incident Commander pager url | {{INCIDENT_COMMANDER_PAGER_URL}}
Incident Commander roster    | {{INCIDENT_COMMANDER_ROSTER}}
Security team roster         | {{SECURITY_TEAM_ROSTER}}
Team SME roster              | {{TEAM_SME_ROSTER}}
Executive roster             | {{EXECTIVE_ROSTER}}

`TODO: Customize response team contact information.  Include contact procedures in rosters, which can be static or dynamic.`

</div>

## Establish Battle Rhythm

### Conduct Initial Response Call
1. Conduct initial call using the [initial response call structure](#reference-initial-response-call-structure)
1. Follow instructions from the Incident Commander.  If the on-duty/on-call Incident Commander does not join the call **within {{INCIDENT_COMMANDER_RESPONSE_SLA}}** and you are a trained incident commander, take command of the call.
1. Follow the [instructions for your role](#roles).
1. Follow the call and chat, and comment as appropriate.  If you are not a SME, filter input through the SME for your team if possible.
1. **Keep the call and chat active throughout the incident for event-driven communication.**
1. Schedule updates **every {{UPDATE_FREQUENCY}}** on the active bridge.

<div class="reference">

#### Reference: Initial Response Call Structure

* INCIDENT COMMANDER (IC): My name is [NAME], I am the Incident Commander.  I have designated [NAME] as Deputy, and [NAME] as Scribe. Who is on the call?
* SCRIBE: [Takes attendance]
* IC: [If missing key personnel] Deputy, please page [MISSING PERSONNEL].
* IC: [Asks questions to understand situation, symptoms, scope, vector, impact, and timeline from the incident reporter, applicable SMEs for sytems and business units]
* SMEs: [Brief answers to IC's questions]
* IC:[If this is an incident]:
    * At this time, the incident summary is as follows: [reiterates summary].  The Investigation team will be led by [NAME], the Remediation team will be led by [NAME], and the Communication team will be led by [NAME].  They will coordinate team membership and report to me.  SMEs, please report to your appropriate team leader.
    * What investigation, remediation, or communication steps have already been taken? [this should be a short list, but needs to come out now]
    * This call and chat will remain up and available until incident closure, please use it for all incident related communications.  Provide real-time status updates in the chat, if possible.  Are there any questions or remaining inputs? [answers questions]
    * Team leaders, please proceed with your planned actions.  We will reconvene at [UPDATE_TIME] to discuss the status.  Thank you.
* IC: [If this is not an incident]: At this time, these facts do not rise to the level of an incident.  I will coordinate directly with the incident reporter for follow-on actions.  Thank you for your time.

</div>
<div class="reference">

#### Reference: Call Etiquette

* Join both the call and chat.
* Keep background noise to a minimum.
* Keep your microphone muted until you have something to say.
* Identify yourself when you join the call; State your name and role (_e.g._, "I am the SME for team x").
* Speak up and speak clearly.
* Be direct and factual.
* Keep conversations/discussions short and to the point.
* Bring any concerns to the Incident Commander (IC) on the call.
* Respect time constraints given by the Incident Commander.
* **Use clear terminology, and avoid acronyms or abbreviations. Clarity and accuracy is more important than brevity.**

</div>

### Conduct Response Update
* Conduct scheduled updates using the [update call structure](#reference-response-update-call-structure) every {{UPDATE_FREQUENCY}} on the active bridge. `TODO: Customize update frequency and scripts; recommend no more than twice daily.`
* Adjust frequency as necessary.
* Coordinate independent updates (_e.g._, executive, legal) as required, but as infrequently as practicable.

<div class="reference">

#### Reference: Response Update Call Structure

* INCIDENT COMMANDER (IC): Since our last scheduled update, the incident summary is as follows:
    * [Impact]
    * [Vector]
    * [Summary update]
    * [Timeline update]
* IC: Investigation team, please provide a brief update
    * INVESTIGATION LEAD: [Investigative activities or "nothing to report"]
    * What is your recommended investigations plan?
    * What investigation actions need tasking or approval?  [listen, gain consensus, task/approve]
* IC: Remediation team, please provide a brief update
    * REMEDIATION LEAD: [Remediation activities or "nothing to report"]
    * What is your recommended remediation strategy?  Strong objections? [listen, gain consensus, task/approve]
    * What remediation actions need tasking or approval?
* IC: Communication team, please provide a brief update:
    * COMMUNICATIONS LEAD: [Communication activities or "nothing to report"]
    * What is your recommended communication strategy?  Strong objections? [listen, gain consensus, task/approve]
    * What communication actions need tasking or approval?
* IC: This call and chat will remain up and available until incident closure, please use it for all incident related communications.  Provide real-time status updates in the chat, if possible.  Are there any questions or remaining inputs? [answers questions]
* IC: Team leaders, please proceed.  We will reconvene at [{{UPDATE_TIME}}] to discuss the status.  Thank you.

</div>

## Monitor Scope
* Monitor the scope of the response to ensure it does not exceed the Incident Commander's span of control.
* If an incident gets sufficiently complex, and there are sufficient responders, consider spinning off sub-teams.

### Create Sub-Teams
* In preparation for complex incidents, three sub-teams are pre-defined: Investigation, Remediation, and Communication, generally responsible for those response functions. `TODO: Customize sub-team structure if necessary.`
* Create a call bridge and chat for each sub-team.
* The Incident Commander will designate team leaders, who report to the IC, and team members, who report to their team leader.  _Team leaders do not have to be trained as incident commanders, however some leadership experience is preferable._
* The Incident Commander may adjust the purpose or name of the sub-teams as necessary.
* If you wish to switch teams, ask your **current team leader**.  **Do not** ask the Incident Commander, or the leader of the other team(s).  Use the chain of command.

### Split Incident
If an incident turns out to be two or more distinct incidents:

* Establish a new [incident file](#create-incident-file).
* Track and coordinate investigation, remediation, and communication in the appropriate file.
* Consider establishing sub-teams for each incident.
* **Maintain one top-level Incident Commander**, to coordinate low-density, high-demand assets and maintain unity of command.

# Investigate

**[Investigate](#investigate), [remediate](#remediate), and [communicate](#communicate) in parallel, using separate teams, if possible.**  The Incident Commander will coordinate these activities.  Notify the Incident Commander if there are steps the team should consider.

## Create Incident File
1. Create a new incident file at {{INCIDENT_FILE_LOCATION}} using the [incident name](#name-the-incident).  Use this file for secure storage of documentation, evidence, artifacts, _etc._
    * Provision secure digital storage.
    * Provision secure file exchange.
    * Obtain physical storage.
    * Share the incident file location on the call and chat.
    * `TODO: Customize and automate file location and procedure`
1. Document the functional and information impact, if known (see [Assess](#assess)). `TODO: Customize impact categories, if necessary.`
1. Document the vector, if known (_e.g.,_ web, email, removable media). `TODO: Customize vector list, if necessary.`
1. Document the incident summary: a brief overview of the vector, impact, investigation, and remediation situation, if known.
1. Document the incident timeline, including attacker activity and responder activity. `TODO: Add timelines of varying details, as necessary.`
1. Document investigation, remediation, and communication steps.  Document activities independently so they can be combined and reused, if possible.
1. Track significant information such as:
    * **Evidence**, with time of collection, source, chain of custody, _etc._
    * **Affected systems**, with how and when system was identified, and summary of effect (_e.g._, has malware, data accessed).
    * **Files of interest**, such as malware or data files, with system and metadata.
    * **Accessed and taken data**, with filenames, metadata, and time of suspected exposure.
    * **Significant attacker activity**, such as logins and malware execution, with time of the event.
    * **Network-based indicators of compromise (IOCs)**, such as IP addresses and domains.
    * **Host-based IOCs**, such as filenames, hashes, and registry keys.
    * **Compromised accounts**, with scope of access and time of compromise.

`TODO: Customize incident documentation procedure, including spreadsheets, databases, forms, systems, and templates, if necessary.`

## Collect Initial Leads
1. Interview incident reporter(s).
1. Collect initial supporting data (_e.g._, alarms, events, data, assumptions, intuitions) in the incident file.
1. Interview SME(s) with domain or system expertise, to understand technical detail, context, and risk.
1. Interview SME(s) in affected business unit, to understand mission/business impact, context, and risk.
1. Ensure leads are relevant, detailed, and actionable.

<div class="reference">

### Reference: Response Resource List

Resource                  | Location
------------------------- | ------------------------------------
Critical infomation list  | {{CRITICAL_INFO_LIST_LOCATION}}
Critical asset list       | {{CRITICAL_ASSET_LIST_LOCATION}}
Asset management database | {{ASSET_MGMT_DB_LOCATION}}
Network map               | {{NETWORK_MAP_LOCATION}}
SIEM console              | {{SIEM_CONSOLE_LOCATION}}
Log aggregator            | {{LOG_AGGREGATOR_CONSOLE}}

`TODO: Complete critical information and asset lists ("crown jewels"). This is incredibly important to effective response.`

`TODO: Customize response resource list`

</div>

## Update Investigative Plan and Incident File

1. Review and refine incident impact.
1. Review and refine incident vector.
1. Review and refine incident summary.
1. Review and refine incident timeline with facts and inferences.
1. Create hypotheses: what may have happened, and with what confidence.
1. **Identify and prioritize key questions** (information gaps) to support or discredit hypotheses.
    * Use the MITRE ATT&CK matrix or similar framework to [develop questions](#reference-attacker-tactics-to-key-questions-matrix).
        * [PRE-ATT&CK](https://attack.mitre.org/pre-attack/index.php/Main_Page) for "Left-of-Exploit."
        * [ATT&CK for Enterprise](https://attack.mitre.org/wiki/Main_Page), including links to Windows, Mac, and Linux specifics.
        * [ATT&CK Mobile Profile](https://attack.mitre.org/mobile/index.php/Main_Page) for mobile devices.
    * Use interrogative words as inspiration:
        * **When?**: first compromise, first data loss, access to x data, access to y system, _etc._
        * **What?**: impact, vector, root cause, motivation, tools/exploits used, accounts/systems compromised, data targeted/lost, infrastructure, IOCs, _etc._
        * **Where?**: attacker location, affected business units, infrastructure, _etc._
        * **How?**: compromise (exploit), persistence, access, exfiltration, lateral movement, _etc._
        * **Why?**: targeted, timing, access x data, access y system, _etc._
        * **Who?**: attacker, affected users, affected customers, _etc._
1. **Identify and prioritize witness devices and strategies** to answer key questions.
    * Consult network diagrams, asset management systems, and SME expertise
    * Check the [Response Resource List](#reference-response-resource-list))
1. Refer to [incident playbooks](#playbooks) for key questions, witness devices, and strategies for investigating common or highly damaging threats.

**The investigative plan is critical to an effective response; it drives all investigative actions.  Use critical thinking, creativity, and sound judgment.**

<div class="reference">

### Reference: Attacker Tactics to Key Questions Matrix

Attacker Tactic      | The way attackers ...         | Possible Key Questions
-------------------- | ----------------------------- | -----------------------------------------
Persistence          | ... stick around              | How? Since when? Where? Which systems?
Privilege Escalation | ... get higher level access   | How? Where? What tools?
Defense Evasion      | ... dodge security            | How? Where? Since when?
Credential Access    | ... get/create accounts       | Which accounts? Since when? Why?
Discovery            | ... learn our network         | How? Where? What do they know?
Lateral Movement     | ... move around               | How? When? Which accounts?
Execution            | ... run hostile code          | What malware? What tools? Where? When?
Collection           | ... find and gather data      | What data? Why? When? Where?
Exfiltration         | ... take data                 | What data? How? When? Where?
Command and Control  | ... control tools and systems | How? Where? Who? Why?

</div>

## Create and Deploy Indicators of Compromise (IOCs)
* Create IOCs based on [initial leads](#collect-initial-leads) and [analysis](#analyzeiterate).
* Create IOCs using an open format supported by your tools (_e.g._, [STIX 2.0](https://oasis-open.github.io/cti-documentation/stix/intro)), if possible. `TODO: Customize IOC format as necessary.`
* Use automation, if possible. `TODO: Add IOC deployment/revocation procedure.`
* **Do not** deploy unrelated, un-curated "feeds" of IOCs; these can cause confusion and fatigue.
* Consider all IOC types:
    * Network-based IOCs such as IP or MAC addresses, ports, email addresses, email content or metadata, URLs, domains, or PCAP patterns.
    * Host-based IOCs such as paths, file hashes, file content or metadata, registry keys, MUTEXes, autoruns, or user artifacts and permissions.
    * Cloud-based IOCs such as log patterns for [SaaS](https://en.wikipedia.org/wiki/Software_as_a_service) or [IaaS](https://en.wikipedia.org/wiki/Infrastructure_as_a_service) deployments
    * Behavioral IOCs (a.k.a., patterns, TTPs) such as process tree patterns, heuristics, deviation from baseline, and login patterns.
* Correlate various IOC types, such as network and host-based indicators on the same systems(s).

## Identify Systems of Interest
1. Validate whether they are relevant.
1. Categorize the reason(s) they are "of interest": has malware x, accessed by compromised account, has sensitive data, etc.  Treat these as "tags", there may be more than one category per system.
1. Prioritize collection, analysis, and remediation based on investigative needs, business impact, _etc._

## Collect Evidence
* Prioritize based on the investigative plan
* Collect live response data using {{LIVE_RESPONSE_TOOL}}.  `TODO: Customize live response tools and procedure.`
* Collect relevant logs from system(s) (if not part of live response), aggregator(s), SIEM(s), or device console(s).  `TODO: Customize log collection tools and procedure.`
* Collect memory image, if necessary and if not part of live response, using {{MEMORY_COLLECTION_TOOL}}.  `TODO: Customize memory collection tools and procedure.`
* Collect disk image, if necessary, using {{DISK_IMAGE_TOOL}}.`  `TODO: Customize disk image collection tool and procedure.`
1. Collect and store evidence in accordance with policy, and with proper chain of custody. `TODO: Customize evidence collection and chain of custody policy.`

## Analyze Evidence
* Prioritize based on the investigative plan
* Analyze and triage live response data
* Analyze memory and disk images (_i.e._, conduct forensics)
* Analyze malware
* _OPTIONAL:_ Enrich with research and intelligence
* Update the case file

## Iterate Investigation
[Update the investigative plan](#update-investigative-plan) and repeat until closure.

# Remediate

**[Investigate](#investigate), [remediate](#remediate), and [communicate](#communicate) in parallel, using separate teams, if possible.**  The Incident Commander will coordinate these activities.  Notify the Incident Commander if there are steps the team should consider

## Update Remediation Plan

1. Review the incident file at {{INCIDENT_FILE_LOCATION}} using the [incident name](#name-the-incident)
1. Review applicable [playbooks](#playbooks).
1. Review the [Response Resource List](#reference-response-resource-list)).
1. Consider which attacker tactics are in play in this incident.  Use MITRE's [ATT&CK](https://attack.mitre.org/wiki/Main_Page) list (_i.e._, Persistence, Privilege Escalation, Defense Evasion, Credential Access, Discovery, Lateral Movement, Execution, Collection, Exfiltration, and Command and Control), or similar framework.
1. Develop remediations for each tactic in play, as feasible given existing tools and resources.  Consider remediations to [Protect](#protect), [Detect](#detect), [Contain](#contain), and [Eradicate](#eradicate) each attacker behavior.
1. Prioritize based on [timing strategy](#choose-remediation-timing), impact, and urgency.
1. Document in incident file.

Use [information security (infosec) frameworks](https://www.nist.gov/cyberframework) as inspiration, but **do not use incident remediation as a substitute for an infosec program with an appropriate framework.**  Use them to supplement one another.

### Protect
> "How can we stop tactic X from happening again, or reduce risk?  How can we improve future protection?"

Use the following as a starting point for protective remediation:
* Patch applications.
* Patch operating systems.
* Update network and host IPS signatures.
* Update endpoint protection/EDR/anti-virus signatures.
* Reduce locations with critical data.
* Reduce administrative or privileged accounts.
* Enable multi-factor authentication.
* Strengthen password requirements.
* Block unused ports and protocols at segment and network boundaries, both inbound and outbound.
* Whitelist network connections for critical servers and services.

### Detect
> "How can we detect this on new systems or in the future?  How can we improve future detection and investigation?"

Use the following as a starting point for detective remediation:
* Enhance logging and retention for system logs, particularly critical systems.
* Enhance logging for applications, including SaaS applications.
* Enhance log aggregation.
* Update network and host IDS signatures using IOCs.

### Contain
> "How can we stop this from spreading, or getting more severe? How can we improve future containment?"

Use the following as a starting point for containment remediation:
* Implement access lists (ACLs) at network segment boundaries
* Implement blocks at the enterprise boundary, at multiple layers of the [OSI model](https://en.wikipedia.org/wiki/OSI_model).
* Disable or remove compromised account access.
* Block malicious IP addresses or networks.
* Blackhole or sinkhole malicious domains.
* Update network and host IPS and anti-malware signatures using IOCs.
* Remove critical or compromised systems from the network.
* Contact providers for assistance (_e.g._, internet service providers, SaaS vendors)
* Whitelist network connections for critical servers and services.
* Kill or disable processes or services.
* Block or remove access for external vendors and partners, especially privileged access.

### Eradicate
> "How can we eliminate this from our assets?  How can we improve future eradication?"

Use the following as a starting point for eradication remediation:
* Rebuild or restore compromised systems and data from known-good state.
* Reset account passwords.
* Remove hostile accounts or credentials.
* Delete or remove specific malware (difficult!).
* Implement alternative vendors.
* Activate and migrate to alternate locations, services, or servers.

## Choose Remediation Timing
Determine the timing strategy---when remediation actions will be taken---by engaging the Incident Commander, the system SMEs and owners, business unit SMEs and owners, and the executive team.  Each strategy is appopriate under different circumstances:

* Choose **immediate** remediation when it is more important to immediately stop attacker activities than to continue investigating.  For example, ongoing financial loss, or ongoing mission failure, active data loss, or prevention of an imminent significant threat.
* Choose **delayed** remediation when it is important to complete the investigation, or important not to alert the attacker.  For example, long-term compromise by an advanced attacker, corporate espionage, or large-scale compromise of an an unknown number of systems.
* Choose **combined** remediation when both immediate and delayed circumstances apply in the same incident.  For example, immediate segmentation of a sensitive server or network to meet regulatory requirements while still investigating a long-term compromise.

## Execute Remediation
* Assess and explain risks of remediation actions to stakeholders.  `TODO: Customize remediation risk approval procedure, if necessary.`
* Immediately implement those remediation actions with little or no affect on the attacker (sometimes called "posturing actions").  For example, many of the [protection](#protect) and [detection](#detect) actions above are good candidates.
* Schedule and task remediation actions according to the timing strategy.
* Execute remediation actions in batches, as events, for maximum effectiveness and minimum risk.
* Document execution status and time in the incident file, especially for temporary measures.

## Iterate Remediation
[Update the remediation plan](#update-remediation-plan) and repeat until closure.

# Communicate

**[Investigate](#investigate), [remediate](#remediate), and [communicate](#communicate) in parallel, using separate teams, if possible.**  The Incident Commander will coordinate these activities.  Notify the Incident Commander if there are steps the team should consider

All communication must include the most accurate information available.  Display integrity.  Do not communicate speculation.

## Communicate Internally

### Notify and Update Stakeholders
* Communicate with stakeholders as part of the initial and update calls, as well as via event-driven updates on the call and chat.
* Coordinate independent updates (_e.g._, executive, legal) as required, but as infrequently as practicable, to keep the focus on investigation and remediation.
* Focus on the best assessment of the vector, impact, summary, and highlights of the timeline including remediation steps.  Do not speculate.

### Notify and Update Organization
* **Do not** notify or update non-response personnel until cleared by the Incident Commander, particularly if there is a risk of an insider threat.
* Coordinate updates for teams or the entire organization with executives and business leadership.
* Focus on the best assessment of the vector, impact, summary, and highlights of the timeline including remediation steps.  Do not speculate.

### Create Incident Report
* Upon incident closure, capture information in the [incident file](#create-incident-file) for distribution using the format at {{INCIDENT_REPORT_TEMPLATE}}.  **If the vector, impact, summary, timeline, and activity reports are complete, this can be fully automated.**
* Distribute the incident report to the following: {{INCIDENT_REPORT_RECIPIENTS}}.
* `TODO: Customize incident report creation and distribution, if necessary`

## Communicate Externally

### Notify Regulators
* **Do not** notify or update non-response personnel until cleared by the Incident Commander.
* Notify regulators (_e.g._, HIPAA/HITRUST, PCI DSS, SOX) if necessary, and in accordance with policy.
* Coordinate requirements, format, and timeline with {{COMPLIANCE_TEAM}}.

### Notify Customers
* **Do not** notify or update non-response personnel until cleared by the Incident Commander.
* Coordinate customer notifications with {{COMMUNICATIONS_TEAM}}.
* Include the date in the title of any announcement, to avoid confusion.
* **Do not** use platitudes such as "we take security very seriously". Focus on facts.
* Be honest, accept responsibility, and present the facts, along with the plan to prevent similar incidents in future.
* Be as detailed as possible with the timeline.
* Be as detailed as possible in what information was compromised, and how it affects customers. If we were storing something we shouldn't have been, be honest about it. It'll come out later and it'll be much worse.
* **Do not** discuss external parties that might have caused the compromise, unless they've already publicly disclosed, in which case link to their disclosure.  Communicate with them independently (see [Notify Vendors](#notify-vendors-and-partners))
* Release the external communication as soon as possible.  Bad news does not get better with age.
* If possible, contact customers' internal security teams before notifying the public.

### Notify Vendors and Partners
* **Do not** notify or update non-response personnel until cleared by the Incident Commander.
* If possible, contact vendors' and partners' internal security teams before notifying the public.
* Focus on the specific aspects of the incident that affect or implicate the vendor or partner.
* Coordinate response efforts and share information if possible.

### Notify Law Enforcement
* **Do not** notify or update non-response personnel until cleared by the Incident Commander.
* Coordinate with {{EXECUTIVE_TEAM}} and {{LEGAL_TEAM}} prior to interacting with law enforcement
* Contact local law enforcement at {{LOCAL_LE_CONTACT}}.
* Contact FBI at {{FBI_CONTACT}} or via the [Internet Crime Complaint Center (IC3)](https://www.ic3.gov).
* Contact operators for any systems used in the attack, their systems may also have been compromised.

### Contact External Response Support
* Contact {{INCIDENT_RESPONSE_VENDOR}} to help in assessing risk, incident management, incident response, and post-incident support.
* Contact {{PUBLIC_RELATIONS_VENDOR}} for help with PR and external communication.
* Contact {{INSURANCE_VENDOR}} for help with cyber insurance.

### Share Intelligence
* Share IOCs with [Infragard](https://www.infragard.org/) if applicable.
* Share IOCs with your servicing [ISAC](https://en.wikipedia.org/wiki/Information_Sharing_and_Analysis_Center) through {{ISAC_CONTACT}}, if applicable.

