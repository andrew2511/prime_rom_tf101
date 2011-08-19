.class public Lcom/google/android/music/store/MutableMatrixCursor;
.super Landroid/database/AbstractCursor;
.source "MutableMatrixCursor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/store/MutableMatrixCursor$1;,
        Lcom/google/android/music/store/MutableMatrixCursor$RowBuilder;,
        Lcom/google/android/music/store/MutableMatrixCursor$TransactionData;
    }
.end annotation


# instance fields
.field protected final mColumnCount:I

.field protected final mColumnNames:[Ljava/lang/String;

.field private mCurrentTransaction:Lcom/google/android/music/store/MutableMatrixCursor$TransactionData;

.field private mData:[Ljava/lang/Object;

.field private final mInitialCapactiy:I

.field private mRowCount:I


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 1
    .parameter "columnNames"

    .prologue
    .line 46
    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Lcom/google/android/music/store/MutableMatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 47
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;I)V
    .locals 1
    .parameter "columnNames"
    .parameter "initialCapacity"

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/store/MutableMatrixCursor;->mData:[Ljava/lang/Object;

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/music/store/MutableMatrixCursor;->mRowCount:I

    .line 30
    iput-object p1, p0, Lcom/google/android/music/store/MutableMatrixCursor;->mColumnNames:[Ljava/lang/String;

    .line 31
    array-length v0, p1

    iput v0, p0, Lcom/google/android/music/store/MutableMatrixCursor;->mColumnCount:I

    .line 33
    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    .line 34
    const/4 p2, 0x1

    .line 36
    :cond_0
    iput p2, p0, Lcom/google/android/music/store/MutableMatrixCursor;->mInitialCapactiy:I

    .line 37
    return-void
.end method

.method private declared-synchronized get(I)Ljava/lang/Object;
    .locals 3
    .parameter "column"

    .prologue
    .line 53
    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    iget v0, p0, Lcom/google/android/music/store/MutableMatrixCursor;->mColumnCount:I

    if-lt p1, v0, :cond_1

    .line 54
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

    iget v2, p0, Lcom/google/android/music/store/MutableMatrixCursor;->mColumnCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 57
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/google/android/music/store/MutableMatrixCursor;->mPos:I

    if-gez v0, :cond_2

    .line 58
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    const-string v1, "Before first row."

    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_2
    iget v0, p0, Lcom/google/android/music/store/MutableMatrixCursor;->mPos:I

    iget v1, p0, Lcom/google/android/music/store/MutableMatrixCursor;->mRowCount:I

    if-lt v0, v1, :cond_3

    .line 61
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    const-string v1, "After last row."

    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_3
    iget-object v0, p0, Lcom/google/android/music/store/MutableMatrixCursor;->mData:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/music/store/MutableMatrixCursor;->mPos:I

    iget v2, p0, Lcom/google/android/music/store/MutableMatrixCursor;->mColumnCount:I

    mul-int/2addr v1, v2

    add-int/2addr v1, p1

    aget-object v0, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method


# virtual methods
.method public addRow([Ljava/lang/Object;)V
    .locals 2
    .parameter "columnValues"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/music/store/MutableMatrixCursor;->mCurrentTransaction:Lcom/google/android/music/store/MutableMatrixCursor$TransactionData;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not in a transaction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/store/MutableMatrixCursor;->mCurrentTransaction:Lcom/google/android/music/store/MutableMatrixCursor$TransactionData;

    invoke-virtual {v0, p1}, Lcom/google/android/music/store/MutableMatrixCursor$TransactionData;->addRow([Ljava/lang/Object;)V

    .line 94
    return-void
.end method

.method public declared-synchronized beginTransaction(Z)V
    .locals 5
    .parameter "startFresh"

    .prologue
    const/4 v3, 0x0

    .line 215
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/music/store/MutableMatrixCursor;->mCurrentTransaction:Lcom/google/android/music/store/MutableMatrixCursor$TransactionData;

    if-eqz v0, :cond_0

    .line 216
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not have multiple transactions open on a MutableMatrixCursor at once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 219
    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/android/music/store/MutableMatrixCursor$TransactionData;

    iget v1, p0, Lcom/google/android/music/store/MutableMatrixCursor;->mColumnCount:I

    iget v2, p0, Lcom/google/android/music/store/MutableMatrixCursor;->mInitialCapactiy:I

    if-eqz p1, :cond_1

    :goto_0
    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/music/store/MutableMatrixCursor$TransactionData;-><init>(II[Ljava/lang/Object;Lcom/google/android/music/store/MutableMatrixCursor$1;)V

    iput-object v0, p0, Lcom/google/android/music/store/MutableMatrixCursor;->mCurrentTransaction:Lcom/google/android/music/store/MutableMatrixCursor$TransactionData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    monitor-exit p0

    return-void

    .line 219
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/google/android/music/store/MutableMatrixCursor;->mData:[Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized endTrancation(Z)V
    .locals 2
    .parameter "success"

    .prologue
    .line 224
    monitor-enter p0

    if-eqz p1, :cond_1

    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/google/android/music/store/MutableMatrixCursor;->mCurrentTransaction:Lcom/google/android/music/store/MutableMatrixCursor$TransactionData;

    if-nez v0, :cond_0

    .line 226
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No transaction to end"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 228
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/music/store/MutableMatrixCursor;->mCurrentTransaction:Lcom/google/android/music/store/MutableMatrixCursor$TransactionData;

    invoke-virtual {v0}, Lcom/google/android/music/store/MutableMatrixCursor$TransactionData;->commit()V

    .line 229
    iget-object v0, p0, Lcom/google/android/music/store/MutableMatrixCursor;->mCurrentTransaction:Lcom/google/android/music/store/MutableMatrixCursor$TransactionData;

    invoke-static {v0}, Lcom/google/android/music/store/MutableMatrixCursor$TransactionData;->access$200(Lcom/google/android/music/store/MutableMatrixCursor$TransactionData;)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/store/MutableMatrixCursor;->mRowCount:I

    .line 230
    iget-object v0, p0, Lcom/google/android/music/store/MutableMatrixCursor;->mCurrentTransaction:Lcom/google/android/music/store/MutableMatrixCursor$TransactionData;

    invoke-static {v0}, Lcom/google/android/music/store/MutableMatrixCursor$TransactionData;->access$000(Lcom/google/android/music/store/MutableMatrixCursor$TransactionData;)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/MutableMatrixCursor;->mData:[Ljava/lang/Object;

    .line 232
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/store/MutableMatrixCursor;->mCurrentTransaction:Lcom/google/android/music/store/MutableMatrixCursor$TransactionData;

    .line 234
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/music/store/MutableMatrixCursor;->onChange(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
    monitor-exit p0

    return-void
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/google/android/music/store/MutableMatrixCursor;->mColumnNames:[Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getCount()I
    .locals 1

    .prologue
    .line 241
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/music/store/MutableMatrixCursor;->mRowCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDouble(I)D
    .locals 3
    .parameter "column"

    .prologue
    .line 290
    invoke-direct {p0, p1}, Lcom/google/android/music/store/MutableMatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 291
    .local v0, value:Ljava/lang/Object;
    if-nez v0, :cond_0

    const-wide/16 v1, 0x0

    .line 293
    .end local v0           #value:Ljava/lang/Object;
    :goto_0
    return-wide v1

    .line 292
    .restart local v0       #value:Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Number;

    .end local v0           #value:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    goto :goto_0

    .line 293
    .restart local v0       #value:Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    goto :goto_0
.end method

.method public getFloat(I)F
    .locals 2
    .parameter "column"

    .prologue
    .line 282
    invoke-direct {p0, p1}, Lcom/google/android/music/store/MutableMatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 283
    .local v0, value:Ljava/lang/Object;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 285
    .end local v0           #value:Ljava/lang/Object;
    :goto_0
    return v1

    .line 284
    .restart local v0       #value:Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Number;

    .end local v0           #value:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v1

    goto :goto_0

    .line 285
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
    .line 266
    invoke-direct {p0, p1}, Lcom/google/android/music/store/MutableMatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 267
    .local v0, value:Ljava/lang/Object;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 269
    .end local v0           #value:Ljava/lang/Object;
    :goto_0
    return v1

    .line 268
    .restart local v0       #value:Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Number;

    .end local v0           #value:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    goto :goto_0

    .line 269
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
    .line 274
    invoke-direct {p0, p1}, Lcom/google/android/music/store/MutableMatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 275
    .local v0, value:Ljava/lang/Object;
    if-nez v0, :cond_0

    const-wide/16 v1, 0x0

    .line 277
    .end local v0           #value:Ljava/lang/Object;
    :goto_0
    return-wide v1

    .line 276
    .restart local v0       #value:Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Number;

    .end local v0           #value:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    goto :goto_0

    .line 277
    .restart local v0       #value:Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_0
.end method

.method public getShort(I)S
    .locals 2
    .parameter "column"

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lcom/google/android/music/store/MutableMatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 259
    .local v0, value:Ljava/lang/Object;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 261
    .end local v0           #value:Ljava/lang/Object;
    :goto_0
    return v1

    .line 260
    .restart local v0       #value:Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Number;

    .end local v0           #value:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v1

    goto :goto_0

    .line 261
    .restart local v0       #value:Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .parameter "column"

    .prologue
    .line 251
    invoke-direct {p0, p1}, Lcom/google/android/music/store/MutableMatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 252
    .local v0, value:Ljava/lang/Object;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 253
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public isNull(I)Z
    .locals 1
    .parameter "column"

    .prologue
    .line 298
    invoke-direct {p0, p1}, Lcom/google/android/music/store/MutableMatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newRow()Lcom/google/android/music/store/MutableMatrixCursor$RowBuilder;
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/music/store/MutableMatrixCursor;->mCurrentTransaction:Lcom/google/android/music/store/MutableMatrixCursor$TransactionData;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not in a transaction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/store/MutableMatrixCursor;->mCurrentTransaction:Lcom/google/android/music/store/MutableMatrixCursor$TransactionData;

    invoke-virtual {v0}, Lcom/google/android/music/store/MutableMatrixCursor$TransactionData;->newRow()Lcom/google/android/music/store/MutableMatrixCursor$RowBuilder;

    move-result-object v0

    return-object v0
.end method
