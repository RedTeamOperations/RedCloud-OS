# RedCloud OS

![Logo](https://github.com/RedTeamOperations/RedCloud-OS/blob/main/Logo.png)

## Intro

**RedCloud OS** is a [Debian](https://www.debian.org/) based Cloud Adversary Simulation Operating System for Red Teams to assess the security of leading Cloud Service Providers (CSPs). It includes tools optimized for adversary simulation tasks within [Amazon Web Services (AWS)](https://aws.amazon.com/), [Microsoft Azure](https://azure.microsoft.com/en-us), and [Google Cloud Platform (GCP)](https://cloud.google.com/).

### Credentials
**Username** --> cwl


**Password** --> redcloud

### Specs
**Platform** --> VMware Workstation [VMware player can also work, although we have not tested yet]


**RAM** --> 8GB+ recommended; 4GB Minimum


**No. of cores** --> 4+ Cores recommended; 2 Minimum

**Getting Started with Cloud Red Team PDF** --> [Getting Started with Cloud Red Team PDF](https://github.com/RedTeamOperations/RedCloud-OS/blob/main/build-scripts/Getting%20Started%20with%20Cloud%20Red%20Team.pdf)

## Available Tools

### AWS
- [AWSCLI](https://github.com/aws/aws-cli/tree/v2)
- [AWS Consoler](https://github.com/NetSPI/aws_consoler)
- [AWS Escalate](https://github.com/RhinoSecurityLabs/Security-Research/blob/master/tools/aws-pentest-tools/aws_escalate.py)
- [CloudCopy](https://github.com/Static-Flow/CloudCopy)
- [CloudJack](https://github.com/prevade/cloudjack)
- [CloudMapper](https://github.com/duo-labs/cloudmapper)
- [CredKing](https://github.com/ustayready/CredKing)
- [Endgame](https://github.com/hoodoer/endgame)
- [Pacu](https://github.com/RhinoSecurityLabs/pacu)
- [Redboto](https://github.com/ihamburglar/Redboto)
- [weirdAAL](https://github.com/carnal0wnage/weirdAAL)

### Azure
- [AADCookieSpoof](https://github.com/jsa2/aadcookiespoof)
- [AADInternals](https://github.com/Gerenios/AADInternals)
- [AZ CLI](https://github.com/Azure/azure-cli)
- [AzureAD](https://github.com/Azure/azure-docs-powershell-azuread)
- [AzureHound](https://github.com/BloodHoundAD/AzureHound)
- [BloodHound](https://github.com/BloodHoundAD/BloodHound)
- [DCToolbox](https://github.com/DanielChronlund/DCToolbox)
- [MFASweep](https://github.com/dafthack/MFASweep)
- [MicroBurst](https://github.com/NetSPI/MicroBurst)
- [Microsoft365 devicePhish ](https://github.com/optiv/Microsoft365_devicePhish)
- [MS Graph](https://github.com/microsoftgraph/msgraph-sdk-powershell)
- [PowerUpSQL](https://github.com/NetSPI/PowerUpSQL)
- [ROADtools](https://github.com/dirkjanm/ROADtools)
- [TeamFiltration](https://github.com/Flangvik/TeamFiltration)
- [TokenTactics](https://github.com/rvrsh3ll/TokenTactics)

### GCP
- [Gcloud CLI](https://cloud.google.com/sdk/gcloud/)
- [GCPBucketBrute](https://github.com/RhinoSecurityLabs/GCPBucketBrute)
- [GCP Delegation](https://gitlab.com/gitlab-com/gl-security/threatmanagement/redteam/redteam-public/gcp_misc)
- [GCP Enum](https://gitlab.com/gitlab-com/gl-security/threatmanagement/redteam/redteam-public/gcp_enum)
- [GCP Firewall Enum](https://gitlab.com/gitlab-com/gl-security/threatmanagement/redteam/redteam-public/gcp_firewall_enum)
- [GCP IAM Collector](https://github.com/marcin-kolda/gcp-iam-collector)
- [GCP IAM Privilege Escalation](https://github.com/RhinoSecurityLabs/GCP-IAM-Privilege-Escalation)
- [GCPTokenReuse](https://github.com/RedTeamOperations/GCPTokenReuse)
- [GoogleWorkspaceDirectoryDump](https://github.com/RedTeamOperations/GoogleWorkspaceDirectoryDump)
- [Hayat](https://github.com/DenizParlak/hayat)


### Multi Cloud
- [Cartography](https://github.com/lyft/cartography)
- [CCAT](https://github.com/RhinoSecurityLabs/ccat)
- [CloudBrute](https://github.com/0xsha/CloudBrute)
- [CloudEnum](https://github.com/initstring/cloud_enum/)
- [Cloud Service Enum](https://github.com/NotSoSecure/cloud-service-enum)
- [Evilginx2](https://github.com/kgretzky/evilginx2)
- [Gitleaks](https://github.com/gitleaks/gitleaks)
- [Impacket](https://github.com/fortra/impacket)
- [Leonidas](https://github.com/WithSecureLabs/leonidas)
- [Modlishka](https://github.com/drk1wi/Modlishka)
- [Mose](https://github.com/master-of-servers/mose)
- [PurplePanda](https://github.com/carlospolop/PurplePanda)
- [Responder](https://github.com/lgandx/Responder)
- [ScoutSuite](https://github.com/nccgroup/ScoutSuite)
- [SkyArk](https://github.com/cyberark/SkyArk)
- [Zphisher](https://github.com/htr-tech/zphisher)

## Getting Started

### Download
- Step 1 --> Download the 7z archive from **_[here](https://linktr.ee/redcloudos)_**
- Step 2 --> Unzip the archive
- Step 3 --> Open **VMware Workstation** > **File** > **Open (Ctrl +  O)** > Browse to extracted folder and select **RedCloud OS.ovf**
- Step 4 --> Click **Import**

### Usage

The OS setup is simple and tools are divided by the CSPs. Inside each CSP, there are three sub-categories i.e, **Enumeration**, **Exploitation**, and **Post Exploitation**. For multitasking and ease-of-use, **Terminator** is set as the default terminal. 

Each tool can be launched in 4 different ways as follows:-
1. By clicking their menu launchers
2. Directly executing `startup.sh` script in respective `/opt/` folder
3. Executing startup script in `/usr/local/bin`
4. TAB autocomplete to search binary using tool name


**Note:** PowerShell tools start with capital letters and all others start with small letters. In case of any confusion, feel free to checkout `/usr/local/bin`.

That being said, there are some launchers like **Impacket** and **Redboto** which due to lots of scripts are only listing the scripts and folder path. In the next release, we'll be including proper launchers for these as well as as for any similar tool.

#### Environmental Variables Setup

We have provided some examples of environmental variables required for certain tools to work. These variables however are not exhaustive and more can be needed on case-to-case basis.

##### AWS
```bash
export AWS_ACCESS_KEY_ID=<access_key_id>
export AWS_SECRET_ACCESS_KEY=<access_key>
export AWS_DEFAULT_REGION=<region>
```
##### Azure
```bash
export AZURE_CLIENT_ID = <app-id>
export AZURE_TENANT_ID = <tenant-id>
export AZURE_CLIENT_SECRET = <app-secret>

```
##### GCP
```bash
export GOOGLE_APPLICATION_CREDENTIALS = <Service Account Json File Path>
```

#### Aliases

During the development procedure, few aliases were used for the sake of convenience. These aliases are still in the user account and can be used.
```bash
alias c='clear'
alias a='nano ~/.bash_aliases'
alias s='source ~/.bash_aliases'
alias v='python3 -m venv venv && source venv/bin/activate'
alias d='deactivate'
alias p='pip3 install -r requirements.txt'
alias ll='ls -la'
```

## Building from scratch

1. Download base OS i.e, [Parrot OS Architect Edition 5.3](https://parrotsec.org/download/?version=architect) and proceed with installation in VMware/VirtualBox.
2. During VM installation, when prompted to choose components, select only Mate Desktop Environment and proceed.
3. Once installation is finished, launch the VM and clone this repo using `git clone https://github.com/RedTeamOperations/RedCloud-OS.git`
4. Navigate to `build-scripts` folder and make scripts executable.
5. First execute [uninstall.sh](https://github.com/RedTeamOperations/RedCloud-OS/blob/main/build-scripts/uninstall.sh) and wait for script to finish.
6. (_Optional_) Then execute [hold.sh](https://github.com/RedTeamOperations/RedCloud-OS/blob/main/build-scripts/hold.sh) and wait for script to finish.
7. Finally execute [install.sh](https://github.com/RedTeamOperations/RedCloud-OS/blob/main/build-scripts/install.sh) and wait for script to finish.
8. (_Optional_) Use `Menu Editor` to create applications launchers.
9. (_Optional_) Use `Dconf-Editor` to customize icons.
10. (_Optional_) Use `Grub Customizer` to modify Grub settings.

## Learning Materials

1. **AWS**: ![AWS Cloud Red Team Specialist [CARTS]](https://cyberwarfare.live/product/aws-cloud-red-team-specialist-carts/)
2. **GCP**: ![Google Cloud Red Team Specialist [CGRTS]](https://cyberwarfare.live/product/google-cloud-red-team-specialist-cgrts/)
3. **Multi-Cloud**:
    - ![Multi-Cloud Red Team Analyst [MCRTA]](https://cyberwarfare.live/product/multi-cloud-red-team-analyst-mcrta/)
    - ![Hybrid Multi-Cloud Red Team Specialist [CHMRTS]](https://cyberwarfare.live/product/hybrid-multi-cloud-red-team-specialist-chmrts/)

## Future Roadmap
- [ ] [**Under Development**] Support for Apple Silicon Architecture

## Feedback

 RedCloud OS is an ongoing piece of development and your feedbacks/suggestions will help us enhance it furthermore. Feel free to either create an [**Issue**](https://github.com/RedTeamOperations/RedCloud-OS/issues) or email us at **info@cyberwarfare.live** with the subject "**RedCloud OS**".

## Acknowledgements

- [Parrot Security](https://www.parrotsec.org/) for providing the Base OS
- Creators/Developers/Contributors/Maintainers of all Open Source Components used within RedCloud OS
