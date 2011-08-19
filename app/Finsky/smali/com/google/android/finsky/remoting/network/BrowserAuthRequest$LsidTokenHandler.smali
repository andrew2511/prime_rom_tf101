.class Lcom/google/android/finsky/remoting/network/BrowserAuthRequest$LsidTokenHandler;
.super Ljava/lang/Object;
.source "BrowserAuthRequest.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/network/BrowserAuthRequest;
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

.field final synthetic this$0:Lcom/google/android/finsky/remoting/network/BrowserAuthRequest;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/remoting/network/BrowserAuthRequest;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "sid"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/google/android/finsky/remoting/network/BrowserAuthRequest$LsidTokenHandler;->this$0:Lcom/google/android/finsky/remoting/network/BrowserAuthRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-object p2, p0, Lcom/google/android/finsky/remoting/network/BrowserAuthRequest$LsidTokenHandler;->mSid:Ljava/lang/String;

    .line 163
    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 7
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
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 167
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    const-string v3, "authtoken"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, lsid:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/finsky/remoting/network/BrowserAuthRequest$LsidTokenHandler;->this$0:Lcom/google/android/finsky/remoting/network/BrowserAuthRequest;

    iget-object v3, p0, Lcom/google/android/finsky/remoting/network/BrowserAuthRequest$LsidTokenHandler;->mSid:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lcom/google/android/finsky/remoting/network/BrowserAuthRequest;->access$200(Lcom/google/android/finsky/remoting/network/BrowserAuthRequest;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 179
    .end local v1           #lsid:Ljava/lang/String;
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 170
    .local v0, e:Landroid/accounts/OperationCanceledException;
    const-string v2, "Cancelled while acquiring token: %s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    iget-object v2, p0, Lcom/google/android/finsky/remoting/network/BrowserAuthRequest$LsidTokenHandler;->this$0:Lcom/google/android/finsky/remoting/network/BrowserAuthRequest;

    sget-object v3, Lcom/android/volley/Response$ErrorCode;->AUTH:Lcom/android/volley/Response$ErrorCode;

    invoke-static {v2, v4, v3, v4}, Lcom/google/android/finsky/remoting/network/BrowserAuthRequest;->access$100(Lcom/google/android/finsky/remoting/network/BrowserAuthRequest;Landroid/net/Uri;Lcom/android/volley/Response$ErrorCode;Ljava/lang/String;)V

    goto :goto_0

    .line 172
    .end local v0           #e:Landroid/accounts/OperationCanceledException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 173
    .local v0, e:Landroid/accounts/AuthenticatorException;
    const-string v2, "Authentication error while acquiring token: %s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    iget-object v2, p0, Lcom/google/android/finsky/remoting/network/BrowserAuthRequest$LsidTokenHandler;->this$0:Lcom/google/android/finsky/remoting/network/BrowserAuthRequest;

    sget-object v3, Lcom/android/volley/Response$ErrorCode;->AUTH:Lcom/android/volley/Response$ErrorCode;

    invoke-static {v2, v4, v3, v4}, Lcom/google/android/finsky/remoting/network/BrowserAuthRequest;->access$100(Lcom/google/android/finsky/remoting/network/BrowserAuthRequest;Landroid/net/Uri;Lcom/android/volley/Response$ErrorCode;Ljava/lang/String;)V

    goto :goto_0

    .line 175
    .end local v0           #e:Landroid/accounts/AuthenticatorException;
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 176
    .local v0, e:Ljava/io/IOException;
    const-string v2, "IO error while acquiring token: %s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    iget-object v2, p0, Lcom/google/android/finsky/remoting/network/BrowserAuthRequest$LsidTokenHandler;->this$0:Lcom/google/android/finsky/remoting/network/BrowserAuthRequest;

    sget-object v3, Lcom/android/volley/Response$ErrorCode;->AUTH:Lcom/android/volley/Response$ErrorCode;

    invoke-static {v2, v4, v3, v4}, Lcom/google/android/finsky/remoting/network/BrowserAuthRequest;->access$100(Lcom/google/android/finsky/remoting/network/BrowserAuthRequest;Landroid/net/Uri;Lcom/android/volley/Response$ErrorCode;Ljava/lang/String;)V

    goto :goto_0
.end method
