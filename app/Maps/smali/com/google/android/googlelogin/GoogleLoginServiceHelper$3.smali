.class Lcom/google/android/googlelogin/GoogleLoginServiceHelper$3;
.super Ljava/lang/Thread;
.source "GoogleLoginServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlelogin/GoogleLoginServiceHelper;->invalidateAuthToken(Landroid/app/Activity;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$authToken:Ljava/lang/String;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Handler;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 486
    iput-object p1, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$3;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$3;->val$authToken:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$3;->val$handler:Landroid/os/Handler;

    iput p4, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$3;->val$requestCode:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 489
    const/4 v2, 0x0

    .line 491
    .local v2, helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    :try_start_0
    new-instance v3, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;

    iget-object v4, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    .end local v2           #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    .local v3, helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    :try_start_1
    iget-object v4, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$3;->val$authToken:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->invalidateAuthToken(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 502
    if-eqz v3, :cond_0

    .line 503
    invoke-virtual {v3}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->close()V

    .line 508
    :cond_0
    iget-object v4, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$3;->val$handler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$3;->val$activity:Landroid/app/Activity;

    const/4 v6, -0x1

    iget v7, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$3;->val$requestCode:I

    const/4 v8, 0x0

    invoke-static {v4, v5, v6, v7, v8}, Lcom/google/android/googlelogin/GoogleLoginServiceHelper;->access$000(Landroid/os/Handler;Landroid/app/Activity;IILandroid/os/Bundle;)V

    move-object v2, v3

    .line 509
    .end local v3           #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    .restart local v2       #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    :cond_1
    :goto_0
    return-void

    .line 494
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 495
    .local v1, e:Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException;
    :goto_1
    :try_start_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 496
    .local v0, b:Landroid/os/Bundle;
    const-string v4, "errorCode"

    invoke-virtual {v1}, Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException;->getErrorCode()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 498
    iget-object v4, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$3;->val$handler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$3;->val$activity:Landroid/app/Activity;

    const/4 v6, 0x0

    iget v7, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$3;->val$requestCode:I

    invoke-static {v4, v5, v6, v7, v0}, Lcom/google/android/googlelogin/GoogleLoginServiceHelper;->access$000(Landroid/os/Handler;Landroid/app/Activity;IILandroid/os/Bundle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 502
    if-eqz v2, :cond_1

    .line 503
    invoke-virtual {v2}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->close()V

    goto :goto_0

    .line 502
    .end local v0           #b:Landroid/os/Bundle;
    .end local v1           #e:Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException;
    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v2, :cond_2

    .line 503
    invoke-virtual {v2}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->close()V

    :cond_2
    throw v4

    .line 502
    .end local v2           #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    .restart local v3       #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    .restart local v2       #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    goto :goto_2

    .line 494
    .end local v2           #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    .restart local v3       #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    :catch_1
    move-exception v4

    move-object v1, v4

    move-object v2, v3

    .end local v3           #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    .restart local v2       #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    goto :goto_1
.end method
