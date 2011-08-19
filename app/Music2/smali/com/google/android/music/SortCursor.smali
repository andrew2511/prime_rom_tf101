.class public Lcom/google/android/music/SortCursor;
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
.method public constructor <init>([Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 2
    .parameter "cursors"
    .parameter "sortcolumn"

    .prologue
    .line 46
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/music/SortCursor;-><init>([Landroid/database/Cursor;Ljava/lang/String;IZ)V

    .line 47
    return-void
.end method

.method public constructor <init>([Landroid/database/Cursor;Ljava/lang/String;IZ)V
    .locals 10
    .parameter "cursors"
    .parameter "sortcolumn"
    .parameter "type"
    .parameter "ascending"

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 20
    const/16 v8, 0x40

    iput v8, p0, Lcom/google/android/music/SortCursor;->ROWCACHESIZE:I

    .line 21
    const/16 v8, 0x40

    new-array v8, v8, [I

    iput-object v8, p0, Lcom/google/android/music/SortCursor;->mRowNumCache:[I

    .line 22
    const/16 v8, 0x40

    new-array v8, v8, [I

    iput-object v8, p0, Lcom/google/android/music/SortCursor;->mCursorCache:[I

    .line 24
    const/4 v8, -0x1

    iput v8, p0, Lcom/google/android/music/SortCursor;->mLastCacheHit:I

    .line 31
    new-instance v8, Lcom/google/android/music/SortCursor$1;

    invoke-direct {v8, p0}, Lcom/google/android/music/SortCursor$1;-><init>(Lcom/google/android/music/SortCursor;)V

    iput-object v8, p0, Lcom/google/android/music/SortCursor;->mObserver:Landroid/database/DataSetObserver;

    .line 50
    iput-boolean p4, p0, Lcom/google/android/music/SortCursor;->mAscending:Z

    .line 51
    iput-object p1, p0, Lcom/google/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    .line 52
    iput p3, p0, Lcom/google/android/music/SortCursor;->mType:I

    .line 53
    iget-object v8, p0, Lcom/google/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v5, v8

    .line 54
    .local v5, length:I
    new-array v8, v5, [I

    iput-object v8, p0, Lcom/google/android/music/SortCursor;->mSortColumns:[I

    .line 55
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v5, :cond_1

    .line 56
    iget-object v8, p0, Lcom/google/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v8, v8, v3

    if-nez v8, :cond_0

    .line 55
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 60
    :cond_0
    iget-object v8, p0, Lcom/google/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v8, v8, v3

    iget-object v9, p0, Lcom/google/android/music/SortCursor;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v8, v9}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 61
    iget-object v8, p0, Lcom/google/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v8, v8, v3

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 63
    iget-object v8, p0, Lcom/google/android/music/SortCursor;->mSortColumns:[I

    iget-object v9, p0, Lcom/google/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v9, v9, v3

    invoke-interface {v9, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    aput v9, v8, v3

    goto :goto_1

    .line 65
    :cond_1
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/google/android/music/SortCursor;->mCursor:Landroid/database/Cursor;

    .line 66
    if-nez p3, :cond_5

    .line 67
    const-string v6, ""

    .line 68
    .local v6, smallest:Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, j:I
    :goto_2
    if-ge v4, v5, :cond_d

    .line 69
    iget-object v8, p0, Lcom/google/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v8, v8, v4

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/google/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v8, v8, v4

    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 68
    :cond_2
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 71
    :cond_3
    iget-object v8, p0, Lcom/google/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v8, v8, v4

    iget-object v9, p0, Lcom/google/android/music/SortCursor;->mSortColumns:[I

    aget v9, v9, v4

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, current:Ljava/lang/String;
    iget-object v8, p0, Lcom/google/android/music/SortCursor;->mCursor:Landroid/database/Cursor;

    if-eqz v8, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual {v1, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-gez v8, :cond_2

    .line 73
    :cond_4
    move-object v6, v1

    .line 74
    iget-object v8, p0, Lcom/google/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v8, v8, v4

    iput-object v8, p0, Lcom/google/android/music/SortCursor;->mCursor:Landroid/database/Cursor;

    .line 75
    iput v4, p0, Lcom/google/android/music/SortCursor;->mCursorIndex:I

    goto :goto_3

    .line 79
    .end local v1           #current:Ljava/lang/String;
    .end local v4           #j:I
    .end local v6           #smallest:Ljava/lang/String;
    :cond_5
    if-eqz p4, :cond_7

    const-wide v8, 0x7fffffffffffffffL

    move-wide v6, v8

    .line 80
    .local v6, smallest:J
    :goto_4
    const/4 v4, 0x0

    .restart local v4       #j:I
    :goto_5
    if-ge v4, v5, :cond_d

    .line 81
    iget-object v8, p0, Lcom/google/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v8, v8, v4

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/google/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v8, v8, v4

    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 80
    :cond_6
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 79
    .end local v4           #j:I
    .end local v6           #smallest:J
    :cond_7
    const-wide/high16 v8, -0x8000

    move-wide v6, v8

    goto :goto_4

    .line 84
    .restart local v4       #j:I
    .restart local v6       #smallest:J
    :cond_8
    iget-object v8, p0, Lcom/google/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v8, v8, v4

    iget-object v9, p0, Lcom/google/android/music/SortCursor;->mSortColumns:[I

    aget v9, v9, v4

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 85
    .local v1, current:J
    if-eqz p4, :cond_b

    cmp-long v8, v1, v6

    if-gez v8, :cond_a

    const/4 v8, 0x1

    move v0, v8

    .line 86
    .local v0, comparison:Z
    :goto_7
    iget-object v8, p0, Lcom/google/android/music/SortCursor;->mCursor:Landroid/database/Cursor;

    if-eqz v8, :cond_9

    if-eqz v0, :cond_6

    .line 87
    :cond_9
    move-wide v6, v1

    .line 88
    iget-object v8, p0, Lcom/google/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v8, v8, v4

    iput-object v8, p0, Lcom/google/android/music/SortCursor;->mCursor:Landroid/database/Cursor;

    .line 89
    iput v4, p0, Lcom/google/android/music/SortCursor;->mCursorIndex:I

    goto :goto_6

    .line 85
    .end local v0           #comparison:Z
    :cond_a
    const/4 v8, 0x0

    move v0, v8

    goto :goto_7

    :cond_b
    cmp-long v8, v1, v6

    if-lez v8, :cond_c

    const/4 v8, 0x1

    move v0, v8

    goto :goto_7

    :cond_c
    const/4 v8, 0x0

    move v0, v8

    goto :goto_7

    .line 94
    .end local v1           #current:J
    .end local v6           #smallest:J
    :cond_d
    iget-object v8, p0, Lcom/google/android/music/SortCursor;->mRowNumCache:[I

    array-length v8, v8

    const/4 v9, 0x1

    sub-int v3, v8, v9

    :goto_8
    if-ltz v3, :cond_e

    .line 95
    iget-object v8, p0, Lcom/google/android/music/SortCursor;->mRowNumCache:[I

    const/4 v9, -0x2

    aput v9, v8, v3

    .line 94
    add-int/lit8 v3, v3, -0x1

    goto :goto_8

    .line 97
    :cond_e
    const/16 v8, 0x40

    filled-new-array {v8, v5}, [I

    move-result-object v8

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, [[I

    iput-object p1, p0, Lcom/google/android/music/SortCursor;->mCurRowNumCache:[[I

    .line 98
    return-void
.end method

.method static synthetic access$002(Lcom/google/android/music/SortCursor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iput p1, p0, Lcom/google/android/music/SortCursor;->mPos:I

    return p1
.end method

.method static synthetic access$102(Lcom/google/android/music/SortCursor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iput p1, p0, Lcom/google/android/music/SortCursor;->mPos:I

    return p1
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 294
    iget-object v2, p0, Lcom/google/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    .line 295
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 296
    iget-object v2, p0, Lcom/google/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-nez v2, :cond_0

    .line 295
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 299
    :cond_0
    iget-object v2, p0, Lcom/google/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 301
    :cond_1
    return-void
.end method

.method public deactivate()V
    .locals 3

    .prologue
    .line 283
    iget-object v2, p0, Lcom/google/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    .line 284
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 285
    iget-object v2, p0, Lcom/google/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-nez v2, :cond_0

    .line 284
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 288
    :cond_0
    iget-object v2, p0, Lcom/google/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2}, Landroid/database/Cursor;->deactivate()V

    goto :goto_1

    .line 290
    :cond_1
    return-void
.end method

.method public getBlob(I)[B
    .locals 1
    .parameter "column"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/android/music/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 266
    iget-object v2, p0, Lcom/google/android/music/SortCursor;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    .line 267
    iget-object v2, p0, Lcom/google/android/music/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    .line 274
    :goto_0
    return-object v2

    .line 271
    :cond_0
    iget-object v2, p0, Lcom/google/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    .line 272
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 273
    iget-object v2, p0, Lcom/google/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    .line 274
    iget-object v2, p0, Lcom/google/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 272
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 277
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No cursor that can return names"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 102
    const/4 v0, 0x0

    .line 103
    .local v0, count:I
    iget-object v3, p0, Lcom/google/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v2, v3

    .line 104
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 105
    iget-object v3, p0, Lcom/google/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v3, v3, v1

    if-eqz v3, :cond_0

    .line 106
    iget-object v3, p0, Lcom/google/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v3, v3, v1

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    add-int/2addr v0, v3

    .line 104
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 109
    :cond_1
    return v0
.end method

.method public getCurrentCursorIndex()I
    .locals 1

    .prologue
    .line 343
    iget v0, p0, Lcom/google/android/music/SortCursor;->mCursorIndex:I

    return v0
.end method

.method public getDouble(I)D
    .locals 2
    .parameter "column"

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/android/music/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1
    .parameter "column"

    .prologue
    .line 246
    iget-object v0, p0, Lcom/google/android/music/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 1
    .parameter "column"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/android/music/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .locals 2
    .parameter "column"

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/android/music/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort(I)S
    .locals 1
    .parameter "column"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/android/music/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .parameter "column"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/google/android/music/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNull(I)Z
    .locals 1
    .parameter "column"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/google/android/music/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    return v0
.end method

.method public onMove(II)Z
    .locals 16
    .parameter "oldPosition"
    .parameter "newPosition"

    .prologue
    .line 114
    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_0

    .line 115
    const/4 v13, 0x1

    .line 221
    :goto_0
    return v13

    .line 125
    :cond_0
    rem-int/lit8 v2, p2, 0x40

    .line 127
    .local v2, cache_entry:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/SortCursor;->mRowNumCache:[I

    move-object v13, v0

    aget v13, v13, v2

    move v0, v13

    move/from16 v1, p2

    if-ne v0, v1, :cond_2

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/SortCursor;->mCursorCache:[I

    move-object v13, v0

    aget v12, v13, v2

    .line 129
    .local v12, which:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    move-object v13, v0

    aget-object v13, v13, v12

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/SortCursor;->mCursor:Landroid/database/Cursor;

    .line 130
    move v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/SortCursor;->mCursorIndex:I

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/SortCursor;->mCursor:Landroid/database/Cursor;

    move-object v13, v0

    if-nez v13, :cond_1

    .line 132
    const-string v13, "SortCursor"

    const-string v14, "onMove: cache results in a null cursor."

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/4 v13, 0x0

    goto :goto_0

    .line 135
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/SortCursor;->mCursor:Landroid/database/Cursor;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/SortCursor;->mCurRowNumCache:[[I

    move-object v14, v0

    aget-object v14, v14, v2

    aget v14, v14, v12

    invoke-interface {v13, v14}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 136
    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/SortCursor;->mLastCacheHit:I

    .line 137
    const/4 v13, 0x1

    goto :goto_0

    .line 140
    .end local v12           #which:I
    :cond_2
    const/4 v13, 0x0

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/SortCursor;->mCursor:Landroid/database/Cursor;

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    move-object v13, v0

    array-length v8, v13

    .line 143
    .local v8, length:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/SortCursor;->mLastCacheHit:I

    move v13, v0

    if-ltz v13, :cond_4

    .line 144
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v8, :cond_4

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    move-object v13, v0

    aget-object v13, v13, v6

    if-nez v13, :cond_3

    .line 144
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 148
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    move-object v13, v0

    aget-object v13, v13, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/SortCursor;->mCurRowNumCache:[[I

    move-object v14, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/SortCursor;->mLastCacheHit:I

    move v15, v0

    aget-object v14, v14, v15

    aget v14, v14, v6

    invoke-interface {v13, v14}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto :goto_2

    .line 152
    .end local v6           #i:I
    :cond_4
    move/from16 v0, p2

    move/from16 v1, p1

    if-lt v0, v1, :cond_5

    const/4 v13, -0x1

    move/from16 v0, p1

    move v1, v13

    if-ne v0, v1, :cond_8

    .line 153
    :cond_5
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_3
    if-ge v6, v8, :cond_7

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    move-object v13, v0

    aget-object v13, v13, v6

    if-nez v13, :cond_6

    .line 153
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 157
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    move-object v13, v0

    aget-object v13, v13, v6

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    goto :goto_4

    .line 159
    :cond_7
    const/16 p1, 0x0

    .line 161
    .end local v6           #i:I
    :cond_8
    if-gez p1, :cond_9

    .line 162
    const/16 p1, 0x0

    .line 166
    :cond_9
    const/4 v11, -0x1

    .line 167
    .local v11, smallestIdx:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/SortCursor;->mType:I

    move v13, v0

    if-nez v13, :cond_12

    .line 168
    move/from16 v6, p1

    .restart local v6       #i:I
    :goto_5
    move v0, v6

    move/from16 v1, p2

    if-gt v0, v1, :cond_e

    .line 169
    const-string v9, ""

    .line 170
    .local v9, smallest:Ljava/lang/String;
    const/4 v11, -0x1

    .line 171
    const/4 v7, 0x0

    .local v7, j:I
    :goto_6
    if-ge v7, v8, :cond_d

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    move-object v13, v0

    aget-object v13, v13, v7

    if-eqz v13, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    move-object v13, v0

    aget-object v13, v13, v7

    invoke-interface {v13}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v13

    if-eqz v13, :cond_b

    .line 171
    :cond_a
    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 175
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    move-object v13, v0

    aget-object v13, v13, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/SortCursor;->mSortColumns:[I

    move-object v14, v0

    aget v14, v14, v7

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 176
    .local v4, current:Ljava/lang/String;
    if-ltz v11, :cond_c

    if-eqz v4, :cond_c

    invoke-virtual {v4, v9}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v13

    if-gez v13, :cond_a

    .line 177
    :cond_c
    move-object v9, v4

    .line 178
    move v11, v7

    goto :goto_7

    .line 181
    .end local v4           #current:Ljava/lang/String;
    :cond_d
    move v0, v6

    move/from16 v1, p2

    if-ne v0, v1, :cond_10

    .line 211
    .end local v7           #j:I
    .end local v9           #smallest:Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    move-object v13, v0

    aget-object v13, v13, v11

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/SortCursor;->mCursor:Landroid/database/Cursor;

    .line 212
    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/SortCursor;->mCursorIndex:I

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/SortCursor;->mRowNumCache:[I

    move-object v13, v0

    aput p2, v13, v2

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/SortCursor;->mCursorCache:[I

    move-object v13, v0

    aput v11, v13, v2

    .line 215
    const/4 v6, 0x0

    :goto_8
    if-ge v6, v8, :cond_1c

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    move-object v13, v0

    aget-object v13, v13, v6

    if-eqz v13, :cond_f

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/SortCursor;->mCurRowNumCache:[[I

    move-object v13, v0

    aget-object v13, v13, v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    move-object v14, v0

    aget-object v14, v14, v6

    invoke-interface {v14}, Landroid/database/Cursor;->getPosition()I

    move-result v14

    aput v14, v13, v6

    .line 215
    :cond_f
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 184
    .restart local v7       #j:I
    .restart local v9       #smallest:Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    move-object v13, v0

    aget-object v13, v13, v11

    if-eqz v13, :cond_11

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    move-object v13, v0

    aget-object v13, v13, v11

    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    .line 168
    :cond_11
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_5

    .line 189
    .end local v6           #i:I
    .end local v7           #j:I
    .end local v9           #smallest:Ljava/lang/String;
    :cond_12
    move/from16 v6, p1

    .restart local v6       #i:I
    :goto_9
    move v0, v6

    move/from16 v1, p2

    if-gt v0, v1, :cond_e

    .line 190
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/SortCursor;->mAscending:Z

    move v13, v0

    if-eqz v13, :cond_14

    const-wide v13, 0x7fffffffffffffffL

    move-wide v9, v13

    .line 191
    .local v9, smallest:J
    :goto_a
    const/4 v11, -0x1

    .line 192
    const/4 v7, 0x0

    .restart local v7       #j:I
    :goto_b
    if-ge v7, v8, :cond_1a

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    move-object v13, v0

    aget-object v13, v13, v7

    if-eqz v13, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    move-object v13, v0

    aget-object v13, v13, v7

    invoke-interface {v13}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v13

    if-eqz v13, :cond_15

    .line 192
    :cond_13
    :goto_c
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    .line 190
    .end local v7           #j:I
    .end local v9           #smallest:J
    :cond_14
    const-wide/high16 v13, -0x8000

    move-wide v9, v13

    goto :goto_a

    .line 196
    .restart local v7       #j:I
    .restart local v9       #smallest:J
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    move-object v13, v0

    aget-object v13, v13, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/SortCursor;->mSortColumns:[I

    move-object v14, v0

    aget v14, v14, v7

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 197
    .local v4, current:J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/SortCursor;->mAscending:Z

    move v13, v0

    if-eqz v13, :cond_18

    cmp-long v13, v4, v9

    if-gez v13, :cond_17

    const/4 v13, 0x1

    move v3, v13

    .line 198
    .local v3, comparison:Z
    :goto_d
    if-ltz v11, :cond_16

    if-eqz v3, :cond_13

    .line 199
    :cond_16
    move-wide v9, v4

    .line 200
    move v11, v7

    goto :goto_c

    .line 197
    .end local v3           #comparison:Z
    :cond_17
    const/4 v13, 0x0

    move v3, v13

    goto :goto_d

    :cond_18
    cmp-long v13, v4, v9

    if-lez v13, :cond_19

    const/4 v13, 0x1

    move v3, v13

    goto :goto_d

    :cond_19
    const/4 v13, 0x0

    move v3, v13

    goto :goto_d

    .line 203
    .end local v4           #current:J
    :cond_1a
    move v0, v6

    move/from16 v1, p2

    if-eq v0, v1, :cond_e

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    move-object v13, v0

    aget-object v13, v13, v11

    if-eqz v13, :cond_1b

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    move-object v13, v0

    aget-object v13, v13, v11

    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    .line 189
    :cond_1b
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 220
    .end local v7           #j:I
    .end local v9           #smallest:J
    :cond_1c
    const/4 v13, -0x1

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/SortCursor;->mLastCacheHit:I

    .line 221
    const/4 v13, 0x1

    goto/16 :goto_0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 3
    .parameter "observer"

    .prologue
    .line 305
    iget-object v2, p0, Lcom/google/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    .line 306
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 307
    iget-object v2, p0, Lcom/google/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 308
    iget-object v2, p0, Lcom/google/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 306
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 311
    :cond_1
    return-void
.end method

.method public requery()Z
    .locals 3

    .prologue
    .line 325
    iget-object v2, p0, Lcom/google/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    .line 326
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 327
    iget-object v2, p0, Lcom/google/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-nez v2, :cond_1

    .line 326
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 331
    :cond_1
    iget-object v2, p0, Lcom/google/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2}, Landroid/database/Cursor;->requery()Z

    move-result v2

    if-nez v2, :cond_0

    .line 332
    const/4 v2, 0x0

    .line 336
    :goto_1
    return v2

    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 3
    .parameter "observer"

    .prologue
    .line 315
    iget-object v2, p0, Lcom/google/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    .line 316
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 317
    iget-object v2, p0, Lcom/google/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 318
    iget-object v2, p0, Lcom/google/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 316
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 321
    :cond_1
    return-void
.end method
