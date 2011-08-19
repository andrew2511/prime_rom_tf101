.class Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;
.super Ljava/lang/Thread;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/loginservice/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AuthThread"
.end annotation


# instance fields
.field private mAddedNewAccount:Z

.field private mLoginData:Lcom/google/android/gsf/LoginData;

.field final synthetic this$0:Lcom/google/android/gsf/loginservice/BaseActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/gsf/loginservice/BaseActivity;)V
    .locals 2
    .parameter

    .prologue
    .line 401
    iput-object p1, p0, Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;->this$0:Lcom/google/android/gsf/loginservice/BaseActivity;

    .line 402
    const-string v0, "GLS.AuthThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 403
    new-instance v0, Lcom/google/android/gsf/LoginData;

    iget-object v1, p1, Lcom/google/android/gsf/loginservice/BaseActivity;->mLoginData:Lcom/google/android/gsf/LoginData;

    invoke-direct {v0, v1}, Lcom/google/android/gsf/LoginData;-><init>(Lcom/google/android/gsf/LoginData;)V

    iput-object v0, p0, Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;->mLoginData:Lcom/google/android/gsf/LoginData;

    .line 404
    iget-boolean v0, p1, Lcom/google/android/gsf/loginservice/BaseActivity;->mAddedNewAccount:Z

    iput-boolean v0, p0, Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;->mAddedNewAccount:Z

    .line 405
    return-void
.end method

.method static synthetic access$200(Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;)Lcom/google/android/gsf/LoginData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 397
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;->mLoginData:Lcom/google/android/gsf/LoginData;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 397
    iget-boolean v0, p0, Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;->mAddedNewAccount:Z

    return v0
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 409
    sget-boolean v3, Lcom/google/android/gsf/loginservice/BaseActivity;->LOCAL_LOGV:Z

    if-eqz v3, :cond_0

    const-string v3, "LoginServiceActivity"

    const-string v4, "AuthThread.run()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_0
    :try_start_0
    sget-boolean v3, Lcom/google/android/gsf/loginservice/BaseActivity;->LOCAL_LOGV:Z

    if-eqz v3, :cond_1

    const-string v3, "LoginServiceActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mRequestNew "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;->this$0:Lcom/google/android/gsf/loginservice/BaseActivity;

    iget-boolean v5, v5, Lcom/google/android/gsf/loginservice/BaseActivity;->mRequestNewAccount:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mAddedNew "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;->mAddedNewAccount:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_1
    iget-object v3, p0, Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;->mLoginData:Lcom/google/android/gsf/LoginData;

    iget-object v2, v3, Lcom/google/android/gsf/LoginData;->mPassword:Ljava/lang/String;

    .line 417
    .local v2, password:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;->this$0:Lcom/google/android/gsf/loginservice/BaseActivity;

    iget-boolean v3, v3, Lcom/google/android/gsf/loginservice/BaseActivity;->mRequestNewAccount:Z

    if-eqz v3, :cond_9

    iget-boolean v3, p0, Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;->mAddedNewAccount:Z

    if-nez v3, :cond_9

    .line 422
    iget-object v3, p0, Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;->this$0:Lcom/google/android/gsf/loginservice/BaseActivity;

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 424
    .local v0, accountManager:Landroid/accounts/AccountManager;
    :try_start_1
    iget-object v3, p0, Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;->this$0:Lcom/google/android/gsf/loginservice/BaseActivity;

    iget-object v4, p0, Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;->mLoginData:Lcom/google/android/gsf/LoginData;

    invoke-static {v3, v4}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->tryNewAccountInternal(Landroid/content/Context;Lcom/google/android/gsf/LoginData;)V

    .line 425
    iget-object v3, p0, Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;->mLoginData:Lcom/google/android/gsf/LoginData;

    iget-object v3, v3, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    sget-object v4, Lcom/google/android/gsf/LoginData$Status;->SUCCESS:Lcom/google/android/gsf/LoginData$Status;

    if-ne v3, v4, :cond_2

    .line 426
    const-string v3, "LoginServiceActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "new account flags = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;->mLoginData:Lcom/google/android/gsf/LoginData;

    iget v5, v5, Lcom/google/android/gsf/LoginData;->mFlags:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-object v3, p0, Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;->this$0:Lcom/google/android/gsf/loginservice/BaseActivity;

    iget-boolean v3, v3, Lcom/google/android/gsf/loginservice/BaseActivity;->mIsYoutubeRequest:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;->mLoginData:Lcom/google/android/gsf/LoginData;

    iget v3, v3, Lcom/google/android/gsf/LoginData;->mFlags:I

    or-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_5

    .line 435
    iget-object v3, p0, Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;->mLoginData:Lcom/google/android/gsf/LoginData;

    sget-object v4, Lcom/google/android/gsf/LoginData$Status;->NO_GMAIL:Lcom/google/android/gsf/LoginData$Status;

    iput-object v4, v3, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    .line 436
    iget-object v3, p0, Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;->mLoginData:Lcom/google/android/gsf/LoginData;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/google/android/gsf/LoginData;->mPassword:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 454
    :cond_2
    :goto_0
    :try_start_2
    iget-object v3, p0, Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;->mLoginData:Lcom/google/android/gsf/LoginData;

    iget-object v3, v3, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    sget-object v4, Lcom/google/android/gsf/LoginData$Status;->SUCCESS:Lcom/google/android/gsf/LoginData$Status;

    if-eq v3, v4, :cond_8

    .line 455
    sget-boolean v3, Lcom/google/android/gsf/loginservice/BaseActivity;->LOCAL_LOGV:Z

    if-eqz v3, :cond_3

    .line 456
    const-string v3, "LoginServiceActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addNewAccount failed with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;->mLoginData:Lcom/google/android/gsf/LoginData;

    iget-object v5, v5, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 489
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;->isInterrupted()Z

    move-result v3

    if-nez v3, :cond_7

    .line 490
    iget-object v3, p0, Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;->this$0:Lcom/google/android/gsf/loginservice/BaseActivity;

    invoke-static {v3}, Lcom/google/android/gsf/loginservice/BaseActivity;->access$500(Lcom/google/android/gsf/loginservice/BaseActivity;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread$1;

    invoke-direct {v4, p0}, Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread$1;-><init>(Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 498
    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;->this$0:Lcom/google/android/gsf/loginservice/BaseActivity;

    invoke-static {v3, v6}, Lcom/google/android/gsf/loginservice/BaseActivity;->access$002(Lcom/google/android/gsf/loginservice/BaseActivity;Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;)Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;

    .line 500
    .end local v0           #accountManager:Landroid/accounts/AccountManager;
    :goto_2
    return-void

    .line 438
    .restart local v0       #accountManager:Landroid/accounts/AccountManager;
    :cond_5
    :try_start_3
    iget-object v3, p0, Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;->this$0:Lcom/google/android/gsf/loginservice/BaseActivity;

    iget-object v4, p0, Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;->mLoginData:Lcom/google/android/gsf/LoginData;

    const/4 v5, 0x0

    invoke-static {v0, v3, v4, v5}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->saveNewAccountInternal(Landroid/accounts/AccountManager;Landroid/content/Context;Lcom/google/android/gsf/LoginData;Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 443
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 450
    .local v1, e:Ljava/lang/IllegalStateException;
    :try_start_4
    const-string v3, "LoginServiceActivity"

    const-string v4, "adding new account"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 451
    iget-object v3, p0, Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;->mLoginData:Lcom/google/android/gsf/LoginData;

    sget-object v4, Lcom/google/android/gsf/LoginData$Status;->CANCELLED:Lcom/google/android/gsf/LoginData$Status;

    iput-object v4, v3, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 489
    .end local v0           #accountManager:Landroid/accounts/AccountManager;
    .end local v1           #e:Ljava/lang/IllegalStateException;
    .end local v2           #password:Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;->isInterrupted()Z

    move-result v4

    if-nez v4, :cond_f

    .line 490
    iget-object v4, p0, Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;->this$0:Lcom/google/android/gsf/loginservice/BaseActivity;

    invoke-static {v4}, Lcom/google/android/gsf/loginservice/BaseActivity;->access$500(Lcom/google/android/gsf/loginservice/BaseActivity;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread$1;

    invoke-direct {v5, p0}, Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread$1;-><init>(Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 498
    :cond_6
    :goto_3
    iget-object v4, p0, Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;->this$0:Lcom/google/android/gsf/loginservice/BaseActivity;

    invoke-static {v4, v6}, Lcom/google/android/gsf/loginservice/BaseActivity;->access$002(Lcom/google/android/gsf/loginservice/BaseActivity;Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;)Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;

    throw v3

    .line 495
    .restart local v0       #accountManager:Landroid/accounts/AccountManager;
    .restart local v2       #password:Ljava/lang/String;
    :cond_7
    sget-boolean v3, Lcom/google/android/gsf/loginservice/BaseActivity;->LOCAL_LOGV:Z

    if-eqz v3, :cond_4

    .line 496
    const-string v3, "LoginServiceActivity"

    const-string v4, "authentication was cancelled by user; ignoring result"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 461
    :cond_8
    const/4 v3, 0x1

    :try_start_5
    iput-boolean v3, p0, Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;->mAddedNewAccount:Z

    .line 464
    .end local v0           #accountManager:Landroid/accounts/AccountManager;
    :cond_9
    iget-object v3, p0, Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;->this$0:Lcom/google/android/gsf/loginservice/BaseActivity;

    invoke-static {v3}, Lcom/google/android/gsf/loginservice/BaseActivity;->access$100(Lcom/google/android/gsf/loginservice/BaseActivity;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 465
    iget-object v3, p0, Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;->this$0:Lcom/google/android/gsf/loginservice/BaseActivity;

    iget-object v4, p0, Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;->mLoginData:Lcom/google/android/gsf/LoginData;

    iget-object v4, v4, Lcom/google/android/gsf/LoginData;->mUsername:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;->mLoginData:Lcom/google/android/gsf/LoginData;

    iget-object v5, v5, Lcom/google/android/gsf/LoginData;->mPassword:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->verifyStoredPasswordInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 467
    iget-object v3, p0, Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;->mLoginData:Lcom/google/android/gsf/LoginData;

    sget-object v4, Lcom/google/android/gsf/LoginData$Status;->SUCCESS:Lcom/google/android/gsf/LoginData$Status;

    iput-object v4, v3, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 489
    :goto_4
    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;->isInterrupted()Z

    move-result v3

    if-nez v3, :cond_e

    .line 490
    iget-object v3, p0, Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;->this$0:Lcom/google/android/gsf/loginservice/BaseActivity;

    invoke-static {v3}, Lcom/google/android/gsf/loginservice/BaseActivity;->access$500(Lcom/google/android/gsf/loginservice/BaseActivity;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread$1;

    invoke-direct {v4, p0}, Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread$1;-><init>(Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 498
    :cond_a
    :goto_5
    iget-object v3, p0, Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;->this$0:Lcom/google/android/gsf/loginservice/BaseActivity;

    invoke-static {v3, v6}, Lcom/google/android/gsf/loginservice/BaseActivity;->access$002(Lcom/google/android/gsf/loginservice/BaseActivity;Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;)Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;

    goto :goto_2

    .line 469
    :cond_b
    :try_start_6
    iget-object v3, p0, Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;->mLoginData:Lcom/google/android/gsf/LoginData;

    sget-object v4, Lcom/google/android/gsf/LoginData$Status;->LOGIN_FAIL:Lcom/google/android/gsf/LoginData$Status;

    iput-object v4, v3, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    goto :goto_4

    .line 483
    :cond_c
    iget-object v3, p0, Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;->mLoginData:Lcom/google/android/gsf/LoginData;

    iput-object v2, v3, Lcom/google/android/gsf/LoginData;->mPassword:Ljava/lang/String;

    .line 484
    sget-boolean v3, Lcom/google/android/gsf/loginservice/BaseActivity;->LOCAL_LOGV:Z

    if-eqz v3, :cond_d

    const-string v3, "LoginServiceActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calling updatePassword:\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;->mLoginData:Lcom/google/android/gsf/LoginData;

    invoke-virtual {v5}, Lcom/google/android/gsf/LoginData;->dump()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :cond_d
    iget-object v3, p0, Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;->this$0:Lcom/google/android/gsf/loginservice/BaseActivity;

    iget-object v4, p0, Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;->mLoginData:Lcom/google/android/gsf/LoginData;

    invoke-static {v3, v4}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->updatePasswordInternal(Landroid/content/Context;Lcom/google/android/gsf/LoginData;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    .line 495
    :cond_e
    sget-boolean v3, Lcom/google/android/gsf/loginservice/BaseActivity;->LOCAL_LOGV:Z

    if-eqz v3, :cond_a

    .line 496
    const-string v3, "LoginServiceActivity"

    const-string v4, "authentication was cancelled by user; ignoring result"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 495
    .end local v2           #password:Ljava/lang/String;
    :cond_f
    sget-boolean v4, Lcom/google/android/gsf/loginservice/BaseActivity;->LOCAL_LOGV:Z

    if-eqz v4, :cond_6

    .line 496
    const-string v4, "LoginServiceActivity"

    const-string v5, "authentication was cancelled by user; ignoring result"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method
