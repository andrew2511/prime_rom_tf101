.class public interface abstract Lcom/google/android/finsky/remoting/network/BrowserAuthRequest$Listener;
.super Ljava/lang/Object;
.source "BrowserAuthRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/network/BrowserAuthRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Uri:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getActivity()Landroid/app/Activity;
.end method

.method public abstract onResponse(Ljava/lang/Object;Lcom/android/volley/Response$ErrorCode;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TUri;",
            "Lcom/android/volley/Response$ErrorCode;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method
