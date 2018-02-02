# About

This template was developed by the team at [Counteractive Security](https://www.counteractive.net), to help all organizations get a good start on a concise, directive, specific, flexible, and free incident response plan.  Build a [plan you will actually use](https://www.counteractive.net/posts/an-ir-plan-you-will-use/) to respond effectively, minimize cost and impact, and get back to business as soon as possible.

# Instructions

## Download or fork this template
The layout is as follows:

  * `during.md`: the core of the plan, actions taken during an incident response.
  * `playbooks/`: a folder containing playbooks with investigation, remediation, and communication suggestions for specific incidents.  Create playbooks for any incidents that are highly likely or highly damaging for your organization.  `playbooks/index.md` contains the playbook section header content, and each playbook should follow the convention `playbooks/playbook-[THREAT].md`.
  * `roles/`: a folder containing descriptions of each role in the plan, along with duties and training notes.  `index.md` contains the roles section header content, and each role should follow the convention `playbooks/role-[ORDER]-[NAME].md`.
  * `after.md`: the guide to after-action review (_a.k.a._, hotwash, debrief, or post-mortem)---actions taken after an incident response.
  * `about.md`: a footer containing information about the plan/template as a whole.

## Find and replace template variables that `LOOK_LIKE_THIS`

These should be discernable from context, but the following is a non-comprehensive reference:

Variable                             | Details                             | Example
------------------------------------ | ----------------------------------- | -------
`COMPANY_NAME`                       | The name of your organization       | Acme, Inc.
`AUTHOR_NAME`, `AUTHOR_EMAIL`        | Name and email of plan author       | Chris, contact@counteractive.net
`REVISION_NUMBER`, `RELEASE_DATE`    | Document control metadata           | 1, 1 Jan 2018
`REVIEW_DATE`                        | Date someone last reviewed the plan | 1 Feb 2018
`TEST_DATE`                          | Date you last tested the plan       | 15 Jan 2018
`RESPONSE_CHAT`                      | URL or reference to IR chat program | chat.acme.tld/codename
`RESPONSE_CALL`                      | Call bridge number or URL           | 555-HACK, webex.acme.tld/codename
`ALTERNATIVE_EMAIL`                  | Description/URL for alternate email | O365 at ir.acme.tld/othermail
`ORGANIZATION_DOMAIN`                | Domain name for your organization   | acme.tld
`INCIDENT_COMMANDER_PAGER`           | Number or URL to page Commander(s)  | 555-PAGE, ir.acme.tld/ic-page
`INCIDENT_COMMANDER_ROSTER`          | URL/path to Commander roster/list   | ir.acme.tld/ic-roster
`SECURITY_TEAM_ROSTER`               | As above, for security team         | ir.acme.tld/sec-roster
`TEAM_SME_ROSTER`                    | As above, for SMEs                  | ir.acme.tld/sme-roster
`EXECTIVE_ROSTER`                    | As above, for executive team        | ir.acme.tld/exec-roster
`INCIDENT_COMMANDER_RESPONSE_SLA`    | Time to wait for on-duty IC on call | 15 minutes
`UPDATE_FREQUENCY`                   | Time between scheduled updates      | 4 hours
`INCIDENT_FILE_LOCATION`             | URL/path to incident file        | ir.acme.tld/files/codename
`CRITICAL_INFORMATION_LIST_LOCATION` | URL/path to critical information list, data you want to protect | ir.acme.tld/cil
`CRITICAL_ASSET_LIST_LOCATION`       | URL/path to critical asset list, systems you want to protect  | ir.acme.tld/cal
`ASSET_MGMT_DB_LOCATION`             | URL/path to asset management DB     | ir.acme.tld/assets
`NETWORK_MAP_LOCATION`               | URL/path to network map             | ir.acme.tld/netmap
`SIEM_CONSOLE_LOCATION`              | URL to SIEM                         | siem.acme.tld
`LOG_AGGREGATOR_CONSOLE`             | URL to log aggregator               | elk.acme.tld
`LIVE_RESPONSE_TOOL`                 | Name/URL of live response tool      | [ir-rescue](https://github.com/diogo-fernan/ir-rescue)
`MEMORY_COLLECTION_TOOL`             | Name/URL of memory collection tool  | [rekall](http://www.rekall-forensic.com/)
`DISK_IMAGE_TOOL`                    | Name/URL of disk imaging tool       | [ftk imager](http://www.forensicswiki.org/wiki/FTK_Imager)
`INCIDENT_REPORT_TEMPLATE`           | URL/path to IR report template      | ir.acme.tld/report/template
`INCIDENT_REPORT_RECIPIENTS`         | URL/path to report recipient list   | ir.acme.tld/report/recipients
`COMPLIANCE_TEAM`                    | Compliance team name                | the legal team, legal@acme.tld
`COMMUNICATIONS_TEAM`                | Communications team name            | the marketing team, marketing@acme.tld
`EXECUTIVE_TEAM`                     | Executive team name                 | the front office, bosses@acme.tld
`LEGAL_TEAM`                         | Legal team name                     | the legal team, legal@acme.tld
`LOCAL_LE_CONTACT`                   | Local law enforcement contact info  | police@local.gov.tld
`FBI_CONTACT`                        | FBI contact info                    | 555-FEDS, suits@local.office.fbi
`INCIDENT_RESPONSE_VENDOR`           | Vendor for IR and infosec support   | [Counteractive Security](https://www.counteractive.net)
`PUBLIC_RELATIONS_VENDOR`            | Vendor for PR support               | pr.firm.tld
`INSURANCE_VENDOR`                   | (Cyber) insurance provider          | geico.com
`ISAC_CONTACT`                       | Industry ISAC contact info          | 555-ISAC

If you don't have the things referenced in the variables, consider fixing that.  **Especially** the critical information list (data you want to protect) and critical asset list (systems you want to protect).

## Customize
1. Review all the `TODO` prompts for likely areas to customize, if desired.  Delete them if no changes are required.
1. Add any roles or playbooks relevant to your organization. These can also be added over time.
1. Customize anything else!  Whatever you feel is most effective for your organization.

## Build
Run whichever portions you like through [pandoc](https://pandoc.org/installing.html) to create your format of choice, or use the markdown files with [mkdocs](http://www.mkdocs.org/), [hugo](https://gohugo.io/), or countless other platforms.

### Response Plan Example
```bash
cat during.md \
    ./playbooks/index.md ./playbooks/playbook-*.md \
    ./roles/index.md ./roles/role-*.md \
    about.md \
    | pandoc --toc --toc-depth=3 --standalone -o ./public/response-plan.html
```

## Contact Us
For professional assistance with incident response, or with customizing, implementing, or testing your plan, please contact us at support@counteractive.net or [(888) 925-5765](tel:+18889255765).

# License
This template is provided under the Apache License, version 2.0.  See the LICENSE and NOTICE files for additional information.

# References and Additional Reading
* [Awesome Incident Response](https://github.com/meirwah/awesome-incident-response)
* [NIST Computer Security Incident Handling Guide](http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-61r2.pdf) (NIST)
* [CERT Societe Generale Incident Response Methodologies](https://github.com/certsocietegenerale/IRM/tree/master/EN)
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
* [PagerDuty IR Docs](https://response.pagerduty.com/)
* [NIST 800-61r2](http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-61r2.pdf)
* [NIST CSF](https://www.nist.gov/cyberframework)
* [CSO Online 10 Steps](https://www.csoonline.com/article/3203705/security/10-steps-for-a-successful-incident-response-plan.html) (June 2017) and [CSO Online 9 Steps](https://www.csoonline.com/article/3099684/disaster-recovery/9-steps-for-a-successful-incident-response-plan.html) (July 2016)
* [SecurityMetrics blog 6 Steps to Making an IR Plan](http://blog.securitymetrics.com/2017/01/6-steps-to-making-incident-response-plan.html)
* [Cal Berkeley IR Plan Development](https://security.berkeley.edu/incident-response-planning-guideline)
* [EPA IR Plan](https://www.epa.gov/sites/production/files/2016-01/documents/cio_2150-p-08.2.pdf)
* [incidentresponse.com playbooks](https://www.incidentresponse.com/playbooks/)

# In Progress
- [ ] After Action, lessons learned, process improvement
- [ ] Recovery
- [ ] Measures and Metrics
- [ ] Business priorities
- [ ] Testing procedure
- [ ] Communication and escalation tree, including executives
- [ ] Finance and budget
