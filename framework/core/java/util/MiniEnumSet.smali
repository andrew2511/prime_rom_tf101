.class final Ljava/util/MiniEnumSet;
.super Ljava/util/EnumSet;
.source "MiniEnumSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/MiniEnumSet$1;,
        Ljava/util/MiniEnumSet$MiniEnumSetIterator;
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
.field private static final MAX_ELEMENTS:I = 0x40


# instance fields
.field private bits:J

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
    .registers 3
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
    .line 42
    .local p0, this:Ljava/util/MiniEnumSet;,"Ljava/util/MiniEnumSet<TE;>;"
    .local p1, elementType:Ljava/lang/Class;,"Ljava/lang/Class<TE;>;"
    .local p2, enums:[Ljava/lang/Enum;,"[TE;"
    invoke-direct {p0, p1}, Ljava/util/EnumSet;-><init>(Ljava/lang/Class;)V

    .line 43
    iput-object p2, p0, Ljava/util/MiniEnumSet;->enums:[Ljava/lang/Enum;

    .line 44
    return-void
.end method

.method static synthetic access$000(Ljava/util/MiniEnumSet;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 24
    iget-wide v0, p0, Ljava/util/MiniEnumSet;->bits:J

    return-wide v0
.end method

.method static synthetic access$100(Ljava/util/MiniEnumSet;)[Ljava/lang/Enum;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Ljava/util/MiniEnumSet;->enums:[Ljava/lang/Enum;

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Enum;)Z
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, this:Ljava/util/MiniEnumSet;,"Ljava/util/MiniEnumSet<TE;>;"
    .local p1, element:Ljava/lang/Enum;,"TE;"
    iget-object v4, p0, Ljava/util/MiniEnumSet;->elementClass:Ljava/lang/Class;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-wide v2, p0, Ljava/util/MiniEnumSet;->bits:J

    .line 113
    .local v2, oldBits:J
    const-wide/16 v4, 0x1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    shl-long/2addr v4, v6

    or-long v0, v2, v4

    .line 114
    .local v0, newBits:J
    cmp-long v4, v2, v0

    if-eqz v4, :cond_1e

    .line 115
    iput-wide v0, p0, Ljava/util/MiniEnumSet;->bits:J

    .line 116
    iget v4, p0, Ljava/util/MiniEnumSet;->size:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/MiniEnumSet;->size:I

    .line 117
    const/4 v4, 0x1

    .line 119
    :goto_1d
    return v4

    :cond_1e
    const/4 v4, 0x0

    goto :goto_1d
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .registers 3
    .parameter "x0"

    .prologue
    .line 23
    .local p0, this:Ljava/util/MiniEnumSet;,"Ljava/util/MiniEnumSet<TE;>;"
    check-cast p1, Ljava/lang/Enum;

    .end local p1
    invoke-virtual {p0, p1}, Ljava/util/MiniEnumSet;->add(Ljava/lang/Enum;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/MiniEnumSet;,"Ljava/util/MiniEnumSet<TE;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    const/4 v9, 0x0

    .line 124
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_9

    move v7, v9

    .line 138
    :goto_8
    return v7

    .line 127
    :cond_9
    instance-of v7, p1, Ljava/util/EnumSet;

    if-eqz v7, :cond_32

    .line 128
    move-object v0, p1

    check-cast v0, Ljava/util/EnumSet;

    move-object v6, v0

    .line 129
    .local v6, set:Ljava/util/EnumSet;,"Ljava/util/EnumSet<*>;"
    iget-object v7, v6, Ljava/util/EnumSet;->elementClass:Ljava/lang/Class;

    iget-object v8, p0, Ljava/util/MiniEnumSet;->elementClass:Ljava/lang/Class;

    invoke-virtual {v7, v8}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 131
    move-object v0, v6

    check-cast v0, Ljava/util/MiniEnumSet;

    move-object v1, v0

    .line 132
    .local v1, miniSet:Ljava/util/MiniEnumSet;,"Ljava/util/MiniEnumSet<*>;"
    iget-wide v4, p0, Ljava/util/MiniEnumSet;->bits:J

    .line 133
    .local v4, oldBits:J
    iget-wide v7, v1, Ljava/util/MiniEnumSet;->bits:J

    or-long v2, v4, v7

    .line 134
    .local v2, newBits:J
    iput-wide v2, p0, Ljava/util/MiniEnumSet;->bits:J

    .line 135
    invoke-static {v2, v3}, Ljava/lang/Long;->bitCount(J)I

    move-result v7

    iput v7, p0, Ljava/util/MiniEnumSet;->size:I

    .line 136
    cmp-long v7, v4, v2

    if-eqz v7, :cond_30

    const/4 v7, 0x1

    goto :goto_8

    :cond_30
    move v7, v9

    goto :goto_8

    .line 138
    .end local v1           #miniSet:Ljava/util/MiniEnumSet;,"Ljava/util/MiniEnumSet<*>;"
    .end local v2           #newBits:J
    .end local v4           #oldBits:J
    .end local v6           #set:Ljava/util/EnumSet;,"Ljava/util/EnumSet<*>;"
    :cond_32
    invoke-super {p0, p1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    move-result v7

    goto :goto_8
.end method

.method public clear()V
    .registers 3

    .prologue
    .line 105
    .local p0, this:Ljava/util/MiniEnumSet;,"Ljava/util/MiniEnumSet<TE;>;"
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/util/MiniEnumSet;->bits:J

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/MiniEnumSet;->size:I

    .line 107
    return-void
.end method

.method complement()V
    .registers 7

    .prologue
    .local p0, this:Ljava/util/MiniEnumSet;,"Ljava/util/MiniEnumSet<TE;>;"
    const-wide/16 v4, -0x1

    .line 249
    iget-object v0, p0, Ljava/util/MiniEnumSet;->enums:[Ljava/lang/Enum;

    array-length v0, v0

    if-eqz v0, :cond_21

    .line 250
    iget-wide v0, p0, Ljava/util/MiniEnumSet;->bits:J

    xor-long/2addr v0, v4

    iput-wide v0, p0, Ljava/util/MiniEnumSet;->bits:J

    .line 251
    iget-wide v0, p0, Ljava/util/MiniEnumSet;->bits:J

    const/16 v2, 0x40

    iget-object v3, p0, Ljava/util/MiniEnumSet;->enums:[Ljava/lang/Enum;

    array-length v3, v3

    sub-int/2addr v2, v3

    ushr-long v2, v4, v2

    and-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/MiniEnumSet;->bits:J

    .line 252
    iget-object v0, p0, Ljava/util/MiniEnumSet;->enums:[Ljava/lang/Enum;

    array-length v0, v0

    iget v1, p0, Ljava/util/MiniEnumSet;->size:I

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/util/MiniEnumSet;->size:I

    .line 254
    :cond_21
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 10
    .parameter "object"

    .prologue
    .local p0, this:Ljava/util/MiniEnumSet;,"Ljava/util/MiniEnumSet<TE;>;"
    const/4 v7, 0x0

    .line 143
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/MiniEnumSet;->isValidType(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_f

    :cond_d
    move v3, v7

    .line 150
    :goto_e
    return v3

    .line 148
    :cond_f
    move-object v0, p1

    check-cast v0, Ljava/lang/Enum;

    move-object v1, v0

    .line 149
    .local v1, element:Ljava/lang/Enum;,"Ljava/lang/Enum<TE;>;"
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    .line 150
    .local v2, ordinal:I
    iget-wide v3, p0, Ljava/util/MiniEnumSet;->bits:J

    const-wide/16 v5, 0x1

    shl-long/2addr v5, v2

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_25

    const/4 v3, 0x1

    goto :goto_e

    :cond_25
    move v3, v7

    goto :goto_e
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/MiniEnumSet;,"Ljava/util/MiniEnumSet<TE;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 155
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_a

    move v4, v6

    .line 163
    :goto_9
    return v4

    .line 158
    :cond_a
    instance-of v4, p1, Ljava/util/MiniEnumSet;

    if-eqz v4, :cond_27

    .line 159
    move-object v0, p1

    check-cast v0, Ljava/util/MiniEnumSet;

    move-object v1, v0

    .line 160
    .local v1, set:Ljava/util/MiniEnumSet;,"Ljava/util/MiniEnumSet<*>;"
    iget-wide v2, v1, Ljava/util/MiniEnumSet;->bits:J

    .line 161
    .local v2, setBits:J
    iget-object v4, v1, Ljava/util/MiniEnumSet;->elementClass:Ljava/lang/Class;

    invoke-virtual {p0, v4}, Ljava/util/MiniEnumSet;->isValidType(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_25

    iget-wide v4, p0, Ljava/util/MiniEnumSet;->bits:J

    and-long/2addr v4, v2

    cmp-long v4, v4, v2

    if-nez v4, :cond_25

    move v4, v6

    goto :goto_9

    :cond_25
    move v4, v7

    goto :goto_9

    .line 163
    .end local v1           #set:Ljava/util/MiniEnumSet;,"Ljava/util/MiniEnumSet<*>;"
    .end local v2           #setBits:J
    :cond_27
    instance-of v4, p1, Ljava/util/EnumSet;

    if-nez v4, :cond_33

    invoke-super {p0, p1}, Ljava/util/EnumSet;->containsAll(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_33

    move v4, v6

    goto :goto_9

    :cond_33
    move v4, v7

    goto :goto_9
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .parameter "object"

    .prologue
    .local p0, this:Ljava/util/MiniEnumSet;,"Ljava/util/MiniEnumSet<TE;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 237
    instance-of v2, p1, Ljava/util/EnumSet;

    if-nez v2, :cond_b

    .line 238
    invoke-super {p0, p1}, Ljava/util/EnumSet;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 244
    :goto_a
    return v2

    .line 240
    :cond_b
    move-object v0, p1

    check-cast v0, Ljava/util/EnumSet;

    move-object v1, v0

    .line 241
    .local v1, set:Ljava/util/EnumSet;,"Ljava/util/EnumSet<*>;"
    iget-object v2, v1, Ljava/util/EnumSet;->elementClass:Ljava/lang/Class;

    invoke-virtual {p0, v2}, Ljava/util/MiniEnumSet;->isValidType(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 242
    iget v2, p0, Ljava/util/MiniEnumSet;->size:I

    if-nez v2, :cond_23

    invoke-virtual {v1}, Ljava/util/EnumSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_23

    move v2, v7

    goto :goto_a

    :cond_23
    move v2, v6

    goto :goto_a

    .line 244
    :cond_25
    iget-wide v2, p0, Ljava/util/MiniEnumSet;->bits:J

    check-cast v1, Ljava/util/MiniEnumSet;

    .end local v1           #set:Ljava/util/EnumSet;,"Ljava/util/EnumSet<*>;"
    iget-wide v4, v1, Ljava/util/MiniEnumSet;->bits:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_31

    move v2, v7

    goto :goto_a

    :cond_31
    move v2, v6

    goto :goto_a
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
    .line 95
    .local p0, this:Ljava/util/MiniEnumSet;,"Ljava/util/MiniEnumSet<TE;>;"
    new-instance v0, Ljava/util/MiniEnumSet$MiniEnumSetIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/MiniEnumSet$MiniEnumSetIterator;-><init>(Ljava/util/MiniEnumSet;Ljava/util/MiniEnumSet$1;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 15
    .parameter "object"

    .prologue
    .local p0, this:Ljava/util/MiniEnumSet;,"Ljava/util/MiniEnumSet<TE;>;"
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 218
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/util/MiniEnumSet;->isValidType(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_10

    :cond_e
    move v7, v11

    .line 232
    :goto_f
    return v7

    .line 223
    :cond_10
    move-object v0, p1

    check-cast v0, Ljava/lang/Enum;

    move-object v1, v0

    .line 224
    .local v1, element:Ljava/lang/Enum;,"Ljava/lang/Enum<TE;>;"
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    .line 225
    .local v6, ordinal:I
    iget-wide v4, p0, Ljava/util/MiniEnumSet;->bits:J

    .line 226
    .local v4, oldBits:J
    const-wide/16 v7, 0x1

    shl-long/2addr v7, v6

    const-wide/16 v9, -0x1

    xor-long/2addr v7, v9

    and-long v2, v4, v7

    .line 227
    .local v2, newBits:J
    cmp-long v7, v4, v2

    if-eqz v7, :cond_2f

    .line 228
    iput-wide v2, p0, Ljava/util/MiniEnumSet;->bits:J

    .line 229
    iget v7, p0, Ljava/util/MiniEnumSet;->size:I

    sub-int/2addr v7, v12

    iput v7, p0, Ljava/util/MiniEnumSet;->size:I

    move v7, v12

    .line 230
    goto :goto_f

    :cond_2f
    move v7, v11

    .line 232
    goto :goto_f
.end method

.method public removeAll(Ljava/util/Collection;)Z
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
    .local p0, this:Ljava/util/MiniEnumSet;,"Ljava/util/MiniEnumSet<TE;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    const/4 v11, 0x0

    .line 168
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_9

    move v7, v11

    .line 187
    :goto_8
    return v7

    .line 171
    :cond_9
    instance-of v7, p1, Ljava/util/EnumSet;

    if-eqz v7, :cond_38

    .line 172
    move-object v0, p1

    check-cast v0, Ljava/util/EnumSet;

    move-object v6, v0

    .line 173
    .local v6, set:Ljava/util/EnumSet;,"Ljava/util/EnumSet<*>;"
    iget-object v7, v6, Ljava/util/EnumSet;->elementClass:Ljava/lang/Class;

    invoke-virtual {p0, v7}, Ljava/util/MiniEnumSet;->isValidType(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_1b

    move v7, v11

    .line 174
    goto :goto_8

    .line 177
    :cond_1b
    move-object v0, v6

    check-cast v0, Ljava/util/MiniEnumSet;

    move-object v1, v0

    .line 178
    .local v1, miniSet:Ljava/util/MiniEnumSet;,"Ljava/util/MiniEnumSet<TE;>;"
    iget-wide v4, p0, Ljava/util/MiniEnumSet;->bits:J

    .line 179
    .local v4, oldBits:J
    iget-wide v7, v1, Ljava/util/MiniEnumSet;->bits:J

    const-wide/16 v9, -0x1

    xor-long/2addr v7, v9

    and-long v2, v4, v7

    .line 180
    .local v2, newBits:J
    cmp-long v7, v4, v2

    if-eqz v7, :cond_36

    .line 181
    iput-wide v2, p0, Ljava/util/MiniEnumSet;->bits:J

    .line 182
    invoke-static {v2, v3}, Ljava/lang/Long;->bitCount(J)I

    move-result v7

    iput v7, p0, Ljava/util/MiniEnumSet;->size:I

    .line 183
    const/4 v7, 0x1

    goto :goto_8

    :cond_36
    move v7, v11

    .line 185
    goto :goto_8

    .line 187
    .end local v1           #miniSet:Ljava/util/MiniEnumSet;,"Ljava/util/MiniEnumSet<TE;>;"
    .end local v2           #newBits:J
    .end local v4           #oldBits:J
    .end local v6           #set:Ljava/util/EnumSet;,"Ljava/util/EnumSet<*>;"
    :cond_38
    invoke-super {p0, p1}, Ljava/util/EnumSet;->removeAll(Ljava/util/Collection;)Z

    move-result v7

    goto :goto_8
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/MiniEnumSet;,"Ljava/util/MiniEnumSet<TE;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 192
    instance-of v7, p1, Ljava/util/EnumSet;

    if-eqz v7, :cond_37

    .line 193
    move-object v0, p1

    check-cast v0, Ljava/util/EnumSet;

    move-object v6, v0

    .line 194
    .local v6, set:Ljava/util/EnumSet;,"Ljava/util/EnumSet<*>;"
    iget-object v7, v6, Ljava/util/EnumSet;->elementClass:Ljava/lang/Class;

    invoke-virtual {p0, v7}, Ljava/util/MiniEnumSet;->isValidType(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_1d

    .line 195
    iget v7, p0, Ljava/util/MiniEnumSet;->size:I

    if-lez v7, :cond_1b

    .line 196
    invoke-virtual {p0}, Ljava/util/MiniEnumSet;->clear()V

    move v7, v10

    .line 213
    .end local v6           #set:Ljava/util/EnumSet;,"Ljava/util/EnumSet<*>;"
    :goto_1a
    return v7

    .restart local v6       #set:Ljava/util/EnumSet;,"Ljava/util/EnumSet<*>;"
    :cond_1b
    move v7, v9

    .line 199
    goto :goto_1a

    .line 203
    :cond_1d
    move-object v0, v6

    check-cast v0, Ljava/util/MiniEnumSet;

    move-object v1, v0

    .line 204
    .local v1, miniSet:Ljava/util/MiniEnumSet;,"Ljava/util/MiniEnumSet<TE;>;"
    iget-wide v4, p0, Ljava/util/MiniEnumSet;->bits:J

    .line 205
    .local v4, oldBits:J
    iget-wide v7, v1, Ljava/util/MiniEnumSet;->bits:J

    and-long v2, v4, v7

    .line 206
    .local v2, newBits:J
    cmp-long v7, v4, v2

    if-eqz v7, :cond_35

    .line 207
    iput-wide v2, p0, Ljava/util/MiniEnumSet;->bits:J

    .line 208
    invoke-static {v2, v3}, Ljava/lang/Long;->bitCount(J)I

    move-result v7

    iput v7, p0, Ljava/util/MiniEnumSet;->size:I

    move v7, v10

    .line 209
    goto :goto_1a

    :cond_35
    move v7, v9

    .line 211
    goto :goto_1a

    .line 213
    .end local v1           #miniSet:Ljava/util/MiniEnumSet;,"Ljava/util/MiniEnumSet<TE;>;"
    .end local v2           #newBits:J
    .end local v4           #oldBits:J
    .end local v6           #set:Ljava/util/EnumSet;,"Ljava/util/EnumSet<*>;"
    :cond_37
    invoke-super {p0, p1}, Ljava/util/EnumSet;->retainAll(Ljava/util/Collection;)Z

    move-result v7

    goto :goto_1a
.end method

.method setRange(Ljava/lang/Enum;Ljava/lang/Enum;)V
    .registers 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)V"
        }
    .end annotation

    .prologue
    .line 258
    .local p0, this:Ljava/util/MiniEnumSet;,"Ljava/util/MiniEnumSet<TE;>;"
    .local p1, start:Ljava/lang/Enum;,"TE;"
    .local p2, end:Ljava/lang/Enum;,"TE;"
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v0, v3, 0x1

    .line 259
    .local v0, length:I
    const-wide/16 v3, -0x1

    const/16 v5, 0x40

    sub-int/2addr v5, v0

    ushr-long/2addr v3, v5

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    shl-long v1, v3, v5

    .line 260
    .local v1, range:J
    iget-wide v3, p0, Ljava/util/MiniEnumSet;->bits:J

    or-long/2addr v3, v1

    iput-wide v3, p0, Ljava/util/MiniEnumSet;->bits:J

    .line 261
    iget-wide v3, p0, Ljava/util/MiniEnumSet;->bits:J

    invoke-static {v3, v4}, Ljava/lang/Long;->bitCount(J)I

    move-result v3

    iput v3, p0, Ljava/util/MiniEnumSet;->size:I

    .line 262
    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 100
    .local p0, this:Ljava/util/MiniEnumSet;,"Ljava/util/MiniEnumSet<TE;>;"
    iget v0, p0, Ljava/util/MiniEnumSet;->size:I

    return v0
.end method
