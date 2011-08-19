.class public Lorg/htmlparser/util/sort/Sort;
.super Ljava/lang/Object;
.source "Sort.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public static bsearch(Lorg/htmlparser/util/sort/Sortable;Lorg/htmlparser/util/sort/Ordered;)I
    .locals 2
    .parameter "set"
    .parameter "ref"

    .prologue
    .line 440
    invoke-interface {p0}, Lorg/htmlparser/util/sort/Sortable;->first()I

    move-result v0

    invoke-interface {p0}, Lorg/htmlparser/util/sort/Sortable;->last()I

    move-result v1

    invoke-static {p0, p1, v0, v1}, Lorg/htmlparser/util/sort/Sort;->bsearch(Lorg/htmlparser/util/sort/Sortable;Lorg/htmlparser/util/sort/Ordered;II)I

    move-result v0

    return v0
.end method

.method public static bsearch(Lorg/htmlparser/util/sort/Sortable;Lorg/htmlparser/util/sort/Ordered;II)I
    .locals 9
    .parameter "set"
    .parameter "ref"
    .parameter "lo"
    .parameter "hi"

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x1

    .line 403
    const/4 v5, -0x1

    .line 405
    .local v5, ret:I
    sub-int v6, p3, p2

    add-int/lit8 v2, v6, 0x1

    .line 406
    .local v2, num:I
    const/4 v3, 0x0

    .line 407
    .local v3, ordered:Lorg/htmlparser/util/sort/Ordered;
    :goto_0
    if-ne v8, v5, :cond_4

    if-gt p2, p3, :cond_4

    .line 409
    div-int/lit8 v0, v2, 0x2

    .line 410
    .local v0, half:I
    and-int/lit8 v6, v2, 0x1

    if-eqz v6, :cond_0

    move v6, v0

    :goto_1
    add-int v1, p2, v6

    .line 411
    .local v1, mid:I
    invoke-interface {p0, v1, v3}, Lorg/htmlparser/util/sort/Sortable;->fetch(ILorg/htmlparser/util/sort/Ordered;)Lorg/htmlparser/util/sort/Ordered;

    move-result-object v3

    .line 412
    invoke-interface {p1, v3}, Lorg/htmlparser/util/sort/Ordered;->compare(Ljava/lang/Object;)I

    move-result v4

    .line 413
    .local v4, result:I
    if-nez v4, :cond_1

    .line 414
    move v5, v1

    goto :goto_0

    .line 410
    .end local v1           #mid:I
    .end local v4           #result:I
    :cond_0
    sub-int v6, v0, v7

    goto :goto_1

    .line 415
    .restart local v1       #mid:I
    .restart local v4       #result:I
    :cond_1
    if-gez v4, :cond_3

    .line 417
    sub-int p3, v1, v7

    .line 418
    and-int/lit8 v6, v2, 0x1

    if-eqz v6, :cond_2

    move v2, v0

    .line 419
    :goto_2
    goto :goto_0

    .line 418
    :cond_2
    sub-int v6, v0, v7

    move v2, v6

    goto :goto_2

    .line 422
    :cond_3
    add-int/lit8 p2, v1, 0x1

    .line 423
    move v2, v0

    .line 425
    goto :goto_0

    .line 426
    .end local v0           #half:I
    .end local v1           #mid:I
    .end local v4           #result:I
    :cond_4
    if-ne v8, v5, :cond_5

    .line 427
    move v5, p2

    .line 429
    :cond_5
    return v5
.end method
