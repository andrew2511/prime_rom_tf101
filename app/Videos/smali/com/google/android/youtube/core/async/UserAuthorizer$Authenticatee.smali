.class public interface abstract Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;
.super Ljava/lang/Object;
.source "UserAuthorizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/async/UserAuthorizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Authenticatee"
.end annotation


# virtual methods
.method public abstract onAuthenticated(Lcom/google/android/youtube/core/model/UserAuth;)V
.end method

.method public abstract onAuthenticationError(Ljava/lang/Exception;)V
.end method

.method public abstract onNotAuthenticated()V
.end method
