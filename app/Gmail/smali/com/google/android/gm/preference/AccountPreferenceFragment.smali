.class public final Lcom/google/android/gm/preference/AccountPreferenceFragment;
.super Lcom/google/android/gm/preference/GmailPreferenceFragment;
.source "AccountPreferenceFragment.java"


# instance fields
.field private mAccount:Ljava/lang/String;

.field private mPersistence:Lcom/google/android/gm/Persistence;

.field private mVibrateModeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/android/gm/preference/GmailPreferenceFragment;-><init>()V

    return-void
.end method

.method private getHumanReadableVibrateModeName(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "value"

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->initMessageVibrateModeMap()V

    .line 223
    iget-object v0, p0, Lcom/google/android/gm/preference/AccountPreferenceFragment;->mVibrateModeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method private initMessageVibrateModeMap()V
    .locals 6

    .prologue
    .line 232
    iget-object v3, p0, Lcom/google/android/gm/preference/AccountPreferenceFragment;->mVibrateModeMap:Ljava/util/HashMap;

    if-eqz v3, :cond_1

    .line 245
    :cond_0
    return-void

    .line 236
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0015

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 238
    .local v1, vibrateModeEntries:[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0016

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 241
    .local v2, vibrateModeValues:[Ljava/lang/CharSequence;
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gm/preference/AccountPreferenceFragment;->mVibrateModeMap:Ljava/util/HashMap;

    .line 242
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 243
    iget-object v3, p0, Lcom/google/android/gm/preference/AccountPreferenceFragment;->mVibrateModeMap:Ljava/util/HashMap;

    aget-object v4, v2, v0

    aget-object v5, v1, v0

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private removePreference(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 176
    invoke-virtual {p0, p1}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 177
    .local v0, preference:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 180
    :cond_0
    return-void
.end method

.method private removePreference(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "key"
    .parameter "parent"

    .prologue
    .line 188
    invoke-virtual {p0, p1}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 189
    .local v1, preference:Landroid/preference/Preference;
    invoke-virtual {p0, p2}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 190
    .local v0, parentPreference:Landroid/preference/PreferenceGroup;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 193
    :cond_0
    return-void
.end method

.method private setNotificationSettingState(Landroid/app/Activity;Lcom/google/android/gm/Persistence;)V
    .locals 3
    .parameter "activity"
    .parameter "persistence"

    .prologue
    .line 199
    invoke-virtual {p2, p1}, Lcom/google/android/gm/Persistence;->getPriorityInboxDefault(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0d009c

    :goto_0
    invoke-virtual {p0, v1}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, notificationSettingSummary:Ljava/lang/String;
    const-string v1, "enable-notifications"

    invoke-virtual {p2, p1}, Lcom/google/android/gm/Persistence;->getEnableNotifications(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->initializeCheckBoxAndSummary(Ljava/lang/String;ZLjava/lang/CharSequence;)V

    .line 205
    return-void

    .line 199
    .end local v0           #notificationSettingSummary:Ljava/lang/String;
    :cond_0
    const v1, 0x7f0d009b

    goto :goto_0
.end method

.method private setPreferenceChangeListener(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 208
    invoke-virtual {p0, p1}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 209
    .local v0, pref:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 212
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/google/android/gm/preference/GmailPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/preference/AccountPreferenceFragment;->mAccount:Ljava/lang/String;

    .line 46
    invoke-static {}, Lcom/google/android/gm/Persistence;->getInstance()Lcom/google/android/gm/Persistence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/preference/AccountPreferenceFragment;->mPersistence:Lcom/google/android/gm/Persistence;

    .line 47
    iget-object v0, p0, Lcom/google/android/gm/preference/AccountPreferenceFragment;->mPersistence:Lcom/google/android/gm/Persistence;

    iget-object v1, p0, Lcom/google/android/gm/preference/AccountPreferenceFragment;->mAccount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/Persistence;->setPersistenceActiveAccount(Ljava/lang/String;)V

    .line 49
    const/high16 v0, 0x7f07

    invoke-virtual {p0, v0}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->addPreferencesFromResource(I)V

    .line 50
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 216
    invoke-super {p0}, Lcom/google/android/gm/preference/GmailPreferenceFragment;->onDestroy()V

    .line 218
    iget-object v0, p0, Lcom/google/android/gm/preference/AccountPreferenceFragment;->mPersistence:Lcom/google/android/gm/Persistence;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gm/Persistence;->setPersistenceActiveAccount(Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 53
    const/4 v2, 0x1

    .line 54
    .local v2, result:Z
    invoke-virtual {p1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 55
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, key:Ljava/lang/String;
    const-string v6, "signature"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 58
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 59
    .local v4, signature:Ljava/lang/String;
    iget-object v6, p0, Lcom/google/android/gm/preference/AccountPreferenceFragment;->mPersistence:Lcom/google/android/gm/Persistence;

    invoke-virtual {v6, v0, v4}, Lcom/google/android/gm/Persistence;->setSignature(Landroid/content/Context;Ljava/lang/String;)V

    .line 72
    .end local v4           #signature:Ljava/lang/String;
    :goto_0
    return v2

    .line 60
    :cond_0
    const-string v6, "ringtone"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 61
    if-nez p2, :cond_1

    const-string v6, ""

    move-object v3, v6

    .line 62
    .local v3, ringtone:Ljava/lang/String;
    :goto_1
    iget-object v6, p0, Lcom/google/android/gm/preference/AccountPreferenceFragment;->mPersistence:Lcom/google/android/gm/Persistence;

    invoke-virtual {v6, v0, v3}, Lcom/google/android/gm/Persistence;->setRingtone(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 61
    .end local v3           #ringtone:Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    goto :goto_1

    .line 63
    :cond_2
    const-string v6, "vibrateWhen"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 64
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 65
    .local v5, when:Ljava/lang/String;
    iget-object v6, p0, Lcom/google/android/gm/preference/AccountPreferenceFragment;->mPersistence:Lcom/google/android/gm/Persistence;

    invoke-virtual {v6, v0, v5}, Lcom/google/android/gm/Persistence;->setVibrateWhen(Landroid/content/Context;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "vibrateWhen"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-direct {p0, v5}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->getHumanReadableVibrateModeName(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 69
    .end local v5           #when:Ljava/lang/String;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v4, 0x0

    .line 77
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, key:Ljava/lang/String;
    if-nez v2, :cond_0

    move v3, v4

    .line 105
    :goto_0
    return v3

    .line 82
    :cond_0
    const-string v3, "unobtrusive"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 83
    const-string v3, "unobtrusive"

    invoke-virtual {p0, v3}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 85
    .local v1, checkBox:Landroid/preference/CheckBoxPreference;
    iget-object v3, p0, Lcom/google/android/gm/preference/AccountPreferenceFragment;->mPersistence:Lcom/google/android/gm/Persistence;

    invoke-virtual {p0}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gm/Persistence;->setUnobtrusive(Landroid/content/Context;Z)V

    .line 105
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 86
    .end local v1           #checkBox:Landroid/preference/CheckBoxPreference;
    :cond_1
    const-string v3, "enable-notifications"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 87
    const-string v3, "enable-notifications"

    invoke-virtual {p0, v3}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 89
    .restart local v1       #checkBox:Landroid/preference/CheckBoxPreference;
    iget-object v3, p0, Lcom/google/android/gm/preference/AccountPreferenceFragment;->mPersistence:Lcom/google/android/gm/Persistence;

    invoke-virtual {p0}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gm/Persistence;->setEnableNotifications(Landroid/content/Context;Z)V

    goto :goto_1

    .line 90
    .end local v1           #checkBox:Landroid/preference/CheckBoxPreference;
    :cond_2
    const-string v3, "action-strip-action-reply-all"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 91
    move-object v0, p2

    check-cast v0, Landroid/preference/CheckBoxPreference;

    move-object v1, v0

    .line 92
    .restart local v1       #checkBox:Landroid/preference/CheckBoxPreference;
    iget-object v3, p0, Lcom/google/android/gm/preference/AccountPreferenceFragment;->mPersistence:Lcom/google/android/gm/Persistence;

    invoke-virtual {p0}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gm/Persistence;->setActionStripActionReplyAll(Landroid/content/Context;Z)V

    goto :goto_1

    .line 93
    .end local v1           #checkBox:Landroid/preference/CheckBoxPreference;
    :cond_3
    const-string v3, "priority-inbox-key"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 94
    const-string v3, "priority-inbox-key"

    invoke-virtual {p1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 96
    .restart local v1       #checkBox:Landroid/preference/CheckBoxPreference;
    iget-object v3, p0, Lcom/google/android/gm/preference/AccountPreferenceFragment;->mPersistence:Lcom/google/android/gm/Persistence;

    invoke-virtual {p0}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gm/Persistence;->setPriorityInboxDefault(Landroid/content/Context;Z)V

    .line 97
    invoke-virtual {p0}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gm/preference/AccountPreferenceFragment;->mPersistence:Lcom/google/android/gm/Persistence;

    invoke-direct {p0, v3, v4}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->setNotificationSettingState(Landroid/app/Activity;Lcom/google/android/gm/Persistence;)V

    goto :goto_1

    .line 98
    .end local v1           #checkBox:Landroid/preference/CheckBoxPreference;
    :cond_4
    const-string v3, "prefetch-attachments"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 99
    move-object v0, p2

    check-cast v0, Landroid/preference/CheckBoxPreference;

    move-object v1, v0

    .line 100
    .restart local v1       #checkBox:Landroid/preference/CheckBoxPreference;
    iget-object v3, p0, Lcom/google/android/gm/preference/AccountPreferenceFragment;->mPersistence:Lcom/google/android/gm/Persistence;

    invoke-virtual {p0}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gm/Persistence;->setPrefetchAttachments(Landroid/content/Context;Z)V

    goto :goto_1

    .end local v1           #checkBox:Landroid/preference/CheckBoxPreference;
    :cond_5
    move v3, v4

    .line 102
    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 22

    .prologue
    .line 110
    invoke-super/range {p0 .. p0}, Lcom/google/android/gm/preference/GmailPreferenceFragment;->onResume()V

    .line 111
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 115
    .local v5, activity:Landroid/app/Activity;
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v11

    .line 117
    .local v11, syncAutomatically:Z
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v18

    const-string v19, "connectivity"

    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    .line 119
    .local v7, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v6

    .line 121
    .local v6, backgroundSyncing:Z
    new-instance v4, Landroid/accounts/Account;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/preference/AccountPreferenceFragment;->mAccount:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "com.google"

    move-object v0, v4

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .local v4, account:Landroid/accounts/Account;
    const-string v18, "gmail-ls"

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v9

    .line 124
    .local v9, gmailSyncing:Z
    if-eqz v11, :cond_1

    if-eqz v6, :cond_1

    if-eqz v9, :cond_1

    const v18, 0x7f0d00d3

    move/from16 v10, v18

    .line 127
    .local v10, status:I
    :goto_0
    invoke-static {v5}, Lcom/google/android/gm/Utils;->haveGoogleMailActivitiesBeenEnabled(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_2

    const v18, 0x7f0d00d1

    move/from16 v12, v18

    .line 130
    .local v12, syncPreferenceTitle:I
    :goto_1
    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    move-object/from16 v0, v21

    move v1, v10

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, v18

    move v1, v12

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 132
    .local v13, syncString:Ljava/lang/String;
    const-string v18, "sync_status"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->initializePreferenceScreen(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v18, "prefetch-attachments"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/preference/AccountPreferenceFragment;->mPersistence:Lcom/google/android/gm/Persistence;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/gm/Persistence;->getPrefetchAttachments(Landroid/content/Context;)Z

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->initializeCheckBox(Ljava/lang/String;Z)V

    .line 136
    const-string v18, "unobtrusive"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/preference/AccountPreferenceFragment;->mPersistence:Lcom/google/android/gm/Persistence;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/gm/Persistence;->getUnobtrusive(Landroid/content/Context;)Z

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->initializeCheckBox(Ljava/lang/String;Z)V

    .line 137
    const-string v18, "signature"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/preference/AccountPreferenceFragment;->mPersistence:Lcom/google/android/gm/Persistence;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/gm/Persistence;->getSignature(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->initializeEditText(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/preference/AccountPreferenceFragment;->mPersistence:Lcom/google/android/gm/Persistence;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->setNotificationSettingState(Landroid/app/Activity;Lcom/google/android/gm/Persistence;)V

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/preference/AccountPreferenceFragment;->mAccount:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/google/android/gm/provider/MailEngine;->getMailEngine(Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v8

    .line 143
    .local v8, engine:Lcom/google/android/gm/provider/MailEngine;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/google/android/gm/provider/MailEngine;->getServerPriorityInboxEnabled()Z

    move-result v18

    if-nez v18, :cond_3

    .line 144
    :cond_0
    const-string v18, "inbox-settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->removePreference(Ljava/lang/CharSequence;)V

    .line 150
    :goto_2
    const-string v18, "vibrator"

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/Vibrator;

    .line 151
    .local v17, vibrator:Landroid/os/Vibrator;
    if-eqz v17, :cond_4

    invoke-virtual/range {v17 .. v17}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/preference/AccountPreferenceFragment;->mPersistence:Lcom/google/android/gm/Persistence;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/gm/Persistence;->getVibrateWhen(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    .line 153
    .local v16, vibrateSetting:Ljava/lang/String;
    const-string v18, "vibrateWhen"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->getHumanReadableVibrateModeName(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->initializeListAndSummary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 159
    .end local v16           #vibrateSetting:Ljava/lang/String;
    :goto_3
    const-string v18, "action-strip-action-reply-all"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/preference/AccountPreferenceFragment;->mPersistence:Lcom/google/android/gm/Persistence;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/gm/Persistence;->getActionStripActionReplyAll(Landroid/content/Context;)Z

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->initializeCheckBox(Ljava/lang/String;Z)V

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/preference/AccountPreferenceFragment;->mPersistence:Lcom/google/android/gm/Persistence;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/gm/Persistence;->getRingtone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    .line 162
    .local v14, userPref:Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_5

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    move-object/from16 v15, v18

    .line 164
    .local v15, userRingtonePref:Landroid/net/Uri;
    :goto_4
    const-string v18, "ringtone"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->initializeRingtonePreference(Ljava/lang/String;Landroid/net/Uri;)V

    .line 166
    const-string v18, "signature"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->setPreferenceChangeListener(Ljava/lang/String;)V

    .line 167
    const-string v18, "ringtone"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->setPreferenceChangeListener(Ljava/lang/String;)V

    .line 168
    const-string v18, "vibrateWhen"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->setPreferenceChangeListener(Ljava/lang/String;)V

    .line 169
    return-void

    .line 124
    .end local v8           #engine:Lcom/google/android/gm/provider/MailEngine;
    .end local v10           #status:I
    .end local v12           #syncPreferenceTitle:I
    .end local v13           #syncString:Ljava/lang/String;
    .end local v14           #userPref:Ljava/lang/String;
    .end local v15           #userRingtonePref:Landroid/net/Uri;
    .end local v17           #vibrator:Landroid/os/Vibrator;
    :cond_1
    const v18, 0x7f0d00d4

    move/from16 v10, v18

    goto/16 :goto_0

    .line 127
    .restart local v10       #status:I
    :cond_2
    const v18, 0x7f0d00d0

    move/from16 v12, v18

    goto/16 :goto_1

    .line 146
    .restart local v8       #engine:Lcom/google/android/gm/provider/MailEngine;
    .restart local v12       #syncPreferenceTitle:I
    .restart local v13       #syncString:Ljava/lang/String;
    :cond_3
    const-string v18, "priority-inbox-key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/preference/AccountPreferenceFragment;->mPersistence:Lcom/google/android/gm/Persistence;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/gm/Persistence;->getPriorityInboxDefault(Landroid/content/Context;)Z

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->initializeCheckBox(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 157
    .restart local v17       #vibrator:Landroid/os/Vibrator;
    :cond_4
    const-string v18, "vibrateWhen"

    const-string v19, "notification-settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/google/android/gm/preference/AccountPreferenceFragment;->removePreference(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 162
    .restart local v14       #userPref:Ljava/lang/String;
    :cond_5
    if-eqz v14, :cond_6

    const/16 v18, 0x0

    move-object/from16 v15, v18

    goto :goto_4

    :cond_6
    sget-object v18, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    move-object/from16 v15, v18

    goto :goto_4
.end method
