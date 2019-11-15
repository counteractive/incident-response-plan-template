# Incident Response Plan for Acme, Inc.

Author: Chris, contact@counteractive.net

Revision 1, Released 3 Apr 2019

This incident response plan is based on the concise, directive, specific, flexible, and free plan available on Counteractive Security's [Github](https://github.com/counteractive/incident-response-plan-template) and discussed at [www.counteractive.net](https://www.counteractive.net/posts/an-ir-plan-you-will-use/)

It was last reviewed on 3 Apr 2019. It was last tested on 3 Apr 2019.

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
1. Launch and/or join the response chat at chat.acme.tld/codename.  `TODO: Add response chat launch procedure.`
1. Launch and/or join the response call at 555-HACK and/or webex.acme.tld/codename.  `TODO: Add response call launch procedure.`
1. Prefer voice call, chat, and secure file exchange over any other methods.
1. **Do not** use primary email if possible.  If email is necessary, use sparingly or use O365 at ir.acme.tld/othermail.  Encrypt emails when any participant is outside the acme.tld domain.  `TODO: Add alternative email details and procedure, e.g., on-demand Office 365 or GSuite`
1. **Do not** use SMS/text to communicate about the incident, unless to tell someone to move to a more secure channel.
1. Invite on-duty/on-call responders to the response call and response chat.
    * Invite the security team.  `TODO: Add security team contact list or procedure.`
    * Invite a SME for affected teams and systems.  `TODO: Add team SME contact list or procedure.`
    * Invite executive stakeholders and legal counsel at earliest opportunity, but prioritize operational responders.  `TODO: Add executive stakeholder contact list or procedure.`
1. _OPTIONAL:_ Establish an in-person collaboration room ("war room") for complex or severe incidents. `TODO: Add collaboration room procedure.`

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

### Reference: Response Team Contact Information

Response Team Role           | Contact Information
---------------------------- | ---------------------------
Incident Commander pager     | 555-PAGE
Incident Commander pager url | ir.acme.tld/ic-page
Incident Commander roster    | ir.acme.tld/ic-roster
Security team roster         | ir.acme.tld/sec-roster
Team SME roster              | ir.acme.tld/sme-roster
Executive roster             | ir.acme.tld/exec-roster

`TODO: Customize response team contact information.  Include contact procedures in rosters, which can be static or dynamic.`

## Establish Battle Rhythm

### Conduct Initial Response Call

1. Conduct initial call using the [initial response call structure](#reference-initial-response-call-structure)
1. Follow instructions from the Incident Commander.  If the on-duty/on-call Incident Commander does not join the call **within 15 minutes** and you are a trained incident commander, take command of the call.
1. Follow the [instructions for your role](#roles).
1. Follow the call and chat, and comment as appropriate.  If you are not a SME, filter input through the SME for your team if possible.
1. **Keep the call and chat active throughout the incident for event-driven communication.**
1. Schedule updates **every 4 hours** on the active bridge.

#### Reference: Initial Response Call Structure

* INCIDENT COMMANDER (IC): My name is [NAME], I am the Incident Commander.  I have designated [NAME] as Deputy, and [NAME] as Scribe. Who is on the call?
* SCRIBE: [Takes attendance]
* IC: [If missing key personnel] Deputy, please page [MISSING PERSONNEL].
* IC: [Asks questions to understand situation, symptoms, scope, vector, impact, and timeline from the incident reporter, applicable SMEs for systems and business units]
* SMEs: [Brief answers to IC's questions]
* IC:[If this is an incident]:
  * At this time, the incident summary is as follows: [reiterates summary].  The Investigation team will be led by [NAME], the Remediation team will be led by [NAME], and the Communication team will be led by [NAME].  They will coordinate team membership and report to me.  SMEs, please report to your appropriate team leader.
  * What investigation, remediation, or communication steps have already been taken? [this should be a short list, but needs to come out now]
  * This call and chat will remain up and available until incident closure, please use it for all incident related communications.  Provide real-time status updates in the chat, if possible.  Are there any questions or remaining inputs? [answers questions]
  * Team leaders, please proceed with your planned actions.  We will reconvene at [UPDATE_TIME] to discuss the status.  Thank you.
* IC: [If this is not an incident]: At this time, these facts do not rise to the level of an incident.  I will coordinate directly with the incident reporter for follow-on actions.  Thank you for your time.

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

### Conduct Response Update

* Conduct scheduled updates using the [update call structure](#reference-response-update-call-structure) every 4 hours on the active bridge. `TODO: Customize update frequency and scripts; recommend no more than twice daily.`
* Adjust frequency as necessary.
* Coordinate independent updates (_e.g._, executive, legal) as required, but as infrequently as practicable.

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
* IC: Team leaders, please proceed.  We will reconvene in [] to discuss the status.  Thank you.

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

1. Create a new incident file at ir.acme.tld/files/codename using the [incident name](#name-the-incident).  Use this file for secure storage of documentation, evidence, artifacts, _etc._
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

### Reference: Response Resource List

Resource                  | Location
------------------------- | ------------------------------------
Critical information list  | ir.acme.tld/cil
Critical asset list       | ir.acme.tld/cal
Asset management database | ir.acme.tld/assets
Network map               | ir.acme.tld/netmap
SIEM console              | siem.acme.tld
Log aggregator            | elk.acme.tld

`TODO: Complete critical information and asset lists ("crown jewels"). This is incredibly important to effective response.`

`TODO: Customize response resource list`

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
* Collect live response data using [ir-rescue](https://github.com/diogo-fernan/ir-rescue).  `TODO: Customize live response tools and procedure.`
* Collect relevant logs from system(s) (if not part of live response), aggregator(s), SIEM(s), or device console(s).  `TODO: Customize log collection tools and procedure.`
* Collect memory image, if necessary and if not part of live response, using [rekall](http://www.rekall-forensic.com/).  `TODO: Customize memory collection tools and procedure.`
* Collect disk image, if necessary, using [ftk imager](http://www.forensicswiki.org/wiki/FTK_Imager).  `TODO: Customize disk image collection tool and procedure.`
* Collect and store evidence in accordance with policy, and with proper chain of custody. `TODO: Customize evidence collection and chain of custody policy.`

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

1. Review the incident file at ir.acme.tld/files/codename using the [incident name](#name-the-incident)
1. Review applicable [playbooks](#playbooks).
1. Review the [Response Resource List](#reference-response-resource-list)).
1. Consider which attacker tactics are in play in this incident.  Use the MITRE [ATT&CK](https://attack.mitre.org/wiki/Main_Page) list (_i.e._, Persistence, Privilege Escalation, Defense Evasion, Credential Access, Discovery, Lateral Movement, Execution, Collection, Exfiltration, and Command and Control), or similar framework.
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
* Black hole or sinkhole malicious domains.
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

Determine the timing strategy---when remediation actions will be taken---by engaging the Incident Commander, the system SMEs and owners, business unit SMEs and owners, and the executive team.  Each strategy is appropriate under different circumstances:

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

* Upon incident closure, capture information in the [incident file](#create-incident-file) for distribution using the format at ir.acme.tld/report/template.  **If the vector, impact, summary, timeline, and activity reports are complete, this can be fully automated.**
* Distribute the incident report to the following: ir.acme.tld/report/recipients.
* `TODO: Customize incident report creation and distribution, if necessary`

## Communicate Externally

### Notify Regulators

* **Do not** notify or update non-response personnel until cleared by the Incident Commander.
* Notify regulators (_e.g._, HIPAA/HITRUST, PCI DSS, SOX) if necessary, and in accordance with policy.
* Coordinate requirements, format, and timeline with the legal team, legal@acme.tld.

### Notify Customers

* **Do not** notify or update non-response personnel until cleared by the Incident Commander.
* Coordinate customer notifications with the marketing team, marketing@acme.tld.
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
* Coordinate with the front office, bosses@acme.tld and the legal team, legal@acme.tld prior to interacting with law enforcement
* Contact local law enforcement at police@local.gov.tld.
* Contact FBI at 1-800-CALL-FBI (225-5324), https://www.fbi.gov/contact-us or via the [Internet Crime Complaint Center (IC3)](https://www.ic3.gov).
* Contact operators for any systems used in the attack, their systems may also have been compromised.

### Contact External Response Support

* Contact [Counteractive Security](https://www.counteractive.net) to help in assessing risk, incident management, incident response, and post-incident support.
* Contact pr.firm.tld for help with PR and external communication.
* Contact cyber.insurance.tld for help with cyber insurance.

### Share Intelligence

* Share IOCs with [Infragard](https://www.infragard.org/) if applicable.
* Share IOCs with your servicing [ISAC](https://en.wikipedia.org/wiki/Information_Sharing_and_Analysis_Center) through https://en.wikipedia.org/wiki/Information_Sharing_and_Analysis_Center, if applicable.

# Playbooks

The following playbooks capture common [investigation](#investigate), [remediation](#remediate), and [communication](#communicate) steps for particular types of incident.

`TODO: Create playbooks for incidents that are highly likely or highly damaging.`

## Playbook: Phishing

### Investigate

`TODO: Customize investigation steps, including key questions and strategies, for phishing.`

### Remediate

#### Contain

`TODO: Customize containment steps, tactical and strategic, for phishing.`

#### Eradicate

`TODO: Customize eradication steps, tactical and strategic, for phishing.`

### Communicate

`TODO: Customize communication steps for phishing, e.g., contacting organizations phished using your email domain or infrastructure.`

## Playbook: Ransomware

**Investigate, remediate (contain, eradicate), and communicate in parallel! Containment is critical in ransomware incidents, prioritize accordingly.**

Assign steps to individuals or teams to work concurrently, when possible; this playbook is not purely sequential. Use your best judgment.

### Investigate

`TODO: Expand investigation steps, including key questions and strategies, for ransomware.`

1. **Determine the type** of ransomware (_i.e.,_ what is the family, variant, or flavor?)[<sup>[1]</sup>](#ransomware-playbook-ref-1)
    1. Find any related messages.  Check:
        * graphical user interfaces (GUIs) for the malware itself
        * text or html files, sometimes opened automatically after encryption
        * image files, often as wallpaper on infected systems
        * contact emails in encrypted file extensions
        * pop-ups after trying to open an encrypted file
        * voice messages
    1. Analyze the messages looking for clues to the ransomware type:
        * ransomware name
        * language, structure, phrases, artwork
        * contact email
        * format of the user id
        * ransom demand specifics (_e.g._, digital currency, gift cards)
        * payment address in case of digital currency
        * support chat or support page
    1. Analyze affected and/or new files.  Check:
        * file renaming scheme of encrypted files including extension (_e.g._, `.crypt`, `.cry`, `.locked`) and base name
        * file corruption vs encryption
        * targeted file types and locations
        * owning user/group of affected files
        * icon for encrypted files
        * file markers
        * existence of file listings, key files or other data files
    1. Analyze affected software or system types.  Some ransomware variants only affect certain tools (_e.g._, [databases](https://www.bleepingcomputer.com/news/security/mongodb-apocalypse-professional-ransomware-group-gets-involved-infections-reach-28k-servers/)) or platforms (_e.g._, [NAS products](https://forum.synology.com/enu/viewtopic.php?f=3&t=88716))
    1. Upload indicators to automated categorization services like [Crypto Sheriff](https://www.nomoreransom.org/crypto-sheriff.php), [ID Ransomware](https://id-ransomware.malwarehunterteam.com/), or similar.
1. **Determine the scope:**
    1. Which systems are affected? `TODO: Specify tool(s) and procedure`
        * Scan for concrete indicators of compromise (IOCs) such as files/hashes, processes, network connections, etc.  Use [endpoint protection/EDR](#TODO-link-to-actual-resource), [endpoint telemetry](#TODO-link-to-actual-resource), [system logs](#TODO-link-to-actual-resource), etc.
        * Check similar systems for infection (_e.g._, similar users, groups, data, tools, department,configuration, patch status): check [IAM tools](#TODO-link-to-actual-resource), [permissions management tools](#TODO-link-to-actual-resource), [directory services](#TODO-link-to-actual-resource), _etc._
        * Find external command and control (C2), if present, and find other systems connecting to it: check [firewall or IDS logs](#TODO-link-to-actual-resource), [system logs/EDR](#TODO-link-to-actual-resource), [DNS logs](#TODO-link-to-actual-resource), [netflow or router logs](#TODO-link-to-actual-resource), _etc._
    1. What data is affected? (_e.g._, file types, department or group, affected software) `TODO: Specify tool(s) and procedure`
        * Find anomalous changes to file metadata such as mass changes to creation or modification times.  Check [file metadata search tools](#TODO-link-to-actual-resource)
        * Find changes to normally-stable or critical data files.  Check [file integrity monitoring](#TODO-link-to-actual-resource) tools
1. **Assess the impact** to prioritize and motivate resources
    1. Assess functional impact: impact to business or mission.
        * How much money is lost or at risk?
        * How many (and which) missions are degraded or at risk?
    1. Assess information impact: impact to confidentiality, integrity, and availability of data.
        * How critical is the data to the business/mission?
        * How sensitive is the data? (_e.g._, trade secrets)
        * What is the regulatory status of data (_e.g._, PII, PHI)
1. **Find the infection vector.**  Check the tactics captured in the [Initial Access tactic](https://attack.mitre.org/tactics/TA0001/) of MITRE ATT&CK[<sup>[4]</sup>](#ransomware-playbook-ref-4).  Common specifics and data sources include:
    * email attachment: check [email logs](#TODO-link-to-actual-resource), [email security appliances and services](#TODO-link-to-actual-resource), [e-discovery tools](#TODO-link-to-actual-resource), _etc._
    * insecure remote desktop protocol (RDP): check [vulnerability scanning results](#TODO-link-to-actual-resource), [firewall configurations](#TODO-link-to-actual-resource), _etc._
    * self-propagation (worm or virus) (check [host telemetry/EDR](#TODO-link-to-actual-resource), [system logs](#TODO-link-to-actual-resource), [forensic analysis](#TODO-link-to-actual-resource), _etc._)
    * infection via removable drives (worm or virus)
    * delivered by other malware or attacker tool: expand investigation to include additional attacker tools or malware

### Remediate

* **Plan remediation events** where these steps are launched together (or in coordinated fashion), with appropriate teams ready to respond to any disruption.
* **Consider the timing and tradeoffs** of remediation actions: your response has consequences.

#### Contain

`TODO: Customize containment steps, tactical and strategic, for ransomware.`

`TODO: Specify tools and procedures for each step, below.`

**In ransomware situations, containment is critical.  Inform containment measures with facts from the investigation.  Prioritize quarantines and other containment measures higher than during a typical response.**

Quarantines (logical, physical, or both) prevent spread _from_ infected systems and prevent spread _to_ critical systems and data. Quarantines should be comprehensive: include cloud/SaaS access, single-sign-on, system access such as to ERP or other business tools, _etc._

* Quarantine infected systems
* Quarantine affected users and groups.
* Quarantine file shares (not just known-infected shares; protect uninfected shares too)
* Quarantine shared databases (not just known-infected servers; protect uninfected databases too)
* Quarantine backups, if not already secured
* Block command and control domains and addresses
* Remove vector emails from inboxes
* Confirm endpoint protection (AV, NGAV, EDR, _etc._) is up-to-date and enabled on all systems.
* Confirm patches are deployed on all systems (prioritizing targeted systems, OSes, software, _etc._).
* Deploy custom signatures to endpoint protection and network security tools based on discovered IOCs

`TODO: Consider automating containment measures using orchestration tools.`

#### Eradicate

`TODO: Customize eradication steps, tactical and strategic, for ransomware.`

`TODO: Specify tools and procedures for each step, below.`

* Rebuild infected systems from known-good media
* Restore from known-clean backups
* Confirm endpoint protection (AV, NGAV, EDR, _etc._) is up-to-date and enabled on all systems.
* Confirm patches are deployed on all systems (prioritizing targeted systems, OSes, software, _etc._).
* Deploy custom signatures to endpoint protection and network security tools based on discovered IOCs
* **Watch for re-infection:** consider increased priority for alarms/alerts related to this incident.

#### Reference: Remediation Resources

`TODO: Specify financial, personnel, and logistical resources to accomplish remediation.`

### Communicate

`TODO: Customize communication steps for ransomware`

`TODO: Specify tools and procedures (including who must be involved) for each step, below, or refer to overall plan.`

1. Escalate incident and communicate with leadership per procedure
1. Document incident per procedure
1. Communicate with internal and external legal counsel per procedure, including discussions of compliance, risk exposure, liability, law enforcement contact, _etc._
1. Communicate with users (internal)
    1. Communicate incident response updates per procedure
    1. Communicate impact of incident **and** incident response actions (e.g., containment: "why is the file share down?"), which can be more intrusive/disruptive during ransomware incidents
    1. Communicate requirements: "what should users do and not do?"  See "Reference: User Actions for Suspected Ransomware," below
1. Communicate with customers
    1. Focus particularly on those whose data was affected
    1. Generate required notifications based on applicable regulations (particularly those that may consider ransomware a data breach or otherwise requires notifications (_e.g._, [HHS/HIPAA](https://www.hhs.gov/sites/default/files/RansomwareFactSheet.pdf))) `TODO: Expand notification requirements and procedures for applicable regulations`
1. Contact insurance provider(s)
    1. Discuss what resources they can make available, what tools and vendors they support and will pay for, _etc._
    1. Comply with reporting and claims requirements to protect eligibility
1. Communicate with regulators, including a discussion of what resources they can make available (not just boilerplate notification: many can actively assist)
1. Consider notifying and involving [law enforcement](https://www.nomoreransom.org/en/report-a-crime.html)
    1. [Local law enforcement](#TODO-link-to-actual-resource)
    1. [State or regional law enforcement](#TODO-link-to-actual-resource)
    1. [Federal or national law enforcement](#TODO-link-to-actual-resource)
1. Communicate with security and IT vendors
    1. Notify and collaborate with [managed providers](#TODO-link-to-actual-resource) per procedure
    1. Notify and collaborate with [incident response consultants](#TODO-link-to-actual-resource) per procedure

### Recover

`TODO: Customize recovery steps for ransomware.`

`TODO: Specify tools and procedures for each step, below.`

> **We do not recommend paying the ransom:** it does not guarantee a solution to the problem. It can go wrong (_e.g._, bugs could make data unrecoverable even with the key).  Also, paying proves ransomware works and could increase attacks against you or other groups.[<sup>[2, paraphrased]</sup>](#ransomware-playbook-ref-2)

1. Launch business continuity/disaster recovery plan(s): _e.g._, consider migration to alternate operating locations, fail-over sites, backup systems.
1. Recover data from known-clean backups to known-clean, patched, monitored systems (post-eradication), in accordance with our [well-tested backup strategy](#TODO-link-to-actual-resource).
    * Check backups for indicators of compromise
    * Consider partial recovery and backup integrity testing
1. Find and try known decryptors for the variant(s) discovered using resources like the No More Ransom! Project's [Decryption Tools page](https://www.nomoreransom.org/en/decryption-tools.html).
1. Consider paying the ransom for irrecoverable critical assets/data, in accordance with policy `TODO: Expand and socialize this decision matrix`
    * Consider ramifications with appropriate stakeholders
    * Understand finance implications and budget
    * Understand legal, regulatory, and insurance implications
    * Understand mechanisms (_e.g._, technologies, platforms, intermediate vendors/go-betweens)

### Resources

#### Reference: User Actions for Suspected Ransomware

`TODO: Customize steps for users dealing with suspected ransomware`

1. Stay calm, take a deep breath.
1. Disconnect your system from the network `TODO: include detailed steps with screenshots, a pre-installed tool or script to make this easy ("break in case of emergency"), consider hardware network cut-off switches`
1. Take pictures of your screen using your smartphone showing the things you noticed: ransom messages, encrypted files, system error messages, _etc._
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
1. Contact the [help desk](#TODO-link-to-actual-resource) and be as helpful as possible
1. Be patient: the response may be disruptive, but you are protecting your team and the organization!  **Thank you.**

#### Reference: Help Desk Actions for Suspected Ransomware

`TODO: Customize steps for help desk personnel dealing with suspected ransomware`

1. Stay calm, take a deep breath.
1. Open a ticket to document the incident, per procedure `TODO: Customize template with key questions (see below) and follow-on workflow`
1. Ask the user to take pictures of their screen using their smartphone showing the things they noticed: ransom messages, encrypted files, system error messages, _etc._  If this is something you noticed directly, do the same yourself.
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
1. Get detailed contact information from the user (home, office, mobile), if applicable
1. Record all information in the ticket, including hand-written and voice notes
1. Quarantine affected users and systems `TODO: Customize containment steps, automate as much as possible`
1. Contact the [security team](#TODO-link-to-actual-resource) and stand by to participate in the response as directed: investigation, remediation, communication, and recovery

#### Additional Information

1. <a name="ransomware-playbook-ref-1"></a>["Ransomware Identification for the Judicious Analyst"](https://www.gdatasoftware.com/blog/2019/06/31666-ransomware-identification-for-the-judicious-analyst), Hahn (12 Jun 2019)
1. <a name="ransomware-playbook-ref-2"></a>[No More Ransom!](https://www.nomoreransom.org) Project, including their [Crypto Sheriff](https://www.nomoreransom.org/crypto-sheriff.php?lang=en) service and their [Q&A](https://www.nomoreransom.org/en/ransomware-qa.html)
1. <a name="ransomware-playbook-ref-3"></a>[ID Ransomware](https://id-ransomware.malwarehunterteam.com/) service
1. <a name="ransomware-playbook-ref-4"></a>[MITRE ATT&CK Matrix](https://attack.mitre.org), including the [Initial Access](https://attack.mitre.org/tactics/TA0001/) and [Impact](https://attack.mitre.org/tactics/TA0040/) tactics

# Roles

The following are the descriptions, duties, and training for each of the defined roles in an incident response.

`TODO: Customize roles, descriptions, duties, and training, if necessary.`

## Structure of Roles

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
During larger complex incidents, the role structure may be adjusted to account for the creation of sub-teams. Read about how we handle [complex incidents](/before/complex_incidents.md) for more information.

This is a **flexible structure**: every role will not be filled by a different person for every incident. For example, in a small incident the Deputy might act as the Scribe and Internal Liaison. The structure is flexible and scales based on the incident.

## Wartime vs. Peacetime

On incident response calls ("wartime"), a different organizational structure overrides normal operations ("peacetime"):

* The Incident Commander is in charge. No matter their rank during peacetime, they are now the highest ranked individual on the call, higher than the CEO.
* Primary responders (folks acting as primary on-call for a team/service) are the highest ranked individuals for that service.
* Decisions will be made by the IC after consideration of the information presented. Once that decision is made, it is final.
* Riskier decisions can be made by the IC than would normally be considered during peacetime.
* The IC may go against a consensus decision. If a poll is done, and 9/10 people agree but 1 disagrees. The IC may choose the disagreement option despite a majority vote.  Even if you disagree, the IC's decision is final. During the call is not the time to argue with them.
* The IC may use language or behave in a way you find rude. This is wartime, and they need to do whatever it takes to resolve the situation, so sometimes rudeness occurs. This is not personal, and something you should be prepared to experience if you've never been in a wartime situation before.
* You may be asked to leave the call by the IC, or you may even be forcibly kicked off a call. It is at the IC's discretion to do this if they feel you are not providing useful input. Again, this is not personal and you should remember that wartime is different than peacetime.

## Role: All Participants

### Description

All participants in an incident response have the responsibility to help resolve the incident according to the incident response plan, under the authority of the Incident Commander.

### Duties

#### Exhibit Call Etiquette

* Join both the call and chat.
* Keep background noise to a minimum.
* Keep your microphone muted until you have something to say.
* Identify yourself when you join the call; State your name and role (_e.g._, "I am the SME for team x").
* Speak up and speak clearly.
* Be direct and factual.
* Keep conversations/discussions short and to the point.
* Bring any concerns to the Incident Commander (IC) on the call.
* Respect time constraints given by the Incident Commander.
* If you join only one channel (call or chat), do not actively participate, as it causes disjoined communication.
* **Use clear terminology, and avoid acronyms or abbreviations. Clarity and accuracy is more important than brevity.**

##### Reference: Common Voice Procedure

Standard radio [voice procedure](https://en.wikipedia.org/wiki/Voice_procedure#Words_in_voice_procedure) **is not required**, however you may hear certain terms (or need to use them yourself). Common phrases include:

* **Ack/Rog:** "I have received and understood"
* **Say Again:** "Repeat your last message"
* **Standby:** "Please wait a moment for the next response"
* **Wilco:** "Will comply"

**Do not** invent new abbreviations; favor being explicit over implicit.

#### Follow the Incident Commander

The Incident Commander (IC) is the leader of the incident response process.

* Follow instructions from the incident commander.
* Do not perform any actions unless the incident commander has told you to do so.
* The commander will typically poll for strong objections before tasking a large action. Raise objections if you have them.
* Once the commander has made a decision, follow that decision (even if you disagreed).
* Answer any questions the commander asks you in a clear and concise way.  Answering "I don't know" is acceptable. Do not guess.
* The commander may ask you to investigate something and get back to them in X minutes. Be ready with an answer within that time.  Asking for more time is acceptable, but provide the commander an estimate.

### Training

Read and understand the incident response plan, including the roles and playbooks.

## Role: Incident Commander (IC)

### Description

The Incident Commander (IC) acts as the single source of truth of what is currently happening and what is going to happen during an major incident.  The IC is the highest ranking individual on any incident call, regardless of their day-to-day rank.  They are the decision maker during an incident; they delegate tasks and listen to subject matter experts to resolve the incident.  Their decisions made as commander are final.

Your job as an IC is to evaluate the situation, provide clear guidance and coordination, recruiting others to gather context/details. **Do not perform any investigation or remediation:** delegate these tasks.

### Duties

Resolve the incident as quickly and as safely as possible using the incident response plan as a framework: lead the team to investigate, remediate, communicate.  Use the Deputy to assist you, and delegate to relevant liaisons and experts (SMEs) at your discretion.

1. Help prepare for incidents,
    * Setup communications channels for incidents.
    * Funnel people to these communications channels when there is a major incident.
    * Train team members on how to communicate during incidents and train other Incident Commanders.
1. Drive incidents to resolution,
    * Get everyone on the same communication channel.
    * Collect information from team members for their services/area of ownership status.
    * Collect proposed repair actions, then recommend repair actions to be taken.
    * Delegate all repair actions, the Incident Commander is NOT a resolver.
    * Be the single authority on system status
1. Facilitate calls and meetings,
    * Gain consensus (Poll During a Decision)
    * Provide status updates
    * Reduce scope (dismiss attendees when possible)
    * Spin off sub-teams
    * Transfer command when necessary
    * Sign off calls
    * Maintain order
    * Get straight answers
    * Handle executive swoop such as
        * Overriding the Incident Commander
        * Anti-motivation
        * Information requests
        * Questioning severity
    * Handle disruptive or belligerent responders
1. Post Mortem,
    * Creating the initial template right after the incident so people can put in their thoughts while fresh.
    * Assigning the post-mortem after the event is over, this can be done after the call.
    * Work with Team Leads/Managers on scheduling preventive actions.

The Incident Commander uses some additional call procedures and lingo:

* Always announce when you join the call if you are the on-call IC.
* **Do not** let discussions get out of hand. Keep conversations short.
* Note objections from others, but your call is final.
* If anyone is being actively disruptive to your call, kick them off.
* Announce the end of the call.
* After an incident, communicate with other training Incident Commanders on any debrief actions you feel are necessary.

**Use clear terminology, and avoid acronyms or abbreviations. Clarity and accuracy is more important than brevity.**

### Training

* Read the incident response plan, including all roles and playbooks.
* Participate in an incident response exercise.
* Shadow a current incident commander without actively participating, keeping your questions until the end.
* Reverse shadow a current incident commander.  Respond to incidents with the current IC there to take over if necessary.
* _OPTIONAL:_ facilitation training
* _OPTIONAL:_ Refer to [Incident Responders as Facilitators (and Therapists)](#FIX) and the [PagerDuty Incident Commander training](https://response.pagerduty.com/training/incident_commander/) for more ideas and discussion.

#### Prerequisites

There is no seniority or business-unit prerequisites to become an Incident Commander, it is a role open to anyone with the training and ability.  Before you can be an Incident Commander, it is expected that you meet the following criteria:

* Excellent verbal and written **communication skills**.
* **High-level knowledge** of business infrastructure and functions.
* Excellent critical thinking, judgment, and decision-making.
* Flexibility and ability to **listen to expert feedback**, modifying plans as necessary.
* **Participated in at least two incident responses**.
* Gravitas, ability to **take command**, and **willingness to kick people off a call** to remove distractions, even if it's the CEO.

Deep technical knowledge is not required!  Incident Commanders do not require deep technical knowledge of our systems. Your job as Incident Commander is to coordinate the response, not make technical changes. Don’t think you can’t be an Incident Commander just because you’re not in the engineering department.

#### Graduation

Upon completion of training, add yourself to the Incident Commander roster.

## Role: Deputy Incident Commander (Deputy)

### Description

A Deputy Incident Commander (Deputy) is a direct support role for the Incident Commander (IC). The Deputy enables the IC to focus on the problem at hand, rather than worrying about documenting steps or monitoring timers. The deputy supports the IC and keeps them focused on the incident.  As a Deputy, you will be expected to take over command from the IC if they request it.

### Duties

1. Bring up issues to the Incident Commander that may otherwise not be addressed (keeping an eye on timers that have been started, circling back around to missed items from a roll call, etc).
1. Be a "hot standby" Incident Commander, should the primary need to either transition to a SME, or otherwise have to step away from the IC role.
1. Manage the incident call, and be prepared to remove people from the call if instructed by the Incident Commander.
1. Monitor the status of the incident, and notify the IC if/when the incident escalates in severity level.
1. Monitor timers:
    * track how long the incident has been running
    * notify the IC every X minutes so they can take actions (_e.g._, "IC, be advised the incident is now at the 10 minute mark.")
1. Monitor task deadlines (e.g., "IC, be advised the timer for [TEAM]'s investigation is up.")

### Training

* Read and understand the incident response plan, including the roles and playbooks.

#### Prerequisites

* Be trained as an [Incident Commander](#role-incident-commander-ic).

## Role: Scribe

### Description

A Scribe documents the timeline of an incident as it progresses, and makes sure all important decisions and data are captured for later review.  The Scribe should focus on the incident file, as well as follow-up items for later action.

### Duties

1. Ensure the incident call is being recorded.
1. Note in chat and in the file timelines: important data, events, and actions, as they happen. Specifically:
    * Key actions as they are taken
    * Status reports when one is provided by the IC
    * Any key call-outs either during the call or at the ending review
1. Update the chat with who the IC is, who the Deputy is, and that you're the scribe (if not already done).

Scribing is more art than science. The objective is to keep an accurate record of important events that occurred, Use your judgement and experience. But here are some general things you most definitely want to capture as scribe.

* The result of any polling decisions.
* Any followup items that are called out as "We should do this..", "Why didn't this?..", etc.

### Training

Read and understand the incident response plan, including the roles and playbooks.

#### Prerequisites

* Excellent verbal and written **communication skills**.
* Anyone can act as a scribe during an incident, and are chosen by the Incident Commander at the start of the call.
* Typically the Deputy will act as the Scribe

#### Training Process

* Read the incident response plan, including all roles and playbooks.
* _OPTIONAL:_ Parallel the actions of a scribe during an incident or exercise, and seek feedback from the actual Scribe and Incident Commander.

## Role: Subject Matter Expert (SME)

### Description

A Subject Matter Expert (SME) is a domain expert or designated owner of a team, component, or service (an "area").  You are there to support the incident commander in identifying the cause of the incident, suggesting and evaluation investigation, remediation, and communication actions, and following through on them as tasked.

### Duties

1. Diagnose common problems within your area of expertise.
1. Rapidly fix issues found during an incident.
1. Concise communication:
    * Condition: What is the current state of your area? Is it healthy or not?
    * Actions: What actions need to be taken if your area is not in a healthy state?
    * Needs: What support do you need need to perform an action?
1. Participate in the investigation, remediation, and/or communication phases of the response.
1. Announce all suggestions to the incident commander, it is their decision on how to proceed, do not follow any actions unless told to do so.

If you are on-call for any team, you may be paged for an incident and will be expected to respond as a subject matter expert (SME) for your team, component, or service.  Anyone who is considered a "domain expert" can act as a SME for an incident. Typically the team's primary on-call will act as the SME for that team.

#### Prepare for On-Call Period

1. Be prepared, by having already familiarized yourself with our incident response policies and procedures.
1. Make sure you have set up your alerting methods in accordance with our on-call procedure.
1. Check you can join the incident call. You may need to install a browser plugin.
1. Be aware of your upcoming on-call time and arrange swaps around travel, vacations, appointments, etc.
1. If you are an Incident Commander, make sure you are not on-call for your team at the same time as being on-call as Incident Commander.

#### During On-Call Period

1. Have your laptop and Internet with you at all times during your on-call period (office, home, a MiFi, a phone with a tethering plan, etc).
1. If you have important appointments, you need to get someone else on your team to cover that time slot in advance.
1. When you receive an alert for an incident, you are expected to join the incident call and chat as quickly as possible (within minutes).
1. You will be asked questions or given actions by the Incident Commander. Answer questions concisely, and follow all actions given (even if you disagree with them).
1. If you're not sure about something, bring in other SMEs from your team that can help.  **Never hesitate to escalate**, if necessary.
1. Do not blame.  This incident response process is completely blameless: blaming is counter productive and distracts from the problem at hand.  After-action review will identify places we can all improve.

### Training

* Read and understand the incident response plan, including the roles and playbooks.

## Role: Liaison

### Description

Liaisons interact with other teams or stakeholders, outside the incident response team.  These often include:

* External Liaison: responsible for interacting with customers, either directly, or via public communication.
* Internal Liaison: responsible for interacting with internal stakeholders. Whether it's notifying an internal team of the incident, or mobilizing additional responders within the organization.

### Duties

#### External or Customer Liaison

1. Post any publicly facing messages regarding the incident (Twitter, etc).
1. Notify the IC of any customers or media coverage reporting affects of the incident.
1. Provide customers with the external message from the post-mortem once it is completed.
1. Contact or interact with external stakeholders such as vendors, partners, law enforcement, _etc._
1. **Do not** feel responsible for creating every message: work with the Incident Commander and other stakeholders.
1. As appropriate, keep customers informed during an incident.
1. Act as a voice for our customers to the Incident Commander, as this is useful for IC decision making.
1. Gaining message approval after you have crafted the public message: copy the message into chat and wait for verbal/written confirmation from the IC before proceeding.

##### Tips for Public Messages

* Prepare a default message in advance that can be used for the initial update if the scope of the issue is unknown.
* Be honest. Do not lie or guess.
* Describe our progress in resolving the incident.
  * _"We are aware of an incident..."_
  * _"We are investigating delayed notifications..."_
  * _"A fix has been applied and is currently being deployed..."_
  * _"The issue has been resolved..."_
* Be clear about how the incident is affecting customers. This is the primary piece of information customers will care about.
* Provide workarounds customers can use until the incident is resolved.
* Don't estimate resolution times.
* Provide the appropriate level of detail.

#### Internal Liaison

1. Page SME's or other on-call personnel as instructed by the Incident Commander.
1. Notify or mobilize other teams within the organization (e.g. Finance, Legal, Marketing), as instructed by the Incident Commander.
1. Track and anticipate SMEs on the call.
1. Interact with stakeholders and provide status updates as necessary.
1. Interact with internal stakeholders to answer their questions, to keep the primary call distraction free.
1. Provide regular status updates to the executive team, giving an executive summary of the current status.

### Training

Read and understand the incident response plan, including the roles and playbooks.

#### Prerequisites

* Excellent verbal and written **communication skills**.
* _OPTIONAL:_ Customer support training.
* _OPTIONAL:_ Corporate communication or marketing training.

# Conduct an After Action Review (AAR)

1. Schedule an After Action Review (AAR) meeting within 5 business days and invite the attendees listed at ir.acme.tld/aar/attendees.  Always include the following:
    * The incident commander.
    * Service owners involved in the incident.
    * Key engineer(s)/responders involved in the incident.
1. Designate an AAR owner who will investigate the incident in advance of the meeting to prepare, looking into the incident process itself including reviewing notes and reports.

## Conduct the AAR Meeting

Document answers to the following key questions:

1. **What happened?** Create a timeline, supported with data or other artifacts. **Avoid blame. Find facts.**
1. **What was supposed to happen?**
    * Detail deviations from process, procedure, or best practice, including SME assessments.
    * Identify ways the incident could have been detected sooner, or responded to more effectively
1. **What were the root causes?** Find root cause to things that happened and to things that should have happened.
1. **How can we improve?** Capture action items _with assignees and due dates_.  Consider:
    * Stop: what should we stop doing?
    * Start: what should we start doing?
    * Continue: what should we keep doing?

## Communicate AAR Status and Results

The AAR owner, in coordination with the Internal Liaison, will  communicate the status of the AAR (see below)

### Status Descriptions

| Status | Description |
|-|-|
| **Draft** | AAR investigation is still ongoing |
| **In Review** | AAR investigation has been completed, and is ready to be reviewed during the AAR meeting. |
| **Reviewed** | AAR meeting is over and the content has been reviewed and agreed upon.<br>If there are additional "External Messages", the communications team will take action to prepare. |
| **Closed** | No further actions are needed on the AAR (outstanding issues are tracked in tickets).<br>If no "External Messages", skip straight to this once the meeting is over.<br>If there are additional "External Messages", communications team will update AAR Closed once sent. |

Communicate the results of the AAR internally and finalize the AAR documentation.

# About

This template was developed by the team at [Counteractive Security](https://www.counteractive.net), to help all organizations get a good start on a concise, directive, specific, flexible, and free incident response plan.  Build a [plan you will actually use](https://www.counteractive.net/posts/an-ir-plan-you-will-use/) to respond effectively, minimize cost and impact, and get back to business as soon as possible.

## License

This template is provided under the Apache License, version 2.0.  You can view the source code for this plan at https://github.com/counteractive.

## Instructions

Customize this plan template for your own organization.  Instructions are available in the project's [README](https://github.com/counteractive).  For professional assistance with incident response, or with customizing, implementing, or testing your plan, please contact us by [email](mailto:support@counteractive.net) or [phone](tel:+18889255765).

## References and Additional Reading

* [NIST Computer Security Incident Handling Guide](http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-61r2.pdf) (NIST)
* [CERT Societe Generale Incident Response Methodologies](https://github.com/certsocietegenerale/IRM/tree/master/EN)
* [NIST Cybersecurity Framework](https://www.nist.gov/cyberframework)
* [Incident Handler's Handbook](https://www.sans.org/reading-room/whitepapers/incident/incident-handlers-handbook-33901) (SANS)
* [Responding to IT Security Incidents](https://technet.microsoft.com/en-us/library/cc700825.aspx) (Microsoft)
* [Defining Incident Management Processes for CSIRTs: A Work in Progress](http://resources.sei.cmu.edu/library/asset-view.cfm?assetid=7153) (CMU)
* [Creating and Managing Computer Security Incident Handling Teams (CSIRTS)](https://www.first.org/conference/2008/papers/killcrece-georgia-slides.pdf) (CERT)
* [Incident Management for Operations](http://shop.oreilly.com/product/0636920036159.do) (Rob Schnepp, Ron Vidal, Chris Hawley)
* [_Incident Response & Computer Forensics, Third Edition_](http://a.co/cUkFzMh) (Jason Luttgens. Matthew Pepe. Kevin Mandia)
* [_Incident Response_](http://shop.oreilly.com/product/9780596001308.do) (Kenneth R. van Wyk, Richard Forno)
* [The Checklist Manifesto](http://atulgawande.com/book/the-checklist-manifesto/) (Atul Gawande)
* [The Field Guide to Understanding Human Error](https://www.amazon.com/Field-Guide-Understanding-Human-Error/dp/0754648265) (Sidney Dekker)
* [Normal Accidents: Living with High-Risk Technologies](https://www.amazon.com/Normal-Accidents-Living-High-Risk-Technologies/dp/0691004129) (Charles Perrow)
* [Site Reliability Engineering](https://landing.google.com/sre/book.html) (Google)
* [Debriefing Facilitation Guide](http://extfiles.etsy.com/DebriefingFacilitationGuide.pdf) (Etsy)
* [Every Minute Counts: Leading Heroku's Incident Response](https://www.heavybit.com/library/video/every-minute-counts-coordinating-herokus-incident-response/) (Blake Gentry)
* [Three Analytical Traps in Accident Investigation](https://www.youtube.com/watch?v=TqaFT-0cY7U) (Dr. Johan Bergström)
* [US National Incident Management System (NIMS)](https://www.fema.gov/national-incident-management-system) (FEMA)
* [Informed's NIMS Incident Command System Field Guide](https://www.amazon.com/gp/product/1284038408) (Michael J. Ward)
* [Advanced PostMortem Fu and Human Error 101 (Velocity 2011)](http://www.slideshare.net/jallspaw/advanced-postmortem-fu-and-human-error-101-velocity-2011)
* [Blame. Language. Sharing.](http://fractio.nl/2015/10/30/blame-language-sharing/)

