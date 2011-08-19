.class public Lcom/android/email/mail/AsusTooManyFolderException;
.super Lcom/android/emailcommon/mail/MessagingException;
.source "AsusTooManyFolderException.java"


# static fields
.field private static final serialVersionUID:J = 0x5f64bc17df35b500L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .line 17
    return-void
.end method
