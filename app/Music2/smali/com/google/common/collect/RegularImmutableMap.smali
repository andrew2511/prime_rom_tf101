.class final Lcom/google/common/collect/RegularImmutableMap;
.super Lcom/google/common/collect/ImmutableMap;
.source "RegularImmutableMap.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/RegularImmutableMap$Values;,
        Lcom/google/common/collect/RegularImmutableMap$KeySet;,
        Lcom/google/common/collect/RegularImmutableMap$EntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final transient entries:[Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient entrySet:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private transient keySet:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet",
            "<TK;>;"
        }
    .end annotation
.end field

.field private final transient keySetHashCode:I

.field private final transient mask:I

.field private final transient table:[Ljava/lang/Object;

.field private transient values:Lcom/google/common/collect/ImmutableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableCollection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method varargs constructor <init>([Ljava/util/Map$Entry;)V
    .locals 18
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map$Entry",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, this:Lcom/google/common/collect/RegularImmutableMap;,"Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    .local p1, immutableEntries:[Ljava/util/Map$Entry;,"[Ljava/util/Map$Entry<**>;"
    invoke-direct/range {p0 .. p0}, Lcom/google/common/collect/ImmutableMap;-><init>()V

    .line 44
    invoke-static/range {p1 .. p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/util/Map$Entry;

    move-object v0, v2

    check-cast v0, [Ljava/util/Map$Entry;

    move-object v13, v0

    .line 45
    .local v13, tmp:[Ljava/util/Map$Entry;,"[Ljava/util/Map$Entry<TK;TV;>;"
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/common/collect/RegularImmutableMap;->entries:[Ljava/util/Map$Entry;

    .line 47
    move-object/from16 v0, p1

    array-length v0, v0

    move v15, v0

    invoke-static {v15}, Lcom/google/common/collect/Hashing;->chooseTableSize(I)I

    move-result v12

    .line 48
    .local v12, tableSize:I
    mul-int/lit8 v15, v12, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/common/collect/RegularImmutableMap;->table:[Ljava/lang/Object;

    .line 49
    const/4 v15, 0x1

    sub-int v15, v12, v15

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/collect/RegularImmutableMap;->mask:I

    .line 51
    const/4 v10, 0x0

    .line 52
    .local v10, keySetHashCodeMutable:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/collect/RegularImmutableMap;->entries:[Ljava/util/Map$Entry;

    move-object v2, v0

    .local v2, arr$:[Ljava/util/Map$Entry;
    array-length v11, v2

    .local v11, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v11, :cond_2

    aget-object v3, v2, v6

    .line 53
    .local v3, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    invoke-static {v15}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 55
    .local v8, key:Ljava/lang/Object;,"TK;"
    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v9

    .line 56
    .local v9, keyHashCode:I
    invoke-static {v9}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v5

    .line 57
    .local v5, i:I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/common/collect/RegularImmutableMap;->mask:I

    move v15, v0

    and-int/2addr v15, v5

    mul-int/lit8 v7, v15, 0x2

    .line 58
    .local v7, index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/collect/RegularImmutableMap;->table:[Ljava/lang/Object;

    move-object v15, v0

    aget-object v4, v15, v7

    .line 59
    .local v4, existing:Ljava/lang/Object;
    if-nez v4, :cond_0

    .line 60
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    invoke-static {v15}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 61
    .local v14, value:Ljava/lang/Object;,"TV;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/collect/RegularImmutableMap;->table:[Ljava/lang/Object;

    move-object v15, v0

    aput-object v8, v15, v7

    .line 62
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/collect/RegularImmutableMap;->table:[Ljava/lang/Object;

    move-object v15, v0

    add-int/lit8 v16, v7, 0x1

    aput-object v14, v15, v16

    .line 63
    add-int/2addr v10, v9

    .line 52
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 65
    .end local v14           #value:Ljava/lang/Object;,"TV;"
    :cond_0
    invoke-virtual {v4, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 66
    new-instance v15, Ljava/lang/IllegalArgumentException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "duplicate key: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 56
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 70
    .end local v3           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    .end local v4           #existing:Ljava/lang/Object;
    .end local v5           #i:I
    .end local v7           #index:I
    .end local v8           #key:Ljava/lang/Object;,"TK;"
    .end local v9           #keyHashCode:I
    :cond_2
    move v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/collect/RegularImmutableMap;->keySetHashCode:I

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/collect/RegularImmutableMap;)[Ljava/util/Map$Entry;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap;->entries:[Ljava/util/Map$Entry;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/common/collect/RegularImmutableMap;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/google/common/collect/RegularImmutableMap;->keySetHashCode:I

    return v0
.end method


# virtual methods
.method public containsValue(Ljava/lang/Object;)Z
    .locals 6
    .parameter "value"

    .prologue
    .local p0, this:Lcom/google/common/collect/RegularImmutableMap;,"Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    const/4 v5, 0x0

    .line 101
    if-nez p1, :cond_0

    move v4, v5

    .line 109
    :goto_0
    return v4

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap;->entries:[Ljava/util/Map$Entry;

    .local v0, arr$:[Ljava/util/Map$Entry;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 105
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 106
    const/4 v4, 0x1

    goto :goto_0

    .line 104
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    :cond_2
    move v4, v5

    .line 109
    goto :goto_0
.end method

.method public entrySet()Lcom/google/common/collect/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, this:Lcom/google/common/collect/RegularImmutableMap;,"Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap;->entrySet:Lcom/google/common/collect/ImmutableSet;

    .line 121
    .local v0, es:Lcom/google/common/collect/ImmutableSet;,"Lcom/google/common/collect/ImmutableSet<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-nez v0, :cond_0

    new-instance v1, Lcom/google/common/collect/RegularImmutableMap$EntrySet;

    invoke-direct {v1, p0}, Lcom/google/common/collect/RegularImmutableMap$EntrySet;-><init>(Lcom/google/common/collect/RegularImmutableMap;)V

    iput-object v1, p0, Lcom/google/common/collect/RegularImmutableMap;->entrySet:Lcom/google/common/collect/ImmutableSet;

    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 31
    .local p0, this:Lcom/google/common/collect/RegularImmutableMap;,"Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/common/collect/RegularImmutableMap;,"Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    const/4 v5, 0x0

    .line 74
    if-nez p1, :cond_0

    move-object v4, v5

    .line 87
    :goto_0
    return-object v4

    .line 77
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v1

    .line 78
    .local v1, i:I
    :goto_1
    iget v4, p0, Lcom/google/common/collect/RegularImmutableMap;->mask:I

    and-int/2addr v4, v1

    mul-int/lit8 v2, v4, 0x2

    .line 79
    .local v2, index:I
    iget-object v4, p0, Lcom/google/common/collect/RegularImmutableMap;->table:[Ljava/lang/Object;

    aget-object v0, v4, v2

    .line 80
    .local v0, candidate:Ljava/lang/Object;
    if-nez v0, :cond_1

    move-object v4, v5

    .line 81
    goto :goto_0

    .line 83
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 86
    iget-object v4, p0, Lcom/google/common/collect/RegularImmutableMap;->table:[Ljava/lang/Object;

    add-int/lit8 v5, v2, 0x1

    aget-object v3, v4, v5

    .local v3, value:Ljava/lang/Object;,"TV;"
    move-object v4, v3

    .line 87
    goto :goto_0

    .line 77
    .end local v3           #value:Ljava/lang/Object;,"TV;"
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 97
    .local p0, this:Lcom/google/common/collect/RegularImmutableMap;,"Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public keySet()Lcom/google/common/collect/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, this:Lcom/google/common/collect/RegularImmutableMap;,"Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap;->keySet:Lcom/google/common/collect/ImmutableSet;

    .line 147
    .local v0, ks:Lcom/google/common/collect/ImmutableSet;,"Lcom/google/common/collect/ImmutableSet<TK;>;"
    if-nez v0, :cond_0

    new-instance v1, Lcom/google/common/collect/RegularImmutableMap$KeySet;

    invoke-direct {v1, p0}, Lcom/google/common/collect/RegularImmutableMap$KeySet;-><init>(Lcom/google/common/collect/RegularImmutableMap;)V

    iput-object v1, p0, Lcom/google/common/collect/RegularImmutableMap;->keySet:Lcom/google/common/collect/ImmutableSet;

    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 31
    .local p0, this:Lcom/google/common/collect/RegularImmutableMap;,"Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 93
    .local p0, this:Lcom/google/common/collect/RegularImmutableMap;,"Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap;->entries:[Ljava/util/Map$Entry;

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 205
    .local p0, this:Lcom/google/common/collect/RegularImmutableMap;,"Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableMap;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x10

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 206
    .local v0, result:Ljava/lang/StringBuilder;
    sget-object v1, Lcom/google/common/collect/Collections2;->standardJoiner:Lcom/google/common/base/Joiner;

    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableMap;->entries:[Ljava/util/Map$Entry;

    invoke-virtual {v1, v0, v2}, Lcom/google/common/base/Joiner;->appendTo(Ljava/lang/StringBuilder;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 207
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public values()Lcom/google/common/collect/ImmutableCollection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableCollection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 172
    .local p0, this:Lcom/google/common/collect/RegularImmutableMap;,"Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap;->values:Lcom/google/common/collect/ImmutableCollection;

    .line 173
    .local v0, v:Lcom/google/common/collect/ImmutableCollection;,"Lcom/google/common/collect/ImmutableCollection<TV;>;"
    if-nez v0, :cond_0

    new-instance v1, Lcom/google/common/collect/RegularImmutableMap$Values;

    invoke-direct {v1, p0}, Lcom/google/common/collect/RegularImmutableMap$Values;-><init>(Lcom/google/common/collect/RegularImmutableMap;)V

    iput-object v1, p0, Lcom/google/common/collect/RegularImmutableMap;->values:Lcom/google/common/collect/ImmutableCollection;

    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 31
    .local p0, this:Lcom/google/common/collect/RegularImmutableMap;,"Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableMap;->values()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method
