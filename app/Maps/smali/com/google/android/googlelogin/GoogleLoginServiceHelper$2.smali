.class Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;
.super Ljava/lang/Thread;
.source "GoogleLoginServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlelogin/GoogleLoginServiceHelper;->getCredentials(Landroid/app/Activity;ILandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$accountName:Ljava/lang/String;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$promptUser:Z

.field final synthetic val$requestCode:I

.field final synthetic val$requestExtras:Landroid/os/Bundle;

.field final synthetic val$service:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;Landroid/os/Handler;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 318
    iput-object p1, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$accountName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$service:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$promptUser:Z

    iput-object p5, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$requestExtras:Landroid/os/Bundle;

    iput-object p6, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$handler:Landroid/os/Handler;

    iput p7, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$requestCode:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 321
    const/4 v4, 0x0

    .line 322
    .local v4, helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 325
    .local v1, b:Landroid/os/Bundle;
    :try_start_0
    new-instance v5, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;

    iget-object v6, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 328
    .end local v4           #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    .local v5, helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    :try_start_1
    iget-object v6, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$accountName:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/googlelogin/GoogleLoginServiceHelper;->access$100()Ljava/lang/String;

    move-result-object v7

    if-ne v6, v7, :cond_3

    .line 329
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->getAccount(Z)Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, account:Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$service:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$promptUser:Z

    if-nez v7, :cond_5

    move v7, v9

    :goto_1
    invoke-virtual {v5, v0, v6, v7}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->getCredentials(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/googleapps/GoogleLoginCredentialsResult;

    move-result-object v2

    .line 353
    .local v2, credentialsResult:Lcom/google/android/googleapps/GoogleLoginCredentialsResult;
    const-string v6, "callerExtras"

    iget-object v7, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$requestExtras:Landroid/os/Bundle;

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 354
    invoke-virtual {v2}, Lcom/google/android/googleapps/GoogleLoginCredentialsResult;->getCredentialsString()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 360
    const-string v6, "authtoken"

    invoke-virtual {v2}, Lcom/google/android/googleapps/GoogleLoginCredentialsResult;->getCredentialsString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const-string v6, "authAccount"

    invoke-virtual {v2}, Lcom/google/android/googleapps/GoogleLoginCredentialsResult;->getAccount()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const-string v6, "youtube"

    iget-object v7, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$service:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 365
    const-string v6, "YouTubeUser"

    invoke-virtual {v2}, Lcom/google/android/googleapps/GoogleLoginCredentialsResult;->getAccount()Ljava/lang/String;

    move-result-object v7

    const-string v8, "YouTubeUser"

    invoke-virtual {v5, v7, v8}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->peekCredentials(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    :cond_0
    iget-object v6, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$handler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$activity:Landroid/app/Activity;

    const/4 v8, -0x1

    iget v9, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$requestCode:I

    invoke-static {v6, v7, v8, v9, v1}, Lcom/google/android/googlelogin/GoogleLoginServiceHelper;->access$000(Landroid/os/Handler;Landroid/app/Activity;IILandroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 442
    if-eqz v5, :cond_1

    .line 443
    invoke-virtual {v5}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->close()V

    :cond_1
    move-object v4, v5

    .end local v0           #account:Ljava/lang/String;
    .end local v2           #credentialsResult:Lcom/google/android/googleapps/GoogleLoginCredentialsResult;
    .end local v5           #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    .restart local v4       #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    :cond_2
    :goto_2
    return-void

    .line 330
    .end local v4           #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    .restart local v5       #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    :cond_3
    :try_start_2
    iget-object v6, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$accountName:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/googlelogin/GoogleLoginServiceHelper;->access$200()Ljava/lang/String;

    move-result-object v7

    if-ne v6, v7, :cond_4

    .line 331
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->getAccount(Z)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #account:Ljava/lang/String;
    goto :goto_0

    .line 333
    .end local v0           #account:Ljava/lang/String;
    :cond_4
    iget-object v0, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$accountName:Ljava/lang/String;

    .restart local v0       #account:Ljava/lang/String;
    goto :goto_0

    :cond_5
    move v7, v8

    .line 336
    goto :goto_1

    .line 378
    .restart local v2       #credentialsResult:Lcom/google/android/googleapps/GoogleLoginCredentialsResult;
    :cond_6
    invoke-virtual {v2}, Lcom/google/android/googleapps/GoogleLoginCredentialsResult;->getCredentialsIntent()Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 384
    iget-boolean v6, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$promptUser:Z

    if-eqz v6, :cond_8

    .line 390
    iget-object v6, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$handler:Landroid/os/Handler;

    new-instance v7, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2$1;

    invoke-direct {v7, p0, v2}, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2$1;-><init>(Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;Lcom/google/android/googleapps/GoogleLoginCredentialsResult;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 442
    if-eqz v5, :cond_7

    .line 443
    invoke-virtual {v5}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->close()V

    :cond_7
    move-object v4, v5

    .end local v5           #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    .restart local v4       #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    goto :goto_2

    .line 422
    .end local v4           #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    .restart local v5       #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    :cond_8
    :try_start_3
    iget-object v6, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$handler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$activity:Landroid/app/Activity;

    const/4 v8, -0x1

    iget v9, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$requestCode:I

    invoke-static {v6, v7, v8, v9, v1}, Lcom/google/android/googlelogin/GoogleLoginServiceHelper;->access$000(Landroid/os/Handler;Landroid/app/Activity;IILandroid/os/Bundle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    .line 442
    if-eqz v5, :cond_9

    .line 443
    invoke-virtual {v5}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->close()V

    :cond_9
    move-object v4, v5

    .end local v5           #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    .restart local v4       #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    goto :goto_2

    .line 432
    .end local v4           #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    .restart local v5       #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    :cond_a
    :try_start_4
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Malformed credentialsResult from helper.getCredentials()"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    .line 435
    .end local v0           #account:Ljava/lang/String;
    .end local v2           #credentialsResult:Lcom/google/android/googleapps/GoogleLoginCredentialsResult;
    :catch_0
    move-exception v6

    move-object v3, v6

    move-object v4, v5

    .line 436
    .end local v5           #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    .local v3, e:Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException;
    .restart local v4       #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    :goto_3
    :try_start_5
    const-string v6, "errorCode"

    invoke-virtual {v3}, Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException;->getErrorCode()I

    move-result v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 438
    iget-object v6, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$handler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$activity:Landroid/app/Activity;

    const/4 v8, 0x0

    iget v9, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$requestCode:I

    invoke-static {v6, v7, v8, v9, v1}, Lcom/google/android/googlelogin/GoogleLoginServiceHelper;->access$000(Landroid/os/Handler;Landroid/app/Activity;IILandroid/os/Bundle;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 442
    if-eqz v4, :cond_2

    .line 443
    invoke-virtual {v4}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->close()V

    goto :goto_2

    .line 442
    .end local v3           #e:Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException;
    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v4, :cond_b

    .line 443
    invoke-virtual {v4}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->close()V

    :cond_b
    throw v6

    .line 442
    .end local v4           #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    .restart local v5       #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5           #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    .restart local v4       #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    goto :goto_4

    .line 435
    :catch_1
    move-exception v6

    move-object v3, v6

    goto :goto_3
.end method
