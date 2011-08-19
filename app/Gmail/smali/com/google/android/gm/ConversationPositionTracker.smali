.class public Lcom/google/android/gm/ConversationPositionTracker;
.super Ljava/lang/Object;
.source "ConversationPositionTracker.java"


# instance fields
.field private mConversationId:J

.field private mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

.field private mPosition:I

.field private mPositionIsValid:Z


# direct methods
.method public constructor <init>(JI)V
    .locals 1
    .parameter "initialConversationId"
    .parameter "initialPosition"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-wide p1, p0, Lcom/google/android/gm/ConversationPositionTracker;->mConversationId:J

    .line 27
    iput p3, p0, Lcom/google/android/gm/ConversationPositionTracker;->mPosition:I

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/ConversationPositionTracker;->mPositionIsValid:Z

    .line 31
    return-void
.end method

.method private isDataLoaded()Z
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/gm/ConversationPositionTracker;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/ConversationPositionTracker;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getConversationInfo()Lcom/google/android/gm/ConversationInfo;
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/gm/ConversationPositionTracker;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gm/ConversationPositionTracker;->mPositionIsValid:Z

    if-nez v0, :cond_1

    .line 95
    :cond_0
    const/4 v0, 0x0

    .line 99
    :goto_0
    return-object v0

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/ConversationPositionTracker;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    iget v1, p0, Lcom/google/android/gm/ConversationPositionTracker;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->moveTo(I)Z

    .line 99
    iget-object v0, p0, Lcom/google/android/gm/ConversationPositionTracker;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-static {v0}, Lcom/google/android/gm/ConversationInfo;->forCursor(Lcom/google/android/gm/provider/Gmail$ConversationCursor;)Lcom/google/android/gm/ConversationInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/google/android/gm/ConversationPositionTracker;->mPosition:I

    return v0
.end method

.method public hasNewer()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 56
    iget-boolean v0, p0, Lcom/google/android/gm/ConversationPositionTracker;->mPositionIsValid:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gm/ConversationPositionTracker;->isDataLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/ConversationPositionTracker;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    iget v1, p0, Lcom/google/android/gm/ConversationPositionTracker;->mPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->moveTo(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOlder()Z
    .locals 2

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/google/android/gm/ConversationPositionTracker;->mPositionIsValid:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gm/ConversationPositionTracker;->isDataLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/ConversationPositionTracker;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    iget v1, p0, Lcom/google/android/gm/ConversationPositionTracker;->mPosition:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->moveTo(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/google/android/gm/ConversationPositionTracker;->mPositionIsValid:Z

    return v0
.end method

.method public newer()Lcom/google/android/gm/ConversationInfo;
    .locals 3

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/google/android/gm/ConversationPositionTracker;->hasNewer()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    const/4 v0, 0x0

    .line 73
    :goto_0
    return-object v0

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/ConversationPositionTracker;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    iget v1, p0, Lcom/google/android/gm/ConversationPositionTracker;->mPosition:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gm/ConversationPositionTracker;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->moveTo(I)Z

    .line 72
    iget-object v0, p0, Lcom/google/android/gm/ConversationPositionTracker;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getConversationId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gm/ConversationPositionTracker;->mConversationId:J

    .line 73
    invoke-virtual {p0}, Lcom/google/android/gm/ConversationPositionTracker;->getConversationInfo()Lcom/google/android/gm/ConversationInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public older()Lcom/google/android/gm/ConversationInfo;
    .locals 2

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/google/android/gm/ConversationPositionTracker;->hasOlder()Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    const/4 v0, 0x0

    .line 49
    :goto_0
    return-object v0

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/ConversationPositionTracker;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    iget v1, p0, Lcom/google/android/gm/ConversationPositionTracker;->mPosition:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gm/ConversationPositionTracker;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->moveTo(I)Z

    .line 48
    iget-object v0, p0, Lcom/google/android/gm/ConversationPositionTracker;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getConversationId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gm/ConversationPositionTracker;->mConversationId:J

    .line 49
    invoke-virtual {p0}, Lcom/google/android/gm/ConversationPositionTracker;->getConversationInfo()Lcom/google/android/gm/ConversationInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public onListDataChanged(Lcom/google/android/gm/provider/Gmail$ConversationCursor;)Z
    .locals 9
    .parameter "data"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 112
    iput-object p1, p0, Lcom/google/android/gm/ConversationPositionTracker;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    .line 113
    invoke-direct {p0}, Lcom/google/android/gm/ConversationPositionTracker;->isDataLoaded()Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v7

    .line 153
    :goto_0
    return v3

    .line 118
    :cond_0
    const/4 v0, 0x0

    .line 119
    .local v0, conversationPosition:I
    const/4 v1, 0x0

    .line 121
    .local v1, foundConversation:Z
    :goto_1
    iget-object v3, p0, Lcom/google/android/gm/ConversationPositionTracker;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-virtual {v3, v0}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->moveTo(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 122
    iget-object v3, p0, Lcom/google/android/gm/ConversationPositionTracker;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-virtual {v3}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getConversationId()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/android/gm/ConversationPositionTracker;->mConversationId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 124
    iput v0, p0, Lcom/google/android/gm/ConversationPositionTracker;->mPosition:I

    .line 125
    iput-boolean v8, p0, Lcom/google/android/gm/ConversationPositionTracker;->mPositionIsValid:Z

    .line 130
    iget-object v3, p0, Lcom/google/android/gm/ConversationPositionTracker;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->moveTo(I)Z

    move v3, v8

    .line 131
    goto :goto_0

    .line 133
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 139
    :cond_2
    iget-object v3, p0, Lcom/google/android/gm/ConversationPositionTracker;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-virtual {v3}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->count()I

    move-result v2

    .line 140
    .local v2, listSize:I
    iget v3, p0, Lcom/google/android/gm/ConversationPositionTracker;->mPosition:I

    if-lt v3, v2, :cond_3

    .line 141
    if-nez v2, :cond_5

    .line 142
    iput-boolean v7, p0, Lcom/google/android/gm/ConversationPositionTracker;->mPositionIsValid:Z

    .line 149
    :cond_3
    :goto_2
    iget-boolean v3, p0, Lcom/google/android/gm/ConversationPositionTracker;->mPositionIsValid:Z

    if-eqz v3, :cond_4

    .line 150
    iget-object v3, p0, Lcom/google/android/gm/ConversationPositionTracker;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    iget v4, p0, Lcom/google/android/gm/ConversationPositionTracker;->mPosition:I

    invoke-virtual {v3, v4}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->moveTo(I)Z

    .line 151
    iget-object v3, p0, Lcom/google/android/gm/ConversationPositionTracker;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-virtual {v3}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getConversationId()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/gm/ConversationPositionTracker;->mConversationId:J

    :cond_4
    move v3, v7

    .line 153
    goto :goto_0

    .line 144
    :cond_5
    iget-object v3, p0, Lcom/google/android/gm/ConversationPositionTracker;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-virtual {v3}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->count()I

    move-result v3

    sub-int/2addr v3, v8

    iput v3, p0, Lcom/google/android/gm/ConversationPositionTracker;->mPosition:I

    goto :goto_2
.end method
