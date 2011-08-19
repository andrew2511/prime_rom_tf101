.class public Lcom/ecareme/pixwe/media/SortCursor;
.super Landroid/database/AbstractCursor;
.source "SortCursor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SortCursor"

.field public static final TYPE_NUMERIC:I = 0x1

.field public static final TYPE_STRING:I


# instance fields
.field private final ROWCACHESIZE:I

.field private mAscending:Z

.field private mCurRowNumCache:[[I

.field private mCursor:Landroid/database/Cursor;

.field private mCursorCache:[I

.field private mCursorIndex:I

.field private mCursors:[Landroid/database/Cursor;

.field private mLastCacheHit:I

.field private mObserver:Landroid/database/DataSetObserver;

.field private mRowNumCache:[I

.field private mSortColumns:[I

.field private mType:I


# direct methods
.method public constructor <init>([Landroid/database/Cursor;Ljava/lang/String;IZ)V
    .locals 10
    .parameter "cursors"
    .parameter "sortcolumn"
    .parameter "type"
    .parameter "ascending"

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 38
    const/16 v8, 0x40

    iput v8, p0, Lcom/ecareme/pixwe/media/SortCursor;->ROWCACHESIZE:I

    .line 39
    const/16 v8, 0x40

    new-array v8, v8, [I

    iput-object v8, p0, Lcom/ecareme/pixwe/media/SortCursor;->mRowNumCache:[I

    .line 40
    const/16 v8, 0x40

    new-array v8, v8, [I

    iput-object v8, p0, Lcom/ecareme/pixwe/media/SortCursor;->mCursorCache:[I

    .line 42
    const/4 v8, -0x1

    iput v8, p0, Lcom/ecareme/pixwe/media/SortCursor;->mLastCacheHit:I

    .line 48
    new-instance v8, Lcom/ecareme/pixwe/media/SortCursor$1;

    invoke-direct {v8, p0}, Lcom/ecareme/pixwe/media/SortCursor$1;-><init>(Lcom/ecareme/pixwe/media/SortCursor;)V

    iput-object v8, p0, Lcom/ecareme/pixwe/media/SortCursor;->mObserver:Landroid/database/DataSetObserver;

    .line 64
    iput-boolean p4, p0, Lcom/ecareme/pixwe/media/SortCursor;->mAscending:Z

    .line 65
    iput-object p1, p0, Lcom/ecareme/pixwe/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    .line 66
    iput p3, p0, Lcom/ecareme/pixwe/media/SortCursor;->mType:I

    .line 67
    iget-object v8, p0, Lcom/ecareme/pixwe/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v5, v8

    .line 68
    .local v5, length:I
    new-array v8, v5, [I

    iput-object v8, p0, Lcom/ecareme/pixwe/media/SortCursor;->mSortColumns:[I

    .line 69
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-lt v3, v5, :cond_1

    .line 79
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/ecareme/pixwe/media/SortCursor;->mCursor:Landroid/database/Cursor;

    .line 80
    if-nez p3, :cond_7

    .line 81
    const-string v6, ""

    .line 82
    .local v6, smallest:Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1
    if-lt v4, v5, :cond_3

    .line 108
    .end local v6           #smallest:Ljava/lang/String;
    :cond_0
    iget-object v8, p0, Lcom/ecareme/pixwe/media/SortCursor;->mRowNumCache:[I

    array-length v8, v8

    const/4 v9, 0x1

    sub-int v3, v8, v9

    :goto_2
    if-gez v3, :cond_f

    .line 111
    const/16 v8, 0x40

    filled-new-array {v8, v5}, [I

    move-result-object v8

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, [[I

    iput-object p1, p0, Lcom/ecareme/pixwe/media/SortCursor;->mCurRowNumCache:[[I

    .line 112
    return-void

    .line 70
    .end local v4           #j:I
    .restart local p1
    :cond_1
    iget-object v8, p0, Lcom/ecareme/pixwe/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v8, v8, v3

    if-nez v8, :cond_2

    .line 69
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 74
    :cond_2
    iget-object v8, p0, Lcom/ecareme/pixwe/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v8, v8, v3

    iget-object v9, p0, Lcom/ecareme/pixwe/media/SortCursor;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v8, v9}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 75
    iget-object v8, p0, Lcom/ecareme/pixwe/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v8, v8, v3

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 77
    iget-object v8, p0, Lcom/ecareme/pixwe/media/SortCursor;->mSortColumns:[I

    iget-object v9, p0, Lcom/ecareme/pixwe/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v9, v9, v3

    invoke-interface {v9, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    aput v9, v8, v3

    goto :goto_3

    .line 83
    .restart local v4       #j:I
    .restart local v6       #smallest:Ljava/lang/String;
    :cond_3
    iget-object v8, p0, Lcom/ecareme/pixwe/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v8, v8, v4

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/ecareme/pixwe/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v8, v8, v4

    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 82
    :cond_4
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 85
    :cond_5
    iget-object v8, p0, Lcom/ecareme/pixwe/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v8, v8, v4

    iget-object v9, p0, Lcom/ecareme/pixwe/media/SortCursor;->mSortColumns:[I

    aget v9, v9, v4

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, current:Ljava/lang/String;
    iget-object v8, p0, Lcom/ecareme/pixwe/media/SortCursor;->mCursor:Landroid/database/Cursor;

    if-eqz v8, :cond_6

    if-eqz v1, :cond_6

    invoke-virtual {v1, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-gez v8, :cond_4

    .line 87
    :cond_6
    move-object v6, v1

    .line 88
    iget-object v8, p0, Lcom/ecareme/pixwe/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v8, v8, v4

    iput-object v8, p0, Lcom/ecareme/pixwe/media/SortCursor;->mCursor:Landroid/database/Cursor;

    .line 89
    iput v4, p0, Lcom/ecareme/pixwe/media/SortCursor;->mCursorIndex:I

    goto :goto_4

    .line 93
    .end local v1           #current:Ljava/lang/String;
    .end local v4           #j:I
    .end local v6           #smallest:Ljava/lang/String;
    :cond_7
    if-eqz p4, :cond_9

    const-wide v8, 0x7fffffffffffffffL

    move-wide v6, v8

    .line 94
    .local v6, smallest:J
    :goto_5
    const/4 v4, 0x0

    .restart local v4       #j:I
    :goto_6
    if-ge v4, v5, :cond_0

    .line 95
    iget-object v8, p0, Lcom/ecareme/pixwe/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v8, v8, v4

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/ecareme/pixwe/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v8, v8, v4

    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 94
    :cond_8
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 93
    .end local v4           #j:I
    .end local v6           #smallest:J
    :cond_9
    const-wide/high16 v8, -0x8000

    move-wide v6, v8

    goto :goto_5

    .line 98
    .restart local v4       #j:I
    .restart local v6       #smallest:J
    :cond_a
    iget-object v8, p0, Lcom/ecareme/pixwe/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v8, v8, v4

    iget-object v9, p0, Lcom/ecareme/pixwe/media/SortCursor;->mSortColumns:[I

    aget v9, v9, v4

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 99
    .local v1, current:J
    if-eqz p4, :cond_d

    cmp-long v8, v1, v6

    if-gez v8, :cond_c

    const/4 v8, 0x1

    move v0, v8

    .line 100
    .local v0, comparison:Z
    :goto_8
    iget-object v8, p0, Lcom/ecareme/pixwe/media/SortCursor;->mCursor:Landroid/database/Cursor;

    if-eqz v8, :cond_b

    if-eqz v0, :cond_8

    .line 101
    :cond_b
    move-wide v6, v1

    .line 102
    iget-object v8, p0, Lcom/ecareme/pixwe/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v8, v8, v4

    iput-object v8, p0, Lcom/ecareme/pixwe/media/SortCursor;->mCursor:Landroid/database/Cursor;

    .line 103
    iput v4, p0, Lcom/ecareme/pixwe/media/SortCursor;->mCursorIndex:I

    goto :goto_7

    .line 99
    .end local v0           #comparison:Z
    :cond_c
    const/4 v8, 0x0

    move v0, v8

    goto :goto_8

    :cond_d
    cmp-long v8, v1, v6

    if-lez v8, :cond_e

    const/4 v8, 0x1

    move v0, v8

    goto :goto_8

    :cond_e
    const/4 v8, 0x0

    move v0, v8

    goto :goto_8

    .line 109
    .end local v1           #current:J
    .end local v6           #smallest:J
    :cond_f
    iget-object v8, p0, Lcom/ecareme/pixwe/media/SortCursor;->mRowNumCache:[I

    const/4 v9, -0x2

    aput v9, v8, v3

    .line 108
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_2
.end method

.method static synthetic access$0(Lcom/ecareme/pixwe/media/SortCursor;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput p1, p0, Lcom/ecareme/pixwe/media/SortCursor;->mPos:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 305
    iget-object v2, p0, Lcom/ecareme/pixwe/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    .line 306
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 311
    return-void

    .line 307
    :cond_0
    iget-object v2, p0, Lcom/ecareme/pixwe/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-nez v2, :cond_1

    .line 306
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 309
    :cond_1
    iget-object v2, p0, Lcom/ecareme/pixwe/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method public deactivate()V
    .locals 3

    .prologue
    .line 295
    iget-object v2, p0, Lcom/ecareme/pixwe/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    .line 296
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 301
    return-void

    .line 297
    :cond_0
    iget-object v2, p0, Lcom/ecareme/pixwe/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-nez v2, :cond_1

    .line 296
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 299
    :cond_1
    iget-object v2, p0, Lcom/ecareme/pixwe/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2}, Landroid/database/Cursor;->deactivate()V

    goto :goto_1
.end method

.method public getBlob(I)[B
    .locals 1
    .parameter "column"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/ecareme/pixwe/media/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 278
    iget-object v2, p0, Lcom/ecareme/pixwe/media/SortCursor;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    .line 279
    iget-object v2, p0, Lcom/ecareme/pixwe/media/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    .line 286
    :goto_0
    return-object v2

    .line 283
    :cond_0
    iget-object v2, p0, Lcom/ecareme/pixwe/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    .line 284
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-lt v0, v1, :cond_1

    .line 289
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No cursor that can return names"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 285
    :cond_1
    iget-object v2, p0, Lcom/ecareme/pixwe/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    .line 286
    iget-object v2, p0, Lcom/ecareme/pixwe/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 284
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 116
    const/4 v0, 0x0

    .line 117
    .local v0, count:I
    iget-object v3, p0, Lcom/ecareme/pixwe/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v2, v3

    .line 118
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 123
    return v0

    .line 119
    :cond_0
    iget-object v3, p0, Lcom/ecareme/pixwe/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v3, v3, v1

    if-eqz v3, :cond_1

    .line 120
    iget-object v3, p0, Lcom/ecareme/pixwe/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v3, v3, v1

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    add-int/2addr v0, v3

    .line 118
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getCurrentCursorIndex()I
    .locals 1

    .prologue
    .line 349
    iget v0, p0, Lcom/ecareme/pixwe/media/SortCursor;->mCursorIndex:I

    return v0
.end method

.method public getDouble(I)D
    .locals 2
    .parameter "column"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/ecareme/pixwe/media/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1
    .parameter "column"

    .prologue
    .line 258
    iget-object v0, p0, Lcom/ecareme/pixwe/media/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 1
    .parameter "column"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/ecareme/pixwe/media/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .locals 2
    .parameter "column"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/ecareme/pixwe/media/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort(I)S
    .locals 1
    .parameter "column"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/ecareme/pixwe/media/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .parameter "column"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/ecareme/pixwe/media/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNull(I)Z
    .locals 1
    .parameter "column"

    .prologue
    .line 268
    iget-object v0, p0, Lcom/ecareme/pixwe/media/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    return v0
.end method

.method public onMove(II)Z
    .locals 16
    .parameter "oldPosition"
    .parameter "newPosition"

    .prologue
    .line 128
    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_0

    .line 129
    const/4 v13, 0x1

    .line 233
    :goto_0
    return v13

    .line 139
    :cond_0
    rem-int/lit8 v2, p2, 0x40

    .line 141
    .local v2, cache_entry:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/SortCursor;->mRowNumCache:[I

    move-object v13, v0

    aget v13, v13, v2

    move v0, v13

    move/from16 v1, p2

    if-ne v0, v1, :cond_2

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/SortCursor;->mCursorCache:[I

    move-object v13, v0

    aget v12, v13, v2

    .line 143
    .local v12, which:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    move-object v13, v0

    aget-object v13, v13, v12

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/SortCursor;->mCursor:Landroid/database/Cursor;

    .line 144
    move v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/SortCursor;->mCursorIndex:I

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/SortCursor;->mCursor:Landroid/database/Cursor;

    move-object v13, v0

    if-nez v13, :cond_1

    .line 146
    const-string v13, "SortCursor"

    const-string v14, "onMove: cache results in a null cursor."

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const/4 v13, 0x0

    goto :goto_0

    .line 149
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/SortCursor;->mCursor:Landroid/database/Cursor;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/SortCursor;->mCurRowNumCache:[[I

    move-object v14, v0

    aget-object v14, v14, v2

    aget v14, v14, v12

    invoke-interface {v13, v14}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 150
    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/SortCursor;->mLastCacheHit:I

    .line 151
    const/4 v13, 0x1

    goto :goto_0

    .line 154
    .end local v12           #which:I
    :cond_2
    const/4 v13, 0x0

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/SortCursor;->mCursor:Landroid/database/Cursor;

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    move-object v13, v0

    array-length v8, v13

    .line 157
    .local v8, length:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/SortCursor;->mLastCacheHit:I

    move v13, v0

    if-ltz v13, :cond_3

    .line 158
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-lt v6, v8, :cond_8

    .line 165
    .end local v6           #i:I
    :cond_3
    move/from16 v0, p2

    move/from16 v1, p1

    if-lt v0, v1, :cond_4

    const/4 v13, -0x1

    move/from16 v0, p1

    move v1, v13

    if-ne v0, v1, :cond_5

    .line 166
    :cond_4
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_2
    if-lt v6, v8, :cond_a

    .line 171
    const/16 p1, 0x0

    .line 173
    .end local v6           #i:I
    :cond_5
    if-gez p1, :cond_6

    .line 174
    const/16 p1, 0x0

    .line 178
    :cond_6
    const/4 v11, -0x1

    .line 179
    .local v11, smallestIdx:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/SortCursor;->mType:I

    move v13, v0

    if-nez v13, :cond_12

    .line 180
    move/from16 v6, p1

    .restart local v6       #i:I
    :goto_3
    move v0, v6

    move/from16 v1, p2

    if-le v0, v1, :cond_c

    .line 223
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    move-object v13, v0

    aget-object v13, v13, v11

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/SortCursor;->mCursor:Landroid/database/Cursor;

    .line 224
    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/SortCursor;->mCursorIndex:I

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/SortCursor;->mRowNumCache:[I

    move-object v13, v0

    aput p2, v13, v2

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/SortCursor;->mCursorCache:[I

    move-object v13, v0

    aput v11, v13, v2

    .line 227
    const/4 v6, 0x0

    :goto_4
    if-lt v6, v8, :cond_1c

    .line 232
    const/4 v13, -0x1

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/SortCursor;->mLastCacheHit:I

    .line 233
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 159
    .end local v11           #smallestIdx:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    move-object v13, v0

    aget-object v13, v13, v6

    if-nez v13, :cond_9

    .line 158
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 161
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    move-object v13, v0

    aget-object v13, v13, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/SortCursor;->mCurRowNumCache:[[I

    move-object v14, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/SortCursor;->mLastCacheHit:I

    move v15, v0

    aget-object v14, v14, v15

    aget v14, v14, v6

    invoke-interface {v13, v14}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto :goto_5

    .line 167
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    move-object v13, v0

    aget-object v13, v13, v6

    if-nez v13, :cond_b

    .line 166
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 169
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    move-object v13, v0

    aget-object v13, v13, v6

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    goto :goto_6

    .line 181
    .restart local v11       #smallestIdx:I
    :cond_c
    const-string v9, ""

    .line 182
    .local v9, smallest:Ljava/lang/String;
    const/4 v11, -0x1

    .line 183
    const/4 v7, 0x0

    .local v7, j:I
    :goto_7
    if-lt v7, v8, :cond_e

    .line 193
    move v0, v6

    move/from16 v1, p2

    if-eq v0, v1, :cond_7

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    move-object v13, v0

    aget-object v13, v13, v11

    if-eqz v13, :cond_d

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    move-object v13, v0

    aget-object v13, v13, v11

    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    .line 180
    :cond_d
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 184
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    move-object v13, v0

    aget-object v13, v13, v7

    if-eqz v13, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    move-object v13, v0

    aget-object v13, v13, v7

    invoke-interface {v13}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v13

    if-eqz v13, :cond_10

    .line 183
    :cond_f
    :goto_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 187
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    move-object v13, v0

    aget-object v13, v13, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/SortCursor;->mSortColumns:[I

    move-object v14, v0

    aget v14, v14, v7

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 188
    .local v4, current:Ljava/lang/String;
    if-ltz v11, :cond_11

    if-eqz v4, :cond_11

    invoke-virtual {v4, v9}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v13

    if-gez v13, :cond_f

    .line 189
    :cond_11
    move-object v9, v4

    .line 190
    move v11, v7

    goto :goto_8

    .line 201
    .end local v4           #current:Ljava/lang/String;
    .end local v6           #i:I
    .end local v7           #j:I
    .end local v9           #smallest:Ljava/lang/String;
    :cond_12
    move/from16 v6, p1

    .restart local v6       #i:I
    :goto_9
    move v0, v6

    move/from16 v1, p2

    if-gt v0, v1, :cond_7

    .line 202
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ecareme/pixwe/media/SortCursor;->mAscending:Z

    move v13, v0

    if-eqz v13, :cond_14

    const-wide v13, 0x7fffffffffffffffL

    move-wide v9, v13

    .line 203
    .local v9, smallest:J
    :goto_a
    const/4 v11, -0x1

    .line 204
    const/4 v7, 0x0

    .restart local v7       #j:I
    :goto_b
    if-lt v7, v8, :cond_15

    .line 215
    move v0, v6

    move/from16 v1, p2

    if-eq v0, v1, :cond_7

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    move-object v13, v0

    aget-object v13, v13, v11

    if-eqz v13, :cond_13

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    move-object v13, v0

    aget-object v13, v13, v11

    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    .line 201
    :cond_13
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 202
    .end local v7           #j:I
    .end local v9           #smallest:J
    :cond_14
    const-wide/high16 v13, -0x8000

    move-wide v9, v13

    goto :goto_a

    .line 205
    .restart local v7       #j:I
    .restart local v9       #smallest:J
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    move-object v13, v0

    aget-object v13, v13, v7

    if-eqz v13, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    move-object v13, v0

    aget-object v13, v13, v7

    invoke-interface {v13}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v13

    if-eqz v13, :cond_17

    .line 204
    :cond_16
    :goto_c
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    .line 208
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    move-object v13, v0

    aget-object v13, v13, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/SortCursor;->mSortColumns:[I

    move-object v14, v0

    aget v14, v14, v7

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 209
    .local v4, current:J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ecareme/pixwe/media/SortCursor;->mAscending:Z

    move v13, v0

    if-eqz v13, :cond_1a

    cmp-long v13, v4, v9

    if-gez v13, :cond_19

    const/4 v13, 0x1

    move v3, v13

    .line 210
    .local v3, comparison:Z
    :goto_d
    if-ltz v11, :cond_18

    if-eqz v3, :cond_16

    .line 211
    :cond_18
    move-wide v9, v4

    .line 212
    move v11, v7

    goto :goto_c

    .line 209
    .end local v3           #comparison:Z
    :cond_19
    const/4 v13, 0x0

    move v3, v13

    goto :goto_d

    :cond_1a
    cmp-long v13, v4, v9

    if-lez v13, :cond_1b

    const/4 v13, 0x1

    move v3, v13

    goto :goto_d

    :cond_1b
    const/4 v13, 0x0

    move v3, v13

    goto :goto_d

    .line 228
    .end local v4           #current:J
    .end local v7           #j:I
    .end local v9           #smallest:J
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    move-object v13, v0

    aget-object v13, v13, v6

    if-eqz v13, :cond_1d

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/SortCursor;->mCurRowNumCache:[[I

    move-object v13, v0

    aget-object v13, v13, v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    move-object v14, v0

    aget-object v14, v14, v6

    invoke-interface {v14}, Landroid/database/Cursor;->getPosition()I

    move-result v14

    aput v14, v13, v6

    .line 227
    :cond_1d
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 3
    .parameter "observer"

    .prologue
    .line 315
    iget-object v2, p0, Lcom/ecareme/pixwe/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    .line 316
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 321
    return-void

    .line 317
    :cond_0
    iget-object v2, p0, Lcom/ecareme/pixwe/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    .line 318
    iget-object v2, p0, Lcom/ecareme/pixwe/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 316
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public requery()Z
    .locals 3

    .prologue
    .line 335
    iget-object v2, p0, Lcom/ecareme/pixwe/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    .line 336
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 345
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 337
    :cond_0
    iget-object v2, p0, Lcom/ecareme/pixwe/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-nez v2, :cond_2

    .line 336
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 340
    :cond_2
    iget-object v2, p0, Lcom/ecareme/pixwe/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2}, Landroid/database/Cursor;->requery()Z

    move-result v2

    if-nez v2, :cond_1

    .line 341
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 3
    .parameter "observer"

    .prologue
    .line 325
    iget-object v2, p0, Lcom/ecareme/pixwe/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    .line 326
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 331
    return-void

    .line 327
    :cond_0
    iget-object v2, p0, Lcom/ecareme/pixwe/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    .line 328
    iget-object v2, p0, Lcom/ecareme/pixwe/media/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 326
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
