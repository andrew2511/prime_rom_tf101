.class Lcom/google/android/music/store/MutableMatrixCursor$TransactionData;
.super Ljava/lang/Object;
.source "MutableMatrixCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/store/MutableMatrixCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransactionData"
.end annotation


# instance fields
.field private final mColumnCount:I

.field private mCommitted:Z

.field private mRowCount:I

.field private mTmpData:[Ljava/lang/Object;


# direct methods
.method private constructor <init>(II[Ljava/lang/Object;)V
    .locals 3
    .parameter "columnCount"
    .parameter "initialCapacity"
    .parameter "seed"

    .prologue
    const/4 v2, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput v2, p0, Lcom/google/android/music/store/MutableMatrixCursor$TransactionData;->mRowCount:I

    .line 104
    iput-boolean v2, p0, Lcom/google/android/music/store/MutableMatrixCursor$TransactionData;->mCommitted:Z

    .line 107
    iput p1, p0, Lcom/google/android/music/store/MutableMatrixCursor$TransactionData;->mColumnCount:I

    .line 108
    if-eqz p3, :cond_1

    .line 109
    array-length v0, p3

    iget v1, p0, Lcom/google/android/music/store/MutableMatrixCursor$TransactionData;->mColumnCount:I

    rem-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 110
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The given seed\'s length was not appropriate for the given column count"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_0
    array-length v0, p3

    iget v1, p0, Lcom/google/android/music/store/MutableMatrixCursor$TransactionData;->mColumnCount:I

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/music/store/MutableMatrixCursor$TransactionData;->mTmpData:[Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lcom/google/android/music/store/MutableMatrixCursor$TransactionData;->mTmpData:[Ljava/lang/Object;

    array-length v1, p3

    invoke-static {p3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_1
    iget v0, p0, Lcom/google/android/music/store/MutableMatrixCursor$TransactionData;->mColumnCount:I

    mul-int/2addr v0, p2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/music/store/MutableMatrixCursor$TransactionData;->mTmpData:[Ljava/lang/Object;

    goto :goto_0
.end method

.method synthetic constructor <init>(II[Ljava/lang/Object;Lcom/google/android/music/store/MutableMatrixCursor$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 99
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/music/store/MutableMatrixCursor$TransactionData;-><init>(II[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/store/MutableMatrixCursor$TransactionData;)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/android/music/store/MutableMatrixCursor$TransactionData;->mTmpData:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/music/store/MutableMatrixCursor$TransactionData;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Lcom/google/android/music/store/MutableMatrixCursor$TransactionData;->mRowCount:I

    return v0
.end method

.method private ensureCapacity(I)V
    .locals 5
    .parameter "size"

    .prologue
    const/4 v4, 0x0

    .line 150
    iget-object v2, p0, Lcom/google/android/music/store/MutableMatrixCursor$TransactionData;->mTmpData:[Ljava/lang/Object;

    array-length v2, v2

    if-le p1, v2, :cond_1

    .line 151
    iget-object v1, p0, Lcom/google/android/music/store/MutableMatrixCursor$TransactionData;->mTmpData:[Ljava/lang/Object;

    .line 152
    .local v1, oldData:[Ljava/lang/Object;
    iget-object v2, p0, Lcom/google/android/music/store/MutableMatrixCursor$TransactionData;->mTmpData:[Ljava/lang/Object;

    array-length v2, v2

    mul-int/lit8 v0, v2, 0x2

    .line 153
    .local v0, newSize:I
    if-ge v0, p1, :cond_0

    .line 154
    move v0, p1

    .line 156
    :cond_0
    new-array v2, v0, [Ljava/lang/Object;

    iput-object v2, p0, Lcom/google/android/music/store/MutableMatrixCursor$TransactionData;->mTmpData:[Ljava/lang/Object;

    .line 157
    iget-object v2, p0, Lcom/google/android/music/store/MutableMatrixCursor$TransactionData;->mTmpData:[Ljava/lang/Object;

    array-length v3, v1

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    .end local v0           #newSize:I
    .end local v1           #oldData:[Ljava/lang/Object;
    :cond_1
    return-void
.end method


# virtual methods
.method public addRow([Ljava/lang/Object;)V
    .locals 4
    .parameter "columnValues"

    .prologue
    .line 137
    array-length v1, p1

    iget v2, p0, Lcom/google/android/music/store/MutableMatrixCursor$TransactionData;->mColumnCount:I

    if-eq v1, v2, :cond_0

    .line 138
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "columnNames.length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/music/store/MutableMatrixCursor$TransactionData;->mColumnCount:I

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

    .line 143
    :cond_0
    iget v1, p0, Lcom/google/android/music/store/MutableMatrixCursor$TransactionData;->mRowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/music/store/MutableMatrixCursor$TransactionData;->mRowCount:I

    iget v2, p0, Lcom/google/android/music/store/MutableMatrixCursor$TransactionData;->mColumnCount:I

    mul-int v0, v1, v2

    .line 144
    .local v0, start:I
    iget v1, p0, Lcom/google/android/music/store/MutableMatrixCursor$TransactionData;->mColumnCount:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Lcom/google/android/music/store/MutableMatrixCursor$TransactionData;->ensureCapacity(I)V

    .line 145
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/music/store/MutableMatrixCursor$TransactionData;->mTmpData:[Ljava/lang/Object;

    iget v3, p0, Lcom/google/android/music/store/MutableMatrixCursor$TransactionData;->mColumnCount:I

    invoke-static {p1, v1, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    return-void
.end method

.method public commit()V
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/store/MutableMatrixCursor$TransactionData;->mCommitted:Z

    .line 126
    return-void
.end method

.method public isCommitted()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/google/android/music/store/MutableMatrixCursor$TransactionData;->mCommitted:Z

    return v0
.end method

.method public newRow()Lcom/google/android/music/store/MutableMatrixCursor$RowBuilder;
    .locals 4

    .prologue
    .line 129
    iget v2, p0, Lcom/google/android/music/store/MutableMatrixCursor$TransactionData;->mRowCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/music/store/MutableMatrixCursor$TransactionData;->mRowCount:I

    .line 130
    iget v2, p0, Lcom/google/android/music/store/MutableMatrixCursor$TransactionData;->mRowCount:I

    iget v3, p0, Lcom/google/android/music/store/MutableMatrixCursor$TransactionData;->mColumnCount:I

    mul-int v0, v2, v3

    .line 131
    .local v0, endIndex:I
    invoke-direct {p0, v0}, Lcom/google/android/music/store/MutableMatrixCursor$TransactionData;->ensureCapacity(I)V

    .line 132
    iget v2, p0, Lcom/google/android/music/store/MutableMatrixCursor$TransactionData;->mColumnCount:I

    sub-int v1, v0, v2

    .line 133
    .local v1, start:I
    new-instance v2, Lcom/google/android/music/store/MutableMatrixCursor$RowBuilder;

    invoke-direct {v2, p0, v1, v0}, Lcom/google/android/music/store/MutableMatrixCursor$RowBuilder;-><init>(Lcom/google/android/music/store/MutableMatrixCursor$TransactionData;II)V

    return-object v2
.end method
