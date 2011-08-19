.class public Lcom/google/android/music/utils/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    .local p0, this:Lcom/google/android/music/utils/ArrayUtils;,"Lcom/google/android/music/utils/ArrayUtils<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs combine([[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([[TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, arrays:[[Ljava/lang/Object;,"[[TT;"
    const/4 v10, 0x0

    .line 12
    array-length v9, p0

    if-nez v9, :cond_0

    .line 13
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Must supply at least 1 array to combine"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 16
    :cond_0
    const/4 v8, 0x0

    .line 17
    .local v8, totalSize:I
    move-object v1, p0

    .local v1, arr$:[[Ljava/lang/Object;
    array-length v6, v1

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v2, v1, v5

    .line 18
    .local v2, array:[Ljava/lang/Object;,"[TT;"
    array-length v9, v2

    add-int/2addr v8, v9

    .line 17
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 21
    .end local v2           #array:[Ljava/lang/Object;,"[TT;"
    :cond_1
    aget-object v9, p0, v10

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v9

    invoke-static {v9, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/Object;

    move-object v0, v9

    check-cast v0, [Ljava/lang/Object;

    move-object v4, v0

    .line 24
    .local v4, finalArray:[Ljava/lang/Object;,"[TT;"
    const/4 v3, 0x0

    .line 25
    .local v3, currentPos:I
    move-object v1, p0

    array-length v6, v1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_2

    aget-object v2, v1, v5

    .line 26
    .restart local v2       #array:[Ljava/lang/Object;,"[TT;"
    array-length v7, v2

    .line 27
    .local v7, length:I
    invoke-static {v2, v10, v4, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    array-length v9, v2

    add-int/2addr v3, v9

    .line 25
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 30
    .end local v2           #array:[Ljava/lang/Object;,"[TT;"
    .end local v7           #length:I
    :cond_2
    return-object v4
.end method
