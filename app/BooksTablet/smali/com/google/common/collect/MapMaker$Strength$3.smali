.class final enum Lcom/google/common/collect/MapMaker$Strength$3;
.super Lcom/google/common/collect/MapMaker$Strength;
.source "MapMaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMaker$Strength;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 400
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/MapMaker$Strength;-><init>(Ljava/lang/String;ILcom/google/common/collect/MapMaker$1;)V

    return-void
.end method


# virtual methods
.method copyEntry(Ljava/lang/Object;Lcom/google/common/collect/MapMaker$ReferenceEntry;Lcom/google/common/collect/MapMaker$ReferenceEntry;)Lcom/google/common/collect/MapMaker$ReferenceEntry;
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Lcom/google/common/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/google/common/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 422
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, original:Lcom/google/common/collect/MapMaker$ReferenceEntry;,"Lcom/google/common/collect/MapMaker$ReferenceEntry<TK;TV;>;"
    .local p3, newNext:Lcom/google/common/collect/MapMaker$ReferenceEntry;,"Lcom/google/common/collect/MapMaker$ReferenceEntry<TK;TV;>;"
    move-object v0, p2

    check-cast v0, Lcom/google/common/collect/MapMaker$StrongEntry;

    move-object v1, v0

    .line 423
    .local v1, from:Lcom/google/common/collect/MapMaker$StrongEntry;,"Lcom/google/common/collect/MapMaker$StrongEntry<TK;TV;>;"
    if-nez p3, :cond_0

    new-instance v2, Lcom/google/common/collect/MapMaker$StrongEntry;

    iget-object v3, v1, Lcom/google/common/collect/MapMaker$StrongEntry;->internals:Lcom/google/common/collect/CustomConcurrentHashMap$Internals;

    iget v4, v1, Lcom/google/common/collect/MapMaker$StrongEntry;->hash:I

    invoke-direct {v2, v3, p1, v4}, Lcom/google/common/collect/MapMaker$StrongEntry;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap$Internals;Ljava/lang/Object;I)V

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/google/common/collect/MapMaker$LinkedStrongEntry;

    iget-object v3, v1, Lcom/google/common/collect/MapMaker$StrongEntry;->internals:Lcom/google/common/collect/CustomConcurrentHashMap$Internals;

    iget v4, v1, Lcom/google/common/collect/MapMaker$StrongEntry;->hash:I

    invoke-direct {v2, v3, p1, v4, p3}, Lcom/google/common/collect/MapMaker$LinkedStrongEntry;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap$Internals;Ljava/lang/Object;ILcom/google/common/collect/MapMaker$ReferenceEntry;)V

    goto :goto_0
.end method

.method equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 402
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method hash(Ljava/lang/Object;)I
    .locals 1
    .parameter "o"

    .prologue
    .line 405
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method newEntry(Lcom/google/common/collect/CustomConcurrentHashMap$Internals;Ljava/lang/Object;ILcom/google/common/collect/MapMaker$ReferenceEntry;)Lcom/google/common/collect/MapMaker$ReferenceEntry;
    .locals 1
    .parameter
    .parameter
    .parameter "hash"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$Internals",
            "<TK;TV;",
            "Lcom/google/common/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;>;TK;I",
            "Lcom/google/common/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 414
    .local p1, internals:Lcom/google/common/collect/CustomConcurrentHashMap$Internals;,"Lcom/google/common/collect/CustomConcurrentHashMap$Internals<TK;TV;Lcom/google/common/collect/MapMaker$ReferenceEntry<TK;TV;>;>;"
    .local p2, key:Ljava/lang/Object;,"TK;"
    .local p4, next:Lcom/google/common/collect/MapMaker$ReferenceEntry;,"Lcom/google/common/collect/MapMaker$ReferenceEntry<TK;TV;>;"
    if-nez p4, :cond_0

    new-instance v0, Lcom/google/common/collect/MapMaker$StrongEntry;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/common/collect/MapMaker$StrongEntry;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap$Internals;Ljava/lang/Object;I)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/MapMaker$LinkedStrongEntry;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/common/collect/MapMaker$LinkedStrongEntry;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap$Internals;Ljava/lang/Object;ILcom/google/common/collect/MapMaker$ReferenceEntry;)V

    goto :goto_0
.end method

.method referenceValue(Lcom/google/common/collect/MapMaker$ReferenceEntry;Ljava/lang/Object;)Lcom/google/common/collect/MapMaker$ValueReference;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;TV;)",
            "Lcom/google/common/collect/MapMaker$ValueReference",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 409
    .local p1, entry:Lcom/google/common/collect/MapMaker$ReferenceEntry;,"Lcom/google/common/collect/MapMaker$ReferenceEntry<TK;TV;>;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    new-instance v0, Lcom/google/common/collect/MapMaker$StrongValueReference;

    invoke-direct {v0, p2}, Lcom/google/common/collect/MapMaker$StrongValueReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
