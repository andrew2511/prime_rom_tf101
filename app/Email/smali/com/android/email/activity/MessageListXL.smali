.class public Lcom/android/email/activity/MessageListXL;
.super Landroid/app/Activity;
.source "MessageListXL.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/email/activity/MessageListXLFragmentManager$TargetActivity;
.implements Lcom/android/email/activity/MoveMessageToDialog$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MessageListXL$ControllerResult;,
        Lcom/android/email/activity/MessageListXL$RefreshTask;,
        Lcom/android/email/activity/MessageListXL$RefreshListener;,
        Lcom/android/email/activity/MessageListXL$ActionBarNavigationCallback;,
        Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;,
        Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;,
        Lcom/android/email/activity/MessageListXL$MailboxListFragmentCallback;,
        Lcom/android/email/activity/MessageListXL$MessageOrderManagerCallback;
    }
.end annotation


# instance fields
.field private mAccountsSelectorAdapter:Lcom/android/email/activity/AccountSelectorAdapter;

.field private final mActionBarNavigationCallback:Lcom/android/email/activity/MessageListXL$ActionBarNavigationCallback;

.field private mBannerController:Lcom/android/email/activity/BannerController;

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/android/email/Controller;

.field private mControllerResult:Lcom/android/email/Controller$Result;

.field private mErrorMessageView:Landroid/widget/TextView;

.field private final mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

.field private mIsCreated:Z

.field private mLastErrorAccountId:J

.field private final mMailRefreshManagerListener:Lcom/android/email/activity/MessageListXL$RefreshListener;

.field private final mMessageOrderManagerCallback:Lcom/android/email/activity/MessageListXL$MessageOrderManagerCallback;

.field private mOrderManager:Lcom/android/email/activity/MessageOrderManager;

.field private mRefreshManager:Lcom/android/email/RefreshManager;

.field private mRefreshTask:Lcom/android/email/activity/MessageListXL$RefreshTask;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 72
    new-instance v0, Lcom/android/email/activity/MessageListXL$RefreshListener;

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MessageListXL$RefreshListener;-><init>(Lcom/android/email/activity/MessageListXL;Lcom/android/email/activity/MessageListXL$1;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->mMailRefreshManagerListener:Lcom/android/email/activity/MessageListXL$RefreshListener;

    .line 80
    new-instance v0, Lcom/android/email/activity/MessageListXL$ActionBarNavigationCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MessageListXL$ActionBarNavigationCallback;-><init>(Lcom/android/email/activity/MessageListXL;Lcom/android/email/activity/MessageListXL$1;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->mActionBarNavigationCallback:Lcom/android/email/activity/MessageListXL$ActionBarNavigationCallback;

    .line 85
    new-instance v0, Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageListXLFragmentManager;-><init>(Lcom/android/email/activity/MessageListXL;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    .line 88
    new-instance v0, Lcom/android/email/activity/MessageListXL$MessageOrderManagerCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MessageListXL$MessageOrderManagerCallback;-><init>(Lcom/android/email/activity/MessageListXL;Lcom/android/email/activity/MessageListXL$1;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->mMessageOrderManagerCallback:Lcom/android/email/activity/MessageListXL$MessageOrderManagerCallback;

    .line 891
    return-void
.end method

.method static synthetic access$1000(Lcom/android/email/activity/MessageListXL;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->updateMessageOrderManager()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/email/activity/MessageListXL;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->stopMessageOrderManager()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/email/activity/MessageListXL;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->onCurrentMessageGone()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/email/activity/MessageListXL;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->onMoveMessage()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/email/activity/MessageListXL;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListXL;->mIsCreated:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/BannerController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mBannerController:Lcom/android/email/activity/BannerController;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/email/activity/MessageListXL;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-wide p1, p0, Lcom/android/email/activity/MessageListXL;->mLastErrorAccountId:J

    return-wide p1
.end method

.method static synthetic access$1700(Lcom/android/email/activity/MessageListXL;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/email/activity/MessageListXL;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListXL;->updateAccountList(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/AccountSelectorAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mAccountsSelectorAdapter:Lcom/android/email/activity/AccountSelectorAdapter;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/email/activity/MessageListXL;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageListXL;->selectAccount(J)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/email/activity/MessageListXL;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->updateProgressIcon()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/email/activity/MessageListXL;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageListXL;->clearErrorMessage(J)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/email/activity/MessageListXL;Ljava/lang/String;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/MessageListXL;->showErrorMessage(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/email/activity/MessageListXL;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->updateNavigationArrows()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/email/activity/MessageListXL;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->loadAccounts()V

    return-void
.end method

.method public static actionOpenAccount(Landroid/app/Activity;J)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 106
    const-class v0, Lcom/android/email/activity/MessageListXL;

    invoke-static {p0, v0}, Lcom/android/emailcommon/utility/Utility;->createRestartAppIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 107
    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    if-eqz v1, :cond_0

    .line 108
    const-string v1, "ACCOUNT_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 110
    :cond_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 111
    return-void
.end method

.method public static actionOpenMailbox(Landroid/app/Activity;JJ)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v1, -0x1

    .line 121
    cmp-long v0, p1, v1

    if-eqz v0, :cond_0

    cmp-long v0, p3, v1

    if-nez v0, :cond_1

    .line 122
    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    throw v0

    .line 124
    :cond_1
    const-class v0, Lcom/android/email/activity/MessageListXL;

    invoke-static {p0, v0}, Lcom/android/emailcommon/utility/Utility;->createRestartAppIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 125
    const-string v1, "ACCOUNT_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 126
    const-string v1, "MAILBOX_ID"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 127
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 128
    return-void
.end method

.method public static actionOpenMessage(Landroid/app/Activity;JJJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v1, -0x1

    .line 140
    cmp-long v0, p1, v1

    if-eqz v0, :cond_0

    cmp-long v0, p3, v1

    if-eqz v0, :cond_0

    cmp-long v0, p5, v1

    if-nez v0, :cond_1

    .line 141
    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    throw v0

    .line 143
    :cond_1
    const-class v0, Lcom/android/email/activity/MessageListXL;

    invoke-static {p0, v0}, Lcom/android/emailcommon/utility/Utility;->createRestartAppIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 144
    const-string v1, "ACCOUNT_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 145
    const-string v1, "MAILBOX_ID"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 146
    const-string v1, "MESSAGE_ID"

    invoke-virtual {v0, v1, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 147
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 148
    return-void
.end method

.method private clearErrorMessage(J)V
    .locals 2
    .parameter "accountId"

    .prologue
    .line 596
    iget-wide v0, p0, Lcom/android/email/activity/MessageListXL;->mLastErrorAccountId:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 597
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->dismissErrorMessage()V

    .line 599
    :cond_0
    return-void
.end method

.method private dismissErrorMessage()V
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mBannerController:Lcom/android/email/activity/BannerController;

    invoke-virtual {v0}, Lcom/android/email/activity/BannerController;->dismiss()V

    .line 606
    return-void
.end method

.method private initFromIntent()V
    .locals 10

    .prologue
    const-wide/16 v8, -0x1

    .line 200
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 201
    .local v7, i:Landroid/content/Intent;
    const-string v0, "ACCOUNT_ID"

    invoke-virtual {v7, v0, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 202
    .local v1, accountId:J
    const-string v0, "MAILBOX_ID"

    invoke-virtual {v7, v0, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 203
    .local v3, mailboxId:J
    const-string v0, "MESSAGE_ID"

    invoke-virtual {v7, v0, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    .line 208
    .local v5, messageId:J
    cmp-long v0, v1, v8

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/activity/MessageListXLFragmentManager;->selectAccount(JJJ)V

    .line 211
    :cond_0
    return-void
.end method

.method private isProgressActive()Z
    .locals 4

    .prologue
    .line 716
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxId()J

    move-result-wide v0

    .line 717
    .local v0, mailboxId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mRefreshManager:Lcom/android/email/RefreshManager;

    invoke-virtual {v2, v0, v1}, Lcom/android/email/RefreshManager;->isMessageListRefreshing(J)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private loadAccounts()V
    .locals 4

    .prologue
    .line 616
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Lcom/android/email/activity/MessageListXL$2;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageListXL$2;-><init>(Lcom/android/email/activity/MessageListXL;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 632
    return-void
.end method

.method private moveToNewer()Z
    .locals 3

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->isMessageSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageOrderManager;->moveToNewer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageOrderManager;->getCurrentMessageId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MessageListXLFragmentManager;->selectMessage(J)V

    .line 413
    const/4 v0, 0x1

    .line 415
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveToOlder()Z
    .locals 3

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->isMessageSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageOrderManager;->moveToOlder()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageOrderManager;->getCurrentMessageId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MessageListXLFragmentManager;->selectMessage(J)V

    .line 404
    const/4 v0, 0x1

    .line 406
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onAccountSettings()Z
    .locals 2

    .prologue
    .line 773
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->getActualAccountId()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/email/activity/setup/AccountSettingsXL;->actionSettings(Landroid/app/Activity;J)V

    .line 774
    const/4 v0, 0x1

    return v0
.end method

.method private onBackPressed(Z)Z
    .locals 2
    .parameter "isSystemBackKey"

    .prologue
    const/4 v1, 0x1

    .line 288
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MessageListXLFragmentManager;->onBackPressed(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 296
    :goto_0
    return v0

    .line 291
    :cond_0
    if-eqz p1, :cond_1

    .line 293
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    move v0, v1

    .line 294
    goto :goto_0

    .line 296
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onCompose()Z
    .locals 2

    .prologue
    .line 765
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->isAccountSelected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 766
    const/4 v0, 0x0

    .line 769
    :goto_0
    return v0

    .line 768
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->getActualAccountId()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->actionCompose(Landroid/content/Context;J)V

    .line 769
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private onCurrentMessageGone()V
    .locals 1

    .prologue
    .line 309
    invoke-static {p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/Preferences;->getAutoAdvanceDirection()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->goBackToMailbox()V

    .line 321
    :cond_1
    :goto_0
    return-void

    .line 311
    :pswitch_0
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->moveToNewer()Z

    move-result v0

    if-nez v0, :cond_1

    .line 312
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->moveToOlder()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 315
    :pswitch_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->moveToOlder()Z

    move-result v0

    if-nez v0, :cond_1

    .line 316
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->moveToNewer()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 309
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onMoveMessage()V
    .locals 5

    .prologue
    .line 324
    iget-object v3, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageId()J

    move-result-wide v1

    .line 325
    .local v1, messageId:J
    const/4 v3, 0x1

    new-array v3, v3, [J

    const/4 v4, 0x0

    aput-wide v1, v3, v4

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/android/email/activity/MoveMessageToDialog;->newInstance(Landroid/app/Activity;[JLandroid/app/Fragment;)Lcom/android/email/activity/MoveMessageToDialog;

    move-result-object v0

    .line 327
    .local v0, dialog:Lcom/android/email/activity/MoveMessageToDialog;
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "dialog"

    invoke-virtual {v0, v3, v4}, Lcom/android/email/activity/MoveMessageToDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 328
    return-void
.end method

.method private onNoAccountFound()V
    .locals 0

    .prologue
    .line 381
    invoke-static {p0}, Lcom/android/email/activity/Welcome;->actionStart(Landroid/app/Activity;)V

    .line 382
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->finish()V

    .line 383
    return-void
.end method

.method private onRefresh()V
    .locals 6

    .prologue
    .line 779
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mRefreshTask:Lcom/android/email/activity/MessageListXL$RefreshTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 780
    new-instance v0, Lcom/android/email/activity/MessageListXL$RefreshTask;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->getActualAccountId()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxId()J

    move-result-wide v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/MessageListXL$RefreshTask;-><init>(Landroid/content/Context;JJ)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->mRefreshTask:Lcom/android/email/activity/MessageListXL$RefreshTask;

    .line 782
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mRefreshTask:Lcom/android/email/activity/MessageListXL$RefreshTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListXL$RefreshTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 783
    return-void
.end method

.method private selectAccount(J)V
    .locals 7
    .parameter "accountId"

    .prologue
    const-wide/16 v3, -0x1

    .line 684
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    move-wide v1, p1

    move-wide v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/activity/MessageListXLFragmentManager;->selectAccount(JJJ)V

    .line 685
    return-void
.end method

.method private shouldShowRefreshButton()Z
    .locals 4

    .prologue
    .line 743
    const-wide/16 v0, -0x1

    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListXLFragmentManager;->getActualAccountId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showErrorMessage(Ljava/lang/String;J)V
    .locals 2
    .parameter "rawMessage"
    .parameter "accountId"

    .prologue
    .line 564
    new-instance v0, Lcom/android/email/activity/MessageListXL$1;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/android/email/activity/MessageListXL$1;-><init>(Lcom/android/email/activity/MessageListXL;JLjava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListXL$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 590
    return-void
.end method

.method private stopMessageOrderManager()V
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageOrderManager;->close()V

    .line 372
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    .line 374
    :cond_0
    return-void
.end method

.method private updateAccountList(Landroid/database/Cursor;)V
    .locals 11
    .parameter "accountsCursor"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v8, 0x8

    .line 635
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 636
    .local v3, count:I
    if-nez v3, :cond_0

    .line 637
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->onNoAccountFound()V

    .line 678
    :goto_0
    return-void

    .line 642
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 643
    .local v0, ab:Landroid/app/ActionBar;
    if-ne v3, v10, :cond_1

    .line 644
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 647
    invoke-virtual {v0, v8, v8}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 648
    invoke-virtual {v0, v9}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 649
    invoke-static {p1}, Lcom/android/email/activity/AccountSelectorAdapter;->getAccountDisplayName(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 651
    invoke-static {p1}, Lcom/android/email/activity/AccountSelectorAdapter;->getAccountId(Landroid/database/Cursor;)J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/android/email/activity/MessageListXL;->selectAccount(J)V

    goto :goto_0

    .line 656
    :cond_1
    const/4 v4, 0x0

    .line 657
    .local v4, defaultSelection:I
    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageListXLFragmentManager;->isAccountSelected()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 658
    const/4 v6, -0x1

    invoke-interface {p1, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 659
    const/4 v5, 0x0

    .line 660
    .local v5, i:I
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 661
    invoke-static {p1}, Lcom/android/email/activity/AccountSelectorAdapter;->getAccountId(Landroid/database/Cursor;)J

    move-result-wide v1

    .line 662
    .local v1, accountId:J
    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v6}, Lcom/android/email/activity/MessageListXLFragmentManager;->getUIAccountId()J

    move-result-wide v6

    cmp-long v6, v1, v6

    if-nez v6, :cond_3

    .line 663
    move v4, v5

    .line 671
    .end local v1           #accountId:J
    .end local v5           #i:I
    :cond_2
    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mAccountsSelectorAdapter:Lcom/android/email/activity/AccountSelectorAdapter;

    invoke-virtual {v6, p1}, Lcom/android/email/activity/AccountSelectorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 674
    invoke-virtual {v0, v9, v8}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 675
    invoke-virtual {v0, v10}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 676
    iget-object v6, p0, Lcom/android/email/activity/MessageListXL;->mAccountsSelectorAdapter:Lcom/android/email/activity/AccountSelectorAdapter;

    iget-object v7, p0, Lcom/android/email/activity/MessageListXL;->mActionBarNavigationCallback:Lcom/android/email/activity/MessageListXL$ActionBarNavigationCallback;

    invoke-virtual {v0, v6, v7}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    .line 677
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto :goto_0

    .line 666
    .restart local v1       #accountId:J
    .restart local v5       #i:I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 667
    goto :goto_1
.end method

.method private updateMessageOrderManager()V
    .locals 5

    .prologue
    .line 340
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListXLFragmentManager;->isMailboxSelected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMailboxId()J

    move-result-wide v0

    .line 344
    .local v0, mailboxId:J
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageOrderManager;->getMailboxId()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-eqz v2, :cond_3

    .line 345
    :cond_2
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->stopMessageOrderManager()V

    .line 346
    new-instance v2, Lcom/android/email/activity/MessageOrderManager;

    iget-object v3, p0, Lcom/android/email/activity/MessageListXL;->mMessageOrderManagerCallback:Lcom/android/email/activity/MessageListXL$MessageOrderManagerCallback;

    invoke-direct {v2, p0, v0, v1, v3}, Lcom/android/email/activity/MessageOrderManager;-><init>(Landroid/content/Context;JLcom/android/email/activity/MessageOrderManager$Callback;)V

    iput-object v2, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    .line 348
    :cond_3
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListXLFragmentManager;->isMessageSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 349
    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    iget-object v3, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/email/activity/MessageOrderManager;->moveTo(J)V

    goto :goto_0
.end method

.method private updateNavigationArrows()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 390
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    if-nez v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->updateMessageCommandButtons(ZZII)V

    .line 398
    :goto_0
    return-void

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageOrderManager;->canMoveToNewer()Z

    move-result v1

    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageOrderManager;->canMoveToOlder()Z

    move-result v2

    iget-object v3, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageOrderManager;->getCurrentPosition()I

    move-result v3

    iget-object v4, p0, Lcom/android/email/activity/MessageListXL;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    invoke-virtual {v4}, Lcom/android/email/activity/MessageOrderManager;->getTotalMessageCount()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/activity/MessageListXLFragmentManager;->updateMessageCommandButtons(ZZII)V

    goto :goto_0
.end method

.method private updateProgressIcon()V
    .locals 0

    .prologue
    .line 712
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->invalidateOptionsMenu()V

    .line 713
    return-void
.end method


# virtual methods
.method public onAccountChanged(J)V
    .locals 0
    .parameter "accountId"

    .prologue
    .line 542
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->invalidateOptionsMenu()V

    .line 543
    return-void
.end method

.method public onAccountSecurityHold(J)V
    .locals 1
    .parameter "accountId"

    .prologue
    .line 537
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/email/activity/setup/AccountSecurity;->actionUpdateSecurityIntent(Landroid/content/Context;JZ)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageListXL;->startActivity(Landroid/content/Intent;)V

    .line 538
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageListXL;->onBackPressed(Z)Z

    .line 279
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 301
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 306
    :goto_0
    return-void

    .line 303
    :pswitch_0
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->dismissErrorMessage()V

    goto :goto_0

    .line 301
    :pswitch_data_0
    .packed-switch 0x7f0f0086
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 153
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 154
    invoke-static {p0}, Lcom/android/email/activity/ActivityHelper;->debugSetWindowFlags(Landroid/app/Activity;)V

    .line 155
    const v1, 0x7f040028

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageListXL;->setContentView(I)V

    .line 157
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 158
    .local v0, ab:Landroid/app/ActionBar;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 160
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->onActivityViewReady()V

    .line 162
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    .line 163
    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageListXL;->mController:Lcom/android/email/Controller;

    .line 164
    invoke-static {p0}, Lcom/android/email/RefreshManager;->getInstance(Landroid/content/Context;)Lcom/android/email/RefreshManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageListXL;->mRefreshManager:Lcom/android/email/RefreshManager;

    .line 165
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mRefreshManager:Lcom/android/email/RefreshManager;

    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mMailRefreshManagerListener:Lcom/android/email/activity/MessageListXL$RefreshListener;

    invoke-virtual {v1, v2}, Lcom/android/email/RefreshManager;->registerListener(Lcom/android/email/RefreshManager$Listener;)V

    .line 167
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    new-instance v2, Lcom/android/email/activity/MessageListXL$MailboxListFragmentCallback;

    invoke-direct {v2, p0, v5}, Lcom/android/email/activity/MessageListXL$MailboxListFragmentCallback;-><init>(Lcom/android/email/activity/MessageListXL;Lcom/android/email/activity/MessageListXL$1;)V

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageListXLFragmentManager;->setMailboxListFragmentCallback(Lcom/android/email/activity/MailboxListFragment$Callback;)V

    .line 168
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    new-instance v2, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;

    invoke-direct {v2, p0, v5}, Lcom/android/email/activity/MessageListXL$MessageListFragmentCallback;-><init>(Lcom/android/email/activity/MessageListXL;Lcom/android/email/activity/MessageListXL$1;)V

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageListXLFragmentManager;->setMessageListFragmentCallback(Lcom/android/email/activity/MessageListFragment$Callback;)V

    .line 169
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    new-instance v2, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;

    invoke-direct {v2, p0, v5}, Lcom/android/email/activity/MessageListXL$MessageViewFragmentCallback;-><init>(Lcom/android/email/activity/MessageListXL;Lcom/android/email/activity/MessageListXL$1;)V

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageListXLFragmentManager;->setMessageViewFragmentCallback(Lcom/android/email/activity/MessageViewFragment$Callback;)V

    .line 171
    new-instance v1, Lcom/android/email/activity/AccountSelectorAdapter;

    invoke-direct {v1, p0, v5}, Lcom/android/email/activity/AccountSelectorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v1, p0, Lcom/android/email/activity/MessageListXL;->mAccountsSelectorAdapter:Lcom/android/email/activity/AccountSelectorAdapter;

    .line 173
    if-eqz p1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v1, p1}, Lcom/android/email/activity/MessageListXLFragmentManager;->loadState(Landroid/os/Bundle;)V

    .line 178
    :goto_0
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->loadAccounts()V

    .line 183
    const v1, 0x7f0f0086

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageListXL;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/email/activity/MessageListXL;->mErrorMessageView:Landroid/widget/TextView;

    .line 184
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mErrorMessageView:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    new-instance v1, Lcom/android/email/activity/BannerController;

    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mErrorMessageView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0019

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v1, p0, v2, v3}, Lcom/android/email/activity/BannerController;-><init>(Landroid/content/Context;Landroid/widget/TextView;I)V

    iput-object v1, p0, Lcom/android/email/activity/MessageListXL;->mBannerController:Lcom/android/email/activity/BannerController;

    .line 189
    invoke-virtual {p0, v6}, Lcom/android/email/activity/MessageListXL;->setProgressBarIndeterminate(Z)V

    .line 190
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageListXL;->setProgressBarIndeterminateVisibility(Z)V

    .line 192
    new-instance v1, Lcom/android/email/ControllerResultUiThreadWrapper;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/email/activity/MessageListXL$ControllerResult;

    invoke-direct {v3, p0, v5}, Lcom/android/email/activity/MessageListXL$ControllerResult;-><init>(Lcom/android/email/activity/MessageListXL;Lcom/android/email/activity/MessageListXL$1;)V

    invoke-direct {v1, v2, v3}, Lcom/android/email/ControllerResultUiThreadWrapper;-><init>(Landroid/os/Handler;Lcom/android/email/Controller$Result;)V

    iput-object v1, p0, Lcom/android/email/activity/MessageListXL;->mControllerResult:Lcom/android/email/Controller$Result;

    .line 194
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mController:Lcom/android/email/Controller;

    iget-object v2, p0, Lcom/android/email/activity/MessageListXL;->mControllerResult:Lcom/android/email/Controller$Result;

    invoke-virtual {v1, v2}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    .line 196
    iput-boolean v6, p0, Lcom/android/email/activity/MessageListXL;->mIsCreated:Z

    .line 197
    return-void

    .line 176
    :cond_0
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->initFromIntent()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 722
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 723
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0012

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 724
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 265
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListXL;->mIsCreated:Z

    .line 266
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mControllerResult:Lcom/android/email/Controller$Result;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    .line 267
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mRefreshTask:Lcom/android/email/activity/MessageListXL$RefreshTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 268
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mRefreshManager:Lcom/android/email/RefreshManager;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL;->mMailRefreshManagerListener:Lcom/android/email/activity/MessageListXL$RefreshListener;

    invoke-virtual {v0, v1}, Lcom/android/email/RefreshManager;->unregisterListener(Lcom/android/email/RefreshManager$Listener;)V

    .line 269
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->onDestroy()V

    .line 270
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 271
    return-void
.end method

.method public onMailboxChanged(JJ)V
    .locals 0
    .parameter "accountId"
    .parameter "newMailboxId"

    .prologue
    .line 547
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->updateProgressIcon()V

    .line 548
    return-void
.end method

.method public onMoveToMailboxSelected(J[J)V
    .locals 0
    .parameter "newMailboxId"
    .parameter "messageIds"

    .prologue
    .line 332
    invoke-static {p0, p1, p2, p3}, Lcom/android/email/activity/ActivityHelper;->moveMessages(Landroid/app/Activity;J[J)V

    .line 333
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->onCurrentMessageGone()V

    .line 334
    return-void
.end method

.method public onMoveToNewer()V
    .locals 0

    .prologue
    .line 552
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->moveToNewer()Z

    .line 553
    return-void
.end method

.method public onMoveToOlder()V
    .locals 0

    .prologue
    .line 557
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->moveToOlder()Z

    .line 558
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 748
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 761
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 752
    :sswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageListXL;->onBackPressed(Z)Z

    move-result v0

    goto :goto_0

    .line 754
    :sswitch_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->onCompose()Z

    move-result v0

    goto :goto_0

    .line 756
    :sswitch_2
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->onRefresh()V

    .line 757
    const/4 v0, 0x1

    goto :goto_0

    .line 759
    :sswitch_3
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->onAccountSettings()Z

    move-result v0

    goto :goto_0

    .line 748
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0f00d1 -> :sswitch_1
        0x7f0f00d7 -> :sswitch_3
        0x7f0f00d9 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 249
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 250
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->onPause()V

    .line 251
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 729
    const v1, 0x7f0f00d9

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 730
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 731
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->shouldShowRefreshButton()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 732
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->isProgressActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 734
    const v1, 0x7f040018

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 739
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    .line 736
    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 236
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 237
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->onResume()V

    .line 244
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 218
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 219
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MessageListXLFragmentManager;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 220
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 225
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 227
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->onStart()V

    .line 228
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->isMessageSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->updateMessageOrderManager()V

    .line 231
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 256
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 258
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->onStop()V

    .line 259
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL;->stopMessageOrderManager()V

    .line 260
    return-void
.end method
