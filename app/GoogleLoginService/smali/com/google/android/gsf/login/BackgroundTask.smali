.class public abstract Lcom/google/android/gsf/login/BackgroundTask;
.super Lcom/google/android/gsf/login/BaseActivity;
.source "BackgroundTask.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/login/BackgroundTask$3;,
        Lcom/google/android/gsf/login/BackgroundTask$Action;
    }
.end annotation


# instance fields
.field mCancelButton:Landroid/widget/Button;

.field mCancelable:Z

.field private mCurrentAction:Lcom/google/android/gsf/login/BackgroundTask$Action;

.field protected mHandler:Landroid/os/Handler;

.field private mIsConnected:Z

.field private mLaunchIntent:Landroid/content/Intent;

.field private mNextAction:Lcom/google/android/gsf/login/BackgroundTask$Action;

.field private mResult:I

.field private mRetryAttempts:I

.field private mSimpleMessage:Landroid/widget/TextView;

.field private mTaskEventHandler:Landroid/os/Handler;

.field protected mTaskThread:Lcom/google/android/gsf/login/CancelableCallbackThread;

.field private mTimeExpired:Z

.field private mVerboseMessage:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Lcom/google/android/gsf/login/BaseActivity;-><init>()V

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->mCancelable:Z

    .line 79
    iput-boolean v1, p0, Lcom/google/android/gsf/login/BackgroundTask;->mTimeExpired:Z

    .line 80
    const/16 v0, -0x65

    iput v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->mResult:I

    .line 85
    sget-object v0, Lcom/google/android/gsf/login/BackgroundTask$Action;->IDLE:Lcom/google/android/gsf/login/BackgroundTask$Action;

    iput-object v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->mNextAction:Lcom/google/android/gsf/login/BackgroundTask$Action;

    .line 86
    sget-object v0, Lcom/google/android/gsf/login/BackgroundTask$Action;->IDLE:Lcom/google/android/gsf/login/BackgroundTask$Action;

    iput-object v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->mCurrentAction:Lcom/google/android/gsf/login/BackgroundTask$Action;

    .line 87
    iput-boolean v1, p0, Lcom/google/android/gsf/login/BackgroundTask;->mIsConnected:Z

    .line 89
    new-instance v0, Lcom/google/android/gsf/login/BackgroundTask$1;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/login/BackgroundTask$1;-><init>(Lcom/google/android/gsf/login/BackgroundTask;)V

    iput-object v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->mTaskEventHandler:Landroid/os/Handler;

    .line 99
    new-instance v0, Lcom/google/android/gsf/login/BackgroundTask$2;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/login/BackgroundTask$2;-><init>(Lcom/google/android/gsf/login/BackgroundTask;)V

    iput-object v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lcom/google/android/gsf/login/BackgroundTask;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/google/android/gsf/login/BackgroundTask;->mTimeExpired:Z

    return p1
.end method

.method static synthetic access$102(Lcom/google/android/gsf/login/BackgroundTask;Lcom/google/android/gsf/login/BackgroundTask$Action;)Lcom/google/android/gsf/login/BackgroundTask$Action;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/android/gsf/login/BackgroundTask;->mCurrentAction:Lcom/google/android/gsf/login/BackgroundTask$Action;

    return-object p1
.end method

.method static synthetic access$202(Lcom/google/android/gsf/login/BackgroundTask;Lcom/google/android/gsf/login/BackgroundTask$Action;)Lcom/google/android/gsf/login/BackgroundTask$Action;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/android/gsf/login/BackgroundTask;->mNextAction:Lcom/google/android/gsf/login/BackgroundTask$Action;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/android/gsf/login/BackgroundTask;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/google/android/gsf/login/BackgroundTask;->onReply(Landroid/os/Message;)V

    return-void
.end method

.method private checkAvailableAsync()V
    .locals 5

    .prologue
    .line 674
    iget-boolean v1, p0, Lcom/google/android/gsf/login/BackgroundTask;->LOCAL_LOGV:Z

    if-eqz v1, :cond_0

    const-string v1, "GoogleLoginService"

    const-string v2, "Checking username availability..."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BackgroundTask;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 676
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/google/android/gsf/login/BackgroundTask;->mBackendStub:Lcom/google/android/gsf/login/BackendStub;

    sget-object v2, Lcom/google/android/gsf/login/BackgroundTask;->mUserData:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/google/android/gsf/login/BackgroundTask;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, p0, v2, v3}, Lcom/google/android/gsf/login/BackendStub;->checkLoginName(Landroid/content/Context;Ljava/util/HashMap;Landroid/os/Message;)Lcom/google/android/gsf/login/CancelableCallbackThread;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gsf/login/BackgroundTask;->mTaskThread:Lcom/google/android/gsf/login/CancelableCallbackThread;

    .line 678
    return-void
.end method

.method private createAccountAsync()V
    .locals 5

    .prologue
    .line 650
    iget-boolean v1, p0, Lcom/google/android/gsf/login/BackgroundTask;->LOCAL_LOGV:Z

    if-eqz v1, :cond_0

    const-string v1, "GoogleLoginService"

    const-string v2, "Creating account..."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BackgroundTask;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 652
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/google/android/gsf/login/BackgroundTask;->mBackendStub:Lcom/google/android/gsf/login/BackendStub;

    sget-object v2, Lcom/google/android/gsf/login/BackgroundTask;->mUserData:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/google/android/gsf/login/BackgroundTask;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, p0, v2, v3}, Lcom/google/android/gsf/login/BackendStub;->createAccount(Landroid/content/Context;Ljava/util/HashMap;Landroid/os/Message;)Lcom/google/android/gsf/login/CancelableCallbackThread;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gsf/login/BackgroundTask;->mTaskThread:Lcom/google/android/gsf/login/CancelableCallbackThread;

    .line 654
    return-void
.end method

.method private doRetry()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 289
    iget v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->mRetryAttempts:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 290
    iget-boolean v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->LOCAL_LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "GoogleLoginService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retry #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gsf/login/BackgroundTask;->mRetryAttempts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_0
    iget v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->mRetryAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->mRetryAttempts:I

    .line 292
    invoke-direct {p0}, Lcom/google/android/gsf/login/BackgroundTask;->onRetry()V

    .line 293
    const/4 v0, 0x1

    .line 299
    :goto_0
    return v0

    .line 295
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->LOCAL_LOGV:Z

    if-eqz v0, :cond_2

    const-string v0, "GoogleLoginService"

    const-string v1, "Maximum retries reached"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_2
    iput v2, p0, Lcom/google/android/gsf/login/BackgroundTask;->mRetryAttempts:I

    .line 297
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BackgroundTask;->onRetriesExhausted()V

    move v0, v2

    .line 299
    goto :goto_0
.end method

.method private generateMissingAppMessage()Ljava/lang/String;
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v13, 0x1

    .line 475
    sget-object v10, Lcom/google/android/gsf/login/BackgroundTask;->mUserData:Ljava/util/HashMap;

    sget-object v11, Lcom/google/android/gsf/login/BackendStub$Key;->APPS:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v11}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    move-object v0, v10

    check-cast v0, [Ljava/lang/String;

    move-object v3, v0

    .line 476
    .local v3, apps:[Ljava/lang/String;
    sget-object v10, Lcom/google/android/gsf/login/BackgroundTask;->mUserData:Ljava/util/HashMap;

    sget-object v11, Lcom/google/android/gsf/login/BackendStub$Key;->USERNAME:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v11}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/google/android/gsf/login/BackgroundTask;->getDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 477
    .local v5, domain:Ljava/lang/String;
    const/4 v7, 0x0

    .line 478
    .local v7, inactiveDomain:Z
    const-string v4, ""

    .line 479
    .local v4, appsString:Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    array-length v10, v3

    if-ge v6, v10, :cond_4

    .line 480
    aget-object v2, v3, v6

    .line 481
    .local v2, appToken:Ljava/lang/String;
    const/4 v1, 0x0

    .line 482
    .local v1, appName:Ljava/lang/String;
    const-string v10, "cl"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 483
    const v10, 0x7f08002c

    invoke-virtual {p0, v10}, Lcom/google/android/gsf/login/BackgroundTask;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 498
    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 499
    array-length v10, v3

    sub-int/2addr v10, v13

    if-eq v6, v10, :cond_0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 479
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 484
    :cond_1
    const-string v10, "mail"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 485
    const v10, 0x7f08002e

    invoke-virtual {p0, v10}, Lcom/google/android/gsf/login/BackgroundTask;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 486
    :cond_2
    const-string v10, "talk"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 487
    const v10, 0x7f08002d

    invoke-virtual {p0, v10}, Lcom/google/android/gsf/login/BackgroundTask;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 488
    :cond_3
    const-string v10, "_LOGIN"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 489
    const/4 v7, 0x1

    .line 503
    .end local v1           #appName:Ljava/lang/String;
    .end local v2           #appToken:Ljava/lang/String;
    :cond_4
    if-eqz v7, :cond_6

    .line 504
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BackgroundTask;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f080052

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 505
    .local v9, template:Ljava/lang/String;
    new-array v10, v13, [Ljava/lang/CharSequence;

    aput-object v5, v10, v14

    invoke-static {v9, v10}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 511
    .local v8, message:Ljava/lang/String;
    :goto_2
    return-object v8

    .line 494
    .end local v8           #message:Ljava/lang/String;
    .end local v9           #template:Ljava/lang/String;
    .restart local v1       #appName:Ljava/lang/String;
    .restart local v2       #appToken:Ljava/lang/String;
    :cond_5
    const-string v10, "GoogleLoginService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown app token for MISSING_APPS: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    move-object v1, v2

    goto/16 :goto_1

    .line 507
    .end local v1           #appName:Ljava/lang/String;
    .end local v2           #appToken:Ljava/lang/String;
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BackgroundTask;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const/high16 v11, 0x7f0a

    array-length v12, v3

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v9

    .line 509
    .restart local v9       #template:Ljava/lang/String;
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/CharSequence;

    aput-object v4, v10, v14

    aput-object v5, v10, v13

    invoke-static {v9, v10}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .restart local v8       #message:Ljava/lang/String;
    goto :goto_2
.end method

.method private getDomain(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "username"

    .prologue
    .line 467
    const-string v1, "@"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    .line 468
    .local v0, pos:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p1, v1, v2}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getOAuthRequestTokenAsync()V
    .locals 4

    .prologue
    .line 681
    iget-boolean v1, p0, Lcom/google/android/gsf/login/BackgroundTask;->LOCAL_LOGV:Z

    if-eqz v1, :cond_0

    const-string v1, "GoogleLoginService"

    const-string v2, "Getting new request token..."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BackgroundTask;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 683
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/google/android/gsf/login/BackgroundTask;->mBackendStub:Lcom/google/android/gsf/login/BackendStub;

    sget-object v2, Lcom/google/android/gsf/login/BackgroundTask;->mUserData:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/google/android/gsf/login/BackgroundTask;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, p0, v2, v3}, Lcom/google/android/gsf/login/BackendStub;->getOAuthRequestToken(Landroid/content/Context;Ljava/util/HashMap;Landroid/os/Message;)Lcom/google/android/gsf/login/CancelableCallbackThread;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gsf/login/BackgroundTask;->mTaskThread:Lcom/google/android/gsf/login/CancelableCallbackThread;

    .line 685
    return-void
.end method

.method private loginAsync()V
    .locals 4

    .prologue
    .line 638
    iget-boolean v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->LOCAL_LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "GoogleLoginService"

    const-string v1, "Logging in..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->mBackendStub:Lcom/google/android/gsf/login/BackendStub;

    sget-object v1, Lcom/google/android/gsf/login/BackgroundTask;->mUserData:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/google/android/gsf/login/BackgroundTask;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/login/BackendStub;->login(Ljava/util/HashMap;Landroid/os/Message;)Lcom/google/android/gsf/login/CancelableCallbackThread;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->mTaskThread:Lcom/google/android/gsf/login/CancelableCallbackThread;

    .line 640
    return-void
.end method

.method private onReply(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 581
    sget-object v1, Lcom/google/android/gsf/login/BackgroundTask$Action;->IDLE:Lcom/google/android/gsf/login/BackgroundTask$Action;

    iput-object v1, p0, Lcom/google/android/gsf/login/BackgroundTask;->mCurrentAction:Lcom/google/android/gsf/login/BackgroundTask$Action;

    .line 582
    sget-object v1, Lcom/google/android/gsf/login/BackgroundTask$Action;->IDLE:Lcom/google/android/gsf/login/BackgroundTask$Action;

    iput-object v1, p0, Lcom/google/android/gsf/login/BackgroundTask;->mNextAction:Lcom/google/android/gsf/login/BackgroundTask$Action;

    .line 583
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BackgroundTask;->cancelTaskThread()V

    .line 585
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    sget-object v2, Lcom/google/android/gsf/login/BackendStub$Key;->STATUS:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v2}, Lcom/google/android/gsf/login/BackendStub$Key;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gsf/login/BackendStub$Status;->valueOf(Ljava/lang/String;)Lcom/google/android/gsf/login/BackendStub$Status;

    move-result-object v0

    .line 587
    .local v0, status:Lcom/google/android/gsf/login/BackendStub$Status;
    iget-boolean v1, p0, Lcom/google/android/gsf/login/BackgroundTask;->LOCAL_LOGV:Z

    if-eqz v1, :cond_0

    const-string v1, "GoogleLoginService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReply() - status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :cond_0
    sget-object v1, Lcom/google/android/gsf/login/BackgroundTask$3;->$SwitchMap$com$google$android$gsf$login$BackendStub$Status:[I

    invoke-virtual {v0}, Lcom/google/android/gsf/login/BackendStub$Status;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 628
    const-string v1, "GoogleLoginService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gsf/login/BackendStub$Status;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    :goto_0
    return-void

    .line 591
    :pswitch_0
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gsf/login/BackgroundTask;->onReplySuccess(Lcom/google/android/gsf/login/BackendStub$Status;Landroid/os/Message;)V

    goto :goto_0

    .line 595
    :pswitch_1
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gsf/login/BackgroundTask;->onReplyCaptchaRequired(Lcom/google/android/gsf/login/BackendStub$Status;Landroid/os/Message;)V

    goto :goto_0

    .line 601
    :pswitch_2
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gsf/login/BackgroundTask;->onReplyServerError(Lcom/google/android/gsf/login/BackendStub$Status;Landroid/os/Message;)V

    goto :goto_0

    .line 606
    :pswitch_3
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gsf/login/BackgroundTask;->onReplyIoError(Lcom/google/android/gsf/login/BackendStub$Status;Landroid/os/Message;)V

    .line 607
    invoke-direct {p0}, Lcom/google/android/gsf/login/BackgroundTask;->doRetry()Z

    goto :goto_0

    .line 611
    :pswitch_4
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gsf/login/BackgroundTask;->requestFinish(ILandroid/content/Intent;Z)V

    goto :goto_0

    .line 624
    :pswitch_5
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gsf/login/BackgroundTask;->onReplyServerMessage(Lcom/google/android/gsf/login/BackendStub$Status;Landroid/os/Message;)V

    goto :goto_0

    .line 589
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private onRetry()V
    .locals 2

    .prologue
    .line 281
    iget-boolean v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->LOCAL_LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "GoogleLoginService"

    const-string v1, "Retry..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BackgroundTask;->start()V

    .line 283
    return-void
.end method

.method private ratePasswordAsync()V
    .locals 5

    .prologue
    .line 663
    iget-boolean v1, p0, Lcom/google/android/gsf/login/BackgroundTask;->LOCAL_LOGV:Z

    if-eqz v1, :cond_0

    const-string v1, "GoogleLoginService"

    const-string v2, "Rate password..."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BackgroundTask;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 665
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/google/android/gsf/login/BackgroundTask;->mBackendStub:Lcom/google/android/gsf/login/BackendStub;

    sget-object v2, Lcom/google/android/gsf/login/BackgroundTask;->mUserData:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/google/android/gsf/login/BackgroundTask;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, p0, v2, v3}, Lcom/google/android/gsf/login/BackendStub;->ratePassword(Landroid/content/Context;Ljava/util/HashMap;Landroid/os/Message;)Lcom/google/android/gsf/login/CancelableCallbackThread;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gsf/login/BackgroundTask;->mTaskThread:Lcom/google/android/gsf/login/CancelableCallbackThread;

    .line 667
    return-void
.end method

.method private showNetworkErrorAndFinish()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 329
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BackgroundTask;->hasNetworkConnection()Z

    move-result v4

    if-nez v4, :cond_0

    move v1, v5

    .line 330
    .local v1, networkFailure:Z
    :goto_0
    if-eqz v1, :cond_2

    .line 333
    const v4, 0x320ce

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 334
    const v3, 0x7f080062

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/BackgroundTask;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 335
    .local v2, problem:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BackgroundTask;->isWifiOnlyBuild()Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f080064

    :goto_1
    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/BackgroundTask;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 347
    .local v0, helpMessage:Ljava/lang/String;
    :goto_2
    invoke-virtual {p0, v2, v0, v5}, Lcom/google/android/gsf/login/BackgroundTask;->showErrorAndFinish(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 349
    return-void

    .line 329
    .end local v0           #helpMessage:Ljava/lang/String;
    .end local v1           #networkFailure:Z
    .end local v2           #problem:Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 335
    .restart local v1       #networkFailure:Z
    .restart local v2       #problem:Ljava/lang/String;
    :cond_1
    const v3, 0x7f080063

    goto :goto_1

    .line 341
    .end local v2           #problem:Ljava/lang/String;
    :cond_2
    const v4, 0x320c9

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 342
    const v3, 0x7f080024

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/BackgroundTask;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 343
    .restart local v2       #problem:Ljava/lang/String;
    const v3, 0x7f080025

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/BackgroundTask;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #helpMessage:Ljava/lang/String;
    goto :goto_2
.end method


# virtual methods
.method protected cancelTaskThread()V
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->mTaskThread:Lcom/google/android/gsf/login/CancelableCallbackThread;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->mTaskThread:Lcom/google/android/gsf/login/CancelableCallbackThread;

    invoke-virtual {v0}, Lcom/google/android/gsf/login/CancelableCallbackThread;->cancel()V

    .line 253
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->mTaskThread:Lcom/google/android/gsf/login/CancelableCallbackThread;

    .line 255
    iget-object v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 257
    :cond_0
    return-void
.end method

.method protected dispatchAction(Lcom/google/android/gsf/login/BackgroundTask$Action;)V
    .locals 3
    .parameter "action"

    .prologue
    .line 693
    sget-object v0, Lcom/google/android/gsf/login/BackgroundTask;->mUserData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gsf/login/BackgroundTask$Action;->IDLE:Lcom/google/android/gsf/login/BackgroundTask$Action;

    if-eq p1, v0, :cond_0

    .line 696
    const-string v0, "GoogleLoginService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*** Userdata is empty! Action \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' may fail."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :cond_0
    iput-object p1, p0, Lcom/google/android/gsf/login/BackgroundTask;->mCurrentAction:Lcom/google/android/gsf/login/BackgroundTask$Action;

    .line 700
    iget-boolean v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->mIsConnected:Z

    if-nez v0, :cond_2

    .line 701
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BackgroundTask;->onNetworkDisconnected()V

    .line 736
    :cond_1
    :goto_0
    return-void

    .line 705
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->LOCAL_LOGV:Z

    if-eqz v0, :cond_3

    const-string v0, "GoogleLoginService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Network appears to be available, dispatching action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    :cond_3
    sget-object v0, Lcom/google/android/gsf/login/BackgroundTask$3;->$SwitchMap$com$google$android$gsf$login$BackgroundTask$Action:[I

    invoke-virtual {p1}, Lcom/google/android/gsf/login/BackgroundTask$Action;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 732
    iget-boolean v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->LOCAL_LOGV:Z

    if-eqz v0, :cond_1

    const-string v0, "GoogleLoginService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Internal error in dipatchAction(): unknown action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 708
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/gsf/login/BackgroundTask;->loginAsync()V

    goto :goto_0

    .line 712
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/gsf/login/BackgroundTask;->createAccountAsync()V

    goto :goto_0

    .line 716
    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/gsf/login/BackgroundTask;->ratePasswordAsync()V

    goto :goto_0

    .line 720
    :pswitch_3
    invoke-direct {p0}, Lcom/google/android/gsf/login/BackgroundTask;->checkAvailableAsync()V

    goto :goto_0

    .line 724
    :pswitch_4
    iget-boolean v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->LOCAL_LOGV:Z

    if-eqz v0, :cond_1

    const-string v0, "GoogleLoginService"

    const-string v1, "doing idle state"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 728
    :pswitch_5
    invoke-direct {p0}, Lcom/google/android/gsf/login/BackgroundTask;->getOAuthRequestTokenAsync()V

    goto :goto_0

    .line 706
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected getReplyMessage(Lcom/google/android/gsf/login/BackendStub$Status;)Ljava/lang/String;
    .locals 5
    .parameter "status"

    .prologue
    .line 520
    const/4 v1, 0x0

    .line 521
    .local v1, message:Ljava/lang/String;
    sget-object v2, Lcom/google/android/gsf/login/BackgroundTask$3;->$SwitchMap$com$google$android$gsf$login$BackendStub$Status:[I

    invoke-virtual {p1}, Lcom/google/android/gsf/login/BackendStub$Status;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 568
    const-string v2, "GoogleLoginService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gsf/login/BackendStub$Status;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Internal Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gsf/login/BackendStub$Status;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 572
    :goto_0
    return-object v1

    .line 523
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BackgroundTask;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080061

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 524
    goto :goto_0

    .line 527
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BackgroundTask;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080060

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 528
    goto :goto_0

    .line 531
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BackgroundTask;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080089

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 532
    goto :goto_0

    .line 535
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BackgroundTask;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08008a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 536
    goto :goto_0

    .line 539
    :pswitch_4
    sget-object v2, Lcom/google/android/gsf/login/BackgroundTask;->mUserData:Ljava/util/HashMap;

    sget-object v3, Lcom/google/android/gsf/login/BackendStub$Key;->DETAIL:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v3}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 540
    .local v0, detail:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "NotVerified"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 542
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BackgroundTask;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080066

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 545
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BackgroundTask;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080065

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 547
    goto :goto_0

    .line 550
    .end local v0           #detail:Ljava/lang/String;
    :pswitch_5
    invoke-direct {p0}, Lcom/google/android/gsf/login/BackgroundTask;->generateMissingAppMessage()Ljava/lang/String;

    move-result-object v1

    .line 551
    goto :goto_0

    .line 554
    :pswitch_6
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BackgroundTask;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080076

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 555
    goto :goto_0

    .line 558
    :pswitch_7
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BackgroundTask;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080087

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 559
    goto :goto_0

    .line 562
    :pswitch_8
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BackgroundTask;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080088

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 563
    goto/16 :goto_0

    .line 521
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 193
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gsf/login/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 194
    if-nez p1, :cond_4

    .line 195
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 196
    iget-boolean v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->LOCAL_LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "GoogleLoginService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Captcha answered, retry with mNextAction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/login/BackgroundTask;->mNextAction:Lcom/google/android/gsf/login/BackgroundTask$Action;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "thread="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_0
    const v0, 0x320ca

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "with action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/login/BackgroundTask;->mCurrentAction:Lcom/google/android/gsf/login/BackgroundTask$Action;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 203
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BackgroundTask;->hasNetworkConnection()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->mIsConnected:Z

    .line 205
    invoke-direct {p0}, Lcom/google/android/gsf/login/BackgroundTask;->onRetry()V

    .line 215
    :cond_1
    :goto_0
    return-void

    .line 206
    :cond_2
    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    .line 207
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BackgroundTask;->onCancel()V

    goto :goto_0

    .line 210
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->LOCAL_LOGV:Z

    if-eqz v0, :cond_1

    const-string v0, "GoogleLoginService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Captcha failed with resultCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 213
    :cond_4
    const-string v0, "GoogleLoginService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCancel()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 429
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, v1}, Lcom/google/android/gsf/login/BackgroundTask;->requestFinish(ILandroid/content/Intent;Z)V

    .line 430
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 434
    iget-object v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->mCancelButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 438
    iget-boolean v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->mCancelable:Z

    if-eqz v0, :cond_0

    .line 439
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BackgroundTask;->onCancel()V

    .line 442
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 157
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 158
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BackgroundTask;->getActivityContentView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 159
    const v0, 0x7f030024

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/BackgroundTask;->setContentView(I)V

    .line 160
    const v0, 0x7f0c0026

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/BackgroundTask;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->mCancelButton:Landroid/widget/Button;

    .line 161
    iget-object v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    const v0, 0x7f0c0078

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/BackgroundTask;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->mSimpleMessage:Landroid/widget/TextView;

    .line 163
    const v0, 0x7f0c0079

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/BackgroundTask;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->mVerboseMessage:Landroid/widget/TextView;

    .line 164
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BackgroundTask;->start()V

    .line 166
    :cond_0
    return-void
.end method

.method public onNetworkConnected()V
    .locals 3

    .prologue
    .line 222
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->onNetworkConnected()V

    .line 223
    iget-boolean v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->LOCAL_LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "GoogleLoginService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Network came up with currentaction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/login/BackgroundTask;->mCurrentAction:Lcom/google/android/gsf/login/BackgroundTask$Action;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " nextAction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/login/BackgroundTask;->mNextAction:Lcom/google/android/gsf/login/BackgroundTask$Action;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mTaskThread="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/login/BackgroundTask;->mTaskThread:Lcom/google/android/gsf/login/CancelableCallbackThread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->mIsConnected:Z

    .line 226
    iget-object v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->mTaskThread:Lcom/google/android/gsf/login/CancelableCallbackThread;

    if-nez v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->mNextAction:Lcom/google/android/gsf/login/BackgroundTask$Action;

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/BackgroundTask;->dispatchAction(Lcom/google/android/gsf/login/BackgroundTask$Action;)V

    .line 229
    :cond_1
    return-void
.end method

.method public onNetworkDisconnected()V
    .locals 4

    .prologue
    .line 236
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->onNetworkDisconnected()V

    .line 237
    iget-boolean v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->LOCAL_LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "GoogleLoginService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Network went down with currentaction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/login/BackgroundTask;->mCurrentAction:Lcom/google/android/gsf/login/BackgroundTask$Action;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " nextAction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/login/BackgroundTask;->mNextAction:Lcom/google/android/gsf/login/BackgroundTask$Action;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->mIsConnected:Z

    .line 240
    iget-object v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->mCurrentAction:Lcom/google/android/gsf/login/BackgroundTask$Action;

    sget-object v1, Lcom/google/android/gsf/login/BackgroundTask$Action;->IDLE:Lcom/google/android/gsf/login/BackgroundTask$Action;

    if-eq v0, v1, :cond_1

    .line 241
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BackgroundTask;->cancelTaskThread()V

    .line 243
    iget-object v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gsf/login/BackgroundTask;->mHandler:Landroid/os/Handler;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 245
    iget-object v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->mCurrentAction:Lcom/google/android/gsf/login/BackgroundTask$Action;

    iput-object v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->mNextAction:Lcom/google/android/gsf/login/BackgroundTask$Action;

    .line 246
    sget-object v0, Lcom/google/android/gsf/login/BackgroundTask$Action;->IDLE:Lcom/google/android/gsf/login/BackgroundTask$Action;

    iput-object v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->mCurrentAction:Lcom/google/android/gsf/login/BackgroundTask$Action;

    .line 248
    :cond_1
    return-void
.end method

.method protected onNetworkFailed()V
    .locals 0

    .prologue
    .line 356
    invoke-direct {p0}, Lcom/google/android/gsf/login/BackgroundTask;->showNetworkErrorAndFinish()V

    .line 357
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 170
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->onPause()V

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->mIsConnected:Z

    .line 178
    iget-boolean v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->LOCAL_LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "GoogleLoginService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause(), class="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_0
    return-void
.end method

.method protected onReplyCaptchaRequired(Lcom/google/android/gsf/login/BackendStub$Status;Landroid/os/Message;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 394
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 395
    const-class v1, Lcom/google/android/gsf/login/CaptchaActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 396
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/BackgroundTask;->startActivityForResult(Landroid/content/Intent;I)V

    .line 397
    return-void
.end method

.method protected onReplyIoError(Lcom/google/android/gsf/login/BackendStub$Status;Landroid/os/Message;)V
    .locals 3
    .parameter "status"
    .parameter "msg"

    .prologue
    .line 384
    const v0, 0x320cb

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 385
    return-void
.end method

.method protected onReplyServerError(Lcom/google/android/gsf/login/BackendStub$Status;Landroid/os/Message;)V
    .locals 2
    .parameter "status"
    .parameter "msg"

    .prologue
    .line 374
    const v1, 0x320cc

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 375
    const v0, 0x7f080022

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/BackgroundTask;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f080023

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/BackgroundTask;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/BackgroundTask;->showErrorAndFinish(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    return-void
.end method

.method public onReplyServerMessage(Lcom/google/android/gsf/login/BackendStub$Status;Landroid/os/Message;)V
    .locals 4
    .parameter "status"
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 450
    const-string v0, "GoogleLoginService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "** Class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " should handle reply: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    const/4 v0, 0x0

    invoke-virtual {p0, v3, v0, v3}, Lcom/google/android/gsf/login/BackgroundTask;->requestFinish(ILandroid/content/Intent;Z)V

    .line 452
    return-void
.end method

.method protected abstract onReplySuccess(Lcom/google/android/gsf/login/BackendStub$Status;Landroid/os/Message;)V
.end method

.method protected onRetriesExhausted()V
    .locals 2

    .prologue
    .line 364
    const v1, 0x320cd

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 365
    invoke-direct {p0}, Lcom/google/android/gsf/login/BackgroundTask;->showNetworkErrorAndFinish()V

    .line 366
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 183
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->onStop()V

    .line 185
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BackgroundTask;->cancelTaskThread()V

    .line 186
    return-void
.end method

.method protected onViewTimeout()V
    .locals 3

    .prologue
    const/16 v2, -0x65

    .line 308
    iget-boolean v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->mTimeExpired:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->mResult:I

    if-eq v0, v2, :cond_1

    .line 309
    iget-object v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->mLaunchIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/BackgroundTask;->startActivity(Landroid/content/Intent;)V

    .line 312
    :cond_0
    iget v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->mResult:I

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/BackgroundTask;->setResult(I)V

    .line 313
    iget-object v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->mHandler:Landroid/os/Handler;

    const/16 v1, -0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 317
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->mLaunchIntent:Landroid/content/Intent;

    .line 318
    iput v2, p0, Lcom/google/android/gsf/login/BackgroundTask;->mResult:I

    .line 319
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BackgroundTask;->finish()V

    .line 321
    :cond_1
    return-void
.end method

.method protected requestFinish(ILandroid/content/Intent;Z)V
    .locals 1
    .parameter "result"
    .parameter "intent"
    .parameter "waitForTimeout"

    .prologue
    .line 408
    iput p1, p0, Lcom/google/android/gsf/login/BackgroundTask;->mResult:I

    .line 409
    iput-object p2, p0, Lcom/google/android/gsf/login/BackgroundTask;->mLaunchIntent:Landroid/content/Intent;

    .line 410
    if-nez p3, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->mTimeExpired:Z

    .line 411
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BackgroundTask;->onViewTimeout()V

    .line 412
    return-void
.end method

.method protected setSimpleMessage(I)V
    .locals 1
    .parameter "messageId"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->mSimpleMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 126
    return-void
.end method

.method protected setVerboseMessage(I)V
    .locals 1
    .parameter "messageId"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->mVerboseMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 130
    return-void
.end method

.method protected showErrorAndFinish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "title"
    .parameter "message"

    .prologue
    .line 146
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1}, Lcom/google/android/gsf/login/ShowErrorActivity;->createIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gsf/login/BackgroundTask;->requestFinish(ILandroid/content/Intent;Z)V

    .line 148
    return-void
.end method

.method protected showErrorAndFinish(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 3
    .parameter "title"
    .parameter "message"
    .parameter "intent"

    .prologue
    .line 141
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gsf/login/ShowErrorActivity;->createIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gsf/login/BackgroundTask;->requestFinish(ILandroid/content/Intent;Z)V

    .line 143
    return-void
.end method

.method protected showErrorAndFinish(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .parameter "title"
    .parameter "message"
    .parameter "showWifi"

    .prologue
    .line 151
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, p3, v1}, Lcom/google/android/gsf/login/ShowErrorActivity;->createIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gsf/login/BackgroundTask;->requestFinish(ILandroid/content/Intent;Z)V

    .line 153
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    const/16 v2, -0x64

    .line 416
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->start()V

    .line 418
    iget-object v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->mTaskEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 419
    iget-object v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->mTaskEventHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gsf/login/BackgroundTask;->mTaskEventHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 421
    return-void
.end method
