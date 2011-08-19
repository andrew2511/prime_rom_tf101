.class public Lcom/android/email/activity/MessageList;
.super Landroid/app/Activity;
.source "MessageList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Lcom/android/email/activity/MessageListFragment$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MessageList$1;,
        Lcom/android/email/activity/MessageList$MailboxFinderCallback;,
        Lcom/android/email/activity/MessageList$ControllerResults;,
        Lcom/android/email/activity/MessageList$SetTitleTask;
    }
.end annotation


# static fields
.field private static final ACCOUNT_NAME_PROJECTION:[Ljava/lang/String;

.field private static final MAILBOX_NAME_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mController:Lcom/android/email/Controller;

.field private mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/email/ControllerResultUiThreadWrapper",
            "<",
            "Lcom/android/email/activity/MessageList$ControllerResults;",
            ">;"
        }
    .end annotation
.end field

.field private mDeleteButton:Landroid/widget/Button;

.field private mErrorBanner:Landroid/widget/TextView;

.field private mFavoriteButton:Landroid/widget/Button;

.field private mLeftTitle:Landroid/widget/TextView;

.field private mListFragment:Lcom/android/email/activity/MessageListFragment;

.field private mMailboxFinder:Lcom/android/email/activity/MailboxFinder;

.field private mMailboxFinderCallback:Lcom/android/email/activity/MessageList$MailboxFinderCallback;

.field private mMenuCreated:Z

.field private mMultiSelectPanel:Landroid/view/View;

.field private mProgressIcon:Landroid/widget/ProgressBar;

.field private mReadUnreadButton:Landroid/widget/Button;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSetTitleTask:Lcom/android/email/activity/MessageList$SetTitleTask;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 91
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "displayName"

    aput-object v1, v0, v3

    const-string v1, "accountKey"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/activity/MessageList;->MAILBOX_NAME_PROJECTION:[Ljava/lang/String;

    .line 96
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "displayName"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/email/activity/MessageList;->ACCOUNT_NAME_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 75
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mController:Lcom/android/email/Controller;

    .line 86
    new-instance v0, Lcom/android/email/activity/MessageList$MailboxFinderCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MessageList$MailboxFinderCallback;-><init>(Lcom/android/email/activity/MessageList;Lcom/android/email/activity/MessageList$1;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mMailboxFinderCallback:Lcom/android/email/activity/MessageList$MailboxFinderCallback;

    .line 653
    return-void
.end method

.method static synthetic access$1000(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$SetTitleTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mSetTitleTask:Lcom/android/email/activity/MessageList$SetTitleTask;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/email/activity/MessageList;Lcom/android/email/activity/MessageList$SetTitleTask;)Lcom/android/email/activity/MessageList$SetTitleTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/email/activity/MessageList;->mSetTitleTask:Lcom/android/email/activity/MessageList$SetTitleTask;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/email/activity/MessageList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->launchWelcomeAndFinish()V

    return-void
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/android/email/activity/MessageList;->MAILBOX_NAME_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/activity/MessageList;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$400()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/android/email/activity/MessageList;->ACCOUNT_NAME_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/email/activity/MessageList;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageList;->setTitleAccountName(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/email/activity/MessageList;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mLeftTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageListFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListFragment:Lcom/android/email/activity/MessageListFragment;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/email/activity/MessageList;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageList;->showProgressIcon(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/email/activity/MessageList;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageList;->showErrorBanner(Ljava/lang/String;)V

    return-void
.end method

.method public static actionHandleAccount(Landroid/content/Context;JI)V
    .locals 6
    .parameter "context"
    .parameter "accountId"
    .parameter "mailboxType"

    .prologue
    .line 126
    const-wide/16 v3, -0x1

    move-object v0, p0

    move-wide v1, p1

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/email/activity/MessageList;->createIntent(Landroid/content/Context;JJI)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 127
    return-void
.end method

.method public static actionHandleMailbox(Landroid/content/Context;J)V
    .locals 6
    .parameter "context"
    .parameter "id"

    .prologue
    .line 115
    const-wide/16 v1, -0x1

    const/4 v5, -0x1

    move-object v0, p0

    move-wide v3, p1

    invoke-static/range {v0 .. v5}, Lcom/android/email/activity/MessageList;->createIntent(Landroid/content/Context;JJI)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 116
    return-void
.end method

.method public static createIntent(Landroid/content/Context;JJI)Landroid/content/Intent;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, -0x1

    .line 149
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/MessageList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 150
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 151
    cmp-long v1, p1, v2

    if-eqz v1, :cond_0

    const-string v1, "com.android.email.activity._ACCOUNT_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 152
    :cond_0
    cmp-long v1, p3, v2

    if-eqz v1, :cond_1

    const-string v1, "com.android.email.activity.MAILBOX_ID"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 153
    :cond_1
    const/4 v1, -0x1

    if-eq p5, v1, :cond_2

    const-string v1, "com.android.email.activity.MAILBOX_TYPE"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 154
    :cond_2
    return-object v0
.end method

.method private launchWelcomeAndFinish()V
    .locals 0

    .prologue
    .line 266
    invoke-static {p0}, Lcom/android/email/activity/Welcome;->actionStart(Landroid/app/Activity;)V

    .line 267
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->finish()V

    .line 268
    return-void
.end method

.method private onAccounts()V
    .locals 0

    .prologue
    .line 389
    invoke-static {p0}, Lcom/android/email/activity/AccountFolderList;->actionShowAccounts(Landroid/content/Context;)V

    .line 390
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->finish()V

    .line 391
    return-void
.end method

.method private onCompose()V
    .locals 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->getAccountId()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->actionCompose(Landroid/content/Context;J)V

    .line 395
    return-void
.end method

.method private onEditAccount()V
    .locals 2

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->getAccountId()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/email/activity/setup/AccountSettingsXL;->actionSettings(Landroid/app/Activity;J)V

    .line 399
    return-void
.end method

.method private onFolders()V
    .locals 3

    .prologue
    .line 378
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListFragment;->isMagicMailbox()Z

    move-result v1

    if-nez v1, :cond_0

    .line 380
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListFragment;->getMailboxId()J

    move-result-wide v1

    invoke-static {p0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v0

    .line 381
    .local v0, mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-eqz v0, :cond_0

    .line 382
    iget-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {p0, v1, v2}, Lcom/android/email/activity/MailboxList;->actionHandleAccount(Landroid/content/Context;J)V

    .line 383
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->finish()V

    .line 386
    .end local v0           #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :cond_0
    return-void
.end method

.method private selectAccountAndMailbox(Landroid/content/Intent;)V
    .locals 11
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    const-wide/16 v9, -0x1

    .line 207
    const-string v0, "com.android.email.activity.MAILBOX_ID"

    invoke-virtual {p1, v0, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 208
    .local v6, mailboxId:J
    cmp-long v0, v6, v9

    if-eqz v0, :cond_0

    .line 210
    new-instance v0, Lcom/android/email/activity/MessageList$SetTitleTask;

    invoke-direct {v0, p0, v6, v7}, Lcom/android/email/activity/MessageList$SetTitleTask;-><init>(Lcom/android/email/activity/MessageList;J)V

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mSetTitleTask:Lcom/android/email/activity/MessageList$SetTitleTask;

    .line 211
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mSetTitleTask:Lcom/android/email/activity/MessageList$SetTitleTask;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList$SetTitleTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 212
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0, v6, v7}, Lcom/android/email/activity/MessageListFragment;->openMailbox(J)V

    .line 231
    :goto_0
    return-void

    .line 214
    :cond_0
    const-string v0, "com.android.email.activity.MAILBOX_TYPE"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 215
    .local v4, mailboxType:I
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    .line 217
    .local v8, uri:Landroid/net/Uri;
    if-nez v8, :cond_2

    move-wide v2, v9

    .line 219
    .local v2, accountId:J
    :goto_1
    cmp-long v0, v2, v9

    if-nez v0, :cond_1

    .line 220
    const-string v0, "com.android.email.activity._ACCOUNT_ID"

    invoke-virtual {p1, v0, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 222
    :cond_1
    cmp-long v0, v2, v9

    if-nez v0, :cond_3

    .line 223
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->launchWelcomeAndFinish()V

    goto :goto_0

    .line 217
    .end local v2           #accountId:J
    :cond_2
    invoke-static {p0, v8}, Lcom/android/emailcommon/provider/EmailContent$Account;->getAccountIdFromShortcutSafeUri(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v0

    move-wide v2, v0

    goto :goto_1

    .line 226
    .restart local v2       #accountId:J
    :cond_3
    new-instance v0, Lcom/android/email/activity/MailboxFinder;

    iget-object v5, p0, Lcom/android/email/activity/MessageList;->mMailboxFinderCallback:Lcom/android/email/activity/MessageList$MailboxFinderCallback;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/MailboxFinder;-><init>(Landroid/content/Context;JILcom/android/email/activity/MailboxFinder$Callback;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mMailboxFinder:Lcom/android/email/activity/MailboxFinder;

    .line 228
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMailboxFinder:Lcom/android/email/activity/MailboxFinder;

    invoke-virtual {v0}, Lcom/android/email/activity/MailboxFinder;->startLookup()V

    goto :goto_0
.end method

.method private setTitleAccountName(Ljava/lang/String;Z)V
    .locals 5
    .parameter "accountName"
    .parameter "showAccountsButton"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 543
    const v2, 0x7f0f0057

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 544
    .local v0, accountsButton:Landroid/widget/TextView;
    const v2, 0x7f0f0056

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 545
    .local v1, textPlain:Landroid/widget/TextView;
    if-eqz p2, :cond_0

    .line 546
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 547
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 548
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 554
    :goto_0
    return-void

    .line 550
    :cond_0
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 551
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 552
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showErrorBanner(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    const/4 v2, 0x0

    .line 562
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mErrorBanner:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .line 563
    .local v0, isVisible:Z
    :goto_0
    if-eqz p1, :cond_2

    .line 564
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mErrorBanner:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 565
    if-nez v0, :cond_0

    .line 566
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mErrorBanner:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 567
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mErrorBanner:Landroid/widget/TextView;

    const v2, 0x7f050002

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 579
    :cond_0
    :goto_1
    return-void

    .end local v0           #isVisible:Z
    :cond_1
    move v0, v2

    .line 562
    goto :goto_0

    .line 572
    .restart local v0       #isVisible:Z
    :cond_2
    if-eqz v0, :cond_0

    .line 573
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mErrorBanner:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 574
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mErrorBanner:Landroid/widget/TextView;

    const v2, 0x7f050003

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method

.method private showProgressIcon(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 557
    if-eqz p1, :cond_0

    const/4 v1, 0x0

    move v0, v1

    .line 558
    .local v0, visibility:I
    :goto_0
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mProgressIcon:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 559
    return-void

    .line 557
    .end local v0           #visibility:I
    :cond_0
    const/16 v1, 0x8

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method getListFragmentForTest()Lcom/android/email/activity/MessageListFragment;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListFragment:Lcom/android/email/activity/MessageListFragment;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 459
    packed-switch p1, :pswitch_data_0

    .line 463
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 464
    return-void

    .line 461
    :pswitch_0
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->onAccounts()V

    goto :goto_0

    .line 459
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 314
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 317
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 320
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 295
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 309
    :goto_0
    return-void

    .line 297
    :sswitch_0
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->onMultiToggleRead()V

    goto :goto_0

    .line 300
    :sswitch_1
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->onMultiToggleFavorite()V

    goto :goto_0

    .line 303
    :sswitch_2
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->onMultiDelete()V

    goto :goto_0

    .line 306
    :sswitch_3
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->onAccounts()V

    goto :goto_0

    .line 295
    :sswitch_data_0
    .sparse-switch
        0x7f0f0057 -> :sswitch_3
        0x7f0f007a -> :sswitch_0
        0x7f0f007b -> :sswitch_1
        0x7f0f007c -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 174
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 175
    invoke-static {p0}, Lcom/android/email/activity/ActivityHelper;->debugSetWindowFlags(Landroid/app/Activity;)V

    .line 176
    const v0, 0x7f040024

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->setContentView(I)V

    .line 178
    new-instance v0, Lcom/android/email/ControllerResultUiThreadWrapper;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/email/activity/MessageList$ControllerResults;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/email/activity/MessageList$ControllerResults;-><init>(Lcom/android/email/activity/MessageList;Lcom/android/email/activity/MessageList$1;)V

    invoke-direct {v0, v1, v2}, Lcom/android/email/ControllerResultUiThreadWrapper;-><init>(Landroid/os/Handler;Lcom/android/email/Controller$Result;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    .line 180
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0f0078

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListFragment;

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mListFragment:Lcom/android/email/activity/MessageListFragment;

    .line 182
    const v0, 0x7f0f0079

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mMultiSelectPanel:Landroid/view/View;

    .line 183
    const v0, 0x7f0f007a

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mReadUnreadButton:Landroid/widget/Button;

    .line 184
    const v0, 0x7f0f007b

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mFavoriteButton:Landroid/widget/Button;

    .line 185
    const v0, 0x7f0f007c

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mDeleteButton:Landroid/widget/Button;

    .line 186
    const v0, 0x7f0f0055

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mLeftTitle:Landroid/widget/TextView;

    .line 187
    const v0, 0x7f0f0058

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mProgressIcon:Landroid/widget/ProgressBar;

    .line 188
    const v0, 0x7f0f004b

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mErrorBanner:Landroid/widget/TextView;

    .line 190
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mReadUnreadButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mFavoriteButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mDeleteButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    const v0, 0x7f0f0057

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0, p0}, Lcom/android/email/activity/MessageListFragment;->setCallback(Lcom/android/email/activity/MessageListFragment$Callback;)V

    .line 197
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageList;->mResolver:Landroid/content/ContentResolver;

    .line 200
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageList;->selectAccountAndMailbox(Landroid/content/Intent;)V

    .line 201
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 324
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 254
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 256
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMailboxFinder:Lcom/android/email/activity/MailboxFinder;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mMailboxFinder:Lcom/android/email/activity/MailboxFinder;

    invoke-virtual {v0}, Lcom/android/email/activity/MailboxFinder;->cancel()V

    .line 258
    iput-object v1, p0, Lcom/android/email/activity/MessageList;->mMailboxFinder:Lcom/android/email/activity/MailboxFinder;

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mSetTitleTask:Lcom/android/email/activity/MessageList$SetTitleTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 261
    iput-object v1, p0, Lcom/android/email/activity/MessageList;->mSetTitleTask:Lcom/android/email/activity/MessageList$SetTitleTask;

    .line 262
    return-void
.end method

.method public onEnterSelectionMode(Z)V
    .locals 0
    .parameter "enter"

    .prologue
    .line 292
    return-void
.end method

.method public onMailboxNotFound()V
    .locals 0

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->finish()V

    .line 275
    return-void
.end method

.method public onMessageOpen(JJJI)V
    .locals 1
    .parameter "messageId"
    .parameter "messageMailboxId"
    .parameter "listMailboxId"
    .parameter "type"

    .prologue
    .line 279
    const/4 v0, 0x1

    if-ne p7, v0, :cond_0

    .line 280
    invoke-static {p0, p1, p2}, Lcom/android/email/activity/MessageCompose;->actionEditDraft(Landroid/content/Context;J)V

    .line 288
    :goto_0
    return-void

    .line 286
    :cond_0
    invoke-static {p0, p1, p2, p5, p6}, Lcom/android/email/activity/MessageView;->actionView(Landroid/content/Context;JJ)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 353
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 373
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 355
    :sswitch_0
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListFragment;->onRefresh(Z)V

    move v0, v1

    .line 356
    goto :goto_0

    .line 358
    :sswitch_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->onFolders()V

    move v0, v1

    .line 359
    goto :goto_0

    .line 361
    :sswitch_2
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->onAccounts()V

    move v0, v1

    .line 362
    goto :goto_0

    .line 364
    :sswitch_3
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->onCompose()V

    move v0, v1

    .line 365
    goto :goto_0

    .line 367
    :sswitch_4
    invoke-direct {p0}, Lcom/android/email/activity/MessageList;->onEditAccount()V

    move v0, v1

    .line 368
    goto :goto_0

    .line 370
    :sswitch_5
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->onDeselectAll()V

    move v0, v1

    .line 371
    goto :goto_0

    .line 353
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0f00d1 -> :sswitch_3
        0x7f0f00d7 -> :sswitch_4
        0x7f0f00d9 -> :sswitch_0
        0x7f0f00de -> :sswitch_5
        0x7f0f00df -> :sswitch_1
        0x7f0f00e0 -> :sswitch_2
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 235
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 236
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    .line 237
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 331
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mListFragment:Lcom/android/email/activity/MessageListFragment;

    if-nez v1, :cond_0

    move v1, v4

    .line 348
    :goto_0
    return v1

    .line 338
    :cond_0
    iget-boolean v1, p0, Lcom/android/email/activity/MessageList;->mMenuCreated:Z

    if-nez v1, :cond_1

    .line 339
    iput-boolean v3, p0, Lcom/android/email/activity/MessageList;->mMenuCreated:Z

    .line 340
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListFragment;->isMagicMailbox()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 341
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f0e0010

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 346
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListFragment;->getSelectedCount()I

    move-result v1

    if-lez v1, :cond_3

    move v0, v3

    .line 347
    .local v0, showDeselect:Z
    :goto_2
    const v1, 0x7f0f00dd

    invoke-interface {p1, v1, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    move v1, v3

    .line 348
    goto :goto_0

    .line 343
    .end local v0           #showDeselect:Z
    :cond_2
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f0e000f

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_1

    :cond_3
    move v0, v4

    .line 346
    goto :goto_2
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 241
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 242
    iget-object v0, p0, Lcom/android/email/activity/MessageList;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/MessageList;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    .line 245
    invoke-static {}, Lcom/android/email/Email;->getNotifyUiAccountsChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    invoke-static {p0}, Lcom/android/email/activity/Welcome;->actionStart(Landroid/app/Activity;)V

    .line 247
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList;->finish()V

    .line 250
    :cond_0
    return-void
.end method
