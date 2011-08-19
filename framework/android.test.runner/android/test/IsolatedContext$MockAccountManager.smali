.class Landroid/test/IsolatedContext$MockAccountManager;
.super Landroid/accounts/AccountManager;
.source "IsolatedContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/test/IsolatedContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MockAccountManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/test/IsolatedContext$MockAccountManager$MockAccountManagerFuture;
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/test/IsolatedContext;


# direct methods
.method public constructor <init>(Landroid/test/IsolatedContext;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 126
    iput-object p1, p0, Landroid/test/IsolatedContext$MockAccountManager;->this$0:Landroid/test/IsolatedContext;

    .line 127
    invoke-direct {p0, p1, v0, v0}, Landroid/accounts/AccountManager;-><init>(Landroid/content/Context;Landroid/accounts/IAccountManager;Landroid/os/Handler;)V

    .line 128
    return-void
.end method


# virtual methods
.method public addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V
    .registers 4
    .parameter "listener"
    .parameter "handler"
    .parameter "updateImmediately"

    .prologue
    .line 133
    return-void
.end method

.method public blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 5
    .parameter "account"
    .parameter "authTokenType"
    .parameter "notifyAuthFailure"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    .prologue
    .line 148
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAccounts()[Landroid/accounts/Account;
    .registers 2

    .prologue
    .line 136
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/accounts/Account;

    return-object v0
.end method

.method public getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .registers 7
    .parameter "type"
    .parameter "features"
    .parameter
    .parameter "handler"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroid/accounts/AccountManagerCallback",
            "<[",
            "Landroid/accounts/Account;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture",
            "<[",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    .local p3, callback:Landroid/accounts/AccountManagerCallback;,"Landroid/accounts/AccountManagerCallback<[Landroid/accounts/Account;>;"
    new-instance v0, Landroid/test/IsolatedContext$MockAccountManager$MockAccountManagerFuture;

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/accounts/Account;

    invoke-direct {v0, p0, v1}, Landroid/test/IsolatedContext$MockAccountManager$MockAccountManagerFuture;-><init>(Landroid/test/IsolatedContext$MockAccountManager;Ljava/lang/Object;)V

    return-object v0
.end method
