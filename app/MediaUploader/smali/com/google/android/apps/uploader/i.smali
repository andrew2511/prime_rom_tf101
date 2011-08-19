.class final Lcom/google/android/apps/uploader/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# instance fields
.field private synthetic a:Lcom/google/android/apps/uploader/c;


# direct methods
.method constructor <init>(Lcom/google/android/apps/uploader/g;Lcom/google/android/apps/uploader/c;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 120
    iput-object p2, p0, Lcom/google/android/apps/uploader/i;->a:Lcom/google/android/apps/uploader/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Landroid/accounts/AccountManagerFuture;)V
    .locals 5
    .parameter

    .prologue
    .line 123
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/accounts/Account;

    .line 124
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    .line 125
    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 126
    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 125
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 128
    :cond_0
    const-string v2, "MediaUploader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " accounts"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/google/android/apps/uploader/i;->a:Lcom/google/android/apps/uploader/c;

    invoke-interface {v0, v1}, Lcom/google/android/apps/uploader/c;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2

    .line 137
    :goto_1
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 131
    iget-object v0, p0, Lcom/google/android/apps/uploader/i;->a:Lcom/google/android/apps/uploader/c;

    invoke-interface {v0}, Lcom/google/android/apps/uploader/c;->a()V

    goto :goto_1

    .line 132
    :catch_1
    move-exception v0

    .line 133
    iget-object v1, p0, Lcom/google/android/apps/uploader/i;->a:Lcom/google/android/apps/uploader/c;

    invoke-interface {v1, v0}, Lcom/google/android/apps/uploader/c;->a(Ljava/lang/Exception;)V

    goto :goto_1

    .line 134
    :catch_2
    move-exception v0

    .line 135
    iget-object v1, p0, Lcom/google/android/apps/uploader/i;->a:Lcom/google/android/apps/uploader/c;

    invoke-interface {v1, v0}, Lcom/google/android/apps/uploader/c;->a(Ljava/lang/Exception;)V

    goto :goto_1
.end method
