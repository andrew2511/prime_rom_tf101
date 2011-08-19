.class public interface abstract Lcom/google/android/music/sync/common/AuthInfo;
.super Ljava/lang/Object;
.source "AuthInfo.java"


# virtual methods
.method public abstract getAuthToken(Landroid/accounts/Account;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation
.end method

.method public abstract invalidateAuthToken(Landroid/accounts/Account;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation
.end method
