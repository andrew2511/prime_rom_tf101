.class public Lcom/google/android/music/store/MutableMatrixCursor$RowBuilder;
.super Ljava/lang/Object;
.source "MutableMatrixCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/store/MutableMatrixCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RowBuilder"
.end annotation


# instance fields
.field private final endIndex:I

.field private index:I

.field private final mTransaction:Lcom/google/android/music/store/MutableMatrixCursor$TransactionData;


# direct methods
.method constructor <init>(Lcom/google/android/music/store/MutableMatrixCursor$TransactionData;II)V
    .locals 0
    .parameter "transaction"
    .parameter "index"
    .parameter "endIndex"

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-object p1, p0, Lcom/google/android/music/store/MutableMatrixCursor$RowBuilder;->mTransaction:Lcom/google/android/music/store/MutableMatrixCursor$TransactionData;

    .line 175
    iput p2, p0, Lcom/google/android/music/store/MutableMatrixCursor$RowBuilder;->index:I

    .line 176
    iput p3, p0, Lcom/google/android/music/store/MutableMatrixCursor$RowBuilder;->endIndex:I

    .line 177
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Lcom/google/android/music/store/MutableMatrixCursor$RowBuilder;
    .locals 3
    .parameter "columnValue"

    .prologue
    .line 187
    iget v0, p0, Lcom/google/android/music/store/MutableMatrixCursor$RowBuilder;->index:I

    iget v1, p0, Lcom/google/android/music/store/MutableMatrixCursor$RowBuilder;->endIndex:I

    if-ne v0, v1, :cond_0

    .line 188
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    const-string v1, "No more columns left."

    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/store/MutableMatrixCursor$RowBuilder;->mTransaction:Lcom/google/android/music/store/MutableMatrixCursor$TransactionData;

    invoke-virtual {v0}, Lcom/google/android/music/store/MutableMatrixCursor$TransactionData;->isCommitted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not modify a row after the transaction has been committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/google/android/music/store/MutableMatrixCursor$RowBuilder;->mTransaction:Lcom/google/android/music/store/MutableMatrixCursor$TransactionData;

    invoke-static {v0}, Lcom/google/android/music/store/MutableMatrixCursor$TransactionData;->access$000(Lcom/google/android/music/store/MutableMatrixCursor$TransactionData;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/google/android/music/store/MutableMatrixCursor$RowBuilder;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/music/store/MutableMatrixCursor$RowBuilder;->index:I

    aput-object p1, v0, v1

    .line 197
    return-object p0
.end method

.method public finish()V
    .locals 4

    .prologue
    .line 201
    iget v0, p0, Lcom/google/android/music/store/MutableMatrixCursor$RowBuilder;->index:I

    iget v1, p0, Lcom/google/android/music/store/MutableMatrixCursor$RowBuilder;->endIndex:I

    if-eq v0, v1, :cond_0

    .line 202
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/music/store/MutableMatrixCursor$RowBuilder;->endIndex:I

    iget v3, p0, Lcom/google/android/music/store/MutableMatrixCursor$RowBuilder;->index:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " columns"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_0
    return-void
.end method
