# Amethyst (iOS) nhx9605

<p align="center">

<a href="README_EN.md">
<img src="https://img.shields.io/badge/Language-English-blue?style=for-the-badge">
</a>

<a href="README.md">
<img src="https://img.shields.io/badge/语言-中文-red?style=for-the-badge">
</a>

</p>

<p align="center">

<a href="https://github.com/nhx100218/Amethyst-iOS-nhx9605/actions/workflows/development.yml">
<img src="https://github.com/nhx100218/Amethyst-iOS-nhx9605/actions/workflows/development.yml/badge.svg?branch=main">
</a>

<a href="https://github.com/nhx100218/Amethyst-iOS-nhx9605/releases">
<img src="https://img.shields.io/github/downloads/nhx100218/Amethyst-iOS-nhx9605/total?label=Downloads&style=flat">
</a>

<a href="https://github.com/nhx100218/Amethyst-iOS-nhx9605/releases/">
<img src="https://img.shields.io/github/v/release/nhx100218/Amethyst-iOS-nhx9605?style=flat">
</a>

<a href="https://raw.githubusercontent.com/nhx100218/Amethyst-iOS-nhx9605/main/LICENSE">
<img src="https://img.shields.io/github/license/nhx100218/Amethyst-iOS-nhx9605?style=flat">
</a>

<img src="https://img.shields.io/github/last-commit/nhx100218/Amethyst-iOS-nhx9605?color=c78aff&label=Last%20Commit&style=flat">

</p>


## 🌟 Remastered Core Highlights
Optimized and adapted based on the official Amethyst, focusing on iOS/iPadOS experience enhancement, core features include:
- **Coming soon**: (In development, coming soon)

> ⚠️ Note: If you need the official Android code, please go to [Amethyst-Android](https://github.com/AngelAuraMC/Amethyst-Android).


## 🚀 Quick Start Guide
The [Amethyst wiki](https://wiki.angelauramc.dev/wiki/getting_started/INSTALL.html#ios) has extensive documentation on how to install, set up, and play! For those who wish to install quickly, here's the basics:

### 📱 Device Requirements
| Type | System Version Requirements | Supported Device List |
|------------|-----------------------------|------------------------------------------------------------------------------|
| **Minimum** | iOS 14.0 and above | iPhone 6s+/iPad 5th gen+/iPad Air 2+/iPad mini 4+/All iPad Pro/iPod touch 7th gen |
| **Recommended** | iOS 14.5 and above (better experience) | iPhone XS+ (excluding XR/SE 2nd gen), iPad 10th gen+/Air 4th gen+/mini 6th gen+/iPad Pro (excluding 9.7 inch) |

> ⚠️ Key Reminder: Serious compatibility issues exist with iOS 14.0~14.4.2, **strongly recommended to upgrade to iOS 14.5+**; Supports iOS 17.x/iOS 18.x, but requires computer assistance for configuration, see [Official JIT Guide](https://wiki.angelauramc.dev/wiki/faq/ios/JIT.html#what-are-the-methods-to-enable-jit) for details; Supports iOS 26.x (called iOS 19.x in source code), but no special adaptation has been made, unpredictable issues may occur.


### 🔧 Sideload Preparation
Prioritize tools that support "permanent signing + automatic JIT", recommended by priority:
1. **TrollStore** (Preferred): Supports permanent signing, automatic JIT enablement, and memory limit increase, compatible with some iOS versions, download from [Official Repository](https://github.com/opa334/TrollStore)
2. **AltStore/SideStore** (Alternative): Requires periodic re-signing, initial setup requires computer/Wi-Fi; does not support "distribution certificate signing service", only compatible with "development certificate" (must include `com.apple.security.get-task-allow` permission to enable JIT)

> ⚠️ Security Tip: Only download sideloading tools and IPA from official/trusted sources; I am not responsible for device issues caused by unofficial software; Jailbroken devices support permanent signing, but daily jailbreaking is not recommended.


### 📥 Installation Steps
#### 1. Official Release (TrollStore Channel)
1. Go to [GitHub Actions page](https://github.com/nhx100218/Amethyst-iOS-nhx9605/actions) to download the TIPA installation package
2. Through the system "share menu", choose to open with TrollStore to automatically complete installation

#### 2. Official Release (AltStore/SideStore Channel)
1. Go to [GitHub Actions page](https://github.com/nhx100218/Amethyst-iOS-nhx9605/actions) to download the IPA installation package
2. (Normal installation steps)

### ⚡ Enable JIT (Required!)
JIT (Just-In-Time) is crucial for smooth game operation. iOS needs to enable it through the following tools, choose according to your environment:

| Tool | Requires External Device | Requires Wi-Fi | Auto Enable | Notes |
|--------------|------------|----------|----------|--------------------------|
| TrollStore | ❌ | ❌ | ✅ | Preferred, no additional action needed |
| AltStore | ✅ | ✅ | ✅ | Requires local network to run AltServer |
| SideStore | ✅ (First time) | ✅ (First time) | ❌ | Subsequent use requires no device/network |
| StikDebug | ✅ (First time) | ✅ (First time) | ✅ | Subsequent use requires no device/network |
| Jitterbug | ✅ (When VPN unavailable) | ✅ | ❌ | Requires manual trigger |
| Jailbroken Device | ❌ | ❌ | ✅ | System-level automatic support |


## 🙏 Contributors
Amethyst is amazing, and surprisingly stable, and it wouldn't be this way without the commmunity that helped and contribute to the project! Some notable names:
@crystall1nedev - Project manager, iOS port developer  
@khanhduytran0 - iOS port developer  
@artdeell  
@Mathius-Boulay  
@zhuowei  
@jkcoxson   
@Diatrus 


## 📦 Third-Party Components and Licenses
| Component Name | Purpose | License Type | Project Link |
|------------------------|--------------------------|--------------------------|--------------------------------------------------------------------------|
| Caciocavallo | Basic runtime framework | GNU GPLv2 | [GitHub](https://github.com/PojavLauncherTeam/caciocavallo) |
| jsr305 | Code annotation support | BSD 3-Clause | [Google Code](https://code.google.com/p/jsr-305) |
| Boardwalk | Core functionality adaptation | Apache 2.0 | [GitHub](https://github.com/zhuowei/Boardwalk) |
| GL4ES | Graphics rendering adaptation | MIT | [GitHub](https://github.com/ptitSeb/gl4es) |
| Mesa 3D Graphics Library | 3D graphics rendering core | MIT | [GitLab](https://gitlab.freedesktop.org/mesa/mesa) |
| MetalANGLE | Metal graphics interface adaptation | BSD 2.0 | [GitHub](https://github.com/khanhduytran0/metalangle) |
| MoltenVK | Vulkan interface translation | Apache 2.0 | [GitHub](https://github.com/KhronosGroup/MoltenVK) |
| openal-soft | Audio processing | LGPLv2 | [GitHub](https://github.com/kcat/openal-soft) |
| Azul Zulu JDK | Java runtime environment | GNU GPLv2 | [Official Website](https://www.azul.com/downloads/?package=jdk) |
| LWJGL3 | Java game interface | BSD-3 | [GitHub](https://github.com/PojavLauncherTeam/lwjgl3) |
| LWJGLX | LWJGL2 compatibility layer | License Unknown | [GitHub](https://github.com/PojavLauncherTeam/lwjglx) |
| DBNumberedSlider | UI sliding control | Apache 2.0 | [GitHub](https://github.com/khanhduytran0/DBNumberedSlider) |
| fishhook | Dynamic library adaptation | BSD-3 | [GitHub](https://github.com/khanhduytran0/fishhook) |
| shaderc | Vulkan shader compilation | Apache 2.0 | [GitHub](https://github.com/khanhduytran0/shaderc) |
| NRFileManager | File management utility class | MPL-2.0 | [GitHub](https://github.com/mozilla-mobile/firefox-ios) |
| AltKit | AltStore adaptation support | - | [GitHub](https://github.com/rileytestut/AltKit) |
| UnzipKit | Unzipping tool | BSD-2 | [GitHub](https://github.com/abbeycode/UnzipKit) |
| DyldDeNeuralyzer | Library verification bypass tool | - | [GitHub](https://github.com/xpn/DyldDeNeuralyzer) |
| MobileGlues | Third-party renderer | LGPL-2.1 | [GitHub](https://github.com/MobileGL-Dev/MobileGlues) |
| authlib-injector | Third-party authentication support | AGPL-3.0 | [GitHub](https://github.com/yushijinhun/authlib-injector) |
> Additional thanks: <br> [MCHeads](https://mc-heads.net) for providing Minecraft avatar services; <br> [Modrinth](https://modrinth.com) for providing Mod download services; <br> [BMCLAPI](https://bmclapidoc.bangbang93.com) for providing Minecraft download services.

