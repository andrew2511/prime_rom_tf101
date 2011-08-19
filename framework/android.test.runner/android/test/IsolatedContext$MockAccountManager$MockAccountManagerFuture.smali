.class Landroid/test/IsolatedContext$MockAccountManager$MockAccountManagerFuture;
.super Ljava/lang/Object;
.source "IsolatedContext.java"

# interfaces
.implements Landroid/accounts/AccountManagerFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/test/IsolatedContext$MockAccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MockAccountManagerFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerFuture",
        "<TT;>;"
    }
.end annotation


# instance fields
.field mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic this$1:Landroid/test/IsolatedContext$MockAccountManager;


# direct methods
.method public constructor <init>(Landroid/test/IsolatedContext$MockAccountManager;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 161
    .local p0, this:Landroid/test/IsolatedContext$MockAccountManager$MockAccountManagerFuture;,"Landroid/test/IsolatedContext$MockAccountManager$MockAccountManagerFuture<TT;>;"
    .local p2, result:Ljava/lang/Object;,"TT;"
    iput-object p1, p0, Landroid/test/IsolatedContext$MockAccountManager$MockAccountManagerFuture;->this$1:Landroid/test/IsolatedContext$MockAccountManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-object p2, p0, Landroid/test/IsolatedContext$MockAccountManager$MockAccountManagerFuture;->mResult:Ljava/lang/Object;

    .line 163
    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .registers 3
    .parameter "mayInterruptIfRunning"

    .prologue
    .line 166
    .local p0, this:Landroid/test/IsolatedContext$MockAccountManager$MockAccountManagerFuture;,"Landroid/test/IsolatedContext$MockAccountManager$MockAccountManagerFuture<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public getResult()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    .prologue
    .line 179
    .local p0, this:Landroid/test/IsolatedContext$MockAccountManager$MockAccountManagerFuture;,"Landroid/test/IsolatedContext$MockAccountManager$MockAccountManagerFuture<TT;>;"
    iget-object v0, p0, Landroid/test/IsolatedContext$MockAccountManager$MockAccountManagerFuture;->mResult:Ljava/lang/Object;

    return-object v0
.end method

.method public getResult(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 5
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    .prologue
    .line 184
    .local p0, this:Landroid/test/IsolatedContext$MockAccountManager$MockAccountManagerFuture;,"Landroid/test/IsolatedContext$MockAccountManager$MockAccountManagerFuture<TT;>;"
    invoke-virtual {p0}, Landroid/test/IsolatedContext$MockAccountManager$MockAccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isCancelled()Z
    .registers 2

    .prologue
    .line 170
    .local p0, this:Landroid/test/IsolatedContext$MockAccountManager$MockAccountManagerFuture;,"Landroid/test/IsolatedContext$MockAccountManager$MockAccountManagerFuture<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public isDone()Z
    .registers 2

    .prologue
    .line 174
    .local p0, this:Landroid/test/IsolatedContext$MockAccountManager$MockAccountManagerFuture;,"Landroid/test/IsolatedContext$MockAccountManager$MockAccountManagerFuture<TT;>;"
    const/4 v0, 0x1

    return v0
.end method
