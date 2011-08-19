.class Lcom/google/android/talk/AddAccountActivity$1;
.super Ljava/lang/Object;
.source "AddAccountActivity.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/AddAccountActivity;->checkForAccount()V
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
.field final synthetic this$0:Lcom/google/android/talk/AddAccountActivity;


# direct methods
.method constructor <init>(Lcom/google/android/talk/AddAccountActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/android/talk/AddAccountActivity$1;->this$0:Lcom/google/android/talk/AddAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 3
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
    .line 75
    .local p1, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    .line 77
    const-string v1, "talk"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/google/android/talk/AddAccountActivity$1;->this$0:Lcom/google/android/talk/AddAccountActivity;

    const-string v2, "setup wizard finished"

    invoke-static {v1, v2}, Lcom/google/android/talk/AddAccountActivity;->access$000(Lcom/google/android/talk/AddAccountActivity;Ljava/lang/String;)V

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/google/android/talk/AddAccountActivity$1;->this$0:Lcom/google/android/talk/AddAccountActivity;

    invoke-static {v1}, Lcom/google/android/talk/AddAccountActivity;->access$100(Lcom/google/android/talk/AddAccountActivity;)V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2

    .line 94
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 84
    .local v0, e:Landroid/accounts/OperationCanceledException;
    iget-object v1, p0, Lcom/google/android/talk/AddAccountActivity$1;->this$0:Lcom/google/android/talk/AddAccountActivity;

    const-string v2, "checkForAccount(): User canceled, exit"

    invoke-static {v1, v2}, Lcom/google/android/talk/AddAccountActivity;->access$000(Lcom/google/android/talk/AddAccountActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 86
    .end local v0           #e:Landroid/accounts/OperationCanceledException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 87
    .local v0, e:Ljava/io/IOException;
    const-string v1, "talk"

    const-string v2, "[AddAccountActivity] launch setup wizard failed: IOException: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    .end local v0           #e:Ljava/io/IOException;
    :goto_1
    iget-object v1, p0, Lcom/google/android/talk/AddAccountActivity$1;->this$0:Lcom/google/android/talk/AddAccountActivity;

    invoke-virtual {v1}, Lcom/google/android/talk/AddAccountActivity;->finish()V

    goto :goto_0

    .line 89
    :catch_2
    move-exception v1

    move-object v0, v1

    .line 90
    .local v0, e:Landroid/accounts/AuthenticatorException;
    const-string v1, "talk"

    const-string v2, "[AddAccountActivity] launch setup wizard failed: AuthenticatorException: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
