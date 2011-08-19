.class final Lcom/google/android/apps/uploader/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/google/android/apps/uploader/c;


# direct methods
.method constructor <init>(Lcom/google/android/apps/uploader/g;Ljava/lang/String;Lcom/google/android/apps/uploader/c;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 94
    iput-object p2, p0, Lcom/google/android/apps/uploader/h;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/apps/uploader/h;->b:Lcom/google/android/apps/uploader/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Landroid/accounts/AccountManagerFuture;)V
    .locals 3
    .parameter

    .prologue
    .line 97
    :try_start_0
    const-string v0, "MediaUploader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got authToken for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/uploader/h;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 99
    const-string v1, "authtoken"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/google/android/apps/uploader/h;->b:Lcom/google/android/apps/uploader/c;

    invoke-interface {v1, v0}, Lcom/google/android/apps/uploader/c;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2

    .line 108
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 102
    iget-object v0, p0, Lcom/google/android/apps/uploader/h;->b:Lcom/google/android/apps/uploader/c;

    invoke-interface {v0}, Lcom/google/android/apps/uploader/c;->a()V

    goto :goto_0

    .line 103
    :catch_1
    move-exception v0

    .line 104
    iget-object v1, p0, Lcom/google/android/apps/uploader/h;->b:Lcom/google/android/apps/uploader/c;

    invoke-interface {v1, v0}, Lcom/google/android/apps/uploader/c;->a(Ljava/lang/Exception;)V

    goto :goto_0

    .line 105
    :catch_2
    move-exception v0

    .line 106
    iget-object v1, p0, Lcom/google/android/apps/uploader/h;->b:Lcom/google/android/apps/uploader/c;

    invoke-interface {v1, v0}, Lcom/google/android/apps/uploader/c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
