.class Lcom/google/android/finsky/remoting/network/BrowserAuthRequest$SidTokenHandler;
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
    name = "SidTokenHandler"
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
.field private final mAccount:Landroid/accounts/Account;

.field final synthetic this$0:Lcom/google/android/finsky/remoting/network/BrowserAuthRequest;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/remoting/network/BrowserAuthRequest;Landroid/accounts/Account;)V
    .locals 0
    .parameter
    .parameter "account"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/google/android/finsky/remoting/network/BrowserAuthRequest$SidTokenHandler;->this$0:Lcom/google/android/finsky/remoting/network/BrowserAuthRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p2, p0, Lcom/google/android/finsky/remoting/network/BrowserAuthRequest$SidTokenHandler;->mAccount:Landroid/accounts/Account;

    .line 132
    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 12
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
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 136
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    const-string v2, "authtoken"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 137
    .local v8, sid:Ljava/lang/String;
    new-instance v5, Lcom/google/android/finsky/remoting/network/BrowserAuthRequest$LsidTokenHandler;

    iget-object v1, p0, Lcom/google/android/finsky/remoting/network/BrowserAuthRequest$SidTokenHandler;->this$0:Lcom/google/android/finsky/remoting/network/BrowserAuthRequest;

    invoke-direct {v5, v1, v8}, Lcom/google/android/finsky/remoting/network/BrowserAuthRequest$LsidTokenHandler;-><init>(Lcom/google/android/finsky/remoting/network/BrowserAuthRequest;Ljava/lang/String;)V

    .line 138
    .local v5, callback:Lcom/google/android/finsky/remoting/network/BrowserAuthRequest$LsidTokenHandler;
    iget-object v1, p0, Lcom/google/android/finsky/remoting/network/BrowserAuthRequest$SidTokenHandler;->this$0:Lcom/google/android/finsky/remoting/network/BrowserAuthRequest;

    invoke-static {v1}, Lcom/google/android/finsky/remoting/network/BrowserAuthRequest;->access$000(Lcom/google/android/finsky/remoting/network/BrowserAuthRequest;)Lcom/google/android/finsky/remoting/network/BrowserAuthRequest$Listener;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/finsky/remoting/network/BrowserAuthRequest$Listener;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 139
    .local v0, am:Landroid/accounts/AccountManager;
    iget-object v1, p0, Lcom/google/android/finsky/remoting/network/BrowserAuthRequest$SidTokenHandler;->mAccount:Landroid/accounts/Account;

    const-string v2, "LSID"

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/finsky/remoting/network/BrowserAuthRequest$SidTokenHandler;->this$0:Lcom/google/android/finsky/remoting/network/BrowserAuthRequest;

    invoke-static {v4}, Lcom/google/android/finsky/remoting/network/BrowserAuthRequest;->access$000(Lcom/google/android/finsky/remoting/network/BrowserAuthRequest;)Lcom/google/android/finsky/remoting/network/BrowserAuthRequest$Listener;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/finsky/remoting/network/BrowserAuthRequest$Listener;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 150
    .end local v0           #am:Landroid/accounts/AccountManager;
    .end local v5           #callback:Lcom/google/android/finsky/remoting/network/BrowserAuthRequest$LsidTokenHandler;
    .end local v8           #sid:Ljava/lang/String;
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v1

    move-object v7, v1

    .line 141
    .local v7, e:Landroid/accounts/OperationCanceledException;
    const-string v1, "Cancelled while acquiring token: %s"

    new-array v2, v11, [Ljava/lang/Object;

    aput-object v7, v2, v10

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    iget-object v1, p0, Lcom/google/android/finsky/remoting/network/BrowserAuthRequest$SidTokenHandler;->this$0:Lcom/google/android/finsky/remoting/network/BrowserAuthRequest;

    sget-object v2, Lcom/android/volley/Response$ErrorCode;->AUTH:Lcom/android/volley/Response$ErrorCode;

    invoke-static {v1, v9, v2, v9}, Lcom/google/android/finsky/remoting/network/BrowserAuthRequest;->access$100(Lcom/google/android/finsky/remoting/network/BrowserAuthRequest;Landroid/net/Uri;Lcom/android/volley/Response$ErrorCode;Ljava/lang/String;)V

    goto :goto_0

    .line 143
    .end local v7           #e:Landroid/accounts/OperationCanceledException;
    :catch_1
    move-exception v1

    move-object v7, v1

    .line 144
    .local v7, e:Landroid/accounts/AuthenticatorException;
    const-string v1, "Authentication error while acquiring token: %s"

    new-array v2, v11, [Ljava/lang/Object;

    aput-object v7, v2, v10

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    iget-object v1, p0, Lcom/google/android/finsky/remoting/network/BrowserAuthRequest$SidTokenHandler;->this$0:Lcom/google/android/finsky/remoting/network/BrowserAuthRequest;

    sget-object v2, Lcom/android/volley/Response$ErrorCode;->AUTH:Lcom/android/volley/Response$ErrorCode;

    invoke-static {v1, v9, v2, v9}, Lcom/google/android/finsky/remoting/network/BrowserAuthRequest;->access$100(Lcom/google/android/finsky/remoting/network/BrowserAuthRequest;Landroid/net/Uri;Lcom/android/volley/Response$ErrorCode;Ljava/lang/String;)V

    goto :goto_0

    .line 146
    .end local v7           #e:Landroid/accounts/AuthenticatorException;
    :catch_2
    move-exception v1

    move-object v7, v1

    .line 147
    .local v7, e:Ljava/io/IOException;
    const-string v1, "IO error while acquiring token: %s"

    new-array v2, v11, [Ljava/lang/Object;

    aput-object v7, v2, v10

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    iget-object v1, p0, Lcom/google/android/finsky/remoting/network/BrowserAuthRequest$SidTokenHandler;->this$0:Lcom/google/android/finsky/remoting/network/BrowserAuthRequest;

    sget-object v2, Lcom/android/volley/Response$ErrorCode;->AUTH:Lcom/android/volley/Response$ErrorCode;

    invoke-static {v1, v9, v2, v9}, Lcom/google/android/finsky/remoting/network/BrowserAuthRequest;->access$100(Lcom/google/android/finsky/remoting/network/BrowserAuthRequest;Landroid/net/Uri;Lcom/android/volley/Response$ErrorCode;Ljava/lang/String;)V

    goto :goto_0
.end method
