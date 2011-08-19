.class public Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketCursorList;
.super Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketList;
.source "RmqPacketCursorList.java"


# instance fields
.field private final mCursor:Landroid/database/Cursor;

.field private mDataColumnIndex:I

.field private mProtobufTagIndex:I

.field private mRmqIdColumnIndex:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketList;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketCursorList;->mCursor:Landroid/database/Cursor;

    .line 21
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketCursorList;->mCursor:Landroid/database/Cursor;

    const-string v1, "data"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketCursorList;->mDataColumnIndex:I

    .line 22
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketCursorList;->mCursor:Landroid/database/Cursor;

    const-string v1, "type"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketCursorList;->mProtobufTagIndex:I

    .line 23
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketCursorList;->mCursor:Landroid/database/Cursor;

    const-string v1, "rmq_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketCursorList;->mRmqIdColumnIndex:I

    .line 24
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketCursorList;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketCursorList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 54
    :cond_0
    return-void
.end method

.method public getPacketAt(I)Lorg/jivesoftware/smack/packet/Packet;
    .locals 7
    .parameter "position"

    .prologue
    const/4 v6, 0x0

    .line 34
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketCursorList;->mCursor:Landroid/database/Cursor;

    if-nez v4, :cond_0

    move-object v4, v6

    .line 47
    :goto_0
    return-object v4

    .line 38
    :cond_0
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketCursorList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 39
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketCursorList;->mCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketCursorList;->mRmqIdColumnIndex:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 40
    .local v1, rmqId:J
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketCursorList;->mCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketCursorList;->mProtobufTagIndex:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 41
    .local v3, tag:I
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketCursorList;->mCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketCursorList;->mDataColumnIndex:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 43
    .local v0, data:[B
    if-nez v0, :cond_1

    move-object v4, v6

    .line 44
    goto :goto_0

    .line 47
    :cond_1
    new-instance v4, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;

    int-to-byte v5, v3

    invoke-direct {v4, v1, v2, v5, v0}, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;-><init>(JB[B)V

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketCursorList;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 30
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketCursorList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method
