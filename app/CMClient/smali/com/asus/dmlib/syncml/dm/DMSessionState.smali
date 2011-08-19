.class public Lcom/asus/dmlib/syncml/dm/DMSessionState;
.super Ljava/lang/Object;
.source "DMSessionState.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final STATE_COMPLETE_PACKAGE_SENT:I = 0x2

.field public static final STATE_INITIAL:I = 0x1

.field public static final STATE_RECEIVING_LARGE_OBJECT:I = 0x4

.field public static final STATE_SENDING_LARGE_OBJECT:I = 0x3


# instance fields
.field private mBearerHeader:Ljava/util/Map;

.field private mChallengeCount:I

.field private mCharset:Ljava/lang/String;

.field private mContentType:Ljava/lang/String;

.field private mDmProtocolVersion:Ljava/lang/String;

.field private mIDsToRefs:Ljava/util/HashMap;

.field private mInputMessageBuf:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/asus/dmlib/syncml/message/container/SyncML;",
            ">;"
        }
    .end annotation
.end field

.field private mLargeObjectOffset:I

.field private mLargeObjectPackage:Lcom/asus/dmlib/syncml/message/container/SyncML;

.field private mLastSendPackage:Lcom/asus/dmlib/syncml/message/container/SyncML;

.field private mMaxMessageSize:I

.field private mMaxObjSize:I

.field private mNextCommandID:I

.field private mNextMsgID:I

.field private mOutputMessageBuf:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/asus/dmlib/syncml/message/container/SyncML;",
            ">;"
        }
    .end annotation
.end field

.field private mSendCredCount:I

.field private mServAddr:Ljava/lang/String;

.field private mState:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .parameter "servAddr"

    .prologue
    const/4 v0, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput v0, p0, Lcom/asus/dmlib/syncml/dm/DMSessionState;->mState:I

    .line 38
    iput v0, p0, Lcom/asus/dmlib/syncml/dm/DMSessionState;->mNextMsgID:I

    .line 39
    const/4 v0, 0x3

    iput v0, p0, Lcom/asus/dmlib/syncml/dm/DMSessionState;->mNextCommandID:I

    .line 42
    const-string v0, "application/vnd.syncml.dm+xml"

    iput-object v0, p0, Lcom/asus/dmlib/syncml/dm/DMSessionState;->mContentType:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/asus/dmlib/syncml/dm/DMSessionState;->mIDsToRefs:Ljava/util/HashMap;

    .line 44
    iput v1, p0, Lcom/asus/dmlib/syncml/dm/DMSessionState;->mLargeObjectOffset:I

    .line 45
    iput-object v2, p0, Lcom/asus/dmlib/syncml/dm/DMSessionState;->mLargeObjectPackage:Lcom/asus/dmlib/syncml/message/container/SyncML;

    .line 46
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/asus/dmlib/syncml/dm/DMSessionState;->mOutputMessageBuf:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 47
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/asus/dmlib/syncml/dm/DMSessionState;->mInputMessageBuf:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 48
    const-string v0, "utf-8"

    iput-object v0, p0, Lcom/asus/dmlib/syncml/dm/DMSessionState;->mCharset:Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/asus/dmlib/syncml/dm/DMSessionState;->mServAddr:Ljava/lang/String;

    .line 50
    iput-object v2, p0, Lcom/asus/dmlib/syncml/dm/DMSessionState;->mLastSendPackage:Lcom/asus/dmlib/syncml/message/container/SyncML;

    .line 51
    iput v1, p0, Lcom/asus/dmlib/syncml/dm/DMSessionState;->mLargeObjectOffset:I

    .line 52
    iput v1, p0, Lcom/asus/dmlib/syncml/dm/DMSessionState;->mChallengeCount:I

    .line 53
    iput-object v2, p0, Lcom/asus/dmlib/syncml/dm/DMSessionState;->mBearerHeader:Ljava/util/Map;

    .line 54
    iput v3, p0, Lcom/asus/dmlib/syncml/dm/DMSessionState;->mMaxMessageSize:I

    .line 55
    iput v3, p0, Lcom/asus/dmlib/syncml/dm/DMSessionState;->mMaxObjSize:I

    .line 56
    return-void
.end method


# virtual methods
.method public getChallengeCount()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/asus/dmlib/syncml/dm/DMSessionState;->mChallengeCount:I

    return v0
.end method

.method public getCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/asus/dmlib/syncml/dm/DMSessionState;->mCharset:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/asus/dmlib/syncml/dm/DMSessionState;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getDMProtocolVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/asus/dmlib/syncml/dm/DMSessionState;->mDmProtocolVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getInputMessageBuf()Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/asus/dmlib/syncml/message/container/SyncML;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lcom/asus/dmlib/syncml/dm/DMSessionState;->mInputMessageBuf:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method protected getLargeObjectOffset()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/asus/dmlib/syncml/dm/DMSessionState;->mLargeObjectOffset:I

    return v0
.end method

.method public getLargeObjectPackage()Lcom/asus/dmlib/syncml/message/container/SyncML;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/asus/dmlib/syncml/dm/DMSessionState;->mLargeObjectPackage:Lcom/asus/dmlib/syncml/message/container/SyncML;

    return-object v0
.end method

.method public getLastSendMsg()Lcom/asus/dmlib/syncml/message/container/SyncML;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/asus/dmlib/syncml/dm/DMSessionState;->mLastSendPackage:Lcom/asus/dmlib/syncml/message/container/SyncML;

    return-object v0
.end method

.method public getMaxMessageSize()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/asus/dmlib/syncml/dm/DMSessionState;->mMaxMessageSize:I

    return v0
.end method

.method public getMaxObjSize()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/asus/dmlib/syncml/dm/DMSessionState;->mMaxObjSize:I

    return v0
.end method

.method public getNextCommandID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 127
    iget v0, p0, Lcom/asus/dmlib/syncml/dm/DMSessionState;->mNextCommandID:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/asus/dmlib/syncml/dm/DMSessionState;->mNextCommandID:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNextMsgID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/asus/dmlib/syncml/dm/DMSessionState;->mNextMsgID:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/asus/dmlib/syncml/dm/DMSessionState;->mNextMsgID:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOutputMessageBuf()Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/asus/dmlib/syncml/message/container/SyncML;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lcom/asus/dmlib/syncml/dm/DMSessionState;->mOutputMessageBuf:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method public getSendCredCount()I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lcom/asus/dmlib/syncml/dm/DMSessionState;->mSendCredCount:I

    return v0
.end method

.method public getServerAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/asus/dmlib/syncml/dm/DMSessionState;->mServAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/asus/dmlib/syncml/dm/DMSessionState;->mState:I

    return v0
.end method

.method public increaseChallengeCount()V
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/asus/dmlib/syncml/dm/DMSessionState;->mChallengeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/asus/dmlib/syncml/dm/DMSessionState;->mChallengeCount:I

    .line 108
    return-void
.end method

.method public increaseSendCredCount()V
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lcom/asus/dmlib/syncml/dm/DMSessionState;->mSendCredCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/asus/dmlib/syncml/dm/DMSessionState;->mSendCredCount:I

    .line 209
    return-void
.end method

.method protected resetCommandID()V
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x1

    iput v0, p0, Lcom/asus/dmlib/syncml/dm/DMSessionState;->mNextCommandID:I

    .line 136
    return-void
.end method

.method public setChallengeCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 115
    iput p1, p0, Lcom/asus/dmlib/syncml/dm/DMSessionState;->mChallengeCount:I

    .line 116
    return-void
.end method

.method public setCharset(Ljava/lang/String;)V
    .locals 0
    .parameter "pCharset"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/asus/dmlib/syncml/dm/DMSessionState;->mCharset:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0
    .parameter "pAcceptType"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/asus/dmlib/syncml/dm/DMSessionState;->mContentType:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setDMProtocolVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "pDmProtocolVersion"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/asus/dmlib/syncml/dm/DMSessionState;->mDmProtocolVersion:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setInputMessageBuf(Ljava/util/concurrent/LinkedBlockingQueue;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/asus/dmlib/syncml/message/container/SyncML;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 172
    .local p1, mInputMessageBuf:Ljava/util/concurrent/LinkedBlockingQueue;,"Ljava/util/concurrent/LinkedBlockingQueue<Lcom/asus/dmlib/syncml/message/container/SyncML;>;"
    iput-object p1, p0, Lcom/asus/dmlib/syncml/dm/DMSessionState;->mInputMessageBuf:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 173
    return-void
.end method

.method protected setLargeObjectOffset(I)V
    .locals 0
    .parameter "pOffset"

    .prologue
    .line 192
    iput p1, p0, Lcom/asus/dmlib/syncml/dm/DMSessionState;->mLargeObjectOffset:I

    .line 193
    return-void
.end method

.method public setLargeObjectPackage(Lcom/asus/dmlib/syncml/message/container/SyncML;)V
    .locals 0
    .parameter "pLargeObjectPackage"

    .prologue
    .line 188
    iput-object p1, p0, Lcom/asus/dmlib/syncml/dm/DMSessionState;->mLargeObjectPackage:Lcom/asus/dmlib/syncml/message/container/SyncML;

    .line 189
    return-void
.end method

.method public setLastSendMsg(Lcom/asus/dmlib/syncml/message/container/SyncML;)V
    .locals 0
    .parameter "pLastSendMsg"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/asus/dmlib/syncml/dm/DMSessionState;->mLastSendPackage:Lcom/asus/dmlib/syncml/message/container/SyncML;

    .line 152
    return-void
.end method

.method public setMaxMessageSize(I)V
    .locals 0
    .parameter "mMaxMessageSize"

    .prologue
    .line 95
    .line 96
    return-void
.end method

.method public setMaxObjSize(I)V
    .locals 0
    .parameter "mMaxObjSize"

    .prologue
    .line 103
    .line 104
    return-void
.end method

.method public setNextCommandID(I)V
    .locals 0
    .parameter "mNextCommandID"

    .prologue
    .line 131
    .line 132
    return-void
.end method

.method public setNextMsgID(I)V
    .locals 0
    .parameter "mNextMsgID"

    .prologue
    .line 123
    .line 124
    return-void
.end method

.method public setOutputMessageBuf(Ljava/util/concurrent/LinkedBlockingQueue;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/asus/dmlib/syncml/message/container/SyncML;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 180
    .local p1, pOutputMessageBuf:Ljava/util/concurrent/LinkedBlockingQueue;,"Ljava/util/concurrent/LinkedBlockingQueue<Lcom/asus/dmlib/syncml/message/container/SyncML;>;"
    iput-object p1, p0, Lcom/asus/dmlib/syncml/dm/DMSessionState;->mOutputMessageBuf:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 181
    return-void
.end method

.method public setSendCredCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 204
    iput p1, p0, Lcom/asus/dmlib/syncml/dm/DMSessionState;->mSendCredCount:I

    .line 205
    return-void
.end method

.method public setServerAddr(Ljava/lang/String;)V
    .locals 0
    .parameter "servAddr"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/asus/dmlib/syncml/dm/DMSessionState;->mServAddr:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setState(I)V
    .locals 3
    .parameter "pState"

    .prologue
    .line 159
    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-le p1, v0, :cond_1

    .line 160
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state for DMSessionState.setState("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_1
    iput p1, p0, Lcom/asus/dmlib/syncml/dm/DMSessionState;->mState:I

    .line 165
    return-void
.end method
