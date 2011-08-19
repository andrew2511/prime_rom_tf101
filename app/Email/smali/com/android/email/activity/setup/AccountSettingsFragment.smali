.class public Lcom/android/email/activity/setup/AccountSettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "AccountSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/AccountSettingsFragment$DeleteAccountFragment;,
        Lcom/android/email/activity/setup/AccountSettingsFragment$LoadAccountTask;,
        Lcom/android/email/activity/setup/AccountSettingsFragment$EmptyCallback;,
        Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;
    }
.end annotation


# instance fields
.field private mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

.field private mAccountBackgroundAttachments:Landroid/preference/CheckBoxPreference;

.field private mAccountDefault:Landroid/preference/CheckBoxPreference;

.field private mAccountDescription:Landroid/preference/EditTextPreference;

.field private mAccountDirty:Z

.field private mAccountName:Landroid/preference/EditTextPreference;

.field private mAccountNotify:Landroid/preference/CheckBoxPreference;

.field private mAccountRingtone:Landroid/preference/RingtonePreference;

.field private mAccountSignature:Landroid/preference/EditTextPreference;

.field private mAccountVibrateWhen:Landroid/preference/ListPreference;

.field private mCallback:Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;

.field private mCheckFrequency:Landroid/preference/ListPreference;

.field private mContext:Landroid/content/Context;

.field private mDefaultAccountId:J

.field private mLoadAccountTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<***>;"
        }
    .end annotation
.end field

.field private mLoaded:Z

.field private mPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mSaveOnExit:Z

.field private mStarted:Z

.field private mSyncCalendar:Landroid/preference/CheckBoxPreference;

.field private mSyncContacts:Landroid/preference/CheckBoxPreference;

.field private mSyncEmail:Landroid/preference/CheckBoxPreference;

.field private mSyncWindow:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 114
    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsFragment$EmptyCallback;->INSTANCE:Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCallback:Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;

    .line 592
    new-instance v0, Lcom/android/email/activity/setup/AccountSettingsFragment$9;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$9;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 667
    return-void
.end method

.method static synthetic access$100(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/email/activity/setup/AccountSettingsFragment;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->onPreferenceChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/EditTextPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountName:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/EditTextPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountSignature:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCheckFrequency:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/email/activity/setup/AccountSettingsFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDirty:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/email/activity/setup/AccountSettingsFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->finishDeleteAccount()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/email/activity/setup/AccountSettingsFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSaveOnExit:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/email/activity/setup/AccountSettingsFragment;)Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCallback:Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/email/activity/setup/AccountSettingsFragment;)Lcom/android/emailcommon/provider/EmailContent$Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/email/activity/setup/AccountSettingsFragment;Lcom/android/emailcommon/provider/EmailContent$Account;)Lcom/android/emailcommon/provider/EmailContent$Account;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    return-object p1
.end method

.method static synthetic access$502(Lcom/android/email/activity/setup/AccountSettingsFragment;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-wide p1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mDefaultAccountId:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/android/email/activity/setup/AccountSettingsFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mStarted:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/email/activity/setup/AccountSettingsFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mLoaded:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/email/activity/setup/AccountSettingsFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->loadSettings()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/EditTextPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDescription:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method public static buildArguments(J)Landroid/os/Bundle;
    .locals 2
    .parameter "accountId"

    .prologue
    .line 147
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 148
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "AccountSettingsFragment.AccountId"

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 149
    return-object v0
.end method

.method private finishDeleteAccount()V
    .locals 2

    .prologue
    .line 720
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSaveOnExit:Z

    .line 721
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCallback:Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-interface {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;->deleteAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 722
    return-void
.end method

.method private loadSettings()V
    .locals 24

    .prologue
    .line 358
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/email/activity/setup/AccountSettingsFragment;->mLoaded:Z

    .line 360
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSaveOnExit:Z

    .line 362
    const-string v19, "account_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/PreferenceCategory;

    .line 364
    .local v17, topCategory:Landroid/preference/PreferenceCategory;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const v20, 0x7f08012c

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 366
    const-string v19, "account_description"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDescription:Landroid/preference/EditTextPreference;

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDescription:Landroid/preference/EditTextPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDescription:Landroid/preference/EditTextPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDescription:Landroid/preference/EditTextPreference;

    move-object/from16 v19, v0

    new-instance v20, Lcom/android/email/activity/setup/AccountSettingsFragment$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment$1;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual/range {v19 .. v20}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 384
    const-string v19, "account_name"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountName:Landroid/preference/EditTextPreference;

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSenderName()Ljava/lang/String;

    move-result-object v12

    .line 387
    .local v12, senderName:Ljava/lang/String;
    if-nez v12, :cond_0

    const-string v12, ""

    .line 388
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountName:Landroid/preference/EditTextPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountName:Landroid/preference/EditTextPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountName:Landroid/preference/EditTextPreference;

    move-object/from16 v19, v0

    new-instance v20, Lcom/android/email/activity/setup/AccountSettingsFragment$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment$2;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual/range {v19 .. v20}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 402
    const-string v19, "account_signature"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountSignature:Landroid/preference/EditTextPreference;

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSignature()Ljava/lang/String;

    move-result-object v16

    .line 404
    .local v16, signature:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountSignature:Landroid/preference/EditTextPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSignature()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountSignature:Landroid/preference/EditTextPreference;

    move-object/from16 v19, v0

    new-instance v20, Lcom/android/email/activity/setup/AccountSettingsFragment$3;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment$3;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual/range {v19 .. v20}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 421
    const-string v19, "account_check_frequency"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCheckFrequency:Landroid/preference/ListPreference;

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Lcom/android/email/mail/Store$StoreInfo;->getStoreInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/Store$StoreInfo;

    move-result-object v6

    .line 426
    .local v6, info:Lcom/android/email/mail/Store$StoreInfo;
    move-object v0, v6

    iget-boolean v0, v0, Lcom/android/email/mail/Store$StoreInfo;->mPushSupported:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCheckFrequency:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    const v20, 0x7f070002

    invoke-virtual/range {v19 .. v20}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCheckFrequency:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    const v20, 0x7f070003

    invoke-virtual/range {v19 .. v20}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 431
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCheckFrequency:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncInterval()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCheckFrequency:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCheckFrequency:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCheckFrequency:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    new-instance v20, Lcom/android/email/activity/setup/AccountSettingsFragment$4;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment$4;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual/range {v19 .. v20}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 445
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    .line 446
    move-object v0, v6

    iget v0, v0, Lcom/android/email/mail/Store$StoreInfo;->mVisibleLimitDefault:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 447
    new-instance v19, Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    const v20, 0x7f080104

    invoke-virtual/range {v19 .. v20}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    const v20, 0x7f070004

    invoke-virtual/range {v19 .. v20}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    const v20, 0x7f070005

    invoke-virtual/range {v19 .. v20}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncLookback()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x4

    invoke-virtual/range {v19 .. v20}, Landroid/preference/ListPreference;->setOrder(I)V

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    new-instance v20, Lcom/android/email/activity/setup/AccountSettingsFragment$5;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment$5;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual/range {v19 .. v20}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 468
    :cond_2
    const-string v19, "account_background_attachments"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountBackgroundAttachments:Landroid/preference/CheckBoxPreference;

    .line 470
    const-string v19, "pop3"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountBackgroundAttachments:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 478
    :goto_0
    const-string v19, "account_default"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDefault:Landroid/preference/CheckBoxPreference;

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDefault:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mDefaultAccountId:J

    move-wide/from16 v22, v0

    cmp-long v20, v20, v22

    if-nez v20, :cond_7

    const/16 v20, 0x1

    :goto_1
    invoke-virtual/range {v19 .. v20}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDefault:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 482
    const-string v19, "account_notify"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountNotify:Landroid/preference/CheckBoxPreference;

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountNotify:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/emailcommon/provider/EmailContent$Account;->getFlags()I

    move-result v20

    and-int/lit8 v20, v20, 0x1

    if-eqz v20, :cond_8

    const/16 v20, 0x1

    :goto_2
    invoke-virtual/range {v19 .. v20}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountNotify:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 486
    const-string v19, "account_ringtone"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/RingtonePreference;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountRingtone:Landroid/preference/RingtonePreference;

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountRingtone:Landroid/preference/RingtonePreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/RingtonePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountRingtone:Landroid/preference/RingtonePreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/preference/RingtonePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v10

    .line 492
    .local v10, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v19

    const-string v20, "account_ringtone"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/emailcommon/provider/EmailContent$Account;->getRingtone()Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 495
    const-string v19, "account_settings_vibrate_when"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountVibrateWhen:Landroid/preference/ListPreference;

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "vibrator"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/Vibrator;

    .line 497
    .local v18, vibrator:Landroid/os/Vibrator;
    invoke-virtual/range {v18 .. v18}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v19

    if-eqz v19, :cond_d

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/emailcommon/provider/EmailContent$Account;->getFlags()I

    move-result v19

    and-int/lit8 v19, v19, 0x2

    if-eqz v19, :cond_9

    const/16 v19, 0x1

    move/from16 v4, v19

    .line 499
    .local v4, flagsVibrate:Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/emailcommon/provider/EmailContent$Account;->getFlags()I

    move-result v19

    and-int/lit8 v19, v19, 0x40

    if-eqz v19, :cond_a

    const/16 v19, 0x1

    move/from16 v5, v19

    .line 501
    .local v5, flagsVibrateSilent:Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountVibrateWhen:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    if-eqz v4, :cond_b

    const-string v20, "always"

    :goto_5
    invoke-virtual/range {v19 .. v20}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountVibrateWhen:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 512
    .end local v4           #flagsVibrate:Z
    .end local v5           #flagsVibrateSilent:Z
    :goto_6
    const-string v19, "incoming"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    new-instance v20, Lcom/android/email/activity/setup/AccountSettingsFragment$6;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment$6;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 522
    const-string v19, "outgoing"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    .line 523
    .local v9, prefOutgoing:Landroid/preference/Preference;
    const/4 v15, 0x1

    .line 525
    .local v15, showOutgoing:Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSenderUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/email/mail/Sender;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/mail/Sender;

    move-result-object v11

    .line 526
    .local v11, sender:Lcom/android/email/mail/Sender;
    if-eqz v11, :cond_3

    .line 527
    invoke-virtual {v11}, Lcom/android/email/mail/Sender;->getSettingActivityClass()Ljava/lang/Class;
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 528
    .local v14, setting:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Activity;>;"
    if-eqz v14, :cond_e

    const/16 v19, 0x1

    move/from16 v15, v19

    .line 533
    .end local v11           #sender:Lcom/android/email/mail/Sender;
    .end local v14           #setting:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Activity;>;"
    :cond_3
    :goto_7
    if-eqz v15, :cond_f

    .line 534
    new-instance v19, Lcom/android/email/activity/setup/AccountSettingsFragment$7;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment$7;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    move-object v0, v9

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 548
    :goto_8
    const-string v19, "account_sync_contacts"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncContacts:Landroid/preference/CheckBoxPreference;

    .line 549
    const-string v19, "account_sync_calendar"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncCalendar:Landroid/preference/CheckBoxPreference;

    .line 550
    const-string v19, "account_sync_email"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncEmail:Landroid/preference/CheckBoxPreference;

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "eas"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_10

    .line 552
    new-instance v3, Landroid/accounts/Account;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "com.android.exchange"

    move-object v0, v3

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    .local v3, acct:Landroid/accounts/Account;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncContacts:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const-string v20, "com.android.contacts"

    move-object v0, v3

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncContacts:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncCalendar:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const-string v20, "com.android.calendar"

    move-object v0, v3

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncCalendar:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncEmail:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const-string v20, "com.android.email.provider"

    move-object v0, v3

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncEmail:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 572
    .end local v3           #acct:Landroid/accounts/Account;
    :goto_9
    const-string v19, "delete_account"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    .line 573
    .local v8, prefDeleteAccount:Landroid/preference/Preference;
    const-string v19, "debug.monkey"

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    if-nez v19, :cond_4

    .line 574
    new-instance v19, Lcom/android/email/activity/setup/AccountSettingsFragment$8;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment$8;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    move-object v0, v8

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 586
    :cond_4
    return-void

    .line 473
    .end local v8           #prefDeleteAccount:Landroid/preference/Preference;
    .end local v9           #prefOutgoing:Landroid/preference/Preference;
    .end local v10           #prefs:Landroid/content/SharedPreferences;
    .end local v15           #showOutgoing:Z
    .end local v18           #vibrator:Landroid/os/Vibrator;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountBackgroundAttachments:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/emailcommon/provider/EmailContent$Account;->getFlags()I

    move-result v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0x100

    move/from16 v20, v0

    if-eqz v20, :cond_6

    const/16 v20, 0x1

    :goto_a
    invoke-virtual/range {v19 .. v20}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountBackgroundAttachments:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_0

    .line 473
    :cond_6
    const/16 v20, 0x0

    goto :goto_a

    .line 479
    :cond_7
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 483
    :cond_8
    const/16 v20, 0x0

    goto/16 :goto_2

    .line 498
    .restart local v10       #prefs:Landroid/content/SharedPreferences;
    .restart local v18       #vibrator:Landroid/os/Vibrator;
    :cond_9
    const/16 v19, 0x0

    move/from16 v4, v19

    goto/16 :goto_3

    .line 499
    .restart local v4       #flagsVibrate:Z
    :cond_a
    const/16 v19, 0x0

    move/from16 v5, v19

    goto/16 :goto_4

    .line 501
    .restart local v5       #flagsVibrateSilent:Z
    :cond_b
    if-eqz v5, :cond_c

    const-string v20, "silent"

    goto/16 :goto_5

    :cond_c
    const-string v20, "never"

    goto/16 :goto_5

    .line 507
    .end local v4           #flagsVibrate:Z
    .end local v5           #flagsVibrateSilent:Z
    :cond_d
    const-string v19, "account_notifications"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceCategory;

    .line 509
    .local v7, notificationsCategory:Landroid/preference/PreferenceCategory;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountVibrateWhen:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_6

    .line 528
    .end local v7           #notificationsCategory:Landroid/preference/PreferenceCategory;
    .restart local v9       #prefOutgoing:Landroid/preference/Preference;
    .restart local v11       #sender:Lcom/android/email/mail/Sender;
    .restart local v14       #setting:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Activity;>;"
    .restart local v15       #showOutgoing:Z
    :cond_e
    const/16 v19, 0x0

    move/from16 v15, v19

    goto/16 :goto_7

    .line 543
    .end local v11           #sender:Lcom/android/email/mail/Sender;
    .end local v14           #setting:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Activity;>;"
    :cond_f
    const-string v19, "account_servers"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/PreferenceCategory;

    .line 545
    .local v13, serverCategory:Landroid/preference/PreferenceCategory;
    invoke-virtual {v13, v9}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_8

    .line 564
    .end local v13           #serverCategory:Landroid/preference/PreferenceCategory;
    :cond_10
    const-string v19, "account_servers"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/PreferenceCategory;

    .line 566
    .restart local v13       #serverCategory:Landroid/preference/PreferenceCategory;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncContacts:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    move-object v0, v13

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncCalendar:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    move-object v0, v13

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncEmail:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    move-object v0, v13

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_9

    .line 530
    .end local v13           #serverCategory:Landroid/preference/PreferenceCategory;
    :catch_0
    move-exception v19

    goto/16 :goto_7
.end method

.method private onPreferenceChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 604
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCallback:Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-interface {v0, v1, p1, p2}, Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;->onSettingsChanged(Lcom/android/emailcommon/provider/EmailContent$Account;Ljava/lang/String;Ljava/lang/Object;)V

    .line 605
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSaveOnExit:Z

    .line 606
    return-void
.end method

.method private saveSettings()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 614
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->getFlags()I

    move-result v4

    and-int/lit16 v2, v4, -0x144

    .line 619
    .local v2, newFlags:I
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountBackgroundAttachments:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x100

    :goto_0
    or-int/2addr v2, v4

    .line 621
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDefault:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDefaultAccount(Z)V

    .line 623
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDescription:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDisplayName(Ljava/lang/String;)V

    .line 625
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountName:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSenderName(Ljava/lang/String;)V

    .line 626
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountSignature:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSignature(Ljava/lang/String;)V

    .line 627
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountNotify:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    :goto_1
    or-int/2addr v2, v4

    .line 628
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCheckFrequency:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncInterval(I)V

    .line 629
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    if-eqz v4, :cond_0

    .line 630
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncWindow:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncLookback(I)V

    .line 632
    :cond_0
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountVibrateWhen:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string v5, "always"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 633
    or-int/lit8 v2, v2, 0x2

    .line 637
    :cond_1
    :goto_2
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountRingtone:Landroid/preference/RingtonePreference;

    invoke-virtual {v4}, Landroid/preference/RingtonePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 638
    .local v3, prefs:Landroid/content/SharedPreferences;
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    const-string v5, "account_ringtone"

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->setRingtone(Ljava/lang/String;)V

    .line 639
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v4, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->setFlags(I)V

    .line 641
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v4, v4, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v4, v4, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    const-string v5, "eas"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 642
    new-instance v0, Landroid/accounts/Account;

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v4, v4, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    const-string v5, "com.android.exchange"

    invoke-direct {v0, v4, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    .local v0, acct:Landroid/accounts/Account;
    const-string v4, "com.android.contacts"

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncContacts:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    invoke-static {v0, v4, v5}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 646
    const-string v4, "com.android.calendar"

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncCalendar:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    invoke-static {v0, v4, v5}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 648
    const-string v4, "com.android.email.provider"

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncEmail:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    invoke-static {v0, v4, v5}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 657
    .end local v0           #acct:Landroid/accounts/Account;
    :cond_2
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v4}, Lcom/android/email/activity/setup/AccountSettingsUtils;->getAccountContentValues(Lcom/android/emailcommon/provider/EmailContent$Account;)Landroid/content/ContentValues;

    move-result-object v1

    .line 658
    .local v1, cv:Landroid/content/ContentValues;
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 661
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/email/Email;->setServicesEnabledAsync(Landroid/content/Context;)V

    .line 662
    return-void

    .end local v1           #cv:Landroid/content/ContentValues;
    .end local v3           #prefs:Landroid/content/SharedPreferences;
    :cond_3
    move v4, v6

    .line 619
    goto/16 :goto_0

    :cond_4
    move v4, v6

    .line 627
    goto/16 :goto_1

    .line 634
    :cond_5
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountVibrateWhen:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string v5, "silent"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 635
    or-int/lit8 v2, v2, 0x40

    goto :goto_2
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 200
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 201
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 158
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 160
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    .line 163
    instance-of v0, p1, Lcom/android/email/activity/setup/AccountSettingsXL;

    if-eqz v0, :cond_0

    .line 164
    check-cast p1, Lcom/android/email/activity/setup/AccountSettingsXL;

    .end local p1
    invoke-virtual {p1, p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->onAttach(Landroid/app/Fragment;)V

    .line 166
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 177
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 180
    const v3, 0x7f060001

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->addPreferencesFromResource(I)V

    .line 184
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 185
    .local v2, b:Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 186
    const-string v3, "AccountSettingsFragment.AccountId"

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 187
    .local v0, accountId:J
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-ltz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mLoaded:Z

    if-nez v3, :cond_0

    .line 188
    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->startLoadingAccount(J)V

    .line 192
    .end local v0           #accountId:J
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDirty:Z

    .line 193
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 285
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 287
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mLoadAccountTask:Landroid/os/AsyncTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 288
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mLoadAccountTask:Landroid/os/AsyncTask;

    .line 289
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 259
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 260
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSaveOnExit:Z

    if-eqz v0, :cond_0

    .line 261
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->saveSettings()V

    .line 263
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 230
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 232
    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDirty:Z

    if-eqz v1, :cond_1

    .line 236
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v2

    iput-object v2, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 238
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeySend:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v2

    iput-object v2, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 242
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 243
    .local v0, refreshedAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-nez v1, :cond_2

    .line 245
    :cond_0
    iput-boolean v5, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mSaveOnExit:Z

    .line 246
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCallback:Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;

    invoke-interface {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;->abandonEdit()V

    .line 252
    .end local v0           #refreshedAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    :cond_1
    :goto_0
    return-void

    .line 249
    .restart local v0       #refreshedAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    :cond_2
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDeletePolicy()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDeletePolicy(I)V

    .line 250
    iput-boolean v5, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccountDirty:Z

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 296
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 297
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 211
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mStarted:Z

    .line 215
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mLoaded:Z

    if-nez v0, :cond_0

    .line 216
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->loadSettings()V

    .line 218
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 273
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 274
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mStarted:Z

    .line 275
    return-void
.end method

.method public setCallback(Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 303
    if-nez p1, :cond_0

    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsFragment$EmptyCallback;->INSTANCE:Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;

    :goto_0
    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mCallback:Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;

    .line 304
    return-void

    :cond_0
    move-object v0, p1

    .line 303
    goto :goto_0
.end method

.method public startLoadingAccount(J)V
    .locals 4
    .parameter "accountId"

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mLoadAccountTask:Landroid/os/AsyncTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 311
    new-instance v0, Lcom/android/email/activity/setup/AccountSettingsFragment$LoadAccountTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment$LoadAccountTask;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;Lcom/android/email/activity/setup/AccountSettingsFragment$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Long;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment$LoadAccountTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment;->mLoadAccountTask:Landroid/os/AsyncTask;

    .line 312
    return-void
.end method
