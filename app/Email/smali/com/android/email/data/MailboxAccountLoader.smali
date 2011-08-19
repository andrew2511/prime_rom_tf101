.class public Lcom/android/email/data/MailboxAccountLoader;
.super Landroid/content/AsyncTaskLoader;
.source "MailboxAccountLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/data/MailboxAccountLoader$1;,
        Lcom/android/email/data/MailboxAccountLoader$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Lcom/android/email/data/MailboxAccountLoader$Result;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mMailboxId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 2
    .parameter "context"
    .parameter "mailboxId"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 57
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    throw v0

    .line 60
    :cond_0
    iput-object p1, p0, Lcom/android/email/data/MailboxAccountLoader;->mContext:Landroid/content/Context;

    .line 61
    iput-wide p2, p0, Lcom/android/email/data/MailboxAccountLoader;->mMailboxId:J

    .line 62
    return-void
.end method


# virtual methods
.method public loadInBackground()Lcom/android/email/data/MailboxAccountLoader$Result;
    .locals 11

    .prologue
    .line 66
    const/4 v1, 0x0

    .line 67
    .local v1, found:Z
    const/4 v2, 0x0

    .line 68
    .local v2, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    const/4 v3, 0x0

    .line 69
    .local v3, mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    const/4 v4, 0x0

    .line 70
    .local v4, isEasAccount:Z
    const/4 v5, 0x0

    .line 72
    .local v5, isRefreshable:Z
    iget-wide v7, p0, Lcom/android/email/data/MailboxAccountLoader;->mMailboxId:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-gez v7, :cond_1

    .line 74
    const/4 v1, 0x1

    .line 88
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/android/email/data/MailboxAccountLoader;->mContext:Landroid/content/Context;

    sget-object v8, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, v8}, Lcom/android/emailcommon/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v6

    .line 89
    .local v6, countAccounts:I
    new-instance v0, Lcom/android/email/data/MailboxAccountLoader$Result;

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/email/data/MailboxAccountLoader$Result;-><init>(ZLcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;ZZILcom/android/email/data/MailboxAccountLoader$1;)V

    .line 91
    .local v0, result:Lcom/android/email/data/MailboxAccountLoader$Result;
    return-object v0

    .line 76
    .end local v0           #result:Lcom/android/email/data/MailboxAccountLoader$Result;
    .end local v6           #countAccounts:I
    :cond_1
    iget-object v7, p0, Lcom/android/email/data/MailboxAccountLoader;->mContext:Landroid/content/Context;

    iget-wide v8, p0, Lcom/android/email/data/MailboxAccountLoader;->mMailboxId:J

    invoke-static {v7, v8, v9}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v3

    .line 77
    if-eqz v3, :cond_0

    .line 78
    iget-object v7, p0, Lcom/android/email/data/MailboxAccountLoader;->mContext:Landroid/content/Context;

    iget-wide v8, v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {v7, v8, v9}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    .line 79
    if-eqz v2, :cond_2

    .line 80
    const/4 v1, 0x1

    .line 81
    iget-object v7, p0, Lcom/android/email/data/MailboxAccountLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v7}, Lcom/android/emailcommon/provider/EmailContent$Account;->isEasAccount(Landroid/content/Context;)Z

    move-result v4

    .line 82
    iget-object v7, p0, Lcom/android/email/data/MailboxAccountLoader;->mContext:Landroid/content/Context;

    iget-wide v8, p0, Lcom/android/email/data/MailboxAccountLoader;->mMailboxId:J

    invoke-static {v7, v8, v9}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->isRefreshable(Landroid/content/Context;J)Z

    move-result v5

    goto :goto_0

    .line 84
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/android/email/data/MailboxAccountLoader;->loadInBackground()Lcom/android/email/data/MailboxAccountLoader$Result;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .locals 0

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/android/email/data/MailboxAccountLoader;->stopLoading()V

    .line 108
    return-void
.end method

.method protected onStartLoading()V
    .locals 0

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/android/email/data/MailboxAccountLoader;->cancelLoad()Z

    .line 97
    invoke-virtual {p0}, Lcom/android/email/data/MailboxAccountLoader;->forceLoad()V

    .line 98
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/android/email/data/MailboxAccountLoader;->cancelLoad()Z

    .line 103
    return-void
.end method
