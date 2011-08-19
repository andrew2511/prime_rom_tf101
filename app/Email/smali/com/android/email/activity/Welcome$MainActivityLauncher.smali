.class Lcom/android/email/activity/Welcome$MainActivityLauncher;
.super Landroid/os/AsyncTask;
.source "Welcome.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/Welcome;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MainActivityLauncher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAccountId:J

.field private final mDebugPaneMode:I

.field private final mFromActivity:Landroid/app/Activity;

.field private final mMailboxId:J

.field private final mMessageId:J


# direct methods
.method public constructor <init>(Landroid/app/Activity;JJJI)V
    .locals 0
    .parameter "fromActivity"
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "messageId"
    .parameter "debugPaneMode"

    .prologue
    .line 285
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 286
    iput-object p1, p0, Lcom/android/email/activity/Welcome$MainActivityLauncher;->mFromActivity:Landroid/app/Activity;

    .line 287
    iput-wide p2, p0, Lcom/android/email/activity/Welcome$MainActivityLauncher;->mAccountId:J

    .line 288
    iput-wide p4, p0, Lcom/android/email/activity/Welcome$MainActivityLauncher;->mMailboxId:J

    .line 289
    iput-wide p6, p0, Lcom/android/email/activity/Welcome$MainActivityLauncher;->mMessageId:J

    .line 290
    iput p8, p0, Lcom/android/email/activity/Welcome$MainActivityLauncher;->mDebugPaneMode:I

    .line 291
    return-void
.end method

.method private isMailboxSelected()Z
    .locals 4

    .prologue
    .line 294
    iget-wide v0, p0, Lcom/android/email/activity/Welcome$MainActivityLauncher;->mMailboxId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMessageSelected()Z
    .locals 4

    .prologue
    .line 298
    iget-wide v0, p0, Lcom/android/email/activity/Welcome$MainActivityLauncher;->mMessageId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 277
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/Welcome$MainActivityLauncher;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9
    .parameter "params"

    .prologue
    const/4 v5, 0x0

    .line 304
    iget-object v0, p0, Lcom/android/email/activity/Welcome$MainActivityLauncher;->mFromActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/email/service/MailService;->reconcilePopImapAccountsSync(Landroid/content/Context;)V

    .line 306
    iget-object v0, p0, Lcom/android/email/activity/Welcome$MainActivityLauncher;->mFromActivity:Landroid/app/Activity;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v3}, Lcom/android/emailcommon/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v7

    .line 308
    .local v7, numAccount:I
    if-nez v7, :cond_0

    .line 309
    iget-object v0, p0, Lcom/android/email/activity/Welcome$MainActivityLauncher;->mFromActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->actionNewAccount(Landroid/app/Activity;)V

    .line 339
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 311
    :cond_0
    iget-wide v1, p0, Lcom/android/email/activity/Welcome$MainActivityLauncher;->mAccountId:J

    .line 312
    .local v1, accountId:J
    const-wide/16 v3, -0x1

    cmp-long v0, v1, v3

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/Welcome$MainActivityLauncher;->mFromActivity:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->isValidId(Landroid/content/Context;J)Z

    move-result v0

    if-nez v0, :cond_2

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/Welcome$MainActivityLauncher;->mFromActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDefaultAccountId(Landroid/content/Context;)J

    move-result-wide v1

    .line 316
    :cond_2
    iget v0, p0, Lcom/android/email/activity/Welcome$MainActivityLauncher;->mDebugPaneMode:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lcom/android/email/activity/Welcome$MainActivityLauncher;->mFromActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/email/activity/Welcome;->useTwoPane(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/email/activity/Welcome$MainActivityLauncher;->mDebugPaneMode:I

    if-nez v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    move v8, v0

    .line 319
    .local v8, useTwoPane:Z
    :goto_1
    if-eqz v8, :cond_7

    .line 320
    invoke-direct {p0}, Lcom/android/email/activity/Welcome$MainActivityLauncher;->isMessageSelected()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 321
    iget-object v0, p0, Lcom/android/email/activity/Welcome$MainActivityLauncher;->mFromActivity:Landroid/app/Activity;

    iget-wide v3, p0, Lcom/android/email/activity/Welcome$MainActivityLauncher;->mMailboxId:J

    iget-wide v5, p0, Lcom/android/email/activity/Welcome$MainActivityLauncher;->mMessageId:J

    invoke-static/range {v0 .. v6}, Lcom/android/email/activity/MessageListXL;->actionOpenMessage(Landroid/app/Activity;JJJ)V

    goto :goto_0

    .end local v8           #useTwoPane:Z
    :cond_4
    move v8, v5

    .line 316
    goto :goto_1

    .line 323
    .restart local v8       #useTwoPane:Z
    :cond_5
    invoke-direct {p0}, Lcom/android/email/activity/Welcome$MainActivityLauncher;->isMailboxSelected()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 324
    iget-object v0, p0, Lcom/android/email/activity/Welcome$MainActivityLauncher;->mFromActivity:Landroid/app/Activity;

    iget-wide v3, p0, Lcom/android/email/activity/Welcome$MainActivityLauncher;->mMailboxId:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/email/activity/MessageListXL;->actionOpenMailbox(Landroid/app/Activity;JJ)V

    goto :goto_0

    .line 326
    :cond_6
    iget-object v0, p0, Lcom/android/email/activity/Welcome$MainActivityLauncher;->mFromActivity:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/MessageListXL;->actionOpenAccount(Landroid/app/Activity;J)V

    goto :goto_0

    .line 329
    :cond_7
    invoke-direct {p0}, Lcom/android/email/activity/Welcome$MainActivityLauncher;->isMessageSelected()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 330
    iget-object v0, p0, Lcom/android/email/activity/Welcome$MainActivityLauncher;->mFromActivity:Landroid/app/Activity;

    iget-wide v3, p0, Lcom/android/email/activity/Welcome$MainActivityLauncher;->mMessageId:J

    iget-wide v5, p0, Lcom/android/email/activity/Welcome$MainActivityLauncher;->mMailboxId:J

    invoke-static {v0, v3, v4, v5, v6}, Lcom/android/email/activity/MessageView;->actionView(Landroid/content/Context;JJ)V

    goto :goto_0

    .line 331
    :cond_8
    invoke-direct {p0}, Lcom/android/email/activity/Welcome$MainActivityLauncher;->isMailboxSelected()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 332
    iget-object v0, p0, Lcom/android/email/activity/Welcome$MainActivityLauncher;->mFromActivity:Landroid/app/Activity;

    iget-wide v3, p0, Lcom/android/email/activity/Welcome$MainActivityLauncher;->mMailboxId:J

    invoke-static {v0, v3, v4}, Lcom/android/email/activity/MessageList;->actionHandleMailbox(Landroid/content/Context;J)V

    goto :goto_0

    .line 334
    :cond_9
    iget-object v0, p0, Lcom/android/email/activity/Welcome$MainActivityLauncher;->mFromActivity:Landroid/app/Activity;

    invoke-static {v0, v1, v2, v5}, Lcom/android/email/activity/MessageList;->actionHandleAccount(Landroid/content/Context;JI)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 277
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/Welcome$MainActivityLauncher;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/email/activity/Welcome$MainActivityLauncher;->mFromActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 345
    return-void
.end method
