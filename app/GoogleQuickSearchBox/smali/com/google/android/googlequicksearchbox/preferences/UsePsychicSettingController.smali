.class public Lcom/google/android/googlequicksearchbox/preferences/UsePsychicSettingController;
.super Lcom/google/android/googlequicksearchbox/preferences/SettingsControllerBase;
.source "UsePsychicSettingController.java"


# instance fields
.field private final mConfig:Lcom/google/android/googlequicksearchbox/Config;


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/SearchSettings;Lcom/google/android/googlequicksearchbox/Config;)V
    .locals 0
    .parameter "settings"
    .parameter "config"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/preferences/SettingsControllerBase;-><init>(Lcom/google/android/googlequicksearchbox/SearchSettings;)V

    .line 32
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/preferences/UsePsychicSettingController;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    .line 33
    return-void
.end method


# virtual methods
.method public filterPreference(Landroid/preference/Preference;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/UsePsychicSettingController;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/Config;->getPsychicSupported()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handlePreference(Landroid/preference/Preference;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 42
    return-void
.end method
