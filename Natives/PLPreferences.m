#import "LauncherPreferences.h"
#import "PLPreferences.h"
#import "UIKit+hook.h"
#import "config.h"
#import "utils.h"

@interface PLPreferences()
@end

@implementation PLPreferences

+ (id)defaultPrefForGlobal:(BOOL)global {
    // Preferences that can be isolated
    NSMutableDictionary<NSString *, NSMutableDictionary *> *defaults = @{
        @"general": @{
            @"check_sha": @YES,
            @"cosmetica": @YES,
            @"debug_logging": @(!CONFIG_RELEASE),
        }.mutableCopy,
        @"video": @{ // Video & Audio
            @"renderer": @"auto",
            @"resolution": @(100),
            @"max_framerate": @YES,
            @"performance_hud": @NO,
            @"fullscreen_airplay": @YES,
            @"silence_other_audio": @NO,
            @"silence_with_switch": @NO,
            @"allow_microphone": @NO
        }.mutableCopy,
        @"control": @{
            @"default_ctrl": @"default.json",
            @"control_safe_area": UIApplication.sharedApplication ? NSStringFromUIEdgeInsets(getDefaultSafeArea()) : @"",
            @"default_gamepad_ctrl": @"default.json",
            @"controller_type": @"xbox",
            @"hardware_hide": @YES,
            @"recording_hide": @YES,
            @"gesture_mouse": @YES,
            @"gesture_hotbar": @YES,
            @"disable_haptics": @NO,
            @"slideable_hotbar": @NO,
            @"press_duration": @(400),
            @"button_scale": @(100),
            @"mouse_scale": @(100),
            @"mouse_speed": @(100),
            @"virtmouse_enable": @NO,
            @"gyroscope_enable": @NO,
            @"gyroscope_invert_x_axis": @NO,
            @"gyroscope_sensitivity": @(100),
            // TouchController 相关默认值
            @"mod_touch_enable": @NO,
            @"mod_touch_mode": @0  // 0=禁用, 1=UDP, 2=静态库
        }.mutableCopy,
        @"java": @{
            @"java_homes": @{
                @"0": @{
                    @"1_16_5_older": @"8",
                    @"1_17_newer": @"17",
                    @"execute_jar": @"8"
                }.mutableCopy,
                @"8": @"internal",
                @"17": @"internal",
                @"21": @"internal"
            }.mutableCopy,
            @"java_args": @"",
            @"env_variables": @"",
            @"auto_ram": @(!getEntitlementValue(@"com.apple.private.memorystatus")),
            @"allocated_memory": [NSNumber numberWithFloat:roundf((NSProcessInfo.processInfo.physicalMemory / 1048576) * 0.25)]
        }.mutableCopy,
        @"internal": @{
            @"isolated": @NO,
            @"latest_version": [NSDictionary new]
        }.mutableCopy
    }.mutableCopy;

    if (global) {
        // Preferences that cannot be isolated
        NSDictionary *general = @{
            @"game_directory": @"default",
            @"hidden_sidebar": @(realUIIdiom == UIUserInterfaceIdiomPhone),
            @"appicon": @"AppIcon-Light"
        };
        [defaults[@"general"] addEntriesFromDictionary:general];

        defaults[@"java"][@"manage_runtime"] = @""; // stub
        defaults[@"debug"] = @{
            @"debug_always_attached_jit": @NO,
            @"debug_skip_wait_jit": @NO,
            @"debug_hide_home_indicator": @NO,
            @"debug_ipad_ui": @(realUIIdiom == UIUserInterfaceIdiomPad),
            @"debug_auto_correction": @YES,
            @"debug_show_layout_bounds": @NO,
            @"debug_show_layout_overlap": @NO
        }.mutableCopy;
        defaults[@"warnings"] = @{
            @"local_warn": @YES,
            @"mem_warn": @YES,
            @"auto_ram_warn": @YES,
            @"limited_ram_warn": @YES
        }.mutableCopy;
        // TODO: isolate this or add account picker into profile editor(?)
        defaults[@"internal"][@"selected_account"] = @"";
    }

    return defaults;
}

// 其余方法保持不变
// ...（以下代码与原文件完全相同，省略以节省篇幅，实际使用时请保留全部内容）

@end
