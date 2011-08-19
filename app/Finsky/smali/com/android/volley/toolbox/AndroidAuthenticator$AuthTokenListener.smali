.class public interface abstract Lcom/android/volley/toolbox/AndroidAuthenticator$AuthTokenListener;
.super Ljava/lang/Object;
.source "AndroidAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/toolbox/AndroidAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AuthTokenListener"
.end annotation


# virtual methods
.method public abstract onAuthTokenReceived(Ljava/lang/String;)V
.end method

.method public abstract onErrorReceived(Lcom/android/volley/AuthFailureException;)V
.end method
