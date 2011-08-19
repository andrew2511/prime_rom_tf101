.class public interface abstract Lcom/google/android/youtube/core/async/UserAuthorizer$OnSignedInChangedListener;
.super Ljava/lang/Object;
.source "UserAuthorizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/async/UserAuthorizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnSignedInChangedListener"
.end annotation


# virtual methods
.method public abstract onSignIn(Lcom/google/android/youtube/core/model/UserAuth;)V
.end method

.method public abstract onSignOut()V
.end method
