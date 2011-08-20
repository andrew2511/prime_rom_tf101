.class public Lcom/android/email/activity/Welcome;
.super Landroid/app/Activity;
.source "Welcome.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/Welcome$MainActivityLauncher;
    }
.end annotation


# static fields
.field private static DATA_PATH:Ljava/lang/String;

.field private static MIN_SPACE_FOR_EMAIL:J


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 91
    const-wide/32 v0, 0xa00000

    sput-wide v0, Lcom/android/email/activity/Welcome;->MIN_SPACE_FOR_EMAIL:J

    .line 92
    const-string v0, "/data"

    sput-object v0, Lcom/android/email/activity/Welcome;->DATA_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 100
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/Welcome;->mHandler:Landroid/os/Handler;

    .line 277
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/Welcome;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/email/activity/Welcome;->startEmail()V

    return-void
.end method

.method public static actionOpenAccountInbox(Landroid/app/Activity;J)V
    .locals 1
    .parameter "fromActivity"
    .parameter "accountId"

    .prologue
    .line 149
    invoke-static {p0, p1, p2}, Lcom/android/email/activity/Welcome;->createOpenAccountInboxIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 150
    return-void
.end method

.method public static actionStart(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 115
    const-class v0, Lcom/android/email/activity/Welcome;

    invoke-static {p0, v0}, Lcom/android/emailcommon/utility/Utility;->createRestartAppIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 116
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 117
    return-void
.end method

.method private createDialog()V
    .locals 3

    .prologue
    .line 171
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040338

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080001

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    new-instance v2, Lcom/android/email/activity/Welcome$3;

    invoke-direct {v2, p0}, Lcom/android/email/activity/Welcome$3;-><init>(Lcom/android/email/activity/Welcome;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    new-instance v2, Lcom/android/email/activity/Welcome$2;

    invoke-direct {v2, p0}, Lcom/android/email/activity/Welcome$2;-><init>(Lcom/android/email/activity/Welcome;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/email/activity/Welcome$1;

    invoke-direct {v1, p0}, Lcom/android/email/activity/Welcome$1;-><init>(Lcom/android/email/activity/Welcome;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 198
    return-void
.end method

.method public static createOpenAccountInboxIntent(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 124
    const-class v0, Lcom/android/email/activity/Welcome;

    invoke-static {p0, v0}, Lcom/android/emailcommon/utility/Utility;->createRestartAppIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 125
    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    if-eqz v1, :cond_0

    .line 126
    const-string v1, "ACCOUNT_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 128
    :cond_0
    return-object v0
.end method

.method public static createOpenMessageIntent(Landroid/content/Context;JJJ)Landroid/content/Intent;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 136
    const-class v0, Lcom/android/email/activity/Welcome;

    invoke-static {p0, v0}, Lcom/android/emailcommon/utility/Utility;->createRestartAppIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 137
    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    if-eqz v1, :cond_0

    .line 138
    const-string v1, "ACCOUNT_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 139
    const-string v1, "MAILBOX_ID"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 140
    const-string v1, "MESSAGE_ID"

    invoke-virtual {v0, v1, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 142
    :cond_0
    return-object v0
.end method

.method private static getDebugPaneMode(Landroid/content/Intent;)I
    .locals 3
    .parameter "i"

    .prologue
    .line 157
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 158
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 159
    const-string v2, "DEBUG_PANE_MODE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, s:Ljava/lang/String;
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    const/4 v2, 0x1

    .line 166
    .end local v1           #s:Ljava/lang/String;
    :goto_0
    return v2

    .line 162
    .restart local v1       #s:Ljava/lang/String;
    :cond_0
    const-string v2, "2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 163
    const/4 v2, 0x2

    goto :goto_0

    .line 166
    .end local v1           #s:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isLowMemory()Z
    .locals 7

    .prologue
    .line 203
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    sget-object v3, Lcom/android/email/activity/Welcome;->DATA_PATH:Ljava/lang/String;

    invoke-direct {v0, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 204
    .local v0, dataStats:Landroid/os/StatFs;
    sget-object v3, Lcom/android/email/activity/Welcome;->DATA_PATH:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v5, v5

    mul-long v1, v3, v5

    .line 209
    .local v1, freeMem:J
    const-string v3, "debug.email.free_mem"

    invoke-static {v3, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 210
    sget-wide v3, Lcom/android/email/activity/Welcome;->MIN_SPACE_FOR_EMAIL:J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    .line 211
    const/4 v3, 0x1

    .line 216
    .end local v0           #dataStats:Landroid/os/StatFs;
    .end local v1           #freeMem:J
    :goto_0
    return v3

    .line 213
    :catch_0
    move-exception v3

    .line 216
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private startEmail()V
    .locals 11

    .prologue
    const-wide/16 v9, -0x1

    .line 226
    invoke-static {p0}, Lcom/android/email/AccountBackupRestore;->restoreAccountsIfNeeded(Landroid/content/Context;)V

    .line 233
    invoke-static {p0}, Lcom/android/email/ExchangeUtils;->startExchangeService(Landroid/content/Context;)V

    .line 235
    invoke-virtual {p0}, Lcom/android/email/activity/Welcome;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ACCOUNT_ID"

    invoke-virtual {v0, v1, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 236
    .local v2, accountId:J
    invoke-virtual {p0}, Lcom/android/email/activity/Welcome;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "MAILBOX_ID"

    invoke-virtual {v0, v1, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 237
    .local v4, mailboxId:J
    invoke-virtual {p0}, Lcom/android/email/activity/Welcome;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "MESSAGE_ID"

    invoke-virtual {v0, v1, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 238
    .local v6, messageId:J
    invoke-virtual {p0}, Lcom/android/email/activity/Welcome;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/activity/Welcome;->getDebugPaneMode(Landroid/content/Intent;)I

    move-result v8

    .line 239
    .local v8, debugPaneMode:I
    new-instance v0, Lcom/android/email/activity/Welcome$MainActivityLauncher;

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/email/activity/Welcome$MainActivityLauncher;-><init>(Landroid/app/Activity;JJJI)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/Welcome$MainActivityLauncher;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 240
    return-void
.end method

.method public static useTwoPane(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 106
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f09

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 245
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 246
    invoke-static {p0}, Lcom/android/email/activity/ActivityHelper;->debugSetWindowFlags(Landroid/app/Activity;)V

    .line 249
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/email/Email;->setNotifyUiAccountsChanged(Z)V

    .line 257
    invoke-direct {p0}, Lcom/android/email/activity/Welcome;->isLowMemory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    invoke-direct {p0}, Lcom/android/email/activity/Welcome;->createDialog()V

    .line 263
    :goto_0
    return-void

    .line 260
    :cond_0
    invoke-direct {p0}, Lcom/android/email/activity/Welcome;->startEmail()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 268
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 269
    return-void
.end method
