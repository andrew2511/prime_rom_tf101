.class public abstract Lcom/android/exchange/adapter/AbstractSyncParser;
.super Lcom/android/exchange/adapter/Parser;
.source "AbstractSyncParser.java"


# instance fields
.field protected mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

.field protected mAdapter:Lcom/android/exchange/adapter/AbstractSyncAdapter;

.field protected mContentResolver:Landroid/content/ContentResolver;

.field protected mContext:Landroid/content/Context;

.field private mLooping:Z

.field protected mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

.field protected mService:Lcom/android/exchange/EasSyncService;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V
    .locals 1
    .parameter "in"
    .parameter "adapter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/Parser;-><init>(Ljava/io/InputStream;)V

    .line 52
    iput-object p2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAdapter:Lcom/android/exchange/adapter/AbstractSyncAdapter;

    .line 53
    iget-object v0, p2, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    .line 54
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    .line 55
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    .line 56
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    .line 57
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iput-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 58
    return-void
.end method


# virtual methods
.method public abstract commandsParser()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract commit()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public isLooping()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mLooping:Z

    return v0
.end method

.method public parse()Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    const/4 v4, 0x0

    .line 91
    .local v4, moreAvailable:Z
    const/4 v6, 0x0

    .line 92
    .local v6, newSyncKey:Z
    iget-object v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v2, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncInterval:I

    .line 93
    .local v2, interval:I
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mLooping:Z

    .line 95
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/exchange/adapter/AbstractSyncParser;->nextTag(I)I

    move-result v8

    const/4 v9, 0x5

    if-eq v8, v9, :cond_0

    .line 96
    new-instance v8, Lcom/android/exchange/adapter/Parser$EasParserException;

    invoke-direct {v8, p0}, Lcom/android/exchange/adapter/Parser$EasParserException;-><init>(Lcom/android/exchange/adapter/Parser;)V

    throw v8

    .line 99
    :cond_0
    const/4 v3, 0x0

    .line 100
    .local v3, mailboxUpdated:Z
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 103
    .local v1, cv:Landroid/content/ContentValues;
    :cond_1
    :goto_0
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/exchange/adapter/AbstractSyncParser;->nextTag(I)I

    move-result v8

    const/4 v9, 0x3

    if-eq v8, v9, :cond_a

    .line 104
    iget v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->tag:I

    const/16 v9, 0xf

    if-eq v8, v9, :cond_1

    iget v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->tag:I

    const/16 v9, 0x1c

    if-eq v8, v9, :cond_1

    .line 106
    iget v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->tag:I

    const/16 v9, 0xe

    if-ne v8, v9, :cond_3

    .line 108
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValueInt()I

    move-result v7

    .line 109
    .local v7, status:I
    const/4 v8, 0x1

    if-eq v7, v8, :cond_1

    .line 110
    iget-object v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Sync failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    .line 112
    const/4 v8, 0x3

    if-ne v7, v8, :cond_2

    .line 114
    iget-object v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAdapter:Lcom/android/exchange/adapter/AbstractSyncAdapter;

    const-string v9, "0"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->setSyncKey(Ljava/lang/String;Z)V

    .line 117
    iget-object v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    const/4 v9, -0x2

    iput v9, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncInterval:I

    .line 118
    iget-object v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    const-string v9, "Bad sync key; RESET and delete data"

    invoke-virtual {v8, v9}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    .line 119
    iget-object v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAdapter:Lcom/android/exchange/adapter/AbstractSyncAdapter;

    invoke-virtual {v8}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->wipe()V

    .line 121
    const/4 v4, 0x1

    goto :goto_0

    .line 122
    :cond_2
    const/16 v8, 0x8

    if-ne v7, v8, :cond_1

    .line 125
    iget-object v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v9, v9, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    const/4 v11, 0x1

    invoke-static {v8, v9, v10, v11}, Lcom/android/exchange/ExchangeService;->reloadFolderList(Landroid/content/Context;JZ)V

    goto :goto_0

    .line 129
    .end local v7           #status:I
    :cond_3
    iget v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->tag:I

    const/16 v9, 0x16

    if-ne v8, v9, :cond_4

    .line 130
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->commandsParser()V

    goto :goto_0

    .line 131
    :cond_4
    iget v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->tag:I

    const/4 v9, 0x6

    if-ne v8, v9, :cond_5

    .line 132
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->responsesParser()V

    goto :goto_0

    .line 133
    :cond_5
    iget v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->tag:I

    const/16 v9, 0x14

    if-ne v8, v9, :cond_6

    .line 134
    const/4 v4, 0x1

    goto :goto_0

    .line 135
    :cond_6
    iget v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->tag:I

    const/16 v9, 0xb

    if-ne v8, v9, :cond_9

    .line 136
    iget-object v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAdapter:Lcom/android/exchange/adapter/AbstractSyncAdapter;

    invoke-virtual {v8}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->getSyncKey()Ljava/lang/String;

    move-result-object v8

    const-string v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 137
    const/4 v4, 0x1

    .line 139
    :cond_7
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 140
    .local v5, newKey:Ljava/lang/String;
    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "Parsed key for "

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v10, v10, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, ": "

    aput-object v10, v8, v9

    const/4 v9, 0x3

    aput-object v5, v8, v9

    invoke-virtual {p0, v8}, Lcom/android/exchange/adapter/AbstractSyncParser;->userLog([Ljava/lang/String;)V

    .line 141
    iget-object v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v8, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 142
    iget-object v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAdapter:Lcom/android/exchange/adapter/AbstractSyncAdapter;

    const/4 v9, 0x1

    invoke-virtual {v8, v5, v9}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->setSyncKey(Ljava/lang/String;Z)V

    .line 143
    const-string v8, "syncKey"

    invoke-virtual {v1, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const/4 v3, 0x1

    .line 145
    const/4 v6, 0x1

    .line 148
    :cond_8
    iget-object v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v8, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncInterval:I

    const/4 v9, -0x2

    if-ne v8, v9, :cond_1

    .line 149
    iget-object v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    const/4 v9, -0x3

    iput v9, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncInterval:I

    goto/16 :goto_0

    .line 152
    .end local v5           #newKey:Ljava/lang/String;
    :cond_9
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->skipTag()V

    goto/16 :goto_0

    .line 157
    :cond_a
    if-eqz v4, :cond_b

    if-nez v6, :cond_b

    .line 158
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mLooping:Z

    .line 162
    :cond_b
    invoke-virtual {p0}, Lcom/android/exchange/adapter/AbstractSyncParser;->commit()V

    .line 164
    const/4 v0, 0x0

    .line 167
    .local v0, abortSyncs:Z
    iget-object v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v8, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncInterval:I

    if-eq v8, v2, :cond_11

    .line 168
    const-string v8, "syncInterval"

    iget-object v9, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v9, v9, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncInterval:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 169
    const/4 v3, 0x1

    .line 180
    :cond_c
    :goto_1
    if-eqz v3, :cond_e

    .line 181
    iget-object v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v8}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 182
    :try_start_0
    iget-object v9, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v9}, Lcom/android/exchange/EasSyncService;->isStopped()Z

    move-result v9

    if-nez v9, :cond_d

    .line 183
    iget-object v9, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v10, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v10, v1}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 185
    :cond_d
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    :cond_e
    if-eqz v0, :cond_f

    .line 189
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "Aborting account syncs due to mailbox change to ping..."

    aput-object v10, v8, v9

    invoke-virtual {p0, v8}, Lcom/android/exchange/adapter/AbstractSyncParser;->userLog([Ljava/lang/String;)V

    .line 190
    iget-object v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v8, v8, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    invoke-static {v8, v9}, Lcom/android/exchange/ExchangeService;->stopAccountSyncs(J)V

    .line 194
    :cond_f
    if-eqz v4, :cond_10

    .line 195
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "MoreAvailable"

    aput-object v10, v8, v9

    invoke-virtual {p0, v8}, Lcom/android/exchange/adapter/AbstractSyncParser;->userLog([Ljava/lang/String;)V

    .line 197
    :cond_10
    return v4

    .line 171
    :cond_11
    iget-object v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    iget v8, v8, Lcom/android/exchange/EasSyncService;->mChangeCount:I

    if-lez v8, :cond_c

    iget-object v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v8, v8, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    const/4 v9, -0x2

    if-ne v8, v9, :cond_c

    iget-object v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v8, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncInterval:I

    if-lez v8, :cond_c

    .line 174
    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "Changes found to ping loop mailbox "

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v10, v10, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, ": will ping."

    aput-object v10, v8, v9

    invoke-virtual {p0, v8}, Lcom/android/exchange/adapter/AbstractSyncParser;->userLog([Ljava/lang/String;)V

    .line 175
    const-string v8, "syncInterval"

    const/4 v9, -0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 176
    const/4 v3, 0x1

    .line 177
    const/4 v0, 0x1

    goto :goto_1

    .line 185
    :catchall_0
    move-exception v9

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9
.end method

.method public abstract responsesParser()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method userLog(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .parameter "string"
    .parameter "num"
    .parameter "string2"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;ILjava/lang/String;)V

    .line 206
    return-void
.end method

.method varargs userLog([Ljava/lang/String;)V
    .locals 1
    .parameter "strings"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v0, p1}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 202
    return-void
.end method
