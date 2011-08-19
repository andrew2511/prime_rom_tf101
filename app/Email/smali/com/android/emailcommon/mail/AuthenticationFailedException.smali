.class public Lcom/android/emailcommon/mail/AuthenticationFailedException;
.super Lcom/android/emailcommon/mail/MessagingException;
.source "AuthenticationFailedException.java"


# static fields
.field public static final serialVersionUID:J = -0x1L


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "exceptionType"
    .parameter "message"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 24
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "message"
    .parameter "throwable"

    .prologue
    .line 32
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1, p2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    return-void
.end method
