.class public abstract Lcom/google/android/youtube/core/ui/DefaultAuthenticatee;
.super Ljava/lang/Object;
.source "DefaultAuthenticatee.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;


# instance fields
.field protected final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/DefaultAuthenticatee;->context:Landroid/content/Context;

    .line 23
    return-void
.end method


# virtual methods
.method public onAuthenticationError(Ljava/lang/Exception;)V
    .locals 1
    .parameter "exception"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/DefaultAuthenticatee;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/ErrorHelper;->showToast(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 30
    return-void
.end method

.method public onNotAuthenticated()V
    .locals 0

    .prologue
    .line 26
    return-void
.end method
