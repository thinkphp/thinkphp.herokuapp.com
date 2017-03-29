---
layout: post
title: Security Challenges
---

a.k.a. "**How the sausage gets made"**

Cyber security is being widely accepted by companies around the world as
a mean for defending their precious data and try to find the best cyber
security experts on the market. But HR often turns a blind eye on how
security experts become *good* security experts: can you imagine a cop
who's not able to put himself in a thief's shoes? Good security experts
usually have a deep understanding on how an attack is carried out and
they often have to try and attack their own systems to check for
vulnerabilities. How does a security enthusiast become a security
expert? More often than not, they resort to borderline legal means,
choosing random targets to hone their skills (that's mostly what
happened in the 90s / early 2000s, since a widespread company security
culture didn't exists), but over the last years a plethora of CTF sites
came to life, allowing security enthusiast to try and attack a system
while staying in a safe and legal environment.

### Online Challenges

Some sites offer online security challenges (usually for Web Security)
where attacks are carried out in sandbox so that they don't affect the
host system.

-   [HackThisSite](https://www.hackthissite.org) Challenges are
    presented as *missions*, with some fun background that helps the
    user to stay motivated on the task, but they are usually not clean
    cut and you have to find out on your own which are the best tools to
    complete the mission.
-   [RingZer0 Team](https://ringzer0team.com)Challenges are split in
    categories (shellcoding, javascript, binary, etc.) and get
    gradually harder.
-   [W3Challs](https://w3challs.com/) Challenges are split in categories
    as in RingZer0Team. This particular Challenge site asks his user not
    to post any solution online (except for the "afterwards" forum, as
    they call it, only accessible to users who completed that specific
    challenge), but you get some help from the Help forum of each
    challenge (spoiler-free).
-   [OverTheWire Wargames](http://overthewire.org/wargames/) Each
    Wargame has his own theme (Natas is WebSec-based, Bandit is for unix
    shell commands, etc.) and each level of a wargame contains the
    password for the next level.

### Offline Challenges

Instead of offering online challenges, developers often release source
codes to be deployed on a local stack (usually LAMP). Be careful!

-   [Mutillidae
    2](https://www.owasp.org/index.php/OWASP_Mutillidae_2_Project) Being
    an OWASP project, it mainly focuses on the **"OWASP Top 10 Web
    Application Security Risks"** guide; challenges are then split by
    Security Risk (*e.g.* A1 - Injection) *Languages: PHP + MySQL*
-   [DVWA (Damn Vulnerable Web Application)](http://www.dvwa.co.uk)
    Challenges are split by type (Brute Force, Command Execution, etc.)
    and can be tweaked to be harder or easier by selecting an
    appropriate *Security Level *parameter (can be *low*,
    *medium *or *high*). Source code can be
    found [here](https://github.com/ethicalhack3r/DVWA)*Languages: PHP +
    MySQL*

### Virtual Machines

Prebuilt virtual machines to be deployed on a local hypervisor (usually
VirtualBox or VMware)

-   [Metasploitable2](https://community.rapid7.com/docs/DOC-1875) An
    Ubuntu based VM designed to be vulnerable and exploitable using the
    **Metasploit** framework.
-   [VulnHub](https://www.vulnhub.com/) A website containing multiple
    vulnerable-by-design VMs. Environments are usually challenge
    specific, a mission is stated in the download page and the user has
    to try and carry it out on the downloaded VM.
-   [Exploit Exercises](https://exploit-exercises.com/) There's a
    smaller number of VMs, each with its own theme and challenges
    (Nebula is for simple to intermediate privilege escalation,
    Protostar and Fusion are for memory exploits), but in each VM you
    can find different levels, much like in Wargames.
-   [WebSec Tutorial](https://github.com/AvalZ/websec_tutorial) Also
    known as "shameless self-advertising", this is my homemade Web
    Security gym. (Suggestions and contributions are welcomed

\[ TO BE CONTINUED \]
