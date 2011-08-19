.class public Lorg/htmlparser/lexer/PageIndex;
.super Ljava/lang/Object;
.source "PageIndex.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/htmlparser/util/sort/Sortable;


# instance fields
.field protected mCount:I

.field protected mIncrement:I

.field protected mIndices:[I

.field protected mPage:Lorg/htmlparser/lexer/Page;


# direct methods
.method public constructor <init>(Lorg/htmlparser/lexer/Page;)V
    .locals 1
    .parameter "page"

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lorg/htmlparser/lexer/PageIndex;->mPage:Lorg/htmlparser/lexer/Page;

    .line 78
    iget v0, p0, Lorg/htmlparser/lexer/PageIndex;->mIncrement:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/htmlparser/lexer/PageIndex;->mIndices:[I

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lorg/htmlparser/lexer/PageIndex;->mCount:I

    .line 80
    const/16 v0, 0xc8

    iput v0, p0, Lorg/htmlparser/lexer/PageIndex;->mIncrement:I

    .line 81
    return-void
.end method


# virtual methods
.method public add(Lorg/htmlparser/lexer/Cursor;)I
    .locals 6
    .parameter "cursor"

    .prologue
    const/4 v5, 0x1

    .line 147
    invoke-virtual {p1}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v1

    .line 148
    .local v1, position:I
    iget v3, p0, Lorg/htmlparser/lexer/PageIndex;->mCount:I

    if-nez v3, :cond_1

    .line 150
    const/4 v2, 0x0

    .line 151
    .local v2, ret:I
    invoke-virtual {p0, v1, v2}, Lorg/htmlparser/lexer/PageIndex;->insertElementAt(II)V

    .line 175
    :cond_0
    :goto_0
    return v2

    .line 155
    .end local v2           #ret:I
    :cond_1
    iget-object v3, p0, Lorg/htmlparser/lexer/PageIndex;->mIndices:[I

    iget v4, p0, Lorg/htmlparser/lexer/PageIndex;->mCount:I

    sub-int/2addr v4, v5

    aget v0, v3, v4

    .line 156
    .local v0, last:I
    if-ne v1, v0, :cond_2

    .line 157
    iget v3, p0, Lorg/htmlparser/lexer/PageIndex;->mCount:I

    sub-int v2, v3, v5

    .restart local v2       #ret:I
    goto :goto_0

    .line 159
    .end local v2           #ret:I
    :cond_2
    if-le v1, v0, :cond_3

    .line 161
    iget v2, p0, Lorg/htmlparser/lexer/PageIndex;->mCount:I

    .line 162
    .restart local v2       #ret:I
    invoke-virtual {p0, v1, v2}, Lorg/htmlparser/lexer/PageIndex;->insertElementAt(II)V

    goto :goto_0

    .line 167
    .end local v2           #ret:I
    :cond_3
    invoke-static {p0, p1}, Lorg/htmlparser/util/sort/Sort;->bsearch(Lorg/htmlparser/util/sort/Sortable;Lorg/htmlparser/util/sort/Ordered;)I

    move-result v2

    .line 170
    .restart local v2       #ret:I
    invoke-virtual {p0}, Lorg/htmlparser/lexer/PageIndex;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    iget-object v3, p0, Lorg/htmlparser/lexer/PageIndex;->mIndices:[I

    aget v3, v3, v2

    if-eq v1, v3, :cond_0

    .line 171
    :cond_4
    invoke-virtual {p0, v1, v2}, Lorg/htmlparser/lexer/PageIndex;->insertElementAt(II)V

    goto :goto_0
.end method

.method public capacity()I
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lorg/htmlparser/lexer/PageIndex;->mIndices:[I

    array-length v0, v0

    return v0
.end method

.method public column(Lorg/htmlparser/lexer/Cursor;)I
    .locals 3
    .parameter "cursor"

    .prologue
    .line 267
    invoke-virtual {p0, p1}, Lorg/htmlparser/lexer/PageIndex;->row(Lorg/htmlparser/lexer/Cursor;)I

    move-result v1

    .line 268
    .local v1, row:I
    if-eqz v1, :cond_0

    .line 269
    const/4 v2, 0x1

    sub-int v2, v1, v2

    invoke-virtual {p0, v2}, Lorg/htmlparser/lexer/PageIndex;->elementAt(I)I

    move-result v0

    .line 273
    .local v0, previous:I
    :goto_0
    invoke-virtual {p1}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v2

    sub-int/2addr v2, v0

    return v2

    .line 271
    .end local v0           #previous:I
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #previous:I
    goto :goto_0
.end method

.method public elementAt(I)I
    .locals 3
    .parameter "index"

    .prologue
    .line 221
    iget v0, p0, Lorg/htmlparser/lexer/PageIndex;->mCount:I

    if-lt p1, v0, :cond_0

    .line 222
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " beyond current limit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_0
    iget-object v0, p0, Lorg/htmlparser/lexer/PageIndex;->mIndices:[I

    aget v0, v0, p1

    return v0
.end method

.method public fetch(ILorg/htmlparser/util/sort/Ordered;)Lorg/htmlparser/util/sort/Ordered;
    .locals 4
    .parameter "index"
    .parameter "reuse"

    .prologue
    .line 402
    if-eqz p2, :cond_0

    .line 404
    move-object v0, p2

    check-cast v0, Lorg/htmlparser/lexer/Cursor;

    move-object v1, v0

    .line 405
    .local v1, ret:Lorg/htmlparser/lexer/Cursor;
    iget-object v2, p0, Lorg/htmlparser/lexer/PageIndex;->mIndices:[I

    aget v2, v2, p1

    iput v2, v1, Lorg/htmlparser/lexer/Cursor;->mPosition:I

    .line 406
    invoke-virtual {p0}, Lorg/htmlparser/lexer/PageIndex;->getPage()Lorg/htmlparser/lexer/Page;

    move-result-object v2

    iput-object v2, v1, Lorg/htmlparser/lexer/Cursor;->mPage:Lorg/htmlparser/lexer/Page;

    .line 411
    :goto_0
    return-object v1

    .line 409
    .end local v1           #ret:Lorg/htmlparser/lexer/Cursor;
    :cond_0
    new-instance v1, Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {p0}, Lorg/htmlparser/lexer/PageIndex;->getPage()Lorg/htmlparser/lexer/Page;

    move-result-object v2

    iget-object v3, p0, Lorg/htmlparser/lexer/PageIndex;->mIndices:[I

    aget v3, v3, p1

    invoke-direct {v1, v2, v3}, Lorg/htmlparser/lexer/Cursor;-><init>(Lorg/htmlparser/lexer/Page;I)V

    .restart local v1       #ret:Lorg/htmlparser/lexer/Cursor;
    goto :goto_0
.end method

.method public first()I
    .locals 1

    .prologue
    .line 373
    const/4 v0, 0x0

    return v0
.end method

.method public getPage()Lorg/htmlparser/lexer/Page;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lorg/htmlparser/lexer/PageIndex;->mPage:Lorg/htmlparser/lexer/Page;

    return-object v0
.end method

.method protected insertElementAt(II)V
    .locals 6
    .parameter "cursor"
    .parameter "index"

    .prologue
    const/4 v3, 0x0

    .line 330
    invoke-virtual {p0}, Lorg/htmlparser/lexer/PageIndex;->capacity()I

    move-result v1

    if-ge p2, v1, :cond_0

    invoke-virtual {p0}, Lorg/htmlparser/lexer/PageIndex;->size()I

    move-result v1

    invoke-virtual {p0}, Lorg/htmlparser/lexer/PageIndex;->capacity()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 332
    :cond_0
    invoke-virtual {p0}, Lorg/htmlparser/lexer/PageIndex;->capacity()I

    move-result v1

    iget v2, p0, Lorg/htmlparser/lexer/PageIndex;->mIncrement:I

    add-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v0, v1, [I

    .line 333
    .local v0, new_values:[I
    iget v1, p0, Lorg/htmlparser/lexer/PageIndex;->mIncrement:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/htmlparser/lexer/PageIndex;->mIncrement:I

    .line 334
    invoke-virtual {p0}, Lorg/htmlparser/lexer/PageIndex;->capacity()I

    move-result v1

    if-ge p2, v1, :cond_2

    .line 337
    iget-object v1, p0, Lorg/htmlparser/lexer/PageIndex;->mIndices:[I

    invoke-static {v1, v3, v0, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 338
    iget-object v1, p0, Lorg/htmlparser/lexer/PageIndex;->mIndices:[I

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p0}, Lorg/htmlparser/lexer/PageIndex;->capacity()I

    move-result v3

    sub-int/2addr v3, p2

    invoke-static {v1, p2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 342
    :goto_0
    iput-object v0, p0, Lorg/htmlparser/lexer/PageIndex;->mIndices:[I

    .line 347
    .end local v0           #new_values:[I
    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/htmlparser/lexer/PageIndex;->mIndices:[I

    aput p1, v1, p2

    .line 348
    iget v1, p0, Lorg/htmlparser/lexer/PageIndex;->mCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/htmlparser/lexer/PageIndex;->mCount:I

    .line 349
    return-void

    .line 341
    .restart local v0       #new_values:[I
    :cond_2
    iget-object v1, p0, Lorg/htmlparser/lexer/PageIndex;->mIndices:[I

    invoke-virtual {p0}, Lorg/htmlparser/lexer/PageIndex;->capacity()I

    move-result v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 344
    .end local v0           #new_values:[I
    :cond_3
    invoke-virtual {p0}, Lorg/htmlparser/lexer/PageIndex;->size()I

    move-result v1

    if-ge p2, v1, :cond_1

    .line 346
    iget-object v1, p0, Lorg/htmlparser/lexer/PageIndex;->mIndices:[I

    iget-object v2, p0, Lorg/htmlparser/lexer/PageIndex;->mIndices:[I

    add-int/lit8 v3, p2, 0x1

    invoke-virtual {p0}, Lorg/htmlparser/lexer/PageIndex;->capacity()I

    move-result v4

    add-int/lit8 v5, p2, 0x1

    sub-int/2addr v4, v5

    invoke-static {v1, p2, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1
.end method

.method public last()I
    .locals 2

    .prologue
    .line 384
    iget v0, p0, Lorg/htmlparser/lexer/PageIndex;->mCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    return v0
.end method

.method public row(Lorg/htmlparser/lexer/Cursor;)I
    .locals 3
    .parameter "cursor"

    .prologue
    .line 236
    invoke-static {p0, p1}, Lorg/htmlparser/util/sort/Sort;->bsearch(Lorg/htmlparser/util/sort/Sortable;Lorg/htmlparser/util/sort/Ordered;)I

    move-result v0

    .line 241
    .local v0, ret:I
    iget v1, p0, Lorg/htmlparser/lexer/PageIndex;->mCount:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v1

    iget-object v2, p0, Lorg/htmlparser/lexer/PageIndex;->mIndices:[I

    aget v2, v2, v0

    if-ne v1, v2, :cond_0

    .line 242
    add-int/lit8 v0, v0, 0x1

    .line 244
    :cond_0
    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lorg/htmlparser/lexer/PageIndex;->mCount:I

    return v0
.end method
