.class public abstract Ljava/security/AuthProvider;
.super Ljava/security/Provider;
.source "AuthProvider.java"


# static fields
.field private static final serialVersionUID:J = 0x3a41ca914c43159dL


# direct methods
.method protected constructor <init>(Ljava/lang/String;DLjava/lang/String;)V
    .registers 5
    .parameter "name"
    .parameter "version"
    .parameter "info"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    .line 48
    return-void
.end method


# virtual methods
.method public abstract login(Ljavax/security/auth/Subject;Ljavax/security/auth/callback/CallbackHandler;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/auth/login/LoginException;
        }
    .end annotation
.end method

.method public abstract logout()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/auth/login/LoginException;
        }
    .end annotation
.end method

.method public abstract setCallbackHandler(Ljavax/security/auth/callback/CallbackHandler;)V
.end method
