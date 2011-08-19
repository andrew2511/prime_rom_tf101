.class public abstract Lcom/android/exchange/adapter/AbstractSyncAdapter;
.super Ljava/lang/Object;
.source "AbstractSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/adapter/AbstractSyncAdapter$SyncStatusException;
    }
.end annotation


# instance fields
.field public mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

.field public final mAccountManagerAccount:Landroid/accounts/Account;

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public mContext:Landroid/content/Context;

.field public mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

.field public mService:Lcom/android/exchange/EasSyncService;


# direct methods
.method public constructor <init>(Lcom/android/exchange/EasSyncService;)V
    .locals 3
    .parameter "service"

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    .line 77
    iget-object v0, p1, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    .line 78
    iget-object v0, p1, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    .line 79
    iget-object v0, p1, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 80
    new-instance v0, Landroid/accounts/Account;

    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    const-string v2, "com.android.exchange"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccountManagerAccount:Landroid/accounts/Account;

    .line 82
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContentResolver:Landroid/content/ContentResolver;

    .line 83
    return-void
.end method


# virtual methods
.method public abstract cleanup()V
.end method

.method public abstract getCollectionName()Ljava/lang/String;
.end method

.method public getSyncKey()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 130
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Reset SyncKey to 0"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    const-string v1, "0"

    iput-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    return-object v0
.end method

.method public incrementChangeCount()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget v1, v0, Lcom/android/exchange/EasSyncService;->mChangeCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/exchange/EasSyncService;->mChangeCount:I

    .line 91
    return-void
.end method

.method public isLooping()Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isSyncable()Z
.end method

.method public abstract parse(Ljava/io/InputStream;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract sendLocalChanges(Lcom/android/exchange/adapter/Serializer;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract sendSyncOptions(Ljava/lang/Double;Lcom/android/exchange/adapter/Serializer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected setPimSyncOptions(Ljava/lang/Double;Ljava/lang/String;Lcom/android/exchange/adapter/Serializer;)V
    .locals 4
    .parameter "protocolVersion"
    .parameter "filter"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    const/16 v0, 0x1e

    invoke-virtual {p3, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 103
    const/16 v0, 0x13

    invoke-virtual {p3, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 104
    const/16 v0, 0x15

    const-string v1, "4"

    invoke-virtual {p3, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 105
    const/16 v0, 0x17

    invoke-virtual {p3, v0}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 107
    if-eqz p2, :cond_0

    .line 108
    const/16 v0, 0x18

    invoke-virtual {p3, v0, p2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 111
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x4028

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    .line 112
    const/16 v0, 0x445

    invoke-virtual {p3, v0}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 114
    const/16 v0, 0x446

    const-string v1, "1"

    invoke-virtual {p3, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 115
    const/16 v0, 0x447

    const-string v1, "200000"

    invoke-virtual {p3, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 116
    invoke-virtual {p3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 120
    :goto_0
    invoke-virtual {p3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 121
    return-void

    .line 118
    :cond_1
    const/16 v0, 0x19

    const-string v1, "7"

    invoke-virtual {p3, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_0
.end method

.method public setSyncKey(Ljava/lang/String;Z)V
    .locals 1
    .parameter "syncKey"
    .parameter "inCommands"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iput-object p1, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public varargs userLog([Ljava/lang/String;)V
    .locals 1
    .parameter "strings"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v0, p1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public abstract wipe()V
.end method
