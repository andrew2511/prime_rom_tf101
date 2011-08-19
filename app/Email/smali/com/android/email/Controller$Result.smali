.class public abstract Lcom/android/email/Controller$Result;
.super Ljava/lang/Object;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Result"
.end annotation


# instance fields
.field private volatile mRegistered:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1064
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deleteAccountCallback(J)V
    .locals 0
    .parameter "accountId"

    .prologue
    .line 1175
    return-void
.end method

.method protected final isRegistered()Z
    .locals 1

    .prologue
    .line 1072
    iget-boolean v0, p0, Lcom/android/email/Controller$Result;->mRegistered:Z

    return v0
.end method

.method public loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "progress"

    .prologue
    .line 1121
    return-void
.end method

.method public loadMessageForViewCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    .line 1109
    return-void
.end method

.method public sendMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    .line 1169
    return-void
.end method

.method public serviceCheckMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJIJ)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "progress"
    .parameter "tag"

    .prologue
    .line 1136
    return-void
.end method

.method protected setRegistered(Z)V
    .locals 0
    .parameter "registered"

    .prologue
    .line 1068
    iput-boolean p1, p0, Lcom/android/email/Controller$Result;->mRegistered:Z

    .line 1069
    return-void
.end method

.method public updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJII)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "progress"
    .parameter "numNewMessages"

    .prologue
    .line 1098
    return-void
.end method

.method public updateMailboxListCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "progress"

    .prologue
    .line 1084
    return-void
.end method
