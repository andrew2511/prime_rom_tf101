.class public Lcom/asus/reader/util/LinkedCursor;
.super Landroid/database/AbstractCursor;
.source "LinkedCursor.java"


# instance fields
.field private final columnCount:I

.field private final columnNames:[Ljava/lang/String;

.field private mData:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mEndId:I

.field private mMaxLink:I

.field private mOffset:I

.field private mRemovedAmount:I

.field private mStartId:I


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 2
    .parameter "columnNames"

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 15
    iput v1, p0, Lcom/asus/reader/util/LinkedCursor;->mOffset:I

    .line 16
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/asus/reader/util/LinkedCursor;->mMaxLink:I

    .line 20
    const/16 v0, 0x14

    iput v0, p0, Lcom/asus/reader/util/LinkedCursor;->mRemovedAmount:I

    .line 24
    iput v1, p0, Lcom/asus/reader/util/LinkedCursor;->mStartId:I

    .line 25
    iput v1, p0, Lcom/asus/reader/util/LinkedCursor;->mEndId:I

    .line 28
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/asus/reader/util/LinkedCursor;->mData:Ljava/util/LinkedList;

    .line 29
    iput-object p1, p0, Lcom/asus/reader/util/LinkedCursor;->columnNames:[Ljava/lang/String;

    .line 30
    array-length v0, p1

    iput v0, p0, Lcom/asus/reader/util/LinkedCursor;->columnCount:I

    .line 31
    return-void
.end method

.method private get(I)Ljava/lang/Object;
    .locals 3
    .parameter "column"

    .prologue
    .line 37
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/asus/reader/util/LinkedCursor;->columnCount:I

    if-lt p1, v0, :cond_1

    .line 38
    :cond_0
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested column: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", # of columns: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/asus/reader/util/LinkedCursor;->columnCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_1
    iget v0, p0, Lcom/asus/reader/util/LinkedCursor;->mPos:I

    if-gez v0, :cond_2

    .line 42
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    const-string v1, "Before first row."

    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_2
    iget v0, p0, Lcom/asus/reader/util/LinkedCursor;->mPos:I

    iget-object v1, p0, Lcom/asus/reader/util/LinkedCursor;->mData:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    iget v2, p0, Lcom/asus/reader/util/LinkedCursor;->mOffset:I

    add-int/2addr v1, v2

    if-lt v0, v1, :cond_3

    .line 45
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    const-string v1, "After last row."

    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_3
    iget v0, p0, Lcom/asus/reader/util/LinkedCursor;->mPos:I

    iget v1, p0, Lcom/asus/reader/util/LinkedCursor;->mOffset:I

    if-ge v0, v1, :cond_4

    .line 48
    const-string v0, "linked"

    const-string v1, "get null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const/4 v0, 0x0

    .line 51
    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_4
    iget-object v0, p0, Lcom/asus/reader/util/LinkedCursor;->mData:Ljava/util/LinkedList;

    iget v1, p0, Lcom/asus/reader/util/LinkedCursor;->mPos:I

    iget v2, p0, Lcom/asus/reader/util/LinkedCursor;->mOffset:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    aget-object v0, p0, p1

    goto :goto_0
.end method


# virtual methods
.method public addRow([Ljava/lang/Object;)V
    .locals 4
    .parameter "columnValues"

    .prologue
    .line 69
    array-length v1, p1

    iget v2, p0, Lcom/asus/reader/util/LinkedCursor;->columnCount:I

    if-eq v1, v2, :cond_0

    .line 70
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "columnNames.length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/asus/reader/util/LinkedCursor;->columnCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", columnValues.length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 74
    :cond_0
    iget-object v2, p0, Lcom/asus/reader/util/LinkedCursor;->mData:Ljava/util/LinkedList;

    monitor-enter v2

    .line 75
    :try_start_0
    iget-object v1, p0, Lcom/asus/reader/util/LinkedCursor;->mData:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_1
    iget-object v1, p0, Lcom/asus/reader/util/LinkedCursor;->mData:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    iget v3, p0, Lcom/asus/reader/util/LinkedCursor;->mMaxLink:I

    if-le v1, v3, :cond_2

    .line 77
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/asus/reader/util/LinkedCursor;->mRemovedAmount:I

    if-ge v0, v1, :cond_1

    .line 78
    iget-object v1, p0, Lcom/asus/reader/util/LinkedCursor;->mData:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 79
    iget v1, p0, Lcom/asus/reader/util/LinkedCursor;->mOffset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/asus/reader/util/LinkedCursor;->mOffset:I

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    .end local v0           #i:I
    :cond_2
    iget-object v1, p0, Lcom/asus/reader/util/LinkedCursor;->mData:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iput v1, p0, Lcom/asus/reader/util/LinkedCursor;->mStartId:I

    .line 83
    iget-object v1, p0, Lcom/asus/reader/util/LinkedCursor;->mData:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iput v1, p0, Lcom/asus/reader/util/LinkedCursor;->mEndId:I

    .line 84
    monitor-exit v2

    .line 86
    return-void

    .line 84
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public close()V
    .locals 1

    .prologue
    .line 232
    invoke-super {p0}, Landroid/database/AbstractCursor;->close()V

    .line 233
    iget-object v0, p0, Lcom/asus/reader/util/LinkedCursor;->mData:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 234
    const/4 v0, 0x0

    iput v0, p0, Lcom/asus/reader/util/LinkedCursor;->mOffset:I

    .line 235
    return-void
.end method

.method public concatToEnd(Lcom/asus/reader/util/LinkedCursor;)V
    .locals 5
    .parameter "tempcursor"

    .prologue
    .line 89
    iget-object v3, p0, Lcom/asus/reader/util/LinkedCursor;->mData:Ljava/util/LinkedList;

    monitor-enter v3

    .line 90
    :try_start_0
    invoke-virtual {p1}, Lcom/asus/reader/util/LinkedCursor;->getRealCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 91
    monitor-exit v3

    .line 106
    :goto_0
    return-void

    .line 92
    :cond_0
    invoke-virtual {p1}, Lcom/asus/reader/util/LinkedCursor;->getData()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 93
    .local v1, startid:I
    iget v2, p0, Lcom/asus/reader/util/LinkedCursor;->mEndId:I

    add-int/lit8 v2, v2, 0x1

    if-eq v1, v2, :cond_1

    .line 94
    monitor-exit v3

    goto :goto_0

    .line 105
    .end local v1           #startid:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 95
    .restart local v1       #startid:I
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/asus/reader/util/LinkedCursor;->mData:Ljava/util/LinkedList;

    invoke-virtual {p1}, Lcom/asus/reader/util/LinkedCursor;->getData()Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 96
    :cond_2
    iget-object v2, p0, Lcom/asus/reader/util/LinkedCursor;->mData:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    iget v4, p0, Lcom/asus/reader/util/LinkedCursor;->mMaxLink:I

    if-le v2, v4, :cond_3

    .line 97
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v2, p0, Lcom/asus/reader/util/LinkedCursor;->mRemovedAmount:I

    if-ge v0, v2, :cond_2

    .line 98
    iget-object v2, p0, Lcom/asus/reader/util/LinkedCursor;->mData:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 99
    iget v2, p0, Lcom/asus/reader/util/LinkedCursor;->mOffset:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/asus/reader/util/LinkedCursor;->mOffset:I

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 102
    .end local v0           #i:I
    :cond_3
    iget-object v2, p0, Lcom/asus/reader/util/LinkedCursor;->mData:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    iput v2, p0, Lcom/asus/reader/util/LinkedCursor;->mStartId:I

    .line 103
    iget-object v2, p0, Lcom/asus/reader/util/LinkedCursor;->mData:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    iput v2, p0, Lcom/asus/reader/util/LinkedCursor;->mEndId:I

    .line 104
    invoke-virtual {p1}, Lcom/asus/reader/util/LinkedCursor;->close()V

    .line 105
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public concatToEndForce(Lcom/asus/reader/util/LinkedCursor;)V
    .locals 4
    .parameter "tempcursor"

    .prologue
    .line 109
    iget-object v1, p0, Lcom/asus/reader/util/LinkedCursor;->mData:Ljava/util/LinkedList;

    monitor-enter v1

    .line 110
    :try_start_0
    invoke-virtual {p1}, Lcom/asus/reader/util/LinkedCursor;->getRealCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 111
    monitor-exit v1

    .line 125
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v2, p0, Lcom/asus/reader/util/LinkedCursor;->mData:Ljava/util/LinkedList;

    invoke-virtual {p1}, Lcom/asus/reader/util/LinkedCursor;->getData()Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 113
    :cond_1
    iget-object v2, p0, Lcom/asus/reader/util/LinkedCursor;->mData:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    iget v3, p0, Lcom/asus/reader/util/LinkedCursor;->mMaxLink:I

    if-le v2, v3, :cond_2

    .line 114
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v2, p0, Lcom/asus/reader/util/LinkedCursor;->mRemovedAmount:I

    if-ge v0, v2, :cond_1

    .line 115
    iget-object v2, p0, Lcom/asus/reader/util/LinkedCursor;->mData:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 116
    iget v2, p0, Lcom/asus/reader/util/LinkedCursor;->mOffset:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/asus/reader/util/LinkedCursor;->mOffset:I

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 121
    .end local v0           #i:I
    :cond_2
    const/4 v2, -0x1

    iput v2, p0, Lcom/asus/reader/util/LinkedCursor;->mStartId:I

    .line 122
    const/4 v2, -0x1

    iput v2, p0, Lcom/asus/reader/util/LinkedCursor;->mEndId:I

    .line 123
    invoke-virtual {p1}, Lcom/asus/reader/util/LinkedCursor;->close()V

    .line 124
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public concatToFirst(Lcom/asus/reader/util/LinkedCursor;)I
    .locals 7
    .parameter "tempcursor"

    .prologue
    const/4 v5, -0x1

    const/4 v6, 0x0

    .line 128
    iget-object v3, p0, Lcom/asus/reader/util/LinkedCursor;->mData:Ljava/util/LinkedList;

    monitor-enter v3

    .line 129
    :try_start_0
    invoke-virtual {p1}, Lcom/asus/reader/util/LinkedCursor;->getRealCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 130
    monitor-exit v3

    move v2, v5

    .line 143
    :goto_0
    return v2

    .line 131
    :cond_0
    invoke-virtual {p1}, Lcom/asus/reader/util/LinkedCursor;->getData()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 132
    .local v0, endid:I
    iget v2, p0, Lcom/asus/reader/util/LinkedCursor;->mStartId:I

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    if-eq v0, v2, :cond_1

    .line 133
    monitor-exit v3

    move v2, v5

    goto :goto_0

    .line 134
    :cond_1
    invoke-virtual {p1}, Lcom/asus/reader/util/LinkedCursor;->getData()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v1

    .line 135
    .local v1, reservedPosition:I
    iget-object v2, p0, Lcom/asus/reader/util/LinkedCursor;->mData:Ljava/util/LinkedList;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/asus/reader/util/LinkedCursor;->getData()Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/LinkedList;->addAll(ILjava/util/Collection;)Z

    .line 136
    iget v2, p0, Lcom/asus/reader/util/LinkedCursor;->mOffset:I

    invoke-virtual {p1}, Lcom/asus/reader/util/LinkedCursor;->getData()Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    sub-int/2addr v2, v4

    if-gez v2, :cond_3

    move v2, v6

    :goto_1
    iput v2, p0, Lcom/asus/reader/util/LinkedCursor;->mOffset:I

    .line 137
    :goto_2
    iget-object v2, p0, Lcom/asus/reader/util/LinkedCursor;->mData:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    iget v4, p0, Lcom/asus/reader/util/LinkedCursor;->mMaxLink:I

    if-gt v2, v4, :cond_2

    iget-object v2, p0, Lcom/asus/reader/util/LinkedCursor;->mData:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    rem-int/lit8 v2, v2, 0x14

    if-eqz v2, :cond_4

    .line 138
    :cond_2
    iget-object v2, p0, Lcom/asus/reader/util/LinkedCursor;->mData:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_2

    .line 144
    .end local v0           #endid:I
    .end local v1           #reservedPosition:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 136
    .restart local v0       #endid:I
    .restart local v1       #reservedPosition:I
    :cond_3
    :try_start_1
    iget v2, p0, Lcom/asus/reader/util/LinkedCursor;->mOffset:I

    invoke-virtual {p1}, Lcom/asus/reader/util/LinkedCursor;->getData()Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    sub-int/2addr v2, v4

    goto :goto_1

    .line 140
    :cond_4
    iget-object v2, p0, Lcom/asus/reader/util/LinkedCursor;->mData:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    iput v2, p0, Lcom/asus/reader/util/LinkedCursor;->mStartId:I

    .line 141
    iget-object v2, p0, Lcom/asus/reader/util/LinkedCursor;->mData:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    iput v2, p0, Lcom/asus/reader/util/LinkedCursor;->mEndId:I

    .line 142
    invoke-virtual {p1}, Lcom/asus/reader/util/LinkedCursor;->close()V

    .line 143
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v1

    goto/16 :goto_0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/asus/reader/util/LinkedCursor;->columnNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 157
    iget-object v0, p0, Lcom/asus/reader/util/LinkedCursor;->mData:Ljava/util/LinkedList;

    monitor-enter v0

    .line 158
    :try_start_0
    iget-object v1, p0, Lcom/asus/reader/util/LinkedCursor;->mData:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    iget v2, p0, Lcom/asus/reader/util/LinkedCursor;->mOffset:I

    add-int/2addr v1, v2

    monitor-exit v0

    return v1

    .line 159
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getData()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/asus/reader/util/LinkedCursor;->mData:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getDouble(I)D
    .locals 3
    .parameter "column"

    .prologue
    .line 214
    invoke-direct {p0, p1}, Lcom/asus/reader/util/LinkedCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 215
    .local v0, value:Ljava/lang/Object;
    if-nez v0, :cond_0

    const-wide/16 v1, 0x0

    .line 217
    .end local v0           #value:Ljava/lang/Object;
    :goto_0
    return-wide v1

    .line 216
    .restart local v0       #value:Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Number;

    .end local v0           #value:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    goto :goto_0

    .line 217
    .restart local v0       #value:Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    goto :goto_0
.end method

.method public getEndId()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/asus/reader/util/LinkedCursor;->mEndId:I

    return v0
.end method

.method public getFloat(I)F
    .locals 2
    .parameter "column"

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/asus/reader/util/LinkedCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 207
    .local v0, value:Ljava/lang/Object;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 209
    .end local v0           #value:Ljava/lang/Object;
    :goto_0
    return v1

    .line 208
    .restart local v0       #value:Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Number;

    .end local v0           #value:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v1

    goto :goto_0

    .line 209
    .restart local v0       #value:Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    goto :goto_0
.end method

.method public getInt(I)I
    .locals 2
    .parameter "column"

    .prologue
    .line 190
    invoke-direct {p0, p1}, Lcom/asus/reader/util/LinkedCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 191
    .local v0, value:Ljava/lang/Object;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 193
    .end local v0           #value:Ljava/lang/Object;
    :goto_0
    return v1

    .line 192
    .restart local v0       #value:Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Number;

    .end local v0           #value:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    goto :goto_0

    .line 193
    .restart local v0       #value:Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public getLong(I)J
    .locals 3
    .parameter "column"

    .prologue
    .line 198
    invoke-direct {p0, p1}, Lcom/asus/reader/util/LinkedCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 199
    .local v0, value:Ljava/lang/Object;
    if-nez v0, :cond_0

    const-wide/16 v1, 0x0

    .line 201
    .end local v0           #value:Ljava/lang/Object;
    :goto_0
    return-wide v1

    .line 200
    .restart local v0       #value:Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Number;

    .end local v0           #value:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    goto :goto_0

    .line 201
    .restart local v0       #value:Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_0
.end method

.method public getOffset()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/asus/reader/util/LinkedCursor;->mOffset:I

    return v0
.end method

.method public getRealCount()I
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/asus/reader/util/LinkedCursor;->mData:Ljava/util/LinkedList;

    monitor-enter v0

    .line 164
    :try_start_0
    iget-object v1, p0, Lcom/asus/reader/util/LinkedCursor;->mData:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    monitor-exit v0

    return v1

    .line 165
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getShort(I)S
    .locals 2
    .parameter "column"

    .prologue
    .line 182
    invoke-direct {p0, p1}, Lcom/asus/reader/util/LinkedCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 183
    .local v0, value:Ljava/lang/Object;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 185
    .end local v0           #value:Ljava/lang/Object;
    :goto_0
    return v1

    .line 184
    .restart local v0       #value:Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Number;

    .end local v0           #value:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v1

    goto :goto_0

    .line 185
    .restart local v0       #value:Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    goto :goto_0
.end method

.method public getStartId()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/asus/reader/util/LinkedCursor;->mStartId:I

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .parameter "column"

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/asus/reader/util/LinkedCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 176
    .local v0, value:Ljava/lang/Object;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 177
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getType(I)I
    .locals 1
    .parameter "column"

    .prologue
    .line 222
    invoke-direct {p0, p1}, Lcom/asus/reader/util/LinkedCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/database/DatabaseUtils;->getTypeOfObject(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isNull(I)Z
    .locals 1
    .parameter "column"

    .prologue
    .line 227
    invoke-direct {p0, p1}, Lcom/asus/reader/util/LinkedCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetOffset()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/asus/reader/util/LinkedCursor;->mData:Ljava/util/LinkedList;

    monitor-enter v0

    .line 64
    const/4 v1, 0x0

    :try_start_0
    iput v1, p0, Lcom/asus/reader/util/LinkedCursor;->mOffset:I

    .line 65
    monitor-exit v0

    .line 66
    return-void

    .line 65
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
