.class public Lcom/android/email/activity/setup/AccountSettingsXL;
.super Landroid/preference/PreferenceActivity;
.source "AccountSettingsXL.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/AccountSettingsXL$1;,
        Lcom/android/email/activity/setup/AccountSettingsXL$LoginWarningDialog;,
        Lcom/android/email/activity/setup/AccountSettingsXL$UnsavedChangesDialogFragment;,
        Lcom/android/email/activity/setup/AccountSettingsXL$GetAccountIdFromAccountTask;,
        Lcom/android/email/activity/setup/AccountSettingsXL$AccountServerSettingsFragmentCallback;,
        Lcom/android/email/activity/setup/AccountSettingsXL$AccountSettingsFragmentCallback;,
        Lcom/android/email/activity/setup/AccountSettingsXL$LoadAccountListTask;
    }
.end annotation


# static fields
.field private static final SECRET_KEY_CODES:[I


# instance fields
.field private mAccountListHeaders:[Landroid/preference/PreferenceActivity$Header;

.field private final mAccountServerSettingsFragmentCallback:Lcom/android/email/activity/setup/AccountSettingsXL$AccountServerSettingsFragmentCallback;

.field private final mAccountSettingsFragmentCallback:Lcom/android/email/activity/setup/AccountSettingsXL$AccountSettingsFragmentCallback;

.field private mAppPreferencesHeader:Landroid/preference/PreferenceActivity$Header;

.field mCurrentFragment:Landroid/app/Fragment;

.field private mDeletingAccountId:J

.field private mGeneratedHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mGetAccountIdFromAccountTask:Lcom/android/email/activity/setup/AccountSettingsXL$GetAccountIdFromAccountTask;

.field private mLoadAccountListTask:Lcom/android/email/activity/setup/AccountSettingsXL$LoadAccountListTask;

.field private mNumGeneralHeaderClicked:I

.field private mRequestedAccountHeader:Landroid/preference/PreferenceActivity$Header;

.field private mRequestedAccountId:J

.field private mResumed:Z

.field private mSecretKeyCodeIndex:I

.field private mShowDebugMenu:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/email/activity/setup/AccountSettingsXL;->SECRET_KEY_CODES:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x20t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 86
    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mSecretKeyCodeIndex:I

    .line 93
    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mNumGeneralHeaderClicked:I

    .line 100
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeletingAccountId:J

    .line 110
    new-instance v0, Lcom/android/email/activity/setup/AccountSettingsXL$AccountSettingsFragmentCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/email/activity/setup/AccountSettingsXL$AccountSettingsFragmentCallback;-><init>(Lcom/android/email/activity/setup/AccountSettingsXL;Lcom/android/email/activity/setup/AccountSettingsXL$1;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAccountSettingsFragmentCallback:Lcom/android/email/activity/setup/AccountSettingsXL$AccountSettingsFragmentCallback;

    .line 112
    new-instance v0, Lcom/android/email/activity/setup/AccountSettingsXL$AccountServerSettingsFragmentCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/email/activity/setup/AccountSettingsXL$AccountServerSettingsFragmentCallback;-><init>(Lcom/android/email/activity/setup/AccountSettingsXL;Lcom/android/email/activity/setup/AccountSettingsXL$1;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAccountServerSettingsFragmentCallback:Lcom/android/email/activity/setup/AccountSettingsXL$AccountServerSettingsFragmentCallback;

    .line 777
    return-void
.end method

.method static synthetic access$402(Lcom/android/email/activity/setup/AccountSettingsXL;[Landroid/preference/PreferenceActivity$Header;)[Landroid/preference/PreferenceActivity$Header;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAccountListHeaders:[Landroid/preference/PreferenceActivity$Header;

    return-object p1
.end method

.method static synthetic access$502(Lcom/android/email/activity/setup/AccountSettingsXL;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-wide p1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeletingAccountId:J

    return-wide p1
.end method

.method static synthetic access$602(Lcom/android/email/activity/setup/AccountSettingsXL;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-wide p1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mRequestedAccountId:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/android/email/activity/setup/AccountSettingsXL;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->forceBack()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/email/activity/setup/AccountSettingsXL;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsXL;->forceSwitchHeader(I)V

    return-void
.end method

.method public static actionSettings(Landroid/app/Activity;J)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 119
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSettingsXL;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 120
    const-string v1, "AccountSettingsXL.account_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 121
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 122
    return-void
.end method

.method public static actionSettingsWithDebug(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 141
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSettingsXL;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 142
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 143
    const-string v1, "AccountSettingsXL.enable_debug"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 144
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 145
    return-void
.end method

.method public static createAccountSettingsIntent(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 131
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSettingsXL;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 132
    const-string v1, "AccountSettingsXL.account_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 133
    const-string v1, "AccountSettingsXL.for_account"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    return-object v0
.end method

.method private enableDebugMenu()V
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mShowDebugMenu:Z

    .line 290
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->invalidateHeaders()V

    .line 291
    return-void
.end method

.method private forceBack()V
    .locals 1

    .prologue
    .line 509
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mCurrentFragment:Landroid/app/Fragment;

    .line 510
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->onBackPressed()V

    .line 511
    return-void
.end method

.method private forceSwitchHeader(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 497
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mCurrentFragment:Landroid/app/Fragment;

    .line 499
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsXL;->setSelection(I)V

    .line 500
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mGeneratedHeaders:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 501
    .local v0, header:Landroid/preference/PreferenceActivity$Header;
    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsXL;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 502
    return-void
.end method

.method private getAppPreferencesHeader()Landroid/preference/PreferenceActivity$Header;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 379
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAppPreferencesHeader:Landroid/preference/PreferenceActivity$Header;

    if-nez v0, :cond_0

    .line 380
    new-instance v0, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v0}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAppPreferencesHeader:Landroid/preference/PreferenceActivity$Header;

    .line 381
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAppPreferencesHeader:Landroid/preference/PreferenceActivity$Header;

    const v1, 0x7f08015b

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsXL;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 382
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAppPreferencesHeader:Landroid/preference/PreferenceActivity$Header;

    iput-object v2, v0, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    .line 383
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAppPreferencesHeader:Landroid/preference/PreferenceActivity$Header;

    const/4 v1, 0x0

    iput v1, v0, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    .line 384
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAppPreferencesHeader:Landroid/preference/PreferenceActivity$Header;

    const-class v1, Lcom/android/email/activity/setup/GeneralPreferences;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 385
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAppPreferencesHeader:Landroid/preference/PreferenceActivity$Header;

    iput-object v2, v0, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAppPreferencesHeader:Landroid/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method private onAddNewAccount()V
    .locals 0

    .prologue
    .line 312
    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->actionNewAccount(Landroid/app/Activity;)V

    .line 313
    return-void
.end method

.method private shouldShowNewAccount()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 298
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->isMultiPane()Z

    move-result v0

    if-nez v0, :cond_0

    .line 299
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->hasHeaders()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 308
    :goto_0
    return v0

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mCurrentFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mCurrentFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/android/email/activity/setup/GeneralPreferences;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mCurrentFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/android/email/activity/setup/DebugFragment;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mCurrentFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;

    if-nez v0, :cond_1

    move v0, v1

    .line 306
    goto :goto_0

    .line 308
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateAccounts()V
    .locals 5

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->hasHeaders()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mLoadAccountListTask:Lcom/android/email/activity/setup/AccountSettingsXL$LoadAccountListTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 321
    new-instance v0, Lcom/android/email/activity/setup/AccountSettingsXL$LoadAccountListTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/setup/AccountSettingsXL$LoadAccountListTask;-><init>(Lcom/android/email/activity/setup/AccountSettingsXL;Lcom/android/email/activity/setup/AccountSettingsXL$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Long;

    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeletingAccountId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsXL$LoadAccountListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/AccountSettingsXL$LoadAccountListTask;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mLoadAccountListTask:Lcom/android/email/activity/setup/AccountSettingsXL$LoadAccountListTask;

    .line 324
    :cond_0
    return-void
.end method


# virtual methods
.method public deleteAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 4
    .parameter "account"

    .prologue
    .line 660
    invoke-static {p0}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    invoke-virtual {v1, v2, v3}, Lcom/android/email/NotificationController;->cancelNewMessageNotification(J)V

    .line 663
    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    invoke-virtual {v1, v2, v3}, Lcom/android/email/Controller;->deleteAccount(J)V

    .line 667
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->isMultiPane()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 668
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->getAppPreferencesHeader()Landroid/preference/PreferenceActivity$Header;

    move-result-object v0

    .line 669
    .local v0, prefsHeader:Landroid/preference/PreferenceActivity$Header;
    iget-object v1, v0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v2, v0, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    invoke-virtual {p0, v1, v2}, Lcom/android/email/activity/setup/AccountSettingsXL;->switchToHeader(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 670
    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    iput-wide v1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeletingAccountId:J

    .line 671
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->updateAccounts()V

    .line 677
    .end local v0           #prefsHeader:Landroid/preference/PreferenceActivity$Header;
    :goto_0
    return-void

    .line 675
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->finish()V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Fragment;)V
    .locals 4
    .parameter "f"

    .prologue
    .line 517
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mCurrentFragment:Landroid/app/Fragment;

    .line 519
    instance-of v3, p1, Lcom/android/email/activity/setup/AccountSettingsFragment;

    if-eqz v3, :cond_2

    .line 520
    move-object v0, p1

    check-cast v0, Lcom/android/email/activity/setup/AccountSettingsFragment;

    move-object v2, v0

    .line 521
    .local v2, asf:Lcom/android/email/activity/setup/AccountSettingsFragment;
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAccountSettingsFragmentCallback:Lcom/android/email/activity/setup/AccountSettingsXL$AccountSettingsFragmentCallback;

    invoke-virtual {v2, v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->setCallback(Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;)V

    .line 528
    .end local v2           #asf:Lcom/android/email/activity/setup/AccountSettingsFragment;
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mResumed:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->hasHeaders()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 529
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->invalidateOptionsMenu()V

    .line 531
    :cond_1
    return-void

    .line 522
    :cond_2
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mCurrentFragment:Landroid/app/Fragment;

    instance-of v3, v3, Lcom/android/email/activity/setup/AccountServerBaseFragment;

    if-eqz v3, :cond_0

    .line 523
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mCurrentFragment:Landroid/app/Fragment;

    check-cast v1, Lcom/android/email/activity/setup/AccountServerBaseFragment;

    .line 524
    .local v1, asbf:Lcom/android/email/activity/setup/AccountServerBaseFragment;
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAccountServerSettingsFragmentCallback:Lcom/android/email/activity/setup/AccountSettingsXL$AccountServerSettingsFragmentCallback;

    invoke-virtual {v1, v3}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->setCallback(Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 265
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mCurrentFragment:Landroid/app/Fragment;

    instance-of v2, v2, Lcom/android/email/activity/setup/AccountServerBaseFragment;

    if-eqz v2, :cond_0

    .line 266
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mCurrentFragment:Landroid/app/Fragment;

    check-cast v2, Lcom/android/email/activity/setup/AccountServerBaseFragment;

    invoke-virtual {v2}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->haveSettingsChanged()Z

    move-result v0

    .line 267
    .local v0, changed:Z
    if-eqz v0, :cond_0

    .line 268
    invoke-static {}, Lcom/android/email/activity/setup/AccountSettingsXL$UnsavedChangesDialogFragment;->newInstanceForBack()Lcom/android/email/activity/setup/AccountSettingsXL$UnsavedChangesDialogFragment;

    move-result-object v1

    .line 270
    .local v1, dialogFragment:Lcom/android/email/activity/setup/AccountSettingsXL$UnsavedChangesDialogFragment;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "UnsavedChangesDialogFragment"

    invoke-virtual {v1, v2, v3}, Lcom/android/email/activity/setup/AccountSettingsXL$UnsavedChangesDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 275
    .end local v0           #changed:Z
    .end local v1           #dialogFragment:Lcom/android/email/activity/setup/AccountSettingsXL$UnsavedChangesDialogFragment;
    :goto_0
    return-void

    .line 274
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-wide/16 v9, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 335
    iput-object v7, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mRequestedAccountHeader:Landroid/preference/PreferenceActivity$Header;

    .line 338
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 339
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->getAppPreferencesHeader()Landroid/preference/PreferenceActivity$Header;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAccountListHeaders:[Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_1

    .line 343
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAccountListHeaders:[Landroid/preference/PreferenceActivity$Header;

    array-length v0, v0

    move v1, v8

    .line 344
    :goto_0
    if-ge v1, v0, :cond_1

    .line 345
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAccountListHeaders:[Landroid/preference/PreferenceActivity$Header;

    aget-object v2, v2, v1

    .line 346
    if-eqz v2, :cond_0

    iget-wide v3, v2, Landroid/preference/PreferenceActivity$Header;->id:J

    cmp-long v3, v3, v9

    if-eqz v3, :cond_0

    .line 347
    iget-wide v3, v2, Landroid/preference/PreferenceActivity$Header;->id:J

    iget-wide v5, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeletingAccountId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    .line 348
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    iget-wide v3, v2, Landroid/preference/PreferenceActivity$Header;->id:J

    iget-wide v5, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mRequestedAccountId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 350
    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mRequestedAccountHeader:Landroid/preference/PreferenceActivity$Header;

    .line 351
    iput-wide v9, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mRequestedAccountId:J

    .line 344
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 359
    :cond_1
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mShowDebugMenu:Z

    if-eqz v0, :cond_2

    .line 361
    new-instance v0, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v0}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 362
    const v1, 0x7f08001d

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsXL;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 363
    iput-object v7, v0, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    .line 364
    iput v8, v0, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    .line 365
    const-class v1, Lcom/android/email/activity/setup/DebugFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 366
    iput-object v7, v0, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 367
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    :cond_2
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mGeneratedHeaders:Ljava/util/List;

    .line 372
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 149
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 150
    invoke-static {p0}, Lcom/android/email/activity/ActivityHelper;->debugSetWindowFlags(Landroid/app/Activity;)V

    .line 152
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 153
    .local v1, i:Landroid/content/Intent;
    if-nez p1, :cond_0

    .line 157
    const-string v3, "com.android.email.activity.setup.ACCOUNT_MANAGER_ENTRY"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 159
    new-instance v3, Lcom/android/email/activity/setup/AccountSettingsXL$GetAccountIdFromAccountTask;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/email/activity/setup/AccountSettingsXL$GetAccountIdFromAccountTask;-><init>(Lcom/android/email/activity/setup/AccountSettingsXL;Lcom/android/email/activity/setup/AccountSettingsXL$1;)V

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/content/Intent;

    aput-object v1, v4, v6

    invoke-virtual {v3, v4}, Lcom/android/email/activity/setup/AccountSettingsXL$GetAccountIdFromAccountTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/setup/AccountSettingsXL$GetAccountIdFromAccountTask;

    iput-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mGetAccountIdFromAccountTask:Lcom/android/email/activity/setup/AccountSettingsXL$GetAccountIdFromAccountTask;

    .line 172
    :cond_0
    :goto_0
    const-string v3, "AccountSettingsXL.enable_debug"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mShowDebugMenu:Z

    .line 174
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v7, v7}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 176
    return-void

    .line 163
    :cond_1
    const-string v3, "AccountSettingsXL.account_id"

    const-wide/16 v4, -0x1

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mRequestedAccountId:J

    .line 164
    const-string v3, "AccountSettingsXL.for_account"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 165
    .local v2, loginWarningAccount:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 167
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettingsXL$LoginWarningDialog;->newInstance(Ljava/lang/String;)Lcom/android/email/activity/setup/AccountSettingsXL$LoginWarningDialog;

    move-result-object v0

    .line 168
    .local v0, dialog:Lcom/android/email/activity/setup/AccountSettingsXL$LoginWarningDialog;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "loginwarning"

    invoke-virtual {v0, v3, v4}, Lcom/android/email/activity/setup/AccountSettingsXL$LoginWarningDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 224
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 225
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 226
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 198
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 199
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mLoadAccountListTask:Lcom/android/email/activity/setup/AccountSettingsXL$LoadAccountListTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 200
    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mLoadAccountListTask:Lcom/android/email/activity/setup/AccountSettingsXL$LoadAccountListTask;

    .line 201
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mGetAccountIdFromAccountTask:Lcom/android/email/activity/setup/AccountSettingsXL$GetAccountIdFromAccountTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 202
    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mGetAccountIdFromAccountTask:Lcom/android/email/activity/setup/AccountSettingsXL$GetAccountIdFromAccountTask;

    .line 203
    return-void
.end method

.method public onGetNewHeader()Landroid/preference/PreferenceActivity$Header;
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mRequestedAccountHeader:Landroid/preference/PreferenceActivity$Header;

    .line 284
    .local v0, result:Landroid/preference/PreferenceActivity$Header;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mRequestedAccountHeader:Landroid/preference/PreferenceActivity$Header;

    .line 285
    return-object v0
.end method

.method public onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 4
    .parameter "header"
    .parameter "position"

    .prologue
    .line 466
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mCurrentFragment:Landroid/app/Fragment;

    instance-of v2, v2, Lcom/android/email/activity/setup/AccountServerBaseFragment;

    if-eqz v2, :cond_0

    .line 467
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mCurrentFragment:Landroid/app/Fragment;

    check-cast v2, Lcom/android/email/activity/setup/AccountServerBaseFragment;

    invoke-virtual {v2}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->haveSettingsChanged()Z

    move-result v0

    .line 468
    .local v0, changed:Z
    if-eqz v0, :cond_0

    .line 469
    invoke-static {p2}, Lcom/android/email/activity/setup/AccountSettingsXL$UnsavedChangesDialogFragment;->newInstanceForHeader(I)Lcom/android/email/activity/setup/AccountSettingsXL$UnsavedChangesDialogFragment;

    move-result-object v1

    .line 471
    .local v1, dialogFragment:Lcom/android/email/activity/setup/AccountSettingsXL$UnsavedChangesDialogFragment;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "UnsavedChangesDialogFragment"

    invoke-virtual {v1, v2, v3}, Lcom/android/email/activity/setup/AccountSettingsXL$UnsavedChangesDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 488
    .end local v0           #changed:Z
    .end local v1           #dialogFragment:Lcom/android/email/activity/setup/AccountSettingsXL$UnsavedChangesDialogFragment;
    :goto_0
    return-void

    .line 477
    :cond_0
    if-nez p2, :cond_2

    .line 478
    iget v2, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mNumGeneralHeaderClicked:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mNumGeneralHeaderClicked:I

    .line 479
    iget v2, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mNumGeneralHeaderClicked:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    .line 480
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->enableDebugMenu()V

    .line 487
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    goto :goto_0

    .line 483
    :cond_2
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mNumGeneralHeaderClicked:I

    goto :goto_1
.end method

.method public onIncomingSettings(Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 7
    .parameter

    .prologue
    .line 608
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->getApplication()Landroid/app/Application;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v0

    .line 609
    if-eqz v0, :cond_0

    .line 610
    invoke-virtual {v0}, Lcom/android/email/mail/Store;->getSettingActivityClass()Ljava/lang/Class;

    move-result-object v0

    .line 611
    if-eqz v0, :cond_0

    .line 612
    const/4 v1, 0x3

    invoke-static {v1, p1}, Lcom/android/email/activity/setup/SetupData;->init(ILcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 613
    const-class v1, Lcom/android/email/activity/setup/AccountSetupIncoming;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 614
    const-class v0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->getSettingsModeArgs()Landroid/os/Bundle;

    move-result-object v2

    const v3, 0x7f080135

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/activity/setup/AccountSettingsXL;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 627
    :cond_0
    :goto_0
    return-void

    .line 617
    :cond_1
    const-class v1, Lcom/android/email/activity/setup/AccountSetupExchange;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 618
    const-class v0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->getSettingsModeArgs()Landroid/os/Bundle;

    move-result-object v2

    const v3, 0x7f080135

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/activity/setup/AccountSettingsXL;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 624
    :catch_0
    move-exception v0

    .line 625
    const-string v1, "Email"

    const-string v2, "Error while trying to invoke store settings."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 210
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sget-object v1, Lcom/android/email/activity/setup/AccountSettingsXL;->SECRET_KEY_CODES:[I

    iget v2, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mSecretKeyCodeIndex:I

    aget v1, v1, v2

    if-ne v0, v1, :cond_1

    .line 211
    iget v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mSecretKeyCodeIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mSecretKeyCodeIndex:I

    .line 212
    iget v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mSecretKeyCodeIndex:I

    sget-object v1, Lcom/android/email/activity/setup/AccountSettingsXL;->SECRET_KEY_CODES:[I

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 213
    iput v3, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mSecretKeyCodeIndex:I

    .line 214
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->enableDebugMenu()V

    .line 219
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 217
    :cond_1
    iput v3, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mSecretKeyCodeIndex:I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 236
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 248
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 250
    :goto_0
    return v0

    .line 242
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->onBackPressed()V

    .line 250
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 245
    :sswitch_1
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->onAddNewAccount()V

    goto :goto_1

    .line 236
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0f00d6 -> :sswitch_1
    .end sparse-switch
.end method

.method public onOutgoingSettings(Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 7
    .parameter

    .prologue
    .line 636
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p1, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSenderUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/mail/Sender;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/mail/Sender;

    move-result-object v0

    .line 637
    if-eqz v0, :cond_0

    .line 638
    invoke-virtual {v0}, Lcom/android/email/mail/Sender;->getSettingActivityClass()Ljava/lang/Class;

    move-result-object v0

    .line 639
    if-eqz v0, :cond_0

    .line 640
    const/4 v1, 0x3

    invoke-static {v1, p1}, Lcom/android/email/activity/setup/SetupData;->init(ILcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 641
    const-class v1, Lcom/android/email/activity/setup/AccountSetupOutgoing;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 642
    const-class v0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->getSettingsModeArgs()Landroid/os/Bundle;

    move-result-object v2

    const v3, 0x7f080137

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/activity/setup/AccountSettingsXL;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 651
    :cond_0
    :goto_0
    return-void

    .line 648
    :catch_0
    move-exception v0

    .line 649
    const-string v1, "Email"

    const-string v2, "Error while trying to invoke sender settings."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 192
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 193
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mResumed:Z

    .line 194
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 231
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->shouldShowNewAccount()Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 180
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 181
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->updateAccounts()V

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mResumed:Z

    .line 185
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->hasHeaders()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->invalidateOptionsMenu()V

    .line 188
    :cond_0
    return-void
.end method

.method public onSettingsChanged(Lcom/android/emailcommon/provider/EmailContent$Account;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8
    .parameter "account"
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 588
    const-string v4, "account_description"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 589
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAccountListHeaders:[Landroid/preference/PreferenceActivity$Header;

    .local v0, arr$:[Landroid/preference/PreferenceActivity$Header;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 590
    .local v1, header:Landroid/preference/PreferenceActivity$Header;
    iget-wide v4, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    iget-wide v6, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 593
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 594
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->invalidateHeaders()V

    .line 599
    .end local v0           #arr$:[Landroid/preference/PreferenceActivity$Header;
    .end local v1           #header:Landroid/preference/PreferenceActivity$Header;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_0
    return-void

    .line 589
    .restart local v0       #arr$:[Landroid/preference/PreferenceActivity$Header;
    .restart local v1       #header:Landroid/preference/PreferenceActivity$Header;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
