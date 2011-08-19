.class public Lcom/android/email/activity/MailboxFinder;
.super Ljava/lang/Object;
.source "MailboxFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MailboxFinder$1;,
        Lcom/android/email/activity/MailboxFinder$FindMailboxTask;,
        Lcom/android/email/activity/MailboxFinder$ControllerResults;,
        Lcom/android/email/activity/MailboxFinder$Callback;
    }
.end annotation


# instance fields
.field private final mAccountId:J

.field private final mCallback:Lcom/android/email/activity/MailboxFinder$Callback;

.field private mClosed:Z

.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/android/email/Controller;

.field private mControllerResults:Lcom/android/email/Controller$Result;

.field private final mInnerControllerResults:Lcom/android/email/activity/MailboxFinder$ControllerResults;

.field private final mMailboxType:I

.field private mStarted:Z

.field private mTask:Lcom/android/email/activity/MailboxFinder$FindMailboxTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;JILcom/android/email/activity/MailboxFinder$Callback;)V
    .locals 3
    .parameter "context"
    .parameter "accountId"
    .parameter "mailboxType"
    .parameter "callback"

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 78
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MailboxFinder;->mContext:Landroid/content/Context;

    .line 79
    invoke-static {p1}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MailboxFinder;->mController:Lcom/android/email/Controller;

    .line 80
    iput-wide p2, p0, Lcom/android/email/activity/MailboxFinder;->mAccountId:J

    .line 81
    iput p4, p0, Lcom/android/email/activity/MailboxFinder;->mMailboxType:I

    .line 82
    iput-object p5, p0, Lcom/android/email/activity/MailboxFinder;->mCallback:Lcom/android/email/activity/MailboxFinder$Callback;

    .line 83
    new-instance v0, Lcom/android/email/activity/MailboxFinder$ControllerResults;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MailboxFinder$ControllerResults;-><init>(Lcom/android/email/activity/MailboxFinder;Lcom/android/email/activity/MailboxFinder$1;)V

    iput-object v0, p0, Lcom/android/email/activity/MailboxFinder;->mInnerControllerResults:Lcom/android/email/activity/MailboxFinder$ControllerResults;

    .line 84
    new-instance v0, Lcom/android/email/ControllerResultUiThreadWrapper;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iget-object v2, p0, Lcom/android/email/activity/MailboxFinder;->mInnerControllerResults:Lcom/android/email/activity/MailboxFinder$ControllerResults;

    invoke-direct {v0, v1, v2}, Lcom/android/email/ControllerResultUiThreadWrapper;-><init>(Landroid/os/Handler;Lcom/android/email/Controller$Result;)V

    iput-object v0, p0, Lcom/android/email/activity/MailboxFinder;->mControllerResults:Lcom/android/email/Controller$Result;

    .line 86
    iget-object v0, p0, Lcom/android/email/activity/MailboxFinder;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/MailboxFinder;->mControllerResults:Lcom/android/email/Controller$Result;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    .line 87
    return-void
.end method

.method static synthetic access$100(Lcom/android/email/activity/MailboxFinder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/email/activity/MailboxFinder;->mClosed:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/email/activity/MailboxFinder;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/android/email/activity/MailboxFinder;->mAccountId:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/email/activity/MailboxFinder;)Lcom/android/email/activity/MailboxFinder$Callback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/email/activity/MailboxFinder;->mCallback:Lcom/android/email/activity/MailboxFinder$Callback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/email/activity/MailboxFinder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/email/activity/MailboxFinder;->close()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/email/activity/MailboxFinder;)Lcom/android/email/activity/MailboxFinder$FindMailboxTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/email/activity/MailboxFinder;->mTask:Lcom/android/email/activity/MailboxFinder$FindMailboxTask;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/email/activity/MailboxFinder;Lcom/android/email/activity/MailboxFinder$FindMailboxTask;)Lcom/android/email/activity/MailboxFinder$FindMailboxTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/email/activity/MailboxFinder;->mTask:Lcom/android/email/activity/MailboxFinder$FindMailboxTask;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/email/activity/MailboxFinder;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/email/activity/MailboxFinder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/email/activity/MailboxFinder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/android/email/activity/MailboxFinder;->mMailboxType:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/email/activity/MailboxFinder;)Lcom/android/email/Controller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/email/activity/MailboxFinder;->mController:Lcom/android/email/Controller;

    return-object v0
.end method

.method private close()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MailboxFinder;->mClosed:Z

    .line 118
    iget-object v0, p0, Lcom/android/email/activity/MailboxFinder;->mControllerResults:Lcom/android/email/Controller$Result;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/email/activity/MailboxFinder;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/MailboxFinder;->mControllerResults:Lcom/android/email/Controller$Result;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    .line 120
    iput-object v2, p0, Lcom/android/email/activity/MailboxFinder;->mControllerResults:Lcom/android/email/Controller$Result;

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MailboxFinder;->mTask:Lcom/android/email/activity/MailboxFinder$FindMailboxTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 123
    iput-object v2, p0, Lcom/android/email/activity/MailboxFinder;->mTask:Lcom/android/email/activity/MailboxFinder$FindMailboxTask;

    .line 124
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/android/email/activity/MailboxFinder;->mClosed:Z

    if-nez v0, :cond_0

    .line 109
    invoke-direct {p0}, Lcom/android/email/activity/MailboxFinder;->close()V

    .line 111
    :cond_0
    return-void
.end method

.method getControllerResultsForTest()Lcom/android/email/Controller$Result;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/email/activity/MailboxFinder;->mInnerControllerResults:Lcom/android/email/activity/MailboxFinder$ControllerResults;

    return-object v0
.end method

.method isReallyClosedForTest()Z
    .locals 1

    .prologue
    .line 260
    iget-boolean v0, p0, Lcom/android/email/activity/MailboxFinder;->mClosed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MailboxFinder;->mTask:Lcom/android/email/activity/MailboxFinder$FindMailboxTask;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MailboxFinder;->mControllerResults:Lcom/android/email/Controller$Result;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isStartedForTest()Z
    .locals 1

    .prologue
    .line 253
    iget-boolean v0, p0, Lcom/android/email/activity/MailboxFinder;->mStarted:Z

    return v0
.end method

.method public startLookup()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 95
    iget-boolean v0, p0, Lcom/android/email/activity/MailboxFinder;->mStarted:Z

    if-eqz v0, :cond_0

    .line 96
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 98
    :cond_0
    iput-boolean v1, p0, Lcom/android/email/activity/MailboxFinder;->mStarted:Z

    .line 99
    new-instance v0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;-><init>(Lcom/android/email/activity/MailboxFinder;Z)V

    iput-object v0, p0, Lcom/android/email/activity/MailboxFinder;->mTask:Lcom/android/email/activity/MailboxFinder$FindMailboxTask;

    .line 100
    iget-object v0, p0, Lcom/android/email/activity/MailboxFinder;->mTask:Lcom/android/email/activity/MailboxFinder$FindMailboxTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 101
    return-void
.end method
