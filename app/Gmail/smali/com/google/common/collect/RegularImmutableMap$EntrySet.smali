.class Lcom/google/common/collect/RegularImmutableMap$EntrySet;
.super Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;
.source "RegularImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/RegularImmutableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final transient map:Lcom/google/common/collect/RegularImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/RegularImmutableMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/RegularImmutableMap;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/RegularImmutableMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p0, this:Lcom/google/common/collect/RegularImmutableMap$EntrySet;,"Lcom/google/common/collect/RegularImmutableMap$EntrySet<TK;TV;>;"
    .local p1, map:Lcom/google/common/collect/RegularImmutableMap;,"Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    invoke-static {p1}, Lcom/google/common/collect/RegularImmutableMap;->access$000(Lcom/google/common/collect/RegularImmutableMap;)[Ljava/util/Map$Entry;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;-><init>([Ljava/lang/Object;)V

    .line 130
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableMap$EntrySet;->map:Lcom/google/common/collect/RegularImmutableMap;

    .line 131
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 6
    .parameter "target"

    .prologue
    .local p0, this:Lcom/google/common/collect/RegularImmutableMap$EntrySet;,"Lcom/google/common/collect/RegularImmutableMap$EntrySet<TK;TV;>;"
    const/4 v5, 0x0

    .line 134
    instance-of v3, p1, Ljava/util/Map$Entry;

    if-eqz v3, :cond_1

    .line 135
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v1, v0

    .line 136
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    iget-object v3, p0, Lcom/google/common/collect/RegularImmutableMap$EntrySet;->map:Lcom/google/common/collect/RegularImmutableMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/common/collect/RegularImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 137
    .local v2, mappedValue:Ljava/lang/Object;,"TV;"
    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 139
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    .end local v2           #mappedValue:Ljava/lang/Object;,"TV;"
    :goto_0
    return v3

    .restart local v1       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    .restart local v2       #mappedValue:Ljava/lang/Object;,"TV;"
    :cond_0
    move v3, v5

    .line 137
    goto :goto_0

    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    .end local v2           #mappedValue:Ljava/lang/Object;,"TV;"
    :cond_1
    move v3, v5

    .line 139
    goto :goto_0
.end method
