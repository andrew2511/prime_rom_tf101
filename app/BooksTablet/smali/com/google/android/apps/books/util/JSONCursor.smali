.class public Lcom/google/android/apps/books/util/JSONCursor;
.super Landroid/database/AbstractCursor;
.source "JSONCursor.java"


# instance fields
.field private mColumns:[Ljava/lang/String;

.field private mCurrentRow:Lorg/json/JSONObject;

.field private mData:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>([Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 1
    .parameter "columns"
    .parameter "data"

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 26
    const-string v0, "missing columns"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/books/util/JSONCursor;->mColumns:[Ljava/lang/String;

    .line 27
    const-string v0, "missing data"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    iput-object v0, p0, Lcom/google/android/apps/books/util/JSONCursor;->mData:Lorg/json/JSONArray;

    .line 29
    invoke-direct {p0}, Lcom/google/android/apps/books/util/JSONCursor;->validateData()V

    .line 30
    return-void
.end method

.method private validateData()V
    .locals 9

    .prologue
    .line 38
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v6, p0, Lcom/google/android/apps/books/util/JSONCursor;->mData:Lorg/json/JSONArray;

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_3

    .line 39
    iget-object v6, p0, Lcom/google/android/apps/books/util/JSONCursor;->mData:Lorg/json/JSONArray;

    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 40
    .local v5, row:Lorg/json/JSONObject;
    if-eqz v5, :cond_0

    const/4 v6, 0x1

    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "missing row "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 42
    iget-object v0, p0, Lcom/google/android/apps/books/util/JSONCursor;->mColumns:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_2
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 43
    .local v1, column:Ljava/lang/String;
    const-string v6, "_id"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 42
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 40
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #column:Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    .line 44
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #column:Ljava/lang/String;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    :cond_1
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "row "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " missing column "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    goto :goto_3

    .line 38
    .end local v1           #column:Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 48
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #row:Lorg/json/JSONObject;
    :cond_3
    return-void
.end method


# virtual methods
.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/apps/books/util/JSONCursor;->mColumns:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/apps/books/util/JSONCursor;->mData:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .locals 2
    .parameter "column"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/apps/books/util/JSONCursor;->mCurrentRow:Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/util/JSONCursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 2
    .parameter "column"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/apps/books/util/JSONCursor;->mCurrentRow:Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/util/JSONCursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getInt(I)I
    .locals 2
    .parameter "column"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/apps/books/util/JSONCursor;->mCurrentRow:Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/util/JSONCursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .locals 3
    .parameter "column"

    .prologue
    .line 83
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/util/JSONCursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, columnName:Ljava/lang/String;
    const-string v1, "_id"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/google/android/apps/books/util/JSONCursor;->getPosition()I

    move-result v1

    int-to-long v1, v1

    .line 87
    :goto_0
    return-wide v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/books/util/JSONCursor;->mCurrentRow:Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_0
.end method

.method public getShort(I)S
    .locals 2
    .parameter "column"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/apps/books/util/JSONCursor;->mCurrentRow:Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/util/JSONCursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .parameter "column"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/apps/books/util/JSONCursor;->mCurrentRow:Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/util/JSONCursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNull(I)Z
    .locals 2
    .parameter "column"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/apps/books/util/JSONCursor;->mCurrentRow:Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/util/JSONCursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onMove(II)Z
    .locals 1
    .parameter "oldPosition"
    .parameter "newPosition"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/apps/books/util/JSONCursor;->mData:Lorg/json/JSONArray;

    invoke-virtual {v0, p2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/util/JSONCursor;->mCurrentRow:Lorg/json/JSONObject;

    .line 63
    const/4 v0, 0x1

    return v0
.end method
