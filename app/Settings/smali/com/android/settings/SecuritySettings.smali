.class public Lcom/android/settings/SecuritySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SecuritySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAssistedGps:Landroid/preference/CheckBoxPreference;

.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mContentQueryMap:Landroid/content/ContentQueryMap;

.field mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mEnableCredentials:Landroid/preference/CheckBoxPreference;

.field private mGps:Landroid/preference/CheckBoxPreference;

.field private mLockAfter:Landroid/preference/ListPreference;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNetwork:Landroid/preference/CheckBoxPreference;

.field private mResetCredentials:Landroid/preference/Preference;

.field private mSettingsObserver:Ljava/util/Observer;

.field private mShowPassword:Landroid/preference/CheckBoxPreference;

.field private mTactileFeedback:Landroid/preference/CheckBoxPreference;

.field private mUseLocation:Landroid/preference/CheckBoxPreference;

.field private mVisiblePattern:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SecuritySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->updateLocationToggles()V

    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 145
    .local v5, root:Landroid/preference/PreferenceScreen;
    if-eqz v5, :cond_0

    .line 146
    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 148
    :cond_0
    const v8, 0x7f050018

    invoke-virtual {p0, v8}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 151
    const-string v8, "location_network"

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/settings/SecuritySettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    .line 152
    const-string v8, "location_gps"

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/settings/SecuritySettings;->mGps:Landroid/preference/CheckBoxPreference;

    .line 153
    const-string v8, "assisted_gps"

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/settings/SecuritySettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    .line 154
    const-string v8, "location_category"

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    .line 156
    .local v2, locationCat:Landroid/preference/PreferenceGroup;
    const v8, 0x1040019

    invoke-virtual {p0, v8}, Lcom/android/settings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    move v1, v10

    .line 158
    .local v1, enableNetworkLocation:Z
    :goto_0
    if-nez v1, :cond_1

    .line 159
    const-string v8, "location_network"

    invoke-virtual {v2, v8}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 160
    .local v3, prefUseNetwork:Landroid/preference/Preference;
    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 162
    .end local v3           #prefUseNetwork:Landroid/preference/Preference;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/GoogleLocationSettingHelper;->isAvailable(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 164
    new-instance v7, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 165
    .local v7, useLocation:Landroid/preference/CheckBoxPreference;
    const-string v8, "location_use_for_services"

    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 166
    const v8, 0x7f080327

    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 167
    const v8, 0x7f080329

    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setSummaryOn(I)V

    .line 168
    const v8, 0x7f080328

    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setSummaryOff(I)V

    .line 169
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/GoogleLocationSettingHelper;->getUseLocationForServices(Landroid/content/Context;)I

    move-result v8

    if-ne v8, v10, :cond_9

    move v8, v10

    :goto_1
    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 172
    invoke-virtual {v7, v9}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 173
    invoke-virtual {v7, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 174
    invoke-virtual {v2, v7}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 175
    iput-object v7, p0, Lcom/android/settings/SecuritySettings;->mUseLocation:Landroid/preference/CheckBoxPreference;

    .line 179
    .end local v7           #useLocation:Landroid/preference/CheckBoxPreference;
    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isWifiOnly()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 180
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    const v9, 0x7f080320

    invoke-virtual {v8, v9}, Landroid/preference/CheckBoxPreference;->setSummaryOn(I)V

    .line 184
    :cond_3
    const/4 v4, 0x0

    .line 185
    .local v4, resid:I
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v8

    if-nez v8, :cond_b

    .line 186
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 187
    const v4, 0x7f05001b

    .line 206
    :goto_2
    invoke-virtual {p0, v4}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 210
    const-string v8, "device_policy"

    invoke-virtual {p0, v8}, Lcom/android/settings/SecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 213
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 225
    :goto_3
    :pswitch_0
    const-string v8, "lock_after_timeout"

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    iput-object v8, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    .line 226
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    if-eqz v8, :cond_4

    .line 227
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->setupLockAfterPreference()V

    .line 228
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->updateLockAfterPreferenceSummary()V

    .line 232
    :cond_4
    const-string v8, "visiblepattern"

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/settings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    .line 235
    const-string v8, "unlock_tactile_feedback"

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/settings/SecuritySettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    .line 236
    const-string v8, "vibrator"

    invoke-virtual {p0, v8}, Lcom/android/settings/SecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Vibrator;

    invoke-virtual {v8}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v8

    if-nez v8, :cond_5

    .line 237
    const-string v8, "security_category"

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceGroup;

    .line 239
    .local v6, securityCategory:Landroid/preference/PreferenceGroup;
    if-eqz v6, :cond_5

    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    if-eqz v8, :cond_5

    .line 240
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 245
    .end local v6           #securityCategory:Landroid/preference/PreferenceGroup;
    :cond_5
    const v8, 0x7f05001c

    invoke-virtual {p0, v8}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 248
    const/4 v8, 0x2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v9

    if-eq v8, v9, :cond_6

    invoke-static {}, Lcom/android/settings/Utils;->isWifiOnly()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 250
    :cond_6
    const-string v8, "sim_lock"

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 254
    :cond_7
    const-string v8, "show_password"

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    .line 257
    const-string v8, "enable_credentials"

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/settings/SecuritySettings;->mEnableCredentials:Landroid/preference/CheckBoxPreference;

    .line 258
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mEnableCredentials:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 259
    const-string v8, "reset_credentials"

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    .line 261
    return-object v5

    .end local v0           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v1           #enableNetworkLocation:Z
    .end local v4           #resid:I
    :cond_8
    move v1, v9

    .line 156
    goto/16 :goto_0

    .restart local v1       #enableNetworkLocation:Z
    .restart local v7       #useLocation:Landroid/preference/CheckBoxPreference;
    :cond_9
    move v8, v9

    .line 169
    goto/16 :goto_1

    .line 189
    .end local v7           #useLocation:Landroid/preference/CheckBoxPreference;
    .restart local v4       #resid:I
    :cond_a
    const v4, 0x7f050019

    goto/16 :goto_2

    .line 192
    :cond_b
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    goto/16 :goto_2

    .line 194
    :sswitch_0
    const v4, 0x7f05001e

    .line 195
    goto/16 :goto_2

    .line 197
    :sswitch_1
    const v4, 0x7f050020

    .line 198
    goto/16 :goto_2

    .line 202
    :sswitch_2
    const v4, 0x7f05001d

    goto/16 :goto_2

    .line 216
    .restart local v0       #dpm:Landroid/app/admin/DevicePolicyManager;
    :pswitch_1
    const v8, 0x7f05001a

    invoke-virtual {p0, v8}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    goto/16 :goto_3

    .line 220
    :pswitch_2
    const v8, 0x7f050021

    invoke-virtual {p0, v8}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    goto/16 :goto_3

    .line 213
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 192
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
        0x60000 -> :sswitch_2
    .end sparse-switch
.end method

.method private disableUnusableTimeouts(J)V
    .locals 10
    .parameter "maxTimeout"

    .prologue
    .line 298
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 299
    .local v0, entries:[Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 300
    .local v7, values:[Ljava/lang/CharSequence;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 301
    .local v2, revisedEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 302
    .local v3, revisedValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v8, v7

    if-ge v1, v8, :cond_1

    .line 303
    aget-object v8, v7, v1

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 304
    .local v4, timeout:J
    cmp-long v8, v4, p1

    if-gtz v8, :cond_0

    .line 305
    aget-object v8, v0, v1

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    aget-object v8, v7, v1

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 309
    .end local v4           #timeout:J
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    array-length v9, v0

    if-ne v8, v9, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    array-length v9, v7

    if-eq v8, v9, :cond_3

    .line 310
    :cond_2
    iget-object v9, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/CharSequence;

    invoke-virtual {v9, v8}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 312
    iget-object v9, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/CharSequence;

    invoke-virtual {v9, v8}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 314
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 315
    .local v6, userPreference:I
    int-to-long v8, v6

    cmp-long v8, v8, p1

    if-gtz v8, :cond_3

    .line 316
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 323
    .end local v6           #userPreference:I
    :cond_3
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_4

    const/4 v9, 0x1

    :goto_1
    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 324
    return-void

    .line 323
    :cond_4
    const/4 v9, 0x0

    goto :goto_1
.end method

.method private isToggled(Landroid/preference/Preference;)Z
    .locals 1
    .parameter "pref"

    .prologue
    .line 420
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    return v0
.end method

.method private setupLockAfterPreference()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const-wide/16 v10, 0x0

    .line 266
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lock_screen_lock_after_timeout"

    const-wide/16 v8, 0x1388

    invoke-static {v6, v7, v8, v9}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 268
    .local v2, currentTimeout:J
    iget-object v6, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 269
    iget-object v6, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v6, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 270
    iget-object v6, p0, Lcom/android/settings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/settings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v6

    move-wide v0, v6

    .line 271
    .local v0, adminTimeout:J
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "screen_off_timeout"

    invoke-static {v6, v7, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v12, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-long v4, v6

    .line 273
    .local v4, displayTimeout:J
    cmp-long v6, v0, v10

    if-lez v6, :cond_0

    .line 277
    sub-long v6, v0, v4

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/android/settings/SecuritySettings;->disableUnusableTimeouts(J)V

    .line 279
    :cond_0
    return-void

    .end local v0           #adminTimeout:J
    .end local v4           #displayTimeout:J
    :cond_1
    move-wide v0, v10

    .line 270
    goto :goto_0
.end method

.method private updateLocationToggles()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 406
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 407
    .local v1, res:Landroid/content/ContentResolver;
    const-string v2, "gps"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 409
    .local v0, gpsEnabled:Z
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    const-string v3, "network"

    invoke-static {v1, v3}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 411
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 412
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    .line 413
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    const-string v3, "assisted_gps_enabled"

    const/4 v4, 0x2

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_1

    move v3, v5

    :goto_0
    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 415
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 417
    :cond_0
    return-void

    .line 413
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private updateLockAfterPreferenceSummary()V
    .locals 13

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_lock_after_timeout"

    const-wide/16 v10, 0x0

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    .line 285
    .local v1, currentTimeout:J
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 286
    .local v3, entries:[Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 287
    .local v7, values:[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 288
    .local v0, best:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v8, v7

    if-ge v4, v8, :cond_1

    .line 289
    aget-object v8, v7, v4

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 290
    .local v5, timeout:J
    cmp-long v8, v1, v5

    if-ltz v8, :cond_0

    .line 291
    move v0, v4

    .line 288
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 294
    .end local v5           #timeout:J
    :cond_1
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    const v9, 0x7f080126

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v12, v3, v0

    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/android/settings/SecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 295
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 428
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 429
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 430
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 108
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 110
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 112
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 114
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 115
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "value"

    .prologue
    const/4 v6, 0x0

    .line 433
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_1

    .line 434
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 436
    .local v2, timeout:I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_screen_lock_after_timeout"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->updateLockAfterPreferenceSummary()V

    .line 458
    .end local v2           #timeout:I
    :cond_0
    :goto_1
    const/4 v3, 0x1

    :goto_2
    return v3

    .line 438
    .restart local v2       #timeout:I
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 439
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v3, "SecuritySettings"

    const-string v4, "could not persist lockAfter timeout setting"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 442
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v2           #timeout:I
    .restart local p2
    :cond_1
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->mUseLocation:Landroid/preference/CheckBoxPreference;

    if-ne p1, v3, :cond_3

    .line 443
    if-nez p2, :cond_2

    move v1, v6

    .line 444
    .end local p2
    .local v1, newValue:Z
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/settings/GoogleLocationSettingHelper;->setUseLocationForServices(Landroid/content/Context;Z)V

    move v3, v6

    .line 449
    goto :goto_2

    .line 443
    .end local v1           #newValue:Z
    .restart local p2
    :cond_2
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    move v1, v3

    goto :goto_3

    .line 450
    .restart local p2
    :cond_3
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->mEnableCredentials:Landroid/preference/CheckBoxPreference;

    if-ne p1, v3, :cond_0

    .line 451
    if-eqz p2, :cond_4

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 452
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.credentials.UNLOCK"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    move v3, v6

    .line 453
    goto :goto_2

    .line 455
    :cond_4
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v3

    invoke-virtual {v3}, Landroid/security/KeyStore;->lock()Z

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 366
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 368
    .local v1, key:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v3}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    .line 369
    .local v2, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    const-string v3, "unlock_set_or_change"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 370
    const-string v3, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    const/16 v4, 0x7b

    const/4 v5, 0x0

    invoke-virtual {p0, p0, v3, v4, v5}, Lcom/android/settings/SecuritySettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    :cond_0
    :goto_0
    move v3, v6

    .line 399
    :goto_1
    return v3

    .line 372
    :cond_1
    const-string v3, "lockenabled"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 373
    invoke-direct {p0, p2}, Lcom/android/settings/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    goto :goto_0

    .line 374
    :cond_2
    const-string v3, "visiblepattern"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 375
    invoke-direct {p0, p2}, Lcom/android/settings/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(Z)V

    goto :goto_0

    .line 376
    :cond_3
    const-string v3, "unlock_tactile_feedback"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 377
    invoke-direct {p0, p2}, Lcom/android/settings/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setTactileFeedbackEnabled(Z)V

    goto :goto_0

    .line 378
    :cond_4
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_6

    .line 379
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "show_password"

    iget-object v5, p0, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_5

    move v5, v6

    :goto_2
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_5
    move v5, v7

    goto :goto_2

    .line 381
    :cond_6
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_7

    .line 382
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "network"

    iget-object v5, p0, Lcom/android/settings/SecuritySettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto :goto_0

    .line 384
    :cond_7
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->mGps:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_8

    .line 385
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 386
    .local v0, enabled:Z
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "gps"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 388
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_0

    .line 389
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 391
    .end local v0           #enabled:Z
    :cond_8
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_a

    .line 392
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "assisted_gps_enabled"

    iget-object v5, p0, Lcom/android/settings/SecuritySettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_9

    move v5, v6

    :goto_3
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_9
    move v5, v7

    goto :goto_3

    .line 396
    :cond_a
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 328
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 332
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 333
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->updateLocationToggles()V

    .line 335
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    if-eqz v2, :cond_0

    .line 336
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mSettingsObserver:Ljava/util/Observer;

    if-nez v2, :cond_0

    .line 337
    new-instance v2, Lcom/android/settings/SecuritySettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/SecuritySettings$1;-><init>(Lcom/android/settings/SecuritySettings;)V

    iput-object v2, p0, Lcom/android/settings/SecuritySettings;->mSettingsObserver:Ljava/util/Observer;

    .line 342
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->mSettingsObserver:Ljava/util/Observer;

    invoke-virtual {v2, v3}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 346
    :cond_0
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v2}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    .line 347
    .local v0, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_1

    .line 348
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 350
    :cond_1
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_2

    .line 351
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 354
    :cond_2
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "show_password"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    move v3, v5

    :goto_0
    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 357
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2}, Landroid/security/KeyStore;->test()I

    move-result v1

    .line 358
    .local v1, state:I
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mEnableCredentials:Landroid/preference/CheckBoxPreference;

    if-ne v1, v5, :cond_4

    move v3, v5

    :goto_1
    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 359
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mEnableCredentials:Landroid/preference/CheckBoxPreference;

    if-eq v1, v7, :cond_5

    move v3, v5

    :goto_2
    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 360
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    if-eq v1, v7, :cond_6

    move v3, v5

    :goto_3
    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 361
    return-void

    .end local v1           #state:I
    :cond_3
    move v3, v6

    .line 354
    goto :goto_0

    .restart local v1       #state:I
    :cond_4
    move v3, v6

    .line 358
    goto :goto_1

    :cond_5
    move v3, v6

    .line 359
    goto :goto_2

    :cond_6
    move v3, v6

    .line 360
    goto :goto_3
.end method

.method public onStart()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 119
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?)"

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v8, "location_providers_allowed"

    aput-object v8, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 126
    .local v7, settingsCursor:Landroid/database/Cursor;
    :try_start_0
    new-instance v0, Landroid/content/ContentQueryMap;

    const-string v1, "name"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v7, v1, v2, v3}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mContentQueryMap:Landroid/content/ContentQueryMap;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 128
    .local v6, e:Ljava/lang/NullPointerException;
    const-string v0, "SecuritySettings"

    const-string v1, "settingsCursor can\'t get content value"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 135
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 136
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mSettingsObserver:Ljava/util/Observer;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mSettingsObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->deleteObserver(Ljava/util/Observer;)V

    .line 141
    :cond_0
    return-void
.end method
