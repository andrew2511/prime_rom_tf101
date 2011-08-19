.class public Lcom/android/email/activity/MailboxList;
.super Landroid/app/Activity;
.source "MailboxList.java"

# interfaces
.implements Lcom/android/email/activity/MailboxListFragment$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MailboxList$ControllerResults;
    }
.end annotation


# instance fields
.field private mAccountId:J

.field private mActionBar:Landroid/app/ActionBar;

.field private mControllerCallback:Lcom/android/email/Controller$Result;

.field private mErrorBanner:Landroid/widget/TextView;

.field private mListFragment:Lcom/android/email/activity/MailboxListFragment;

.field private mLoadAccountNameTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 273
    return-void
.end method

.method static synthetic access$100(Lcom/android/email/activity/MailboxList;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/android/email/activity/MailboxList;->mAccountId:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/email/activity/MailboxList;)Landroid/app/ActionBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->mActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/activity/MailboxList;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/email/activity/MailboxList;->showProgressIcon(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/email/activity/MailboxList;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/email/activity/MailboxList;->showErrorBanner(Ljava/lang/String;)V

    return-void
.end method

.method public static actionHandleAccount(Landroid/content/Context;J)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 70
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/MailboxList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 71
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 72
    const-string v1, "com.android.email.activity._ACCOUNT_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 73
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 74
    return-void
.end method

.method private onAccounts()V
    .locals 0

    .prologue
    .line 229
    invoke-static {p0}, Lcom/android/email/activity/AccountFolderList;->actionShowAccounts(Landroid/content/Context;)V

    .line 230
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxList;->finish()V

    .line 231
    return-void
.end method

.method private onCompose()V
    .locals 2

    .prologue
    .line 242
    iget-wide v0, p0, Lcom/android/email/activity/MailboxList;->mAccountId:J

    invoke-static {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->actionCompose(Landroid/content/Context;J)V

    .line 243
    return-void
.end method

.method private onEditAccount()V
    .locals 2

    .prologue
    .line 234
    iget-wide v0, p0, Lcom/android/email/activity/MailboxList;->mAccountId:J

    invoke-static {p0, v0, v1}, Lcom/android/email/activity/setup/AccountSettingsXL;->actionSettings(Landroid/app/Activity;J)V

    .line 235
    return-void
.end method

.method private onOpenMailbox(J)V
    .locals 0
    .parameter "mailboxId"

    .prologue
    .line 238
    invoke-static {p0, p1, p2}, Lcom/android/email/activity/MessageList;->actionHandleMailbox(Landroid/content/Context;J)V

    .line 239
    return-void
.end method

.method private onRefresh()V
    .locals 2

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxList;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    .line 224
    .local v0, controller:Lcom/android/email/Controller;
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/email/activity/MailboxList;->showProgressIcon(Z)V

    .line 225
    iget-object v1, p0, Lcom/android/email/activity/MailboxList;->mListFragment:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/MailboxListFragment;->onRefresh()V

    .line 226
    return-void
.end method

.method private showErrorBanner(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    const/4 v2, 0x0

    .line 250
    iget-object v1, p0, Lcom/android/email/activity/MailboxList;->mErrorBanner:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .line 251
    .local v0, isVisible:Z
    :goto_0
    if-eqz p1, :cond_2

    .line 252
    iget-object v1, p0, Lcom/android/email/activity/MailboxList;->mErrorBanner:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    if-nez v0, :cond_0

    .line 254
    iget-object v1, p0, Lcom/android/email/activity/MailboxList;->mErrorBanner:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 255
    iget-object v1, p0, Lcom/android/email/activity/MailboxList;->mErrorBanner:Landroid/widget/TextView;

    const v2, 0x7f050002

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 267
    :cond_0
    :goto_1
    return-void

    .end local v0           #isVisible:Z
    :cond_1
    move v0, v2

    .line 250
    goto :goto_0

    .line 260
    .restart local v0       #isVisible:Z
    :cond_2
    if-eqz v0, :cond_0

    .line 261
    iget-object v1, p0, Lcom/android/email/activity/MailboxList;->mErrorBanner:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 262
    iget-object v1, p0, Lcom/android/email/activity/MailboxList;->mErrorBanner:Landroid/widget/TextView;

    const v2, 0x7f050003

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method

.method private showProgressIcon(Z)V
    .locals 0
    .parameter "show"

    .prologue
    .line 246
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MailboxList;->setProgressBarIndeterminateVisibility(Z)V

    .line 247
    return-void
.end method


# virtual methods
.method public onAccountSelected(J)V
    .locals 0
    .parameter "accountId"

    .prologue
    .line 210
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    .line 78
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-static {p0}, Lcom/android/email/activity/ActivityHelper;->debugSetWindowFlags(Landroid/app/Activity;)V

    .line 81
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.email.activity._ACCOUNT_ID"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MailboxList;->mAccountId:J

    .line 82
    iget-wide v0, p0, Lcom/android/email/activity/MailboxList;->mAccountId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxList;->finish()V

    .line 139
    :goto_0
    return-void

    .line 87
    :cond_0
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MailboxList;->requestWindowFeature(I)Z

    .line 88
    const v0, 0x7f04001d

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MailboxList;->setContentView(I)V

    .line 90
    new-instance v0, Lcom/android/email/ControllerResultUiThreadWrapper;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/email/activity/MailboxList$ControllerResults;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/email/activity/MailboxList$ControllerResults;-><init>(Lcom/android/email/activity/MailboxList;Lcom/android/email/activity/MailboxList$1;)V

    invoke-direct {v0, v1, v2}, Lcom/android/email/ControllerResultUiThreadWrapper;-><init>(Landroid/os/Handler;Lcom/android/email/Controller$Result;)V

    iput-object v0, p0, Lcom/android/email/activity/MailboxList;->mControllerCallback:Lcom/android/email/Controller$Result;

    .line 92
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxList;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MailboxList;->mActionBar:Landroid/app/ActionBar;

    .line 93
    const v0, 0x7f0f004b

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MailboxList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MailboxList;->mErrorBanner:Landroid/widget/TextView;

    .line 94
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxList;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0f0059

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MailboxListFragment;

    iput-object v0, p0, Lcom/android/email/activity/MailboxList;->mListFragment:Lcom/android/email/activity/MailboxListFragment;

    .line 97
    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->mActionBar:Landroid/app/ActionBar;

    const v1, 0x7f080067

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 98
    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->mListFragment:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v0, p0}, Lcom/android/email/activity/MailboxListFragment;->setCallback(Lcom/android/email/activity/MailboxListFragment$Callback;)V

    .line 99
    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->mListFragment:Lcom/android/email/activity/MailboxListFragment;

    iget-wide v1, p0, Lcom/android/email/activity/MailboxList;->mAccountId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MailboxListFragment;->openMailboxes(J)V

    .line 102
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MailboxList;->setProgressBarIndeterminate(Z)V

    .line 103
    invoke-virtual {p0, v4}, Lcom/android/email/activity/MailboxList;->setProgressBarIndeterminateVisibility(Z)V

    .line 106
    new-instance v0, Lcom/android/email/activity/MailboxList$1;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MailboxList$1;-><init>(Lcom/android/email/activity/MailboxList;)V

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MailboxList$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MailboxList;->mLoadAccountNameTask:Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 171
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 172
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxList;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0008

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 173
    const/4 v0, 0x1

    return v0
.end method

.method public onCurrentMailboxUpdated(JLjava/lang/String;I)V
    .locals 0
    .parameter "mailboxId"
    .parameter "mailboxName"
    .parameter "unreadCount"

    .prologue
    .line 217
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 163
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 165
    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->mLoadAccountNameTask:Landroid/os/AsyncTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MailboxList;->mLoadAccountNameTask:Landroid/os/AsyncTask;

    .line 167
    return-void
.end method

.method public onMailboxSelected(JJ)V
    .locals 0
    .parameter "accountId"
    .parameter "mailboxId"

    .prologue
    .line 201
    invoke-direct {p0, p3, p4}, Lcom/android/email/activity/MailboxList;->onOpenMailbox(J)V

    .line 202
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 178
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 192
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 180
    :sswitch_0
    invoke-direct {p0}, Lcom/android/email/activity/MailboxList;->onAccounts()V

    move v0, v1

    .line 181
    goto :goto_0

    .line 183
    :sswitch_1
    invoke-direct {p0}, Lcom/android/email/activity/MailboxList;->onRefresh()V

    move v0, v1

    .line 184
    goto :goto_0

    .line 186
    :sswitch_2
    invoke-direct {p0}, Lcom/android/email/activity/MailboxList;->onCompose()V

    move v0, v1

    .line 187
    goto :goto_0

    .line 189
    :sswitch_3
    invoke-direct {p0}, Lcom/android/email/activity/MailboxList;->onEditAccount()V

    move v0, v1

    .line 190
    goto :goto_0

    .line 178
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0f00d1 -> :sswitch_2
        0x7f0f00d7 -> :sswitch_3
        0x7f0f00d9 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 143
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 144
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxList;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MailboxList;->mControllerCallback:Lcom/android/email/Controller$Result;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    .line 145
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 149
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 150
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxList;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MailboxList;->mControllerCallback:Lcom/android/email/Controller$Result;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    .line 153
    invoke-static {}, Lcom/android/email/Email;->getNotifyUiAccountsChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    invoke-static {p0}, Lcom/android/email/activity/Welcome;->actionStart(Landroid/app/Activity;)V

    .line 155
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxList;->finish()V

    .line 159
    :cond_0
    return-void
.end method
