.class Lcom/google/common/collect/MapMaker$StrongEntry;
.super Ljava/lang/Object;
.source "MapMaker.java"

# interfaces
.implements Lcom/google/common/collect/MapMaker$ReferenceEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StrongEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/MapMaker$ReferenceEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final hash:I

.field final internals:Lcom/google/common/collect/CustomConcurrentHashMap$Internals;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/CustomConcurrentHashMap$Internals",
            "<TK;TV;",
            "Lcom/google/common/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field volatile valueReference:Lcom/google/common/collect/MapMaker$ValueReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMaker$ValueReference",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/CustomConcurrentHashMap$Internals;Ljava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter "hash"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$Internals",
            "<TK;TV;",
            "Lcom/google/common/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;>;TK;I)V"
        }
    .end annotation

    .prologue
    .line 861
    .local p0, this:Lcom/google/common/collect/MapMaker$StrongEntry;,"Lcom/google/common/collect/MapMaker$StrongEntry<TK;TV;>;"
    .local p1, internals:Lcom/google/common/collect/CustomConcurrentHashMap$Internals;,"Lcom/google/common/collect/CustomConcurrentHashMap$Internals<TK;TV;Lcom/google/common/collect/MapMaker$ReferenceEntry<TK;TV;>;>;"
    .local p2, key:Ljava/lang/Object;,"TK;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 875
    invoke-static {}, Lcom/google/common/collect/MapMaker;->access$600()Lcom/google/common/collect/MapMaker$ValueReference;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MapMaker$StrongEntry;->valueReference:Lcom/google/common/collect/MapMaker$ValueReference;

    .line 862
    iput-object p1, p0, Lcom/google/common/collect/MapMaker$StrongEntry;->internals:Lcom/google/common/collect/CustomConcurrentHashMap$Internals;

    .line 863
    iput-object p2, p0, Lcom/google/common/collect/MapMaker$StrongEntry;->key:Ljava/lang/Object;

    .line 864
    iput p3, p0, Lcom/google/common/collect/MapMaker$StrongEntry;->hash:I

    .line 865
    return-void
.end method


# virtual methods
.method public getHash()I
    .locals 1

    .prologue
    .line 894
    .local p0, this:Lcom/google/common/collect/MapMaker$StrongEntry;,"Lcom/google/common/collect/MapMaker$StrongEntry<TK;TV;>;"
    iget v0, p0, Lcom/google/common/collect/MapMaker$StrongEntry;->hash:I

    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 868
    .local p0, this:Lcom/google/common/collect/MapMaker$StrongEntry;,"Lcom/google/common/collect/MapMaker$StrongEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/MapMaker$StrongEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getNext()Lcom/google/common/collect/MapMaker$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 890
    .local p0, this:Lcom/google/common/collect/MapMaker$StrongEntry;,"Lcom/google/common/collect/MapMaker$StrongEntry<TK;TV;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getValueReference()Lcom/google/common/collect/MapMaker$ValueReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/MapMaker$ValueReference",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 878
    .local p0, this:Lcom/google/common/collect/MapMaker$StrongEntry;,"Lcom/google/common/collect/MapMaker$StrongEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/MapMaker$StrongEntry;->valueReference:Lcom/google/common/collect/MapMaker$ValueReference;

    return-object v0
.end method

.method public setValueReference(Lcom/google/common/collect/MapMaker$ValueReference;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMaker$ValueReference",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 882
    .local p0, this:Lcom/google/common/collect/MapMaker$StrongEntry;,"Lcom/google/common/collect/MapMaker$StrongEntry<TK;TV;>;"
    .local p1, valueReference:Lcom/google/common/collect/MapMaker$ValueReference;,"Lcom/google/common/collect/MapMaker$ValueReference<TK;TV;>;"
    iput-object p1, p0, Lcom/google/common/collect/MapMaker$StrongEntry;->valueReference:Lcom/google/common/collect/MapMaker$ValueReference;

    .line 883
    return-void
.end method

.method public valueReclaimed()V
    .locals 2

    .prologue
    .line 886
    .local p0, this:Lcom/google/common/collect/MapMaker$StrongEntry;,"Lcom/google/common/collect/MapMaker$StrongEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/MapMaker$StrongEntry;->internals:Lcom/google/common/collect/CustomConcurrentHashMap$Internals;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Internals;->removeEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 887
    return-void
.end method
