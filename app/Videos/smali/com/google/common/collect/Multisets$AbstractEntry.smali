.class abstract Lcom/google/common/collect/Multisets$AbstractEntry;
.super Ljava/lang/Object;
.source "Multisets.java"

# interfaces
.implements Lcom/google/common/collect/Multiset$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multisets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbstractEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/Multiset$Entry",
        "<TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 403
    .local p0, this:Lcom/google/common/collect/Multisets$AbstractEntry;,"Lcom/google/common/collect/Multisets$AbstractEntry<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "object"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .local p0, this:Lcom/google/common/collect/Multisets$AbstractEntry;,"Lcom/google/common/collect/Multisets$AbstractEntry<TE;>;"
    const/4 v4, 0x0

    .line 409
    instance-of v2, p1, Lcom/google/common/collect/Multiset$Entry;

    if-eqz v2, :cond_1

    .line 410
    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    move-object v1, v0

    .line 411
    .local v1, that:Lcom/google/common/collect/Multiset$Entry;,"Lcom/google/common/collect/Multiset$Entry<*>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$AbstractEntry;->getCount()I

    move-result v2

    invoke-interface {v1}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$AbstractEntry;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 414
    .end local v1           #that:Lcom/google/common/collect/Multiset$Entry;,"Lcom/google/common/collect/Multiset$Entry<*>;"
    :goto_0
    return v2

    .restart local v1       #that:Lcom/google/common/collect/Multiset$Entry;,"Lcom/google/common/collect/Multiset$Entry<*>;"
    :cond_0
    move v2, v4

    .line 411
    goto :goto_0

    .end local v1           #that:Lcom/google/common/collect/Multiset$Entry;,"Lcom/google/common/collect/Multiset$Entry<*>;"
    :cond_1
    move v2, v4

    .line 414
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 422
    .local p0, this:Lcom/google/common/collect/Multisets$AbstractEntry;,"Lcom/google/common/collect/Multisets$AbstractEntry<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$AbstractEntry;->getElement()Ljava/lang/Object;

    move-result-object v0

    .line 423
    .local v0, e:Ljava/lang/Object;,"TE;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$AbstractEntry;->getCount()I

    move-result v2

    xor-int/2addr v1, v2

    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 434
    .local p0, this:Lcom/google/common/collect/Multisets$AbstractEntry;,"Lcom/google/common/collect/Multisets$AbstractEntry<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$AbstractEntry;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 435
    .local v1, text:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$AbstractEntry;->getCount()I

    move-result v0

    .line 436
    .local v0, n:I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move-object v2, v1

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " x "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
