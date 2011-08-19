.class public Lcom/google/android/gsf/gtalkservice/rmq/PersistentMessageQueue;
.super Ljava/lang/Object;
.source "PersistentMessageQueue.java"

# interfaces
.implements Lcom/google/android/gsf/gtalkservice/rmq/ReliableMessageQueue;


# instance fields
.field private RMQ_PROJECTION:[Ljava/lang/String;

.field private mResolver:Landroid/content/ContentResolver;

.field private mRmqId:J


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 3
    .parameter "resolver"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "rmq_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "data"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "account"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/PersistentMessageQueue;->RMQ_PROJECTION:[Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/rmq/PersistentMessageQueue;->mResolver:Landroid/content/ContentResolver;

    .line 48
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/rmq/PersistentMessageQueue;->initializeRmqId()V

    .line 49
    return-void
.end method

.method private initializeRmqId()V
    .locals 4

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/PersistentMessageQueue;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/google/android/gsf/TalkContract$OutgoingRmq;->queryHighestRmqId(Landroid/content/ContentResolver;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/PersistentMessageQueue;->mRmqId:J

    .line 58
    iget-wide v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/PersistentMessageQueue;->mRmqId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 59
    sget-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugRmq:Z

    if-eqz v0, :cond_0

    .line 60
    const-string v0, "initializeRmqId: nothing in OutgoingRmq table, query lastRmqId table"

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/rmq/PersistentMessageQueue;->log(Ljava/lang/String;)V

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/PersistentMessageQueue;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/google/android/gsf/TalkContract$LastRmqId;->queryLastRmqId(Landroid/content/ContentResolver;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/PersistentMessageQueue;->mRmqId:J

    .line 65
    :cond_1
    sget-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugRmq:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initializeRmqId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gsf/gtalkservice/rmq/PersistentMessageQueue;->mRmqId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/rmq/PersistentMessageQueue;->log(Ljava/lang/String;)V

    .line 66
    :cond_2
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 176
    const-string v0, "Rmq"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[pmq] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    return-void
.end method


# virtual methods
.method public enqueueMessage(JLcom/google/android/gsf/gtalkservice/rmq/RmqPacket;)V
    .locals 4
    .parameter "rmqId"
    .parameter "packet"

    .prologue
    .line 77
    sget-boolean v1, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugRmq:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enqueueMessage rmqId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/rmq/PersistentMessageQueue;->log(Ljava/lang/String;)V

    .line 79
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 80
    .local v0, value:Landroid/content/ContentValues;
    const-string v1, "rmq_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 81
    const-string v1, "data"

    invoke-virtual {p3}, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;->getData()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 82
    const-string v1, "type"

    invoke-virtual {p3}, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;->getProtoBufTag()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 83
    const-string v1, "account"

    invoke-virtual {p3}, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;->getAccountId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 85
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/rmq/PersistentMessageQueue;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/google/android/gsf/TalkContract$OutgoingRmq;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 86
    return-void
.end method

.method public getNextRmqId()J
    .locals 4

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/PersistentMessageQueue;->mRmqId:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/PersistentMessageQueue;->mRmqId:J

    return-wide v0
.end method

.method public getRmq1Packets()Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketList;
    .locals 8

    .prologue
    .line 141
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .local v6, buf:Ljava/lang/StringBuilder;
    const-string v0, "type"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/PersistentMessageQueue;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/google/android/gsf/TalkContract$OutgoingRmq;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/rmq/PersistentMessageQueue;->RMQ_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "rmq_id ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 151
    .local v7, cursor:Landroid/database/Cursor;
    new-instance v0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketCursorList;

    invoke-direct {v0, v7}, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketCursorList;-><init>(Landroid/database/Cursor;)V

    return-object v0
.end method

.method public getRmq2Packets(J)Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketList;
    .locals 8
    .parameter "accountId"

    .prologue
    .line 155
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .local v6, buf:Ljava/lang/StringBuilder;
    const-string v0, "type"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "!=0 AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    const-string v0, "account"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "==-1 OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    const-string v0, "account"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "==?)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .line 163
    .local v4, selectionArgs:[Ljava/lang/String;
    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 165
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/PersistentMessageQueue;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/google/android/gsf/TalkContract$OutgoingRmq;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/rmq/PersistentMessageQueue;->RMQ_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "rmq_id ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 172
    .local v7, cursor:Landroid/database/Cursor;
    new-instance v0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketCursorList;

    invoke-direct {v0, v7}, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketCursorList;-><init>(Landroid/database/Cursor;)V

    return-object v0
.end method

.method public removeMessagesByRmq2Ids(Ljava/util/List;)I
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, rmq2Ids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 114
    :cond_0
    const/4 v7, 0x0

    .line 137
    :goto_0
    return v7

    .line 117
    :cond_1
    sget-boolean v7, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugRmq:Z

    if-eqz v7, :cond_3

    .line 118
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "remove rmq2 messages: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .local v5, msg:Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 120
    .local v4, id:Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x2c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 122
    .end local v4           #id:Ljava/lang/String;
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/google/android/gsf/gtalkservice/rmq/PersistentMessageQueue;->log(Ljava/lang/String;)V

    .line 125
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #msg:Ljava/lang/StringBuilder;
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .local v0, buf:Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    new-array v6, v7, [Ljava/lang/String;

    .line 127
    .local v6, selectionArgs:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 129
    .local v1, i:I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 130
    .restart local v4       #id:Ljava/lang/String;
    if-lez v1, :cond_4

    .line 131
    const-string v7, " OR "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    :cond_4
    const-string v7, "rmq_id"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "=?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    aput-object v4, v6, v1

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_2

    .line 137
    .end local v4           #id:Ljava/lang/String;
    :cond_5
    iget-object v7, p0, Lcom/google/android/gsf/gtalkservice/rmq/PersistentMessageQueue;->mResolver:Landroid/content/ContentResolver;

    sget-object v8, Lcom/google/android/gsf/TalkContract$OutgoingRmq;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    goto :goto_0
.end method

.method public removeMessagesUntil(J)V
    .locals 6
    .parameter "rmqId"

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .local v0, buf:Ljava/lang/StringBuilder;
    const-string v2, "rmq_id"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 94
    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/rmq/PersistentMessageQueue;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/google/android/gsf/TalkContract$OutgoingRmq;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 99
    .local v1, count:I
    sget-boolean v2, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugRmq:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeMessagesUntil "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", removed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/rmq/PersistentMessageQueue;->log(Ljava/lang/String;)V

    .line 105
    :cond_0
    iget-wide v2, p0, Lcom/google/android/gsf/gtalkservice/rmq/PersistentMessageQueue;->mRmqId:J

    cmp-long v2, v2, p1

    if-gez v2, :cond_1

    .line 106
    iput-wide p1, p0, Lcom/google/android/gsf/gtalkservice/rmq/PersistentMessageQueue;->mRmqId:J

    .line 109
    :cond_1
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/rmq/PersistentMessageQueue;->mResolver:Landroid/content/ContentResolver;

    iget-wide v3, p0, Lcom/google/android/gsf/gtalkservice/rmq/PersistentMessageQueue;->mRmqId:J

    invoke-static {v2, v3, v4}, Lcom/google/android/gsf/TalkContract$LastRmqId;->saveLastRmqId(Landroid/content/ContentResolver;J)V

    .line 110
    return-void
.end method
