.class Lcom/google/common/collect/RegularImmutableList;
.super Lcom/google/common/collect/ImmutableList;
.source "RegularImmutableList.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableList",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final transient array:[Ljava/lang/Object;

.field private final transient offset:I

.field private final transient size:I


# direct methods
.method constructor <init>([Ljava/lang/Object;)V
    .locals 2
    .parameter "array"

    .prologue
    .line 47
    .local p0, this:Lcom/google/common/collect/RegularImmutableList;,"Lcom/google/common/collect/RegularImmutableList<TE;>;"
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/common/collect/RegularImmutableList;-><init>([Ljava/lang/Object;II)V

    .line 48
    return-void
.end method

.method constructor <init>([Ljava/lang/Object;II)V
    .locals 0
    .parameter "array"
    .parameter "offset"
    .parameter "size"

    .prologue
    .line 40
    .local p0, this:Lcom/google/common/collect/RegularImmutableList;,"Lcom/google/common/collect/RegularImmutableList<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    .line 41
    iput p2, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    .line 42
    iput p3, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    .line 43
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/collect/RegularImmutableList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    return v0
.end method


# virtual methods
.method array()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 233
    .local p0, this:Lcom/google/common/collect/RegularImmutableList;,"Lcom/google/common/collect/RegularImmutableList<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .parameter "target"

    .prologue
    .line 59
    .local p0, this:Lcom/google/common/collect/RegularImmutableList;,"Lcom/google/common/collect/RegularImmutableList<TE;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/RegularImmutableList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 12
    .parameter "object"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .local p0, this:Lcom/google/common/collect/RegularImmutableList;,"Lcom/google/common/collect/RegularImmutableList<TE;>;"
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 179
    if-ne p1, p0, :cond_0

    move v8, v11

    .line 206
    :goto_0
    return v8

    .line 182
    :cond_0
    instance-of v8, p1, Ljava/util/List;

    if-nez v8, :cond_1

    move v8, v10

    .line 183
    goto :goto_0

    .line 186
    :cond_1
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    move-object v7, v0

    .line 187
    .local v7, that:Ljava/util/List;,"Ljava/util/List<*>;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableList;->size()I

    move-result v8

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-eq v8, v9, :cond_2

    move v8, v10

    .line 188
    goto :goto_0

    .line 191
    :cond_2
    iget v4, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    .line 192
    .local v4, index:I
    instance-of v8, p1, Lcom/google/common/collect/RegularImmutableList;

    if-eqz v8, :cond_4

    .line 193
    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/RegularImmutableList;

    move-object v6, v0

    .line 194
    .local v6, other:Lcom/google/common/collect/RegularImmutableList;,"Lcom/google/common/collect/RegularImmutableList<*>;"
    iget v2, v6, Lcom/google/common/collect/RegularImmutableList;->offset:I

    .local v2, i:I
    :goto_1
    iget v8, v6, Lcom/google/common/collect/RegularImmutableList;->offset:I

    iget v9, v6, Lcom/google/common/collect/RegularImmutableList;->size:I

    add-int/2addr v8, v9

    if-ge v2, v8, :cond_6

    .line 195
    iget-object v8, p0, Lcom/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    add-int/lit8 v5, v4, 0x1

    .end local v4           #index:I
    .local v5, index:I
    aget-object v8, v8, v4

    iget-object v9, v6, Lcom/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    aget-object v9, v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    move v8, v10

    .line 196
    goto :goto_0

    .line 194
    :cond_3
    add-int/lit8 v2, v2, 0x1

    move v4, v5

    .end local v5           #index:I
    .restart local v4       #index:I
    goto :goto_1

    .line 200
    .end local v2           #i:I
    .end local v6           #other:Lcom/google/common/collect/RegularImmutableList;,"Lcom/google/common/collect/RegularImmutableList<*>;"
    :cond_4
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 201
    .local v1, element:Ljava/lang/Object;
    iget-object v8, p0, Lcom/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    add-int/lit8 v5, v4, 0x1

    .end local v4           #index:I
    .restart local v5       #index:I
    aget-object v8, v8, v4

    invoke-virtual {v8, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    move v8, v10

    .line 202
    goto :goto_0

    :cond_5
    move v4, v5

    .end local v5           #index:I
    .restart local v4       #index:I
    goto :goto_2

    .end local v1           #element:Ljava/lang/Object;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_6
    move v8, v11

    .line 206
    goto :goto_0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, this:Lcom/google/common/collect/RegularImmutableList;,"Lcom/google/common/collect/RegularImmutableList<TE;>;"
    iget v0, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 88
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 212
    .local p0, this:Lcom/google/common/collect/RegularImmutableList;,"Lcom/google/common/collect/RegularImmutableList<TE;>;"
    const/4 v0, 0x1

    .line 213
    .local v0, hashCode:I
    iget v1, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    iget v3, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    .line 214
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int v0, v2, v3

    .line 213
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 216
    :cond_0
    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 3
    .parameter "target"

    .prologue
    .line 92
    .local p0, this:Lcom/google/common/collect/RegularImmutableList;,"Lcom/google/common/collect/RegularImmutableList<TE;>;"
    if-eqz p1, :cond_1

    .line 93
    iget v0, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    iget v2, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    .line 94
    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    iget v1, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    sub-int v1, v0, v1

    .line 99
    .end local v0           #i:I
    :goto_1
    return v1

    .line 93
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    .end local v0           #i:I
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 55
    .local p0, this:Lcom/google/common/collect/RegularImmutableList;,"Lcom/google/common/collect/RegularImmutableList<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, this:Lcom/google/common/collect/RegularImmutableList;,"Lcom/google/common/collect/RegularImmutableList<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    iget v2, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    invoke-static {v0, v1, v2}, Lcom/google/common/collect/Iterators;->forArray([Ljava/lang/Object;II)Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 33
    .local p0, this:Lcom/google/common/collect/RegularImmutableList;,"Lcom/google/common/collect/RegularImmutableList<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 3
    .parameter "target"

    .prologue
    .line 103
    .local p0, this:Lcom/google/common/collect/RegularImmutableList;,"Lcom/google/common/collect/RegularImmutableList<TE;>;"
    if-eqz p1, :cond_1

    .line 104
    iget v1, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    iget v2, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    add-int/2addr v1, v2

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    if-lt v0, v1, :cond_1

    .line 105
    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    iget v1, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    sub-int v1, v0, v1

    .line 110
    .end local v0           #i:I
    :goto_1
    return v1

    .line 104
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 110
    .end local v0           #i:I
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, this:Lcom/google/common/collect/RegularImmutableList;,"Lcom/google/common/collect/RegularImmutableList<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/RegularImmutableList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .parameter "start"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, this:Lcom/google/common/collect/RegularImmutableList;,"Lcom/google/common/collect/RegularImmutableList<TE;>;"
    iget v0, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndex(II)I

    .line 128
    new-instance v0, Lcom/google/common/collect/RegularImmutableList$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/RegularImmutableList$1;-><init>(Lcom/google/common/collect/RegularImmutableList;I)V

    return-object v0
.end method

.method offset()I
    .locals 1

    .prologue
    .line 229
    .local p0, this:Lcom/google/common/collect/RegularImmutableList;,"Lcom/google/common/collect/RegularImmutableList<TE;>;"
    iget v0, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 51
    .local p0, this:Lcom/google/common/collect/RegularImmutableList;,"Lcom/google/common/collect/RegularImmutableList<TE;>;"
    iget v0, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    return v0
.end method

.method public subList(II)Lcom/google/common/collect/ImmutableList;
    .locals 4
    .parameter "fromIndex"
    .parameter "toIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 114
    .local p0, this:Lcom/google/common/collect/RegularImmutableList;,"Lcom/google/common/collect/RegularImmutableList<TE;>;"
    iget v0, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 115
    if-ne p1, p2, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/RegularImmutableList;

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    add-int/2addr v2, p1

    sub-int v3, p2, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/collect/RegularImmutableList;-><init>([Ljava/lang/Object;II)V

    goto :goto_0
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    .local p0, this:Lcom/google/common/collect/RegularImmutableList;,"Lcom/google/common/collect/RegularImmutableList<TE;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/RegularImmutableList;->subList(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 5

    .prologue
    .line 69
    .local p0, this:Lcom/google/common/collect/RegularImmutableList;,"Lcom/google/common/collect/RegularImmutableList<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableList;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/Object;

    .line 70
    .local v0, newArray:[Ljava/lang/Object;
    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    invoke-static {v1, v2, v0, v3, v4}, Lcom/google/common/collect/Platform;->unsafeArrayCopy([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    .line 71
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, this:Lcom/google/common/collect/RegularImmutableList;,"Lcom/google/common/collect/RegularImmutableList<TE;>;"
    .local p1, other:[Ljava/lang/Object;,"[TT;"
    array-length v0, p1

    iget v1, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    if-ge v0, v1, :cond_1

    .line 76
    iget v0, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    invoke-static {p1, v0}, Lcom/google/common/collect/ObjectArrays;->newArray([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .line 80
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    invoke-static {v0, v1, p1, v2, v3}, Lcom/google/common/collect/Platform;->unsafeArrayCopy([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    .line 81
    return-object p1

    .line 77
    :cond_1
    array-length v0, p1

    iget v1, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    if-le v0, v1, :cond_0

    .line 78
    iget v0, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    const/4 v1, 0x0

    aput-object v1, p1, v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 220
    .local p0, this:Lcom/google/common/collect/RegularImmutableList;,"Lcom/google/common/collect/RegularImmutableList<TE;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableList;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x10

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 221
    .local v1, sb:Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    iget v4, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 222
    iget v2, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    add-int/lit8 v0, v2, 0x1

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/google/common/collect/RegularImmutableList;->offset:I

    iget v3, p0, Lcom/google/common/collect/RegularImmutableList;->size:I

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_0

    .line 223
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 222
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 225
    :cond_0
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
