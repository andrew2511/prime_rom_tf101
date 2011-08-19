.class public Lcom/android/deskclock/SettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private refresh()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 123
    const-string v4, "alarm_in_silent_mode"

    invoke-virtual {p0, v4}, Lcom/android/deskclock/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 125
    .local v0, alarmInSilentModePref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {p0}, Lcom/android/deskclock/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "mode_ringer_streams_affected"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 128
    .local v3, silentModeStreams:I
    and-int/lit8 v4, v3, 0x10

    if-nez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 131
    const-string v4, "snooze_duration"

    invoke-virtual {p0, v4}, Lcom/android/deskclock/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    .line 133
    .local v2, listPref:Landroid/preference/ListPreference;
    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 134
    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 136
    const-string v4, "auto_silence"

    invoke-virtual {p0, v4}, Lcom/android/deskclock/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .end local v2           #listPref:Landroid/preference/ListPreference;
    check-cast v2, Landroid/preference/ListPreference;

    .line 137
    .restart local v2       #listPref:Landroid/preference/ListPreference;
    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, delay:Ljava/lang/String;
    invoke-direct {p0, v2, v1}, Lcom/android/deskclock/SettingsActivity;->updateAutoSnoozeSummary(Landroid/preference/ListPreference;Ljava/lang/String;)V

    .line 139
    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 140
    return-void

    .end local v1           #delay:Ljava/lang/String;
    .end local v2           #listPref:Landroid/preference/ListPreference;
    :cond_0
    move v4, v6

    .line 128
    goto :goto_0
.end method

.method private updateAutoSnoozeSummary(Landroid/preference/ListPreference;Ljava/lang/String;)V
    .locals 5
    .parameter "listPref"
    .parameter "delay"

    .prologue
    .line 113
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 114
    .local v0, i:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 115
    const v1, 0x7f08002c

    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    const v1, 0x7f08002b

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/deskclock/SettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const v2, 0x7f060003

    invoke-virtual {p0, v2}, Lcom/android/deskclock/SettingsActivity;->addPreferencesFromResource(I)V

    .line 57
    const-string v2, "default_ringtone"

    invoke-virtual {p0, v2}, Lcom/android/deskclock/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/AlarmPreference;

    .line 59
    .local v1, ringtone:Lcom/android/deskclock/AlarmPreference;
    const/4 v2, 0x4

    invoke-static {p0, v2}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    .line 61
    .local v0, alert:Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v1, v0}, Lcom/android/deskclock/AlarmPreference;->setAlert(Landroid/net/Uri;)V

    .line 64
    :cond_0
    invoke-virtual {v1}, Lcom/android/deskclock/AlarmPreference;->setChangeDefault()V

    .line 65
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "pref"
    .parameter "newValue"

    .prologue
    .line 99
    const-string v4, "snooze_duration"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 100
    move-object v0, p1

    check-cast v0, Landroid/preference/ListPreference;

    move-object v3, v0

    .line 101
    .local v3, listPref:Landroid/preference/ListPreference;
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v3, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 102
    .local v2, idx:I
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 108
    .end local v2           #idx:I
    .end local v3           #listPref:Landroid/preference/ListPreference;
    :cond_0
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 103
    .restart local p2
    :cond_1
    const-string v4, "auto_silence"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 104
    move-object v0, p1

    check-cast v0, Landroid/preference/ListPreference;

    move-object v3, v0

    .line 105
    .restart local v3       #listPref:Landroid/preference/ListPreference;
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 106
    .local v1, delay:Ljava/lang/String;
    invoke-direct {p0, v3, v1}, Lcom/android/deskclock/SettingsActivity;->updateAutoSnoozeSummary(Landroid/preference/ListPreference;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 76
    const-string v3, "alarm_in_silent_mode"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 77
    move-object v0, p2

    check-cast v0, Landroid/preference/CheckBoxPreference;

    move-object v1, v0

    .line 78
    .local v1, pref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {p0}, Lcom/android/deskclock/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mode_ringer_streams_affected"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 82
    .local v2, ringerModeStreamTypes:I
    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 83
    and-int/lit8 v2, v2, -0x11

    .line 88
    :goto_0
    invoke-virtual {p0}, Lcom/android/deskclock/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mode_ringer_streams_affected"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 92
    const/4 v3, 0x1

    .line 95
    .end local v1           #pref:Landroid/preference/CheckBoxPreference;
    .end local v2           #ringerModeStreamTypes:I
    :goto_1
    return v3

    .line 85
    .restart local v1       #pref:Landroid/preference/CheckBoxPreference;
    .restart local v2       #ringerModeStreamTypes:I
    :cond_0
    or-int/lit8 v2, v2, 0x10

    goto :goto_0

    .line 95
    .end local v1           #pref:Landroid/preference/CheckBoxPreference;
    .end local v2           #ringerModeStreamTypes:I
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    goto :goto_1
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 69
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 70
    invoke-direct {p0}, Lcom/android/deskclock/SettingsActivity;->refresh()V

    .line 71
    return-void
.end method
