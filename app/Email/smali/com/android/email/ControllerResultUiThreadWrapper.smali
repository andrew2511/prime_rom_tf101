.class public Lcom/android/email/ControllerResultUiThreadWrapper;
.super Lcom/android/email/Controller$Result;
.source "ControllerResultUiThreadWrapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/email/Controller$Result;",
        ">",
        "Lcom/android/email/Controller$Result;"
    }
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mWrappee:Lcom/android/email/Controller$Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/android/email/Controller$Result;)V
    .locals 0
    .parameter "handler"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, this:Lcom/android/email/ControllerResultUiThreadWrapper;,"Lcom/android/email/ControllerResultUiThreadWrapper<TT;>;"
    .local p2, wrappee:Lcom/android/email/Controller$Result;,"TT;"
    invoke-direct {p0}, Lcom/android/email/Controller$Result;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/email/ControllerResultUiThreadWrapper;->mHandler:Landroid/os/Handler;

    .line 37
    iput-object p2, p0, Lcom/android/email/ControllerResultUiThreadWrapper;->mWrappee:Lcom/android/email/Controller$Result;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/ControllerResultUiThreadWrapper;)Lcom/android/email/Controller$Result;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/email/ControllerResultUiThreadWrapper;->mWrappee:Lcom/android/email/Controller$Result;

    return-object v0
.end method

.method private run(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 51
    .local p0, this:Lcom/android/email/ControllerResultUiThreadWrapper;,"Lcom/android/email/ControllerResultUiThreadWrapper<TT;>;"
    iget-object v0, p0, Lcom/android/email/ControllerResultUiThreadWrapper;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 52
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/android/email/ControllerResultUiThreadWrapper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public deleteAccountCallback(J)V
    .locals 1
    .parameter "accountId"

    .prologue
    .line 132
    .local p0, this:Lcom/android/email/ControllerResultUiThreadWrapper;,"Lcom/android/email/ControllerResultUiThreadWrapper<TT;>;"
    new-instance v0, Lcom/android/email/ControllerResultUiThreadWrapper$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/email/ControllerResultUiThreadWrapper$7;-><init>(Lcom/android/email/ControllerResultUiThreadWrapper;J)V

    invoke-direct {p0, v0}, Lcom/android/email/ControllerResultUiThreadWrapper;->run(Ljava/lang/Runnable;)V

    .line 138
    return-void
.end method

.method public getWrappee()Lcom/android/email/Controller$Result;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, this:Lcom/android/email/ControllerResultUiThreadWrapper;,"Lcom/android/email/ControllerResultUiThreadWrapper<TT;>;"
    iget-object v0, p0, Lcom/android/email/ControllerResultUiThreadWrapper;->mWrappee:Lcom/android/email/Controller$Result;

    return-object v0
.end method

.method public loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V
    .locals 10
    .parameter "result"
    .parameter "accountId"
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "progress"

    .prologue
    .line 61
    .local p0, this:Lcom/android/email/ControllerResultUiThreadWrapper;,"Lcom/android/email/ControllerResultUiThreadWrapper<TT;>;"
    new-instance v0, Lcom/android/email/ControllerResultUiThreadWrapper$1;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-wide/from16 v7, p6

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/email/ControllerResultUiThreadWrapper$1;-><init>(Lcom/android/email/ControllerResultUiThreadWrapper;Lcom/android/emailcommon/mail/MessagingException;JJJI)V

    invoke-direct {p0, v0}, Lcom/android/email/ControllerResultUiThreadWrapper;->run(Ljava/lang/Runnable;)V

    .line 72
    return-void
.end method

.method public loadMessageForViewCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V
    .locals 8
    .parameter "result"
    .parameter "accountId"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    .line 77
    .local p0, this:Lcom/android/email/ControllerResultUiThreadWrapper;,"Lcom/android/email/ControllerResultUiThreadWrapper<TT;>;"
    new-instance v0, Lcom/android/email/ControllerResultUiThreadWrapper$2;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/email/ControllerResultUiThreadWrapper$2;-><init>(Lcom/android/email/ControllerResultUiThreadWrapper;Lcom/android/emailcommon/mail/MessagingException;JJI)V

    invoke-direct {p0, v0}, Lcom/android/email/ControllerResultUiThreadWrapper;->run(Ljava/lang/Runnable;)V

    .line 83
    return-void
.end method

.method public sendMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V
    .locals 8
    .parameter "result"
    .parameter "accountId"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    .line 88
    .local p0, this:Lcom/android/email/ControllerResultUiThreadWrapper;,"Lcom/android/email/ControllerResultUiThreadWrapper<TT;>;"
    new-instance v0, Lcom/android/email/ControllerResultUiThreadWrapper$3;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/email/ControllerResultUiThreadWrapper$3;-><init>(Lcom/android/email/ControllerResultUiThreadWrapper;Lcom/android/emailcommon/mail/MessagingException;JJI)V

    invoke-direct {p0, v0}, Lcom/android/email/ControllerResultUiThreadWrapper;->run(Ljava/lang/Runnable;)V

    .line 94
    return-void
.end method

.method public serviceCheckMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJIJ)V
    .locals 10
    .parameter "result"
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "progress"
    .parameter "tag"

    .prologue
    .line 99
    .local p0, this:Lcom/android/email/ControllerResultUiThreadWrapper;,"Lcom/android/email/ControllerResultUiThreadWrapper<TT;>;"
    new-instance v0, Lcom/android/email/ControllerResultUiThreadWrapper$4;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move/from16 v7, p6

    move-wide/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcom/android/email/ControllerResultUiThreadWrapper$4;-><init>(Lcom/android/email/ControllerResultUiThreadWrapper;Lcom/android/emailcommon/mail/MessagingException;JJIJ)V

    invoke-direct {p0, v0}, Lcom/android/email/ControllerResultUiThreadWrapper;->run(Ljava/lang/Runnable;)V

    .line 105
    return-void
.end method

.method protected setRegistered(Z)V
    .locals 1
    .parameter "registered"

    .prologue
    .line 46
    .local p0, this:Lcom/android/email/ControllerResultUiThreadWrapper;,"Lcom/android/email/ControllerResultUiThreadWrapper<TT;>;"
    invoke-super {p0, p1}, Lcom/android/email/Controller$Result;->setRegistered(Z)V

    .line 47
    iget-object v0, p0, Lcom/android/email/ControllerResultUiThreadWrapper;->mWrappee:Lcom/android/email/Controller$Result;

    invoke-virtual {v0, p1}, Lcom/android/email/Controller$Result;->setRegistered(Z)V

    .line 48
    return-void
.end method

.method public updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJII)V
    .locals 9
    .parameter "result"
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "progress"
    .parameter "numNewMessages"

    .prologue
    .line 110
    .local p0, this:Lcom/android/email/ControllerResultUiThreadWrapper;,"Lcom/android/email/ControllerResultUiThreadWrapper<TT;>;"
    new-instance v0, Lcom/android/email/ControllerResultUiThreadWrapper$5;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/email/ControllerResultUiThreadWrapper$5;-><init>(Lcom/android/email/ControllerResultUiThreadWrapper;Lcom/android/emailcommon/mail/MessagingException;JJII)V

    invoke-direct {p0, v0}, Lcom/android/email/ControllerResultUiThreadWrapper;->run(Ljava/lang/Runnable;)V

    .line 117
    return-void
.end method

.method public updateMailboxListCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V
    .locals 6
    .parameter "result"
    .parameter "accountId"
    .parameter "progress"

    .prologue
    .line 122
    .local p0, this:Lcom/android/email/ControllerResultUiThreadWrapper;,"Lcom/android/email/ControllerResultUiThreadWrapper<TT;>;"
    new-instance v0, Lcom/android/email/ControllerResultUiThreadWrapper$6;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/email/ControllerResultUiThreadWrapper$6;-><init>(Lcom/android/email/ControllerResultUiThreadWrapper;Lcom/android/emailcommon/mail/MessagingException;JI)V

    invoke-direct {p0, v0}, Lcom/android/email/ControllerResultUiThreadWrapper;->run(Ljava/lang/Runnable;)V

    .line 128
    return-void
.end method
