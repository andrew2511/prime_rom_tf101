.class Lcom/google/android/feeds/core/net/ContentAuthenticator;
.super Ljava/net/Authenticator;
.source "ContentAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/feeds/core/net/ContentAuthenticator$UnauthorizedException;
    }
.end annotation


# instance fields
.field private final mEnabled:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/net/Authenticator;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/google/android/feeds/core/net/ContentAuthenticator;->mEnabled:Ljava/lang/ThreadLocal;

    .line 68
    return-void
.end method


# virtual methods
.method protected getPasswordAuthentication()Ljava/net/PasswordAuthentication;
    .locals 2

    .prologue
    .line 35
    iget-object v1, p0, Lcom/google/android/feeds/core/net/ContentAuthenticator;->mEnabled:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 36
    .local v0, enabled:Ljava/lang/Boolean;
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    new-instance v1, Lcom/google/android/feeds/core/net/ContentAuthenticator$UnauthorizedException;

    invoke-direct {v1}, Lcom/google/android/feeds/core/net/ContentAuthenticator$UnauthorizedException;-><init>()V

    throw v1

    .line 44
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public setEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/feeds/core/net/ContentAuthenticator;->mEnabled:Ljava/lang/ThreadLocal;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 61
    return-void
.end method
