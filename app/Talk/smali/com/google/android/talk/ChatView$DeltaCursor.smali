.class Lcom/google/android/talk/ChatView$DeltaCursor;
.super Ljava/lang/Object;
.source "ChatView.java"

# interfaces
.implements Landroid/database/Cursor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/ChatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeltaCursor"
.end annotation


# instance fields
.field private mColumnNames:[Ljava/lang/String;

.field private mCursor:Landroid/database/Cursor;

.field private mDateColumn:I

.field private mDeltaColumn:I

.field final synthetic this$0:Lcom/google/android/talk/ChatView;


# direct methods
.method constructor <init>(Lcom/google/android/talk/ChatView;Landroid/database/Cursor;)V
    .locals 6
    .parameter
    .parameter "cursor"

    .prologue
    const/4 v3, -0x1

    .line 2152
    iput-object p1, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->this$0:Lcom/google/android/talk/ChatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2149
    iput v3, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mDateColumn:I

    .line 2150
    iput v3, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mDeltaColumn:I

    .line 2153
    iput-object p2, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    .line 2155
    invoke-interface {p2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .line 2156
    .local v0, columnNames:[Ljava/lang/String;
    array-length v2, v0

    .line 2158
    .local v2, len:I
    add-int/lit8 v3, v2, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mColumnNames:[Ljava/lang/String;

    .line 2160
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 2161
    iget-object v3, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mColumnNames:[Ljava/lang/String;

    aget-object v4, v0, v1

    aput-object v4, v3, v1

    .line 2162
    iget-object v3, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mColumnNames:[Ljava/lang/String;

    aget-object v3, v3, v1

    const-string v4, "date"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2163
    iput v1, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mDateColumn:I

    .line 2160
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2167
    :cond_1
    iput v2, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mDeltaColumn:I

    .line 2168
    iget-object v3, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mColumnNames:[Ljava/lang/String;

    iget v4, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mDeltaColumn:I

    const-string v5, "delta"

    aput-object v5, v3, v4

    .line 2169
    return-void
.end method

.method private checkPosition()V
    .locals 3

    .prologue
    .line 2329
    iget-object v2, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    .line 2330
    .local v1, pos:I
    iget-object v2, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 2332
    .local v0, count:I
    const/4 v2, -0x1

    if-eq v2, v1, :cond_0

    if-ne v0, v1, :cond_1

    .line 2333
    :cond_0
    new-instance v2, Landroid/database/CursorIndexOutOfBoundsException;

    invoke-direct {v2, v1, v0}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(II)V

    throw v2

    .line 2335
    :cond_1
    return-void
.end method

.method private getDeltaValue()J
    .locals 7

    .prologue
    .line 2452
    iget-object v5, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    .line 2457
    .local v0, pos:I
    invoke-virtual {p0}, Lcom/google/android/talk/ChatView$DeltaCursor;->getCount()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-ne v0, v5, :cond_0

    .line 2458
    iget-object v5, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    iget v6, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mDateColumn:I

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 2459
    .local v1, t1:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 2467
    .local v3, t2:J
    :goto_0
    sub-long v5, v3, v1

    return-wide v5

    .line 2461
    .end local v1           #t1:J
    .end local v3           #t2:J
    :cond_0
    iget-object v5, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    add-int/lit8 v6, v0, 0x1

    invoke-interface {v5, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2462
    iget-object v5, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    iget v6, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mDateColumn:I

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 2463
    .restart local v3       #t2:J
    iget-object v5, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2464
    iget-object v5, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    iget v6, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mDateColumn:I

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .restart local v1       #t1:J
    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 2275
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2276
    return-void
.end method

.method public copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .locals 7
    .parameter "columnIndex"
    .parameter "buffer"

    .prologue
    const/4 v6, 0x0

    .line 2362
    invoke-direct {p0}, Lcom/google/android/talk/ChatView$DeltaCursor;->checkPosition()V

    .line 2364
    iget v5, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mDeltaColumn:I

    if-ne p1, v5, :cond_2

    .line 2365
    invoke-direct {p0}, Lcom/google/android/talk/ChatView$DeltaCursor;->getDeltaValue()J

    move-result-wide v3

    .line 2366
    .local v3, value:J
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 2367
    .local v2, strValue:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 2368
    .local v1, len:I
    iget-object v0, p2, Landroid/database/CharArrayBuffer;->data:[C

    .line 2369
    .local v0, data:[C
    if-eqz v0, :cond_0

    array-length v5, v0

    if-ge v5, v1, :cond_1

    .line 2370
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    iput-object v5, p2, Landroid/database/CharArrayBuffer;->data:[C

    .line 2374
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    iput v5, p2, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 2378
    .end local v0           #data:[C
    .end local v1           #len:I
    .end local v2           #strValue:Ljava/lang/String;
    .end local v3           #value:J
    :goto_1
    return-void

    .line 2372
    .restart local v0       #data:[C
    .restart local v1       #len:I
    .restart local v2       #strValue:Ljava/lang/String;
    .restart local v3       #value:J
    :cond_1
    invoke-virtual {v2, v6, v1, v0, v6}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_0

    .line 2376
    .end local v0           #data:[C
    .end local v1           #len:I
    .end local v2           #strValue:Ljava/lang/String;
    .end local v3           #value:J
    :cond_2
    iget-object v5, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, p1, p2}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    goto :goto_1
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 2265
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 2266
    return-void
.end method

.method public getBlob(I)[B
    .locals 1
    .parameter "column"

    .prologue
    .line 2339
    invoke-direct {p0}, Lcom/google/android/talk/ChatView$DeltaCursor;->checkPosition()V

    .line 2341
    iget v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mDeltaColumn:I

    if-ne p1, v0, :cond_0

    .line 2342
    const/4 v0, 0x0

    .line 2345
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    goto :goto_0
.end method

.method public getColumnCount()I
    .locals 1

    .prologue
    .line 2260
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 1
    .parameter "columnName"

    .prologue
    .line 2233
    const-string v0, "delta"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2234
    iget v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mDeltaColumn:I

    .line 2237
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 1
    .parameter "columnName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 2242
    const-string v0, "delta"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2243
    iget v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mDeltaColumn:I

    .line 2246
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 2251
    iget v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mDeltaColumn:I

    if-ne p1, v0, :cond_0

    .line 2252
    const-string v0, "delta"

    .line 2255
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2325
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mColumnNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 2173
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .locals 2
    .parameter "column"

    .prologue
    .line 2426
    invoke-direct {p0}, Lcom/google/android/talk/ChatView$DeltaCursor;->checkPosition()V

    .line 2428
    iget v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mDeltaColumn:I

    if-ne p1, v0, :cond_0

    .line 2429
    invoke-direct {p0}, Lcom/google/android/talk/ChatView$DeltaCursor;->getDeltaValue()J

    move-result-wide v0

    long-to-double v0, v0

    .line 2432
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    goto :goto_0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 2315
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getFloat(I)F
    .locals 2
    .parameter "column"

    .prologue
    .line 2415
    invoke-direct {p0}, Lcom/google/android/talk/ChatView$DeltaCursor;->checkPosition()V

    .line 2417
    iget v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mDeltaColumn:I

    if-ne p1, v0, :cond_0

    .line 2418
    invoke-direct {p0}, Lcom/google/android/talk/ChatView$DeltaCursor;->getDeltaValue()J

    move-result-wide v0

    long-to-float v0, v0

    .line 2421
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    goto :goto_0
.end method

.method public getInt(I)I
    .locals 2
    .parameter "column"

    .prologue
    .line 2393
    invoke-direct {p0}, Lcom/google/android/talk/ChatView$DeltaCursor;->checkPosition()V

    .line 2395
    iget v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mDeltaColumn:I

    if-ne p1, v0, :cond_0

    .line 2396
    invoke-direct {p0}, Lcom/google/android/talk/ChatView$DeltaCursor;->getDeltaValue()J

    move-result-wide v0

    long-to-int v0, v0

    .line 2399
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    goto :goto_0
.end method

.method public getLong(I)J
    .locals 2
    .parameter "column"

    .prologue
    .line 2404
    invoke-direct {p0}, Lcom/google/android/talk/ChatView$DeltaCursor;->checkPosition()V

    .line 2406
    iget v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mDeltaColumn:I

    if-ne p1, v0, :cond_0

    .line 2407
    invoke-direct {p0}, Lcom/google/android/talk/ChatView$DeltaCursor;->getDeltaValue()J

    move-result-wide v0

    .line 2410
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 2178
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    return v0
.end method

.method public getShort(I)S
    .locals 2
    .parameter "column"

    .prologue
    .line 2382
    invoke-direct {p0}, Lcom/google/android/talk/ChatView$DeltaCursor;->checkPosition()V

    .line 2384
    iget v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mDeltaColumn:I

    if-ne p1, v0, :cond_0

    .line 2385
    invoke-direct {p0}, Lcom/google/android/talk/ChatView$DeltaCursor;->getDeltaValue()J

    move-result-wide v0

    long-to-int v0, v0

    int-to-short v0, v0

    .line 2388
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 3
    .parameter "column"

    .prologue
    .line 2350
    invoke-direct {p0}, Lcom/google/android/talk/ChatView$DeltaCursor;->checkPosition()V

    .line 2352
    iget v2, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mDeltaColumn:I

    if-ne p1, v2, :cond_0

    .line 2353
    invoke-direct {p0}, Lcom/google/android/talk/ChatView$DeltaCursor;->getDeltaValue()J

    move-result-wide v0

    .line 2354
    .local v0, value:J
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 2357
    .end local v0           #value:J
    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getType(I)I
    .locals 1
    .parameter "column"

    .prologue
    .line 2437
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getWantsAllOnMoveCalls()Z
    .locals 1

    .prologue
    .line 2310
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getWantsAllOnMoveCalls()Z

    move-result v0

    return v0
.end method

.method public isAfterLast()Z
    .locals 1

    .prologue
    .line 2228
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    return v0
.end method

.method public isBeforeFirst()Z
    .locals 1

    .prologue
    .line 2223
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 2280
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isFirst()Z
    .locals 1

    .prologue
    .line 2213
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isFirst()Z

    move-result v0

    return v0
.end method

.method public isLast()Z
    .locals 1

    .prologue
    .line 2218
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    return v0
.end method

.method public isNull(I)Z
    .locals 1
    .parameter "column"

    .prologue
    .line 2442
    invoke-direct {p0}, Lcom/google/android/talk/ChatView$DeltaCursor;->checkPosition()V

    .line 2444
    iget v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mDeltaColumn:I

    if-ne p1, v0, :cond_0

    .line 2445
    const/4 v0, 0x0

    .line 2448
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    goto :goto_0
.end method

.method public move(I)Z
    .locals 1
    .parameter "offset"

    .prologue
    .line 2183
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->move(I)Z

    move-result v0

    return v0
.end method

.method public moveToFirst()Z
    .locals 1

    .prologue
    .line 2193
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    return v0
.end method

.method public moveToLast()Z
    .locals 1

    .prologue
    .line 2198
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    move-result v0

    return v0
.end method

.method public moveToNext()Z
    .locals 1

    .prologue
    .line 2203
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    return v0
.end method

.method public moveToPosition(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 2188
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToPrevious()Z
    .locals 1

    .prologue
    .line 2208
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v0

    return v0
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 2285
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 2286
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 2295
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2296
    return-void
.end method

.method public requery()Z
    .locals 1

    .prologue
    .line 2270
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v0

    return v0
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .parameter "extras"

    .prologue
    .line 2320
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 1
    .parameter "cr"
    .parameter "uri"

    .prologue
    .line 2305
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1, p2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 2306
    return-void
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 2290
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2291
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 2300
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2301
    return-void
.end method
