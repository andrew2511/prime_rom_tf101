.class Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$2;
.super Landroid/os/AsyncTask;
.source "DeviceAuthorizationChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->authorize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/newspaperdirect/pressreader/android/core/NDAsyncTaskResult",
        "<",
        "Lcom/newspaperdirect/pressreader/android/core/Service;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$2;->this$0:Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;

    .line 51
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/newspaperdirect/pressreader/android/core/NDAsyncTaskResult;
    .locals 3
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Lcom/newspaperdirect/pressreader/android/core/NDAsyncTaskResult",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/Service;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    :try_start_0
    new-instance v1, Lcom/newspaperdirect/pressreader/android/core/NDAsyncTaskResult;

    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationManager;->authorize()Lcom/newspaperdirect/pressreader/android/core/Service;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/newspaperdirect/pressreader/android/core/NDAsyncTaskResult;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    return-object v1

    .line 58
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 59
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Lcom/newspaperdirect/pressreader/android/core/NDAsyncTaskResult;

    invoke-direct {v1, v0}, Lcom/newspaperdirect/pressreader/android/core/NDAsyncTaskResult;-><init>(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$2;->doInBackground([Ljava/lang/Void;)Lcom/newspaperdirect/pressreader/android/core/NDAsyncTaskResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/newspaperdirect/pressreader/android/core/NDAsyncTaskResult;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/newspaperdirect/pressreader/android/core/NDAsyncTaskResult",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/Service;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, result:Lcom/newspaperdirect/pressreader/android/core/NDAsyncTaskResult;,"Lcom/newspaperdirect/pressreader/android/core/NDAsyncTaskResult<Lcom/newspaperdirect/pressreader/android/core/Service;>;"
    const v5, 0x7f090019

    .line 65
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$2;->this$0:Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;

    iget-object v2, v2, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    :goto_0
    return-void

    .line 67
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/NDAsyncTaskResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 68
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$2;->this$0:Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->ok()V

    .line 69
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$2;->this$0:Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->authorized()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper$ResponseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 74
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 75
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 76
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$2;->this$0:Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;

    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$2;->this$0:Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;

    iget-object v3, v3, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->mActivity:Landroid/app/Activity;

    const v4, 0x7f09001c

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->access$1(Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;Ljava/lang/String;)V

    goto :goto_0

    .line 72
    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$2;->this$0:Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;

    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$2;->this$0:Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;

    iget-object v3, v3, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->mActivity:Landroid/app/Activity;

    const v4, 0x7f090019

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->access$1(Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper$ResponseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 78
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 79
    .local v0, e:Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper$ResponseException;
    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper$ResponseException;->printStackTrace()V

    .line 80
    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper$ResponseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, message:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$2;->this$0:Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;

    iget-object v2, v2, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 82
    :cond_2
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$2;->this$0:Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper$ResponseException;->getResponseErrorCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->access$1(Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;Ljava/lang/String;)V

    goto :goto_0

    .line 84
    .end local v0           #e:Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper$ResponseException;
    .end local v1           #message:Ljava/lang/String;
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 85
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 86
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$2;->this$0:Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;

    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$2;->this$0:Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;

    iget-object v3, v3, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->access$1(Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/newspaperdirect/pressreader/android/core/NDAsyncTaskResult;

    invoke-virtual {p0, p1}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker$2;->onPostExecute(Lcom/newspaperdirect/pressreader/android/core/NDAsyncTaskResult;)V

    return-void
.end method
