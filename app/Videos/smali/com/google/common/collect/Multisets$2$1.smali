.class Lcom/google/common/collect/Multisets$2$1;
.super Ljava/util/AbstractSet;
.source "Multisets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multisets$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Lcom/google/common/collect/Multiset$Entry",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/Multisets$2;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multisets$2;)V
    .locals 0
    .parameter

    .prologue
    .line 359
    iput-object p1, p0, Lcom/google/common/collect/Multisets$2$1;->this$0:Lcom/google/common/collect/Multisets$2;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v5, 0x0

    .line 383
    instance-of v3, p1, Lcom/google/common/collect/Multiset$Entry;

    if-eqz v3, :cond_1

    .line 384
    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    move-object v1, v0

    .line 385
    .local v1, entry:Lcom/google/common/collect/Multiset$Entry;,"Lcom/google/common/collect/Multiset$Entry<*>;"
    invoke-interface {v1}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v2

    .line 386
    .local v2, entryCount:I
    if-lez v2, :cond_0

    iget-object v3, p0, Lcom/google/common/collect/Multisets$2$1;->this$0:Lcom/google/common/collect/Multisets$2;

    invoke-interface {v1}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/common/collect/Multisets$2;->count(Ljava/lang/Object;)I

    move-result v3

    if-ne v3, v2, :cond_0

    const/4 v3, 0x1

    .line 389
    .end local v1           #entry:Lcom/google/common/collect/Multiset$Entry;,"Lcom/google/common/collect/Multiset$Entry<*>;"
    .end local v2           #entryCount:I
    :goto_0
    return v3

    .restart local v1       #entry:Lcom/google/common/collect/Multiset$Entry;,"Lcom/google/common/collect/Multiset$Entry<*>;"
    .restart local v2       #entryCount:I
    :cond_0
    move v3, v5

    .line 386
    goto :goto_0

    .end local v1           #entry:Lcom/google/common/collect/Multiset$Entry;,"Lcom/google/common/collect/Multiset$Entry<*>;"
    .end local v2           #entryCount:I
    :cond_1
    move v3, v5

    .line 389
    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/google/common/collect/Multisets$2$1;->this$0:Lcom/google/common/collect/Multisets$2;

    invoke-virtual {v0}, Lcom/google/common/collect/Multisets$2;->elementSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 361
    iget-object v1, p0, Lcom/google/common/collect/Multisets$2$1;->this$0:Lcom/google/common/collect/Multisets$2;

    iget-object v1, v1, Lcom/google/common/collect/Multisets$2;->val$multiset1:Lcom/google/common/collect/Multiset;

    invoke-interface {v1}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 362
    .local v0, iterator1:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/common/collect/Multiset$Entry<TE;>;>;"
    new-instance v1, Lcom/google/common/collect/Multisets$2$1$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/Multisets$2$1$1;-><init>(Lcom/google/common/collect/Multisets$2$1;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/google/common/collect/Multisets$2$1;->this$0:Lcom/google/common/collect/Multisets$2;

    invoke-virtual {v0}, Lcom/google/common/collect/Multisets$2;->elementSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
