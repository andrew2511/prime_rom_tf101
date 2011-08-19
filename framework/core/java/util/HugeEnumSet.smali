.class final Ljava/util/HugeEnumSet;
.super Ljava/util/EnumSet;
.source "HugeEnumSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/HugeEnumSet$1;,
        Ljava/util/HugeEnumSet$HugeEnumSetIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Enum",
        "<TE;>;>",
        "Ljava/util/EnumSet",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final BIT_IN_LONG:I = 0x40


# instance fields
.field private bits:[J

.field private final enums:[Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private size:I


# direct methods
.method constructor <init>(Ljava/lang/Class;[Ljava/lang/Enum;)V
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TE;>;[TE;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, this:Ljava/util/HugeEnumSet;,"Ljava/util/HugeEnumSet<TE;>;"
    .local p1, elementType:Ljava/lang/Class;,"Ljava/lang/Class<TE;>;"
    .local p2, enums:[Ljava/lang/Enum;,"[TE;"
    invoke-direct {p0, p1}, Ljava/util/EnumSet;-><init>(Ljava/lang/Class;)V

    .line 44
    iput-object p2, p0, Ljava/util/HugeEnumSet;->enums:[Ljava/lang/Enum;

    .line 45
    array-length v0, p2

    add-int/lit8 v0, v0, 0x40

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x40

    new-array v0, v0, [J

    iput-object v0, p0, Ljava/util/HugeEnumSet;->bits:[J

    .line 46
    return-void
.end method

.method static synthetic access$000(Ljava/util/HugeEnumSet;)[J
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Ljava/util/HugeEnumSet;->bits:[J

    return-object v0
.end method

.method static synthetic access$100(Ljava/util/HugeEnumSet;)[Ljava/lang/Enum;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Ljava/util/HugeEnumSet;->enums:[Ljava/lang/Enum;

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Enum;)Z
    .registers 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 124
    .local p0, this:Ljava/util/HugeEnumSet;,"Ljava/util/HugeEnumSet<TE;>;"
    .local p1, element:Ljava/lang/Enum;,"TE;"
    iget-object v7, p0, Ljava/util/HugeEnumSet;->elementClass:Ljava/lang/Class;

    invoke-virtual {v7, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    .line 126
    .local v6, ordinal:I
    div-int/lit8 v1, v6, 0x40

    .line 127
    .local v1, index:I
    rem-int/lit8 v0, v6, 0x40

    .line 128
    .local v0, inBits:I
    iget-object v7, p0, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v4, v7, v1

    .line 129
    .local v4, oldBits:J
    const-wide/16 v7, 0x1

    shl-long/2addr v7, v0

    or-long v2, v4, v7

    .line 130
    .local v2, newBits:J
    cmp-long v7, v4, v2

    if-eqz v7, :cond_26

    .line 131
    iget-object v7, p0, Ljava/util/HugeEnumSet;->bits:[J

    aput-wide v2, v7, v1

    .line 132
    iget v7, p0, Ljava/util/HugeEnumSet;->size:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Ljava/util/HugeEnumSet;->size:I

    .line 133
    const/4 v7, 0x1

    .line 135
    :goto_25
    return v7

    :cond_26
    const/4 v7, 0x0

    goto :goto_25
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .registers 3
    .parameter "x0"

    .prologue
    .line 23
    .local p0, this:Ljava/util/HugeEnumSet;,"Ljava/util/HugeEnumSet<TE;>;"
    check-cast p1, Ljava/lang/Enum;

    .end local p1
    invoke-virtual {p0, p1}, Ljava/util/HugeEnumSet;->add(Ljava/lang/Enum;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 140
    .local p0, this:Ljava/util/HugeEnumSet;,"Ljava/util/HugeEnumSet<TE;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_8

    if-ne p1, p0, :cond_a

    .line 141
    :cond_8
    const/4 v9, 0x0

    .line 161
    :goto_9
    return v9

    .line 144
    :cond_a
    instance-of v9, p1, Ljava/util/EnumSet;

    if-eqz v9, :cond_4a

    .line 145
    move-object v0, p1

    check-cast v0, Ljava/util/EnumSet;

    move-object v8, v0

    .line 146
    .local v8, set:Ljava/util/EnumSet;,"Ljava/util/EnumSet<*>;"
    iget-object v9, v8, Ljava/util/EnumSet;->elementClass:Ljava/lang/Class;

    iget-object v10, p0, Ljava/util/HugeEnumSet;->elementClass:Ljava/lang/Class;

    invoke-virtual {v9, v10}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 148
    move-object v0, v8

    check-cast v0, Ljava/util/HugeEnumSet;

    move-object v2, v0

    .line 149
    .local v2, hugeSet:Ljava/util/HugeEnumSet;,"Ljava/util/HugeEnumSet<TE;>;"
    const/4 v1, 0x0

    .line 150
    .local v1, changed:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1f
    iget-object v9, p0, Ljava/util/HugeEnumSet;->bits:[J

    array-length v9, v9

    if-ge v3, v9, :cond_48

    .line 151
    iget-object v9, p0, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v6, v9, v3

    .line 152
    .local v6, oldBits:J
    iget-object v9, v2, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v9, v9, v3

    or-long v4, v6, v9

    .line 153
    .local v4, newBits:J
    cmp-long v9, v6, v4

    if-eqz v9, :cond_45

    .line 154
    iget-object v9, p0, Ljava/util/HugeEnumSet;->bits:[J

    aput-wide v4, v9, v3

    .line 155
    iget v9, p0, Ljava/util/HugeEnumSet;->size:I

    invoke-static {v4, v5}, Ljava/lang/Long;->bitCount(J)I

    move-result v10

    invoke-static {v6, v7}, Ljava/lang/Long;->bitCount(J)I

    move-result v11

    sub-int/2addr v10, v11

    add-int/2addr v9, v10

    iput v9, p0, Ljava/util/HugeEnumSet;->size:I

    .line 156
    const/4 v1, 0x1

    .line 150
    :cond_45
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .end local v4           #newBits:J
    .end local v6           #oldBits:J
    :cond_48
    move v9, v1

    .line 159
    goto :goto_9

    .line 161
    .end local v1           #changed:Z
    .end local v2           #hugeSet:Ljava/util/HugeEnumSet;,"Ljava/util/HugeEnumSet<TE;>;"
    .end local v3           #i:I
    .end local v8           #set:Ljava/util/EnumSet;,"Ljava/util/EnumSet<*>;"
    :cond_4a
    invoke-super {p0, p1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    move-result v9

    goto :goto_9
.end method

.method public clear()V
    .registers 4

    .prologue
    .line 171
    .local p0, this:Ljava/util/HugeEnumSet;,"Ljava/util/HugeEnumSet<TE;>;"
    iget-object v0, p0, Ljava/util/HugeEnumSet;->bits:[J

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    .line 172
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/HugeEnumSet;->size:I

    .line 173
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 23
    .local p0, this:Ljava/util/HugeEnumSet;,"Ljava/util/HugeEnumSet<TE;>;"
    invoke-virtual {p0}, Ljava/util/HugeEnumSet;->clone()Ljava/util/HugeEnumSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/util/EnumSet;
    .registers 2

    .prologue
    .line 23
    .local p0, this:Ljava/util/HugeEnumSet;,"Ljava/util/HugeEnumSet<TE;>;"
    invoke-virtual {p0}, Ljava/util/HugeEnumSet;->clone()Ljava/util/HugeEnumSet;

    move-result-object v0

    return-object v0
.end method

.method public clone()Ljava/util/HugeEnumSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HugeEnumSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 206
    .local p0, this:Ljava/util/HugeEnumSet;,"Ljava/util/HugeEnumSet<TE;>;"
    invoke-super {p0}, Ljava/util/EnumSet;->clone()Ljava/util/EnumSet;

    move-result-object v0

    check-cast v0, Ljava/util/HugeEnumSet;

    .line 207
    .local v0, set:Ljava/util/HugeEnumSet;,"Ljava/util/HugeEnumSet<TE;>;"
    iget-object v1, p0, Ljava/util/HugeEnumSet;->bits:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Ljava/util/HugeEnumSet;,"Ljava/util/HugeEnumSet<TE;>;"
    check-cast p0, [J

    iput-object p0, v0, Ljava/util/HugeEnumSet;->bits:[J

    .line 208
    return-object v0
.end method

.method protected complement()V
    .registers 9

    .prologue
    .local p0, this:Ljava/util/HugeEnumSet;,"Ljava/util/HugeEnumSet<TE;>;"
    const-wide/16 v6, -0x1

    .line 177
    const/4 v4, 0x0

    iput v4, p0, Ljava/util/HugeEnumSet;->size:I

    .line 178
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v4, p0, Ljava/util/HugeEnumSet;->bits:[J

    array-length v3, v4

    .local v3, length:I
    :goto_9
    if-ge v2, v3, :cond_31

    .line 179
    iget-object v4, p0, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v4, v4, v2

    xor-long v0, v4, v6

    .line 182
    .local v0, b:J
    const/4 v4, 0x1

    sub-int v4, v3, v4

    if-ne v2, v4, :cond_21

    .line 183
    const/16 v4, 0x40

    iget-object v5, p0, Ljava/util/HugeEnumSet;->enums:[Ljava/lang/Enum;

    array-length v5, v5

    rem-int/lit8 v5, v5, 0x40

    sub-int/2addr v4, v5

    ushr-long v4, v6, v4

    and-long/2addr v0, v4

    .line 186
    :cond_21
    iget v4, p0, Ljava/util/HugeEnumSet;->size:I

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Ljava/util/HugeEnumSet;->size:I

    .line 187
    iget-object v4, p0, Ljava/util/HugeEnumSet;->bits:[J

    aput-wide v0, v4, v2

    .line 178
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 189
    .end local v0           #b:J
    :cond_31
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 10
    .parameter "object"

    .prologue
    .local p0, this:Ljava/util/HugeEnumSet;,"Ljava/util/HugeEnumSet<TE;>;"
    const/4 v7, 0x0

    .line 193
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/HugeEnumSet;->isValidType(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_f

    :cond_d
    move v3, v7

    .line 201
    .end local p1
    :goto_e
    return v3

    .line 198
    .restart local p1
    :cond_f
    check-cast p1, Ljava/lang/Enum;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    .line 199
    .local v2, ordinal:I
    div-int/lit8 v1, v2, 0x40

    .line 200
    .local v1, index:I
    rem-int/lit8 v0, v2, 0x40

    .line 201
    .local v0, inBits:I
    iget-object v3, p0, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v3, v3, v1

    const-wide/16 v5, 0x1

    shl-long/2addr v5, v0

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_29

    const/4 v3, 0x1

    goto :goto_e

    :cond_29
    move v3, v7

    goto :goto_e
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/HugeEnumSet;,"Ljava/util/HugeEnumSet<TE;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 213
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_a

    move v5, v7

    .line 228
    :goto_9
    return v5

    .line 216
    :cond_a
    instance-of v5, p1, Ljava/util/HugeEnumSet;

    if-eqz v5, :cond_34

    .line 217
    move-object v0, p1

    check-cast v0, Ljava/util/HugeEnumSet;

    move-object v2, v0

    .line 218
    .local v2, set:Ljava/util/HugeEnumSet;,"Ljava/util/HugeEnumSet<*>;"
    iget-object v5, v2, Ljava/util/HugeEnumSet;->elementClass:Ljava/lang/Class;

    invoke-virtual {p0, v5}, Ljava/util/HugeEnumSet;->isValidType(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 219
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1b
    iget-object v5, p0, Ljava/util/HugeEnumSet;->bits:[J

    array-length v5, v5

    if-ge v1, v5, :cond_32

    .line 220
    iget-object v5, v2, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v3, v5, v1

    .line 221
    .local v3, setBits:J
    iget-object v5, p0, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v5, v5, v1

    and-long/2addr v5, v3

    cmp-long v5, v5, v3

    if-eqz v5, :cond_2f

    move v5, v8

    .line 222
    goto :goto_9

    .line 219
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .end local v3           #setBits:J
    :cond_32
    move v5, v7

    .line 225
    goto :goto_9

    .line 228
    .end local v1           #i:I
    .end local v2           #set:Ljava/util/HugeEnumSet;,"Ljava/util/HugeEnumSet<*>;"
    :cond_34
    instance-of v5, p1, Ljava/util/EnumSet;

    if-nez v5, :cond_40

    invoke-super {p0, p1}, Ljava/util/EnumSet;->containsAll(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_40

    move v5, v7

    goto :goto_9

    :cond_40
    move v5, v8

    goto :goto_9
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter "object"

    .prologue
    .line 233
    .local p0, this:Ljava/util/HugeEnumSet;,"Ljava/util/HugeEnumSet<TE;>;"
    if-nez p1, :cond_4

    .line 234
    const/4 v0, 0x0

    .line 239
    .end local p1
    :goto_3
    return v0

    .line 236
    .restart local p1
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HugeEnumSet;->isValidType(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 237
    invoke-super {p0, p1}, Ljava/util/EnumSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    .line 239
    :cond_13
    iget-object v0, p0, Ljava/util/HugeEnumSet;->bits:[J

    check-cast p1, Ljava/util/HugeEnumSet;

    .end local p1
    iget-object v1, p1, Ljava/util/HugeEnumSet;->bits:[J

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    goto :goto_3
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 244
    .local p0, this:Ljava/util/HugeEnumSet;,"Ljava/util/HugeEnumSet<TE;>;"
    new-instance v0, Ljava/util/HugeEnumSet$HugeEnumSetIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/HugeEnumSet$HugeEnumSetIterator;-><init>(Ljava/util/HugeEnumSet;Ljava/util/HugeEnumSet$1;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 15
    .parameter "object"

    .prologue
    .local p0, this:Ljava/util/HugeEnumSet;,"Ljava/util/HugeEnumSet<TE;>;"
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 249
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/util/HugeEnumSet;->isValidType(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_10

    :cond_e
    move v7, v11

    .line 264
    .end local p1
    :goto_f
    return v7

    .line 254
    .restart local p1
    :cond_10
    check-cast p1, Ljava/lang/Enum;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    .line 255
    .local v6, ordinal:I
    div-int/lit8 v1, v6, 0x40

    .line 256
    .local v1, index:I
    rem-int/lit8 v0, v6, 0x40

    .line 257
    .local v0, inBits:I
    iget-object v7, p0, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v4, v7, v1

    .line 258
    .local v4, oldBits:J
    const-wide/16 v7, 0x1

    shl-long/2addr v7, v0

    const-wide/16 v9, -0x1

    xor-long/2addr v7, v9

    and-long v2, v4, v7

    .line 259
    .local v2, newBits:J
    cmp-long v7, v4, v2

    if-eqz v7, :cond_35

    .line 260
    iget-object v7, p0, Ljava/util/HugeEnumSet;->bits:[J

    aput-wide v2, v7, v1

    .line 261
    iget v7, p0, Ljava/util/HugeEnumSet;->size:I

    sub-int/2addr v7, v12

    iput v7, p0, Ljava/util/HugeEnumSet;->size:I

    move v7, v12

    .line 262
    goto :goto_f

    :cond_35
    move v7, v11

    .line 264
    goto :goto_f
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 15
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/HugeEnumSet;,"Ljava/util/HugeEnumSet<TE;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    const/4 v10, 0x0

    .line 269
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_9

    move v9, v10

    .line 292
    :goto_8
    return v9

    .line 273
    :cond_9
    instance-of v9, p1, Ljava/util/EnumSet;

    if-eqz v9, :cond_4f

    .line 274
    move-object v0, p1

    check-cast v0, Ljava/util/EnumSet;

    move-object v8, v0

    .line 275
    .local v8, set:Ljava/util/EnumSet;,"Ljava/util/EnumSet<*>;"
    iget-object v9, v8, Ljava/util/EnumSet;->elementClass:Ljava/lang/Class;

    invoke-virtual {p0, v9}, Ljava/util/HugeEnumSet;->isValidType(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_1b

    move v9, v10

    .line 276
    goto :goto_8

    .line 279
    :cond_1b
    move-object v0, v8

    check-cast v0, Ljava/util/HugeEnumSet;

    move-object v2, v0

    .line 280
    .local v2, hugeSet:Ljava/util/HugeEnumSet;,"Ljava/util/HugeEnumSet<TE;>;"
    const/4 v1, 0x0

    .line 281
    .local v1, changed:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_21
    iget-object v9, p0, Ljava/util/HugeEnumSet;->bits:[J

    array-length v9, v9

    if-ge v3, v9, :cond_4d

    .line 282
    iget-object v9, p0, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v6, v9, v3

    .line 283
    .local v6, oldBits:J
    iget-object v9, v2, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v9, v9, v3

    const-wide/16 v11, -0x1

    xor-long/2addr v9, v11

    and-long v4, v6, v9

    .line 284
    .local v4, newBits:J
    cmp-long v9, v6, v4

    if-eqz v9, :cond_4a

    .line 285
    iget-object v9, p0, Ljava/util/HugeEnumSet;->bits:[J

    aput-wide v4, v9, v3

    .line 286
    iget v9, p0, Ljava/util/HugeEnumSet;->size:I

    invoke-static {v4, v5}, Ljava/lang/Long;->bitCount(J)I

    move-result v10

    invoke-static {v6, v7}, Ljava/lang/Long;->bitCount(J)I

    move-result v11

    sub-int/2addr v10, v11

    add-int/2addr v9, v10

    iput v9, p0, Ljava/util/HugeEnumSet;->size:I

    .line 287
    const/4 v1, 0x1

    .line 281
    :cond_4a
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .end local v4           #newBits:J
    .end local v6           #oldBits:J
    :cond_4d
    move v9, v1

    .line 290
    goto :goto_8

    .line 292
    .end local v1           #changed:Z
    .end local v2           #hugeSet:Ljava/util/HugeEnumSet;,"Ljava/util/HugeEnumSet<TE;>;"
    .end local v3           #i:I
    .end local v8           #set:Ljava/util/EnumSet;,"Ljava/util/EnumSet<*>;"
    :cond_4f
    invoke-super {p0, p1}, Ljava/util/EnumSet;->removeAll(Ljava/util/Collection;)Z

    move-result v9

    goto :goto_8
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 297
    .local p0, this:Ljava/util/HugeEnumSet;,"Ljava/util/HugeEnumSet<TE;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    instance-of v9, p1, Ljava/util/EnumSet;

    if-eqz v9, :cond_4c

    .line 298
    move-object v0, p1

    check-cast v0, Ljava/util/EnumSet;

    move-object v8, v0

    .line 299
    .local v8, set:Ljava/util/EnumSet;,"Ljava/util/EnumSet<*>;"
    iget-object v9, v8, Ljava/util/EnumSet;->elementClass:Ljava/lang/Class;

    invoke-virtual {p0, v9}, Ljava/util/HugeEnumSet;->isValidType(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_1b

    .line 300
    iget v9, p0, Ljava/util/HugeEnumSet;->size:I

    if-lez v9, :cond_19

    .line 301
    invoke-virtual {p0}, Ljava/util/HugeEnumSet;->clear()V

    .line 302
    const/4 v9, 0x1

    .line 321
    .end local v8           #set:Ljava/util/EnumSet;,"Ljava/util/EnumSet<*>;"
    :goto_18
    return v9

    .line 304
    .restart local v8       #set:Ljava/util/EnumSet;,"Ljava/util/EnumSet<*>;"
    :cond_19
    const/4 v9, 0x0

    goto :goto_18

    .line 308
    :cond_1b
    move-object v0, v8

    check-cast v0, Ljava/util/HugeEnumSet;

    move-object v2, v0

    .line 309
    .local v2, hugeSet:Ljava/util/HugeEnumSet;,"Ljava/util/HugeEnumSet<TE;>;"
    const/4 v1, 0x0

    .line 310
    .local v1, changed:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_21
    iget-object v9, p0, Ljava/util/HugeEnumSet;->bits:[J

    array-length v9, v9

    if-ge v3, v9, :cond_4a

    .line 311
    iget-object v9, p0, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v6, v9, v3

    .line 312
    .local v6, oldBits:J
    iget-object v9, v2, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v9, v9, v3

    and-long v4, v6, v9

    .line 313
    .local v4, newBits:J
    cmp-long v9, v6, v4

    if-eqz v9, :cond_47

    .line 314
    iget-object v9, p0, Ljava/util/HugeEnumSet;->bits:[J

    aput-wide v4, v9, v3

    .line 315
    iget v9, p0, Ljava/util/HugeEnumSet;->size:I

    invoke-static {v4, v5}, Ljava/lang/Long;->bitCount(J)I

    move-result v10

    invoke-static {v6, v7}, Ljava/lang/Long;->bitCount(J)I

    move-result v11

    sub-int/2addr v10, v11

    add-int/2addr v9, v10

    iput v9, p0, Ljava/util/HugeEnumSet;->size:I

    .line 316
    const/4 v1, 0x1

    .line 310
    :cond_47
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .end local v4           #newBits:J
    .end local v6           #oldBits:J
    :cond_4a
    move v9, v1

    .line 319
    goto :goto_18

    .line 321
    .end local v1           #changed:Z
    .end local v2           #hugeSet:Ljava/util/HugeEnumSet;,"Ljava/util/HugeEnumSet<TE;>;"
    .end local v3           #i:I
    .end local v8           #set:Ljava/util/EnumSet;,"Ljava/util/EnumSet<*>;"
    :cond_4c
    invoke-super {p0, p1}, Ljava/util/EnumSet;->retainAll(Ljava/util/Collection;)Z

    move-result v9

    goto :goto_18
.end method

.method setRange(Ljava/lang/Enum;Ljava/lang/Enum;)V
    .registers 16
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)V"
        }
    .end annotation

    .prologue
    .line 326
    .local p0, this:Ljava/util/HugeEnumSet;,"Ljava/util/HugeEnumSet<TE;>;"
    .local p1, start:Ljava/lang/Enum;,"TE;"
    .local p2, end:Ljava/lang/Enum;,"TE;"
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    .line 327
    .local v8, startOrdinal:I
    div-int/lit8 v7, v8, 0x40

    .line 328
    .local v7, startIndex:I
    rem-int/lit8 v6, v8, 0x40

    .line 330
    .local v6, startInBits:I
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    .line 331
    .local v2, endOrdinal:I
    div-int/lit8 v1, v2, 0x40

    .line 332
    .local v1, endIndex:I
    rem-int/lit8 v0, v2, 0x40

    .line 334
    .local v0, endInBits:I
    if-ne v7, v1, :cond_40

    .line 335
    const-wide/16 v9, -0x1

    const/16 v11, 0x40

    sub-int v12, v0, v6

    add-int/lit8 v12, v12, 0x1

    sub-int/2addr v11, v12

    ushr-long/2addr v9, v11

    shl-long v4, v9, v6

    .line 336
    .local v4, range:J
    iget v9, p0, Ljava/util/HugeEnumSet;->size:I

    iget-object v10, p0, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v10, v10, v7

    invoke-static {v10, v11}, Ljava/lang/Long;->bitCount(J)I

    move-result v10

    sub-int/2addr v9, v10

    iput v9, p0, Ljava/util/HugeEnumSet;->size:I

    .line 337
    iget-object v9, p0, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v10, v9, v7

    or-long/2addr v10, v4

    aput-wide v10, v9, v7

    .line 338
    iget v9, p0, Ljava/util/HugeEnumSet;->size:I

    iget-object v10, p0, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v10, v10, v7

    invoke-static {v10, v11}, Ljava/lang/Long;->bitCount(J)I

    move-result v10

    add-int/2addr v9, v10

    iput v9, p0, Ljava/util/HugeEnumSet;->size:I

    .line 358
    :cond_3f
    return-void

    .line 341
    .end local v4           #range:J
    :cond_40
    const-wide/16 v9, -0x1

    ushr-long/2addr v9, v6

    shl-long v4, v9, v6

    .line 342
    .restart local v4       #range:J
    iget v9, p0, Ljava/util/HugeEnumSet;->size:I

    iget-object v10, p0, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v10, v10, v7

    invoke-static {v10, v11}, Ljava/lang/Long;->bitCount(J)I

    move-result v10

    sub-int/2addr v9, v10

    iput v9, p0, Ljava/util/HugeEnumSet;->size:I

    .line 343
    iget-object v9, p0, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v10, v9, v7

    or-long/2addr v10, v4

    aput-wide v10, v9, v7

    .line 344
    iget v9, p0, Ljava/util/HugeEnumSet;->size:I

    iget-object v10, p0, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v10, v10, v7

    invoke-static {v10, v11}, Ljava/lang/Long;->bitCount(J)I

    move-result v10

    add-int/2addr v9, v10

    iput v9, p0, Ljava/util/HugeEnumSet;->size:I

    .line 348
    const-wide/16 v9, -0x1

    const/16 v11, 0x40

    add-int/lit8 v12, v0, 0x1

    sub-int/2addr v11, v12

    ushr-long v4, v9, v11

    .line 349
    iget v9, p0, Ljava/util/HugeEnumSet;->size:I

    iget-object v10, p0, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v10, v10, v1

    invoke-static {v10, v11}, Ljava/lang/Long;->bitCount(J)I

    move-result v10

    sub-int/2addr v9, v10

    iput v9, p0, Ljava/util/HugeEnumSet;->size:I

    .line 350
    iget-object v9, p0, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v10, v9, v1

    or-long/2addr v10, v4

    aput-wide v10, v9, v1

    .line 351
    iget v9, p0, Ljava/util/HugeEnumSet;->size:I

    iget-object v10, p0, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v10, v10, v1

    invoke-static {v10, v11}, Ljava/lang/Long;->bitCount(J)I

    move-result v10

    add-int/2addr v9, v10

    iput v9, p0, Ljava/util/HugeEnumSet;->size:I

    .line 352
    add-int/lit8 v3, v7, 0x1

    .local v3, i:I
    :goto_92
    const/4 v9, 0x1

    sub-int v9, v1, v9

    if-gt v3, v9, :cond_3f

    .line 353
    iget v9, p0, Ljava/util/HugeEnumSet;->size:I

    iget-object v10, p0, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v10, v10, v3

    invoke-static {v10, v11}, Ljava/lang/Long;->bitCount(J)I

    move-result v10

    sub-int/2addr v9, v10

    iput v9, p0, Ljava/util/HugeEnumSet;->size:I

    .line 354
    iget-object v9, p0, Ljava/util/HugeEnumSet;->bits:[J

    const-wide/16 v10, -0x1

    aput-wide v10, v9, v3

    .line 355
    iget v9, p0, Ljava/util/HugeEnumSet;->size:I

    iget-object v10, p0, Ljava/util/HugeEnumSet;->bits:[J

    aget-wide v10, v10, v3

    invoke-static {v10, v11}, Ljava/lang/Long;->bitCount(J)I

    move-result v10

    add-int/2addr v9, v10

    iput v9, p0, Ljava/util/HugeEnumSet;->size:I

    .line 352
    add-int/lit8 v3, v3, 0x1

    goto :goto_92
.end method

.method public size()I
    .registers 2

    .prologue
    .line 166
    .local p0, this:Ljava/util/HugeEnumSet;,"Ljava/util/HugeEnumSet<TE;>;"
    iget v0, p0, Ljava/util/HugeEnumSet;->size:I

    return v0
.end method
