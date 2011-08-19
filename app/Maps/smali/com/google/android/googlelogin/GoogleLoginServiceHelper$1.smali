.class Lcom/google/android/googlelogin/GoogleLoginServiceHelper$1;
.super Ljava/lang/Thread;
.source "GoogleLoginServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlelogin/GoogleLoginServiceHelper;->getAccount(Landroid/app/Activity;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$requestCode:I

.field final synthetic val$requireGoogle:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;ZLandroid/os/Handler;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$1;->val$activity:Landroid/app/Activity;

    iput-boolean p2, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$1;->val$requireGoogle:Z

    iput-object p3, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$1;->val$handler:Landroid/os/Handler;

    iput p4, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$1;->val$requestCode:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 120
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 121
    .local v1, b:Landroid/os/Bundle;
    const/4 v5, -0x1

    .line 123
    .local v5, resultCode:I
    const/4 v3, 0x0

    .line 125
    .local v3, helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    :try_start_0
    new-instance v4, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;

    iget-object v6, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .end local v3           #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    .local v4, helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    const/4 v6, 0x1

    :try_start_1
    new-array v0, v6, [Ljava/lang/String;

    .line 128
    .local v0, accounts:[Ljava/lang/String;
    const/4 v6, 0x0

    iget-boolean v7, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$1;->val$requireGoogle:Z

    invoke-virtual {v4, v7}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->getAccount(Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    .line 130
    const-string v6, "accounts"

    invoke-virtual {v1, v6, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 136
    if-eqz v4, :cond_2

    .line 137
    invoke-virtual {v4}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->close()V

    move-object v3, v4

    .line 143
    .end local v0           #accounts:[Ljava/lang/String;
    .end local v4           #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    .restart local v3       #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$1;->val$handler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$1;->val$activity:Landroid/app/Activity;

    iget v8, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$1;->val$requestCode:I

    invoke-static {v6, v7, v5, v8, v1}, Lcom/google/android/googlelogin/GoogleLoginServiceHelper;->access$000(Landroid/os/Handler;Landroid/app/Activity;IILandroid/os/Bundle;)V

    .line 144
    return-void

    .line 131
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 132
    .local v2, e:Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException;
    :goto_1
    const/4 v5, 0x0

    .line 133
    :try_start_2
    const-string v6, "errorCode"

    invoke-virtual {v2}, Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException;->getErrorCode()I

    move-result v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 136
    if-eqz v3, :cond_0

    .line 137
    invoke-virtual {v3}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->close()V

    goto :goto_0

    .line 136
    .end local v2           #e:Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException;
    :catchall_0
    move-exception v6

    :goto_2
    if-eqz v3, :cond_1

    .line 137
    invoke-virtual {v3}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->close()V

    :cond_1
    throw v6

    .line 136
    .end local v3           #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    .restart local v4       #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    .restart local v3       #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    goto :goto_2

    .line 131
    .end local v3           #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    .restart local v4       #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    :catch_1
    move-exception v6

    move-object v2, v6

    move-object v3, v4

    .end local v4           #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    .restart local v3       #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    goto :goto_1

    .end local v3           #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    .restart local v0       #accounts:[Ljava/lang/String;
    .restart local v4       #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    :cond_2
    move-object v3, v4

    .end local v4           #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    .restart local v3       #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    goto :goto_0
.end method
