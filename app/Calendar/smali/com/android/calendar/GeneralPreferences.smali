.class public Lcom/android/calendar/GeneralPreferences;
.super Landroid/preference/PreferenceFragment;
.source "GeneralPreferences.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static mTimezones:[[Ljava/lang/CharSequence;


# instance fields
.field mAlert:Landroid/preference/CheckBoxPreference;

.field mDefaultReminder:Landroid/preference/ListPreference;

.field mHomeTZ:Landroid/preference/ListPreference;

.field mPopup:Landroid/preference/CheckBoxPreference;

.field mRingtone:Landroid/preference/RingtonePreference;

.field mUseHomeTZ:Landroid/preference/CheckBoxPreference;

.field mVibrateWhen:Landroid/preference/ListPreference;

.field mWeekStart:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method public static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .parameter "context"

    .prologue
    .line 106
    const-string v0, "com.android.calendar_preferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private migrateOldPreferences(Landroid/content/SharedPreferences;)V
    .locals 6
    .parameter "prefs"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 247
    const-string v2, "preferences_alerts_vibrateWhen"

    invoke-interface {p1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "preferences_alerts_vibrate"

    invoke-interface {p1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 249
    const-string v2, "preferences_alerts_vibrate"

    invoke-interface {p1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    const v2, 0x7f0a0082

    move v0, v2

    .line 252
    .local v0, stringId:I
    :goto_0
    iget-object v2, p0, Lcom/android/calendar/GeneralPreferences;->mVibrateWhen:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/calendar/GeneralPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 255
    .end local v0           #stringId:I
    :cond_0
    const-string v2, "preferences_alerts"

    invoke-interface {p1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "preferences_alerts_type"

    invoke-interface {p1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 256
    const-string v2, "preferences_alerts_type"

    const-string v3, "1"

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 257
    .local v1, type:Ljava/lang/String;
    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 258
    iget-object v2, p0, Lcom/android/calendar/GeneralPreferences;->mAlert:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 259
    iget-object v2, p0, Lcom/android/calendar/GeneralPreferences;->mPopup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 260
    iget-object v2, p0, Lcom/android/calendar/GeneralPreferences;->mPopup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 271
    :cond_1
    :goto_1
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "preferences_alerts_type"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 273
    .end local v1           #type:Ljava/lang/String;
    :cond_2
    return-void

    .line 249
    :cond_3
    const v2, 0x7f0a0083

    move v0, v2

    goto :goto_0

    .line 261
    .restart local v1       #type:Ljava/lang/String;
    :cond_4
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 262
    iget-object v2, p0, Lcom/android/calendar/GeneralPreferences;->mAlert:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 263
    iget-object v2, p0, Lcom/android/calendar/GeneralPreferences;->mPopup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 264
    iget-object v2, p0, Lcom/android/calendar/GeneralPreferences;->mPopup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_1

    .line 265
    :cond_5
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 266
    iget-object v2, p0, Lcom/android/calendar/GeneralPreferences;->mAlert:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 267
    iget-object v2, p0, Lcom/android/calendar/GeneralPreferences;->mPopup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 268
    iget-object v2, p0, Lcom/android/calendar/GeneralPreferences;->mPopup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_1
.end method

.method public static setDefaultValues(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 111
    const-string v0, "com.android.calendar_preferences"

    const v1, 0x7f060003

    invoke-static {p0, v0, v2, v1, v2}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V

    .line 113
    return-void
.end method

.method private setPreferenceListeners(Landroid/preference/Preference$OnPreferenceChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/calendar/GeneralPreferences;->mUseHomeTZ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 181
    iget-object v0, p0, Lcom/android/calendar/GeneralPreferences;->mHomeTZ:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 182
    iget-object v0, p0, Lcom/android/calendar/GeneralPreferences;->mWeekStart:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 183
    iget-object v0, p0, Lcom/android/calendar/GeneralPreferences;->mDefaultReminder:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 184
    iget-object v0, p0, Lcom/android/calendar/GeneralPreferences;->mRingtone:Landroid/preference/RingtonePreference;

    invoke-virtual {v0, p1}, Landroid/preference/RingtonePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 185
    return-void
.end method

.method private updateChildPreferences()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 281
    iget-object v0, p0, Lcom/android/calendar/GeneralPreferences;->mAlert:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/android/calendar/GeneralPreferences;->mVibrateWhen:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 283
    iget-object v0, p0, Lcom/android/calendar/GeneralPreferences;->mRingtone:Landroid/preference/RingtonePreference;

    invoke-virtual {v0, v1}, Landroid/preference/RingtonePreference;->setEnabled(Z)V

    .line 284
    iget-object v0, p0, Lcom/android/calendar/GeneralPreferences;->mPopup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 292
    :goto_0
    return-void

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/GeneralPreferences;->mVibrateWhen:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/calendar/GeneralPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0a0083

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/android/calendar/GeneralPreferences;->mVibrateWhen:Landroid/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 289
    iget-object v0, p0, Lcom/android/calendar/GeneralPreferences;->mRingtone:Landroid/preference/RingtonePreference;

    invoke-virtual {v0, v3}, Landroid/preference/RingtonePreference;->setEnabled(Z)V

    .line 290
    iget-object v0, p0, Lcom/android/calendar/GeneralPreferences;->mPopup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "icicle"

    .prologue
    .line 117
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 119
    invoke-virtual {p0}, Lcom/android/calendar/GeneralPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 123
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/android/calendar/GeneralPreferences;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    .line 124
    .local v2, preferenceManager:Landroid/preference/PreferenceManager;
    invoke-static {v0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 125
    .local v4, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v8, "com.android.calendar_preferences"

    invoke-virtual {v2, v8}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 128
    const v8, 0x7f060003

    invoke-virtual {p0, v8}, Lcom/android/calendar/GeneralPreferences;->addPreferencesFromResource(I)V

    .line 130
    invoke-virtual {p0}, Lcom/android/calendar/GeneralPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 131
    .local v3, preferenceScreen:Landroid/preference/PreferenceScreen;
    const-string v8, "preferences_alerts"

    invoke-virtual {v3, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/calendar/GeneralPreferences;->mAlert:Landroid/preference/CheckBoxPreference;

    .line 132
    const-string v8, "preferences_alerts_vibrateWhen"

    invoke-virtual {v3, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    iput-object v8, p0, Lcom/android/calendar/GeneralPreferences;->mVibrateWhen:Landroid/preference/ListPreference;

    .line 133
    const-string v8, "vibrator"

    invoke-virtual {v0, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Vibrator;

    .line 134
    .local v7, vibrator:Landroid/os/Vibrator;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v8

    if-nez v8, :cond_1

    .line 135
    :cond_0
    const-string v8, "preferences_alerts_category"

    invoke-virtual {v3, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 137
    .local v1, mAlertGroup:Landroid/preference/PreferenceCategory;
    iget-object v8, p0, Lcom/android/calendar/GeneralPreferences;->mVibrateWhen:Landroid/preference/ListPreference;

    invoke-virtual {v1, v8}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 140
    .end local v1           #mAlertGroup:Landroid/preference/PreferenceCategory;
    :cond_1
    const-string v8, "preferences_alerts_ringtone"

    invoke-virtual {v3, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/RingtonePreference;

    iput-object v8, p0, Lcom/android/calendar/GeneralPreferences;->mRingtone:Landroid/preference/RingtonePreference;

    .line 141
    const-string v8, "preferences_alerts_popup"

    invoke-virtual {v3, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/calendar/GeneralPreferences;->mPopup:Landroid/preference/CheckBoxPreference;

    .line 142
    const-string v8, "preferences_home_tz_enabled"

    invoke-virtual {v3, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/calendar/GeneralPreferences;->mUseHomeTZ:Landroid/preference/CheckBoxPreference;

    .line 143
    const-string v8, "preferences_week_start_day"

    invoke-virtual {v3, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    iput-object v8, p0, Lcom/android/calendar/GeneralPreferences;->mWeekStart:Landroid/preference/ListPreference;

    .line 144
    const-string v8, "preferences_default_reminder"

    invoke-virtual {v3, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    iput-object v8, p0, Lcom/android/calendar/GeneralPreferences;->mDefaultReminder:Landroid/preference/ListPreference;

    .line 145
    const-string v8, "preferences_home_tz"

    invoke-virtual {v3, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    iput-object v8, p0, Lcom/android/calendar/GeneralPreferences;->mHomeTZ:Landroid/preference/ListPreference;

    .line 146
    iget-object v8, p0, Lcom/android/calendar/GeneralPreferences;->mHomeTZ:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 148
    .local v5, tz:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/calendar/GeneralPreferences;->mWeekStart:Landroid/preference/ListPreference;

    iget-object v9, p0, Lcom/android/calendar/GeneralPreferences;->mWeekStart:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v8, p0, Lcom/android/calendar/GeneralPreferences;->mDefaultReminder:Landroid/preference/ListPreference;

    iget-object v9, p0, Lcom/android/calendar/GeneralPreferences;->mDefaultReminder:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 151
    sget-object v8, Lcom/android/calendar/GeneralPreferences;->mTimezones:[[Ljava/lang/CharSequence;

    if-nez v8, :cond_2

    .line 152
    new-instance v8, Lcom/android/calendar/TimezoneAdapter;

    invoke-direct {v8, v0, v5}, Lcom/android/calendar/TimezoneAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/android/calendar/TimezoneAdapter;->getAllTimezones()[[Ljava/lang/CharSequence;

    move-result-object v8

    sput-object v8, Lcom/android/calendar/GeneralPreferences;->mTimezones:[[Ljava/lang/CharSequence;

    .line 154
    :cond_2
    iget-object v8, p0, Lcom/android/calendar/GeneralPreferences;->mHomeTZ:Landroid/preference/ListPreference;

    sget-object v9, Lcom/android/calendar/GeneralPreferences;->mTimezones:[[Ljava/lang/CharSequence;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 155
    iget-object v8, p0, Lcom/android/calendar/GeneralPreferences;->mHomeTZ:Landroid/preference/ListPreference;

    sget-object v9, Lcom/android/calendar/GeneralPreferences;->mTimezones:[[Ljava/lang/CharSequence;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 156
    iget-object v8, p0, Lcom/android/calendar/GeneralPreferences;->mHomeTZ:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v6

    .line 157
    .local v6, tzName:Ljava/lang/CharSequence;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 158
    const/4 v8, 0x0

    invoke-static {v0, v8}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v6

    .line 160
    :cond_3
    iget-object v8, p0, Lcom/android/calendar/GeneralPreferences;->mHomeTZ:Landroid/preference/ListPreference;

    invoke-virtual {v8, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 162
    invoke-direct {p0, v4}, Lcom/android/calendar/GeneralPreferences;->migrateOldPreferences(Landroid/content/SharedPreferences;)V

    .line 164
    invoke-direct {p0}, Lcom/android/calendar/GeneralPreferences;->updateChildPreferences()V

    .line 165
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 189
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 190
    invoke-virtual {p0}, Lcom/android/calendar/GeneralPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 192
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/calendar/GeneralPreferences;->setPreferenceListeners(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 193
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v3, 0x1

    .line 211
    iget-object v2, p0, Lcom/android/calendar/GeneralPreferences;->mUseHomeTZ:Landroid/preference/CheckBoxPreference;

    if-ne p1, v2, :cond_1

    .line 212
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 213
    iget-object v2, p0, Lcom/android/calendar/GeneralPreferences;->mHomeTZ:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, tz:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/android/calendar/GeneralPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/calendar/Utils;->setTimeZone(Landroid/content/Context;Ljava/lang/String;)V

    move v2, v3

    .line 237
    .end local v1           #tz:Ljava/lang/String;
    :goto_1
    return v2

    .line 215
    :cond_0
    const-string v1, "auto"

    .restart local v1       #tz:Ljava/lang/String;
    goto :goto_0

    .line 219
    .end local v1           #tz:Ljava/lang/String;
    .restart local p2
    :cond_1
    iget-object v2, p0, Lcom/android/calendar/GeneralPreferences;->mHomeTZ:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_2

    .line 220
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 222
    .restart local v1       #tz:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/calendar/GeneralPreferences;->mHomeTZ:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 223
    iget-object v2, p0, Lcom/android/calendar/GeneralPreferences;->mHomeTZ:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/calendar/GeneralPreferences;->mHomeTZ:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 224
    invoke-virtual {p0}, Lcom/android/calendar/GeneralPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/calendar/Utils;->setTimeZone(Landroid/content/Context;Ljava/lang/String;)V

    .line 237
    .end local v1           #tz:Ljava/lang/String;
    .end local p2
    :goto_2
    const/4 v2, 0x0

    goto :goto_1

    .line 225
    .restart local p2
    :cond_2
    iget-object v2, p0, Lcom/android/calendar/GeneralPreferences;->mWeekStart:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_3

    .line 226
    iget-object v2, p0, Lcom/android/calendar/GeneralPreferences;->mWeekStart:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v2, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 227
    iget-object v2, p0, Lcom/android/calendar/GeneralPreferences;->mWeekStart:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/calendar/GeneralPreferences;->mWeekStart:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 228
    .restart local p2
    :cond_3
    iget-object v2, p0, Lcom/android/calendar/GeneralPreferences;->mDefaultReminder:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_4

    .line 229
    iget-object v2, p0, Lcom/android/calendar/GeneralPreferences;->mDefaultReminder:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v2, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 230
    iget-object v2, p0, Lcom/android/calendar/GeneralPreferences;->mDefaultReminder:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/calendar/GeneralPreferences;->mDefaultReminder:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 231
    .restart local p2
    :cond_4
    iget-object v2, p0, Lcom/android/calendar/GeneralPreferences;->mRingtone:Landroid/preference/RingtonePreference;

    if-ne p1, v2, :cond_5

    move v2, v3

    .line 233
    goto :goto_1

    :cond_5
    move v2, v3

    .line 235
    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 298
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, key:Ljava/lang/String;
    const-string v2, "preferences_clear_search_history"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 300
    new-instance v1, Landroid/provider/SearchRecentSuggestions;

    invoke-virtual {p0}, Lcom/android/calendar/GeneralPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.android.calendar.CalendarRecentSuggestionsProvider"

    invoke-direct {v1, v2, v3, v5}, Landroid/provider/SearchRecentSuggestions;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 303
    .local v1, suggestions:Landroid/provider/SearchRecentSuggestions;
    invoke-virtual {v1}, Landroid/provider/SearchRecentSuggestions;->clearHistory()V

    .line 304
    invoke-virtual {p0}, Lcom/android/calendar/GeneralPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0a0071

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    move v2, v5

    .line 308
    .end local v1           #suggestions:Landroid/provider/SearchRecentSuggestions;
    :goto_0
    return v2

    :cond_0
    move v2, v4

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 169
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 170
    invoke-virtual {p0}, Lcom/android/calendar/GeneralPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 172
    invoke-direct {p0, p0}, Lcom/android/calendar/GeneralPreferences;->setPreferenceListeners(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 173
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 196
    const-string v1, "preferences_alerts"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    invoke-direct {p0}, Lcom/android/calendar/GeneralPreferences;->updateChildPreferences()V

    .line 199
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/GeneralPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 200
    .local v0, a:Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 201
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    .line 203
    :cond_1
    return-void
.end method
