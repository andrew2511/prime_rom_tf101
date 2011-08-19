.class public interface abstract Lcom/google/android/gsf/login/WebAddAccountView$Callback;
.super Ljava/lang/Object;
.source "WebAddAccountView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/login/WebAddAccountView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onInteractivityCompleted()V
.end method

.method public abstract onPageLoadFinished(Ljava/lang/String;)V
.end method

.method public abstract onPageLoadStart(Z)V
.end method

.method public abstract onWebLoginError(Lcom/google/android/gsf/login/WebAddAccountView$Error;ILjava/lang/String;)V
.end method
