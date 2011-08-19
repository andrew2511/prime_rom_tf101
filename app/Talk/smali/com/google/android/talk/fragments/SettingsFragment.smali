.class public Lcom/google/android/talk/fragments/SettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/fragments/SettingsFragment$ClearSearchDialogFragment;
    }
.end annotation


# static fields
.field private static final KEY_AUTO_LOGIN:Ljava/lang/String; = "gtalk-auto-login"

.field private static final KEY_BLOCKED_BUDDIES:Ljava/lang/String; = "pref_gtalk_blocked_buddies_key"

.field private static final KEY_CLEAR_HISTORY:Ljava/lang/String; = "pref_gtalk_clear_history_key"

.field private static final KEY_MANAGE_ACCOUNT:Ljava/lang/String; = "pref_gtalk_manage_account_key"

.field private static final KEY_MOBILE_INDICATOR:Ljava/lang/String; = "gtalk-mobile-indicator"

.field private static final KEY_SHOW_AWAY_ON_IDLE:Ljava/lang/String; = "gtalk-show-away-on-idle"

.field private static final KEY_SHOW_FRIEND_NOTIFICATIONS:Ljava/lang/String; = "gtalk-show-friend-notifications"

.field private static final KEY_TERMS:Ljava/lang/String; = "gtalk-terms-key"

.field private static final KEY_TEXT_GROUP:Ljava/lang/String; = "text_notification_group"

.field private static final KEY_TEXT_NOTIFICATIONS:Ljava/lang/String; = "gtalk-enable-notifications"

.field private static final KEY_TEXT_RINGTONE:Ljava/lang/String; = "gtalk-text-ringtone"

.field private static final KEY_TEXT_VIBRATE_WHEN:Ljava/lang/String; = "gtalk-vibrate-when"

.field private static final KEY_VIDEO_GROUP:Ljava/lang/String; = "video_notification_group"

.field private static final KEY_VIDEO_NOTIFICATIONS:Ljava/lang/String; = "gtalk-video-enable-notifications"

.field private static final KEY_VIDEO_RINGTONE:Ljava/lang/String; = "gtalk-video-ringtone"

.field private static final KEY_VIDEO_VIBRATE_WHEN:Ljava/lang/String; = "gtalk-video-vibrate-when"


# instance fields
.field private mAccountId:J

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 234
    return-void
.end method

.method private adjustTextNotificationSummary(Landroid/preference/ListPreference;Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;Ljava/lang/String;)V
    .locals 2
    .parameter "pref"
    .parameter "settings"
    .parameter "value"

    .prologue
    .line 266
    const/4 v0, 0x0

    .line 267
    .local v0, summary:I
    const-string v1, "popup"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 268
    const v0, 0x7f0c00a3

    .line 274
    :cond_0
    :goto_0
    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 275
    return-void

    .line 269
    :cond_1
    const-string v1, "statusbar"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 270
    const v0, 0x7f0c00a4

    goto :goto_0

    .line 271
    :cond_2
    const-string v1, "off"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 272
    const v0, 0x7f0c00a2

    goto :goto_0
.end method

.method private adjustVibrateSummary(Landroid/preference/ListPreference;Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;Ljava/lang/String;)V
    .locals 2
    .parameter "pref"
    .parameter "settings"
    .parameter "value"

    .prologue
    .line 289
    const/4 v0, 0x0

    .line 290
    .local v0, summary:I
    const-string v1, "always"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 291
    const v0, 0x7f0c00a6

    .line 297
    :cond_0
    :goto_0
    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 298
    return-void

    .line 292
    :cond_1
    const-string v1, "silent"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 293
    const v0, 0x7f0c00a7

    goto :goto_0

    .line 294
    :cond_2
    const-string v1, "never"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 295
    const v0, 0x7f0c00a8

    goto :goto_0
.end method

.method private adjustVideoNotificationSummary(Landroid/preference/ListPreference;Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;Ljava/lang/String;)V
    .locals 2
    .parameter "pref"
    .parameter "settings"
    .parameter "value"

    .prologue
    .line 279
    const/4 v0, 0x0

    .line 280
    .local v0, summary:I
    const-string v1, "popup"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 281
    const v0, 0x7f0c00aa

    .line 285
    :cond_0
    :goto_0
    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 286
    return-void

    .line 282
    :cond_1
    const-string v1, "statusbar"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    const v0, 0x7f0c00ab

    goto :goto_0
.end method

.method private registerListeners()V
    .locals 2

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 153
    .local v0, preferenceScreen:Landroid/preference/PreferenceScreen;
    iget-object v1, p0, Lcom/google/android/talk/fragments/SettingsFragment;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    const-string v1, "gtalk-vibrate-when"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 156
    const-string v1, "gtalk-video-vibrate-when"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 159
    :cond_0
    const-string v1, "gtalk-enable-notifications"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 161
    const-string v1, "gtalk-video-enable-notifications"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 163
    return-void
.end method

.method private setInitialValues()V
    .locals 12

    .prologue
    .line 84
    iget-wide v8, p0, Lcom/google/android/talk/fragments/SettingsFragment;->mAccountId:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_0

    .line 142
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-static {}, Lcom/google/android/talk/SettingsCache;->getInstance()Lcom/google/android/talk/SettingsCache;

    move-result-object v8

    iget-wide v9, p0, Lcom/google/android/talk/fragments/SettingsFragment;->mAccountId:J

    invoke-virtual {v8, v9, v10}, Lcom/google/android/talk/SettingsCache;->getSettingsMap(J)Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    move-result-object v5

    .line 90
    .local v5, settings:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;
    const-string v8, "gtalk-auto-login"

    invoke-virtual {p0, v8}, Lcom/google/android/talk/fragments/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    .line 91
    .local v3, pref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v5}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getAutomaticallyConnectToGTalkServer()Z

    move-result v8

    invoke-virtual {v3, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 93
    const-string v8, "gtalk-mobile-indicator"

    invoke-virtual {p0, v8}, Lcom/google/android/talk/fragments/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .end local v3           #pref:Landroid/preference/CheckBoxPreference;
    check-cast v3, Landroid/preference/CheckBoxPreference;

    .line 94
    .restart local v3       #pref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getShowMobileIndicator(Landroid/content/Context;)Z

    move-result v8

    invoke-virtual {v3, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 96
    const-string v8, "gtalk-enable-notifications"

    invoke-virtual {p0, v8}, Lcom/google/android/talk/fragments/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/DependentListPreference;

    .line 98
    .local v0, dependListPref:Lcom/google/android/talk/DependentListPreference;
    invoke-virtual {v5}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getTextNotification()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/google/android/talk/DependentListPreference;->setValue(Ljava/lang/String;)V

    .line 99
    const-string v8, "off"

    invoke-virtual {v0, v8}, Lcom/google/android/talk/DependentListPreference;->setDisabledEntry(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v5}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getTextNotification()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v0, v5, v8}, Lcom/google/android/talk/fragments/SettingsFragment;->adjustTextNotificationSummary(Landroid/preference/ListPreference;Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;Ljava/lang/String;)V

    .line 102
    const-string v8, "gtalk-video-enable-notifications"

    invoke-virtual {p0, v8}, Lcom/google/android/talk/fragments/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    .line 103
    .local v2, listPref:Landroid/preference/ListPreference;
    invoke-virtual {v5}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getVideoNotification()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v5}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getVideoNotification()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v2, v5, v8}, Lcom/google/android/talk/fragments/SettingsFragment;->adjustVideoNotificationSummary(Landroid/preference/ListPreference;Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;Ljava/lang/String;)V

    .line 106
    iget-object v8, p0, Lcom/google/android/talk/fragments/SettingsFragment;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v8}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    .line 108
    .local v1, hasVibrator:Z
    const-string v8, "gtalk-vibrate-when"

    invoke-virtual {p0, v8}, Lcom/google/android/talk/fragments/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .end local v2           #listPref:Landroid/preference/ListPreference;
    check-cast v2, Landroid/preference/ListPreference;

    .line 109
    .restart local v2       #listPref:Landroid/preference/ListPreference;
    if-eqz v1, :cond_1

    .line 110
    invoke-virtual {v5}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getTextVibrateWhen()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v5}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getTextVibrateWhen()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v2, v5, v8}, Lcom/google/android/talk/fragments/SettingsFragment;->adjustVibrateSummary(Landroid/preference/ListPreference;Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;Ljava/lang/String;)V

    .line 118
    :goto_1
    const-string v8, "gtalk-video-vibrate-when"

    invoke-virtual {p0, v8}, Lcom/google/android/talk/fragments/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .end local v2           #listPref:Landroid/preference/ListPreference;
    check-cast v2, Landroid/preference/ListPreference;

    .line 119
    .restart local v2       #listPref:Landroid/preference/ListPreference;
    if-eqz v1, :cond_2

    .line 120
    invoke-virtual {v5}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getVideoVibrateWhen()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v5}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getVideoVibrateWhen()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v2, v5, v8}, Lcom/google/android/talk/fragments/SettingsFragment;->adjustVibrateSummary(Landroid/preference/ListPreference;Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;Ljava/lang/String;)V

    .line 128
    :goto_2
    const-string v8, "gtalk-show-away-on-idle"

    invoke-virtual {p0, v8}, Lcom/google/android/talk/fragments/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .end local v3           #pref:Landroid/preference/CheckBoxPreference;
    check-cast v3, Landroid/preference/CheckBoxPreference;

    .line 129
    .restart local v3       #pref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v5}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getShowAwayOnIdle()Z

    move-result v8

    invoke-virtual {v3, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 131
    const-string v8, "gtalk-show-friend-notifications"

    invoke-virtual {p0, v8}, Lcom/google/android/talk/fragments/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .end local v3           #pref:Landroid/preference/CheckBoxPreference;
    check-cast v3, Landroid/preference/CheckBoxPreference;

    .line 132
    .restart local v3       #pref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v5}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getNotifyFriendInvitation()Z

    move-result v8

    invoke-virtual {v3, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 134
    const-string v8, "gtalk-text-ringtone"

    invoke-virtual {p0, v8}, Lcom/google/android/talk/fragments/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/google/android/talk/ImRingtonePreference;

    .line 136
    .local v4, ringtonePref:Lcom/google/android/talk/ImRingtonePreference;
    iget-wide v8, p0, Lcom/google/android/talk/fragments/SettingsFragment;->mAccountId:J

    invoke-virtual {v4, v8, v9}, Lcom/google/android/talk/ImRingtonePreference;->setAccountId(J)V

    .line 137
    const-string v8, "ringtone"

    invoke-virtual {v4, v8}, Lcom/google/android/talk/ImRingtonePreference;->setIMRingtoneType(Ljava/lang/String;)V

    .line 139
    const-string v8, "gtalk-video-ringtone"

    invoke-virtual {p0, v8}, Lcom/google/android/talk/fragments/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .end local v4           #ringtonePref:Lcom/google/android/talk/ImRingtonePreference;
    check-cast v4, Lcom/google/android/talk/ImRingtonePreference;

    .line 140
    .restart local v4       #ringtonePref:Lcom/google/android/talk/ImRingtonePreference;
    iget-wide v8, p0, Lcom/google/android/talk/fragments/SettingsFragment;->mAccountId:J

    invoke-virtual {v4, v8, v9}, Lcom/google/android/talk/ImRingtonePreference;->setAccountId(J)V

    .line 141
    const-string v8, "ringtone-video"

    invoke-virtual {v4, v8}, Lcom/google/android/talk/ImRingtonePreference;->setIMRingtoneType(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 113
    .end local v4           #ringtonePref:Lcom/google/android/talk/ImRingtonePreference;
    :cond_1
    const-string v8, "text_notification_group"

    invoke-virtual {p0, v8}, Lcom/google/android/talk/fragments/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    .line 115
    .local v6, textChatCategory:Landroid/preference/PreferenceCategory;
    invoke-virtual {v6, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 123
    .end local v6           #textChatCategory:Landroid/preference/PreferenceCategory;
    :cond_2
    const-string v8, "video_notification_group"

    invoke-virtual {p0, v8}, Lcom/google/android/talk/fragments/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceCategory;

    .line 125
    .local v7, videoChatCategory:Landroid/preference/PreferenceCategory;
    invoke-virtual {v7, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 74
    .local v0, activity:Landroid/app/Activity;
    const-string v2, "vibrator"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    iput-object v2, p0, Lcom/google/android/talk/fragments/SettingsFragment;->mVibrator:Landroid/os/Vibrator;

    .line 75
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/SettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 76
    .local v1, fragmentArguments:Landroid/os/Bundle;
    const-string v2, "accountId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/talk/fragments/SettingsFragment;->mAccountId:J

    .line 78
    const/high16 v2, 0x7f06

    invoke-virtual {p0, v2}, Lcom/google/android/talk/fragments/SettingsFragment;->addPreferencesFromResource(I)V

    .line 80
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SettingsFragment;->setInitialValues()V

    .line 81
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 166
    const/4 v2, 0x0

    .line 167
    .local v2, result:Z
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, key:Ljava/lang/String;
    instance-of v4, p1, Landroid/preference/ListPreference;

    if-eqz v4, :cond_1

    .line 170
    invoke-static {}, Lcom/google/android/talk/SettingsCache;->getInstance()Lcom/google/android/talk/SettingsCache;

    move-result-object v4

    iget-wide v5, p0, Lcom/google/android/talk/fragments/SettingsFragment;->mAccountId:J

    invoke-virtual {v4, v5, v6}, Lcom/google/android/talk/SettingsCache;->getSettingsMap(J)Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    move-result-object v3

    .line 173
    .local v3, settings:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;
    const-string v4, "gtalk-vibrate-when"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 174
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->setTextVibrateWhen(Ljava/lang/String;)V

    .line 175
    check-cast p1, Landroid/preference/ListPreference;

    .end local p1
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-direct {p0, p1, v3, p2}, Lcom/google/android/talk/fragments/SettingsFragment;->adjustVibrateSummary(Landroid/preference/ListPreference;Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;Ljava/lang/String;)V

    .line 188
    :cond_0
    :goto_0
    const/4 v2, 0x1

    .line 190
    .end local v3           #settings:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;
    :cond_1
    return v2

    .line 176
    .restart local v3       #settings:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;
    .restart local p1
    .restart local p2
    :cond_2
    const-string v4, "gtalk-video-vibrate-when"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 177
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->setVideoVibrateWhen(Ljava/lang/String;)V

    .line 178
    check-cast p1, Landroid/preference/ListPreference;

    .end local p1
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-direct {p0, p1, v3, p2}, Lcom/google/android/talk/fragments/SettingsFragment;->adjustVibrateSummary(Landroid/preference/ListPreference;Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;Ljava/lang/String;)V

    goto :goto_0

    .line 179
    .restart local p1
    .restart local p2
    :cond_3
    const-string v4, "gtalk-enable-notifications"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 180
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->setTextNotification(Ljava/lang/String;)V

    .line 181
    check-cast p1, Landroid/preference/ListPreference;

    .end local p1
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-direct {p0, p1, v3, p2}, Lcom/google/android/talk/fragments/SettingsFragment;->adjustTextNotificationSummary(Landroid/preference/ListPreference;Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;Ljava/lang/String;)V

    goto :goto_0

    .line 183
    .restart local p1
    .restart local p2
    :cond_4
    const-string v4, "gtalk-video-enable-notifications"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 184
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->setVideoNotification(Ljava/lang/String;)V

    .line 185
    check-cast p1, Landroid/preference/ListPreference;

    .end local p1
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-direct {p0, p1, v3, p2}, Lcom/google/android/talk/fragments/SettingsFragment;->adjustVideoNotificationSummary(Landroid/preference/ListPreference;Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v9, 0x1

    .line 195
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 196
    .local v2, key:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/talk/SettingsCache;->getInstance()Lcom/google/android/talk/SettingsCache;

    move-result-object v5

    iget-wide v6, p0, Lcom/google/android/talk/fragments/SettingsFragment;->mAccountId:J

    invoke-virtual {v5, v6, v7}, Lcom/google/android/talk/SettingsCache;->getSettingsMap(J)Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    move-result-object v3

    .line 199
    .local v3, settings:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;
    instance-of v5, p2, Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_4

    .line 200
    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    .line 202
    .local v4, value:Z
    const-string v5, "gtalk-auto-login"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 203
    invoke-virtual {v3, v4}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->setAutomaticallyConnectToGTalkServer(Z)V

    :cond_0
    :goto_0
    move v5, v9

    .line 231
    .end local v4           #value:Z
    :goto_1
    return v5

    .line 204
    .restart local v4       #value:Z
    :cond_1
    const-string v5, "gtalk-mobile-indicator"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 205
    invoke-virtual {v3, v4}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->setShowMobileIndicator(Z)V

    goto :goto_0

    .line 206
    :cond_2
    const-string v5, "gtalk-show-away-on-idle"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 207
    invoke-virtual {v3, v4}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->setShowAwayOnIdle(Z)V

    goto :goto_0

    .line 208
    :cond_3
    const-string v5, "gtalk-show-friend-notifications"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 209
    invoke-virtual {v3, v4}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->setNotifyFriendInvitation(Z)V

    goto :goto_0

    .line 213
    .end local v4           #value:Z
    .restart local p2
    :cond_4
    const-string v5, "pref_gtalk_clear_history_key"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 214
    new-instance v0, Lcom/google/android/talk/fragments/SettingsFragment$ClearSearchDialogFragment;

    invoke-direct {v0}, Lcom/google/android/talk/fragments/SettingsFragment$ClearSearchDialogFragment;-><init>()V

    .line 215
    .local v0, dialog:Lcom/google/android/talk/fragments/SettingsFragment$ClearSearchDialogFragment;
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/SettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const-string v6, "dialog"

    invoke-virtual {v0, v5, v6}, Lcom/google/android/talk/fragments/SettingsFragment$ClearSearchDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    move v5, v9

    .line 216
    goto :goto_1

    .line 217
    .end local v0           #dialog:Lcom/google/android/talk/fragments/SettingsFragment$ClearSearchDialogFragment;
    :cond_5
    const-string v5, "pref_gtalk_manage_account_key"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 218
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.settings.SYNC_SETTINGS"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 219
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "authorities"

    new-array v6, v9, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "gmail-ls"

    aput-object v8, v6, v7

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    const/high16 v5, 0x1000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 221
    invoke-virtual {p0, v1}, Lcom/google/android/talk/fragments/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    move v5, v9

    .line 222
    goto :goto_1

    .line 223
    .end local v1           #intent:Landroid/content/Intent;
    :cond_6
    const-string v5, "pref_gtalk_blocked_buddies_key"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 224
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 225
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v5, "accountId"

    iget-wide v6, p0, Lcom/google/android/talk/fragments/SettingsFragment;->mAccountId:J

    invoke-virtual {v1, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 231
    .end local v1           #intent:Landroid/content/Intent;
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v5

    goto :goto_1

    .line 227
    :cond_8
    const-string v5, "gtalk-terms-key"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 228
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/talk/HelpUtils;->showTermsOfService(Landroid/content/Context;)V

    move v5, v9

    .line 229
    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 145
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 147
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SettingsFragment;->registerListeners()V

    .line 148
    return-void
.end method
