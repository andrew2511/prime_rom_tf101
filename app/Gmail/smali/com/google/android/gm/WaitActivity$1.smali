.class Lcom/google/android/gm/WaitActivity$1;
.super Ljava/lang/Object;
.source "WaitActivity.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/WaitActivity;->waitForGmailAccount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/WaitActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gm/WaitActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, Lcom/google/android/gm/WaitActivity$1;->this$0:Lcom/google/android/gm/WaitActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 239
    .local p1, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    const/4 v1, 0x0

    .line 241
    .local v1, success:Z
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 242
    .local v0, result:Landroid/os/Bundle;
    iget-object v2, p0, Lcom/google/android/gm/WaitActivity$1;->this$0:Lcom/google/android/gm/WaitActivity;

    const-string v3, "authAccount"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gm/WaitActivity;->access$000(Lcom/google/android/gm/WaitActivity;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    const/4 v1, 0x1

    .line 253
    .end local v0           #result:Landroid/os/Bundle;
    :goto_0
    if-nez v1, :cond_0

    .line 254
    iget-object v2, p0, Lcom/google/android/gm/WaitActivity$1;->this$0:Lcom/google/android/gm/WaitActivity;

    invoke-virtual {v2}, Lcom/google/android/gm/WaitActivity;->finish()V

    .line 256
    :cond_0
    return-void

    .line 248
    :catch_0
    move-exception v2

    goto :goto_0

    .line 246
    :catch_1
    move-exception v2

    goto :goto_0

    .line 244
    :catch_2
    move-exception v2

    goto :goto_0
.end method
