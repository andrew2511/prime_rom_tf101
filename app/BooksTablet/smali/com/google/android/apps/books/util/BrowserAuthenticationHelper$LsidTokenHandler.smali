.class Lcom/google/android/apps/books/util/BrowserAuthenticationHelper$LsidTokenHandler;
.super Ljava/lang/Object;
.source "BrowserAuthenticationHelper.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LsidTokenHandler"
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
.field private final mSid:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "sid"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/google/android/apps/books/util/BrowserAuthenticationHelper$LsidTokenHandler;->this$0:Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p2, p0, Lcom/google/android/apps/books/util/BrowserAuthenticationHelper$LsidTokenHandler;->mSid:Ljava/lang/String;

    .line 126
    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 5
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
    .local p1, value:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    const-string v4, "BrowserAuthenticationHelper"

    .line 129
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    const-string v3, "authtoken"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, lsid:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/apps/books/util/BrowserAuthenticationHelper$LsidTokenHandler;->this$0:Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;

    iget-object v3, p0, Lcom/google/android/apps/books/util/BrowserAuthenticationHelper$LsidTokenHandler;->mSid:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;->access$200(Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 141
    .end local v1           #lsid:Ljava/lang/String;
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 132
    .local v0, e:Landroid/accounts/OperationCanceledException;
    const-string v2, "BrowserAuthenticationHelper"

    const-string v2, "cancelled while acquiring token: "

    invoke-static {v4, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    iget-object v2, p0, Lcom/google/android/apps/books/util/BrowserAuthenticationHelper$LsidTokenHandler;->this$0:Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;

    invoke-static {v2}, Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;->access$100(Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;)V

    goto :goto_0

    .line 134
    .end local v0           #e:Landroid/accounts/OperationCanceledException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 135
    .local v0, e:Landroid/accounts/AuthenticatorException;
    const-string v2, "BrowserAuthenticationHelper"

    const-string v2, "authentication error while acquiring token: "

    invoke-static {v4, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    iget-object v2, p0, Lcom/google/android/apps/books/util/BrowserAuthenticationHelper$LsidTokenHandler;->this$0:Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;

    invoke-static {v2}, Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;->access$100(Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;)V

    goto :goto_0

    .line 137
    .end local v0           #e:Landroid/accounts/AuthenticatorException;
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 138
    .local v0, e:Ljava/io/IOException;
    const-string v2, "BrowserAuthenticationHelper"

    const-string v2, "IO error while acquiring token: "

    invoke-static {v4, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    iget-object v2, p0, Lcom/google/android/apps/books/util/BrowserAuthenticationHelper$LsidTokenHandler;->this$0:Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;

    invoke-static {v2}, Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;->access$100(Lcom/google/android/apps/books/util/BrowserAuthenticationHelper;)V

    goto :goto_0
.end method
