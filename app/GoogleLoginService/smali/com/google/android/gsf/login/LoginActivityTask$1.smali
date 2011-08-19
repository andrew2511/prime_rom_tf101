.class Lcom/google/android/gsf/login/LoginActivityTask$1;
.super Ljava/lang/Object;
.source "LoginActivityTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/login/LoginActivityTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/login/LoginActivityTask;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/login/LoginActivityTask;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/google/android/gsf/login/LoginActivityTask$1;->this$0:Lcom/google/android/gsf/login/LoginActivityTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x0

    .line 194
    const/4 v3, -0x1

    .line 195
    .local v3, err:I
    const/4 v2, 0x0

    .local v2, attempt:I
    :goto_0
    const/4 v4, 0x3

    if-ge v2, v4, :cond_1

    if-gez v3, :cond_1

    .line 196
    iget-object v4, p0, Lcom/google/android/gsf/login/LoginActivityTask$1;->this$0:Lcom/google/android/gsf/login/LoginActivityTask;

    invoke-virtual {v4}, Lcom/google/android/gsf/login/LoginActivityTask;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "android_id"

    invoke-static {v4, v5, v7, v8}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 198
    .local v0, androidId:J
    cmp-long v4, v0, v7

    if-nez v4, :cond_0

    const/4 v4, -0x1

    move v3, v4

    .line 199
    :goto_1
    const-string v4, "GoogleLoginService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "waitForAndroidId returned: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 198
    :cond_0
    const/4 v4, 0x0

    move v3, v4

    goto :goto_1

    .line 201
    .end local v0           #androidId:J
    :cond_1
    if-eqz v3, :cond_2

    .line 202
    const-string v4, "GoogleLoginService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " waiting for Android ID"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v4, p0, Lcom/google/android/gsf/login/LoginActivityTask$1;->this$0:Lcom/google/android/gsf/login/LoginActivityTask;

    new-instance v5, Lcom/google/android/gsf/login/LoginActivityTask$1$1;

    invoke-direct {v5, p0}, Lcom/google/android/gsf/login/LoginActivityTask$1$1;-><init>(Lcom/google/android/gsf/login/LoginActivityTask$1;)V

    invoke-virtual {v4, v5}, Lcom/google/android/gsf/login/LoginActivityTask;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 214
    :goto_2
    return-void

    .line 213
    :cond_2
    iget-object v4, p0, Lcom/google/android/gsf/login/LoginActivityTask$1;->this$0:Lcom/google/android/gsf/login/LoginActivityTask;

    iget-object v4, v4, Lcom/google/android/gsf/login/LoginActivityTask;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/google/android/gsf/login/LoginActivityTask$1;->this$0:Lcom/google/android/gsf/login/LoginActivityTask;

    iget-object v5, v5, Lcom/google/android/gsf/login/LoginActivityTask;->mPerformFinish:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method
