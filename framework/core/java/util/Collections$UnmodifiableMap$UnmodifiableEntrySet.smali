.class Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;
.super Ljava/util/Collections$UnmodifiableSet;
.source "Collections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections$UnmodifiableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnmodifiableEntrySet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableMapEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Collections$UnmodifiableSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6d0066a59f08eab5L


# direct methods
.method constructor <init>(Ljava/util/Set;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 1246
    .local p0, this:Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;,"Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet<TK;TV;>;"
    .local p1, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-direct {p0, p1}, Ljava/util/Collections$UnmodifiableSet;-><init>(Ljava/util/Set;)V

    .line 1247
    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1251
    .local p0, this:Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;,"Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet<TK;TV;>;"
    new-instance v0, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$1;

    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$1;-><init>(Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;)V

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 6

    .prologue
    .line 1270
    .local p0, this:Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;,"Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet<TK;TV;>;"
    iget-object v4, p0, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;->c:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v2

    .line 1271
    .local v2, length:I
    new-array v3, v2, [Ljava/lang/Object;

    .line 1272
    .local v3, result:[Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1273
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    move v0, v2

    .local v0, i:I
    :goto_d
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_18

    .line 1274
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v0

    goto :goto_d

    .line 1276
    :cond_18
    return-object v3
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 1282
    .local p0, this:Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;,"Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet<TK;TV;>;"
    .local p1, contents:[Ljava/lang/Object;,"[TT;"
    iget-object v6, p0, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;->c:Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v5

    .local v5, size:I
    const/4 v2, 0x0

    .line 1283
    .local v2, index:I
    invoke-virtual {p0}, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1284
    .local v4, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    array-length v6, p1

    if-le v5, v6, :cond_34

    .line 1285
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 1286
    .local v1, ct:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {v1, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;,"Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet<TK;TV;>;"
    check-cast p0, [Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    move-object p1, v0

    move v3, v2

    .line 1288
    .end local v1           #ct:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #index:I
    .local v3, index:I
    :goto_21
    if-ge v3, v5, :cond_2d

    .line 1289
    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, p1, v3

    move v3, v2

    .end local v2           #index:I
    .restart local v3       #index:I
    goto :goto_21

    .line 1291
    :cond_2d
    array-length v6, p1

    if-ge v3, v6, :cond_33

    .line 1292
    const/4 v6, 0x0

    aput-object v6, p1, v3

    .line 1294
    :cond_33
    return-object p1

    .end local v3           #index:I
    .restart local v2       #index:I
    .restart local p0       #this:Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;,"Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet<TK;TV;>;"
    :cond_34
    move v3, v2

    .end local v2           #index:I
    .restart local v3       #index:I
    goto :goto_21
.end method
