.class Ljava/util/TreeMap$Node;
.super Ljava/lang/Object;
.source "TreeMap.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field height:I

.field final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field left:Ljava/util/TreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field parent:Ljava/util/TreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field right:Ljava/util/TreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/TreeMap$Node;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;TK;)V"
        }
    .end annotation

    .prologue
    .line 741
    .local p0, this:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    .local p1, parent:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    .local p2, key:Ljava/lang/Object;,"TK;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 742
    iput-object p1, p0, Ljava/util/TreeMap$Node;->parent:Ljava/util/TreeMap$Node;

    .line 743
    iput-object p2, p0, Ljava/util/TreeMap$Node;->key:Ljava/lang/Object;

    .line 744
    const/4 v0, 0x1

    iput v0, p0, Ljava/util/TreeMap$Node;->height:I

    .line 745
    return-void
.end method


# virtual methods
.method copy(Ljava/util/TreeMap$Node;)Ljava/util/TreeMap$Node;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;)",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 748
    .local p0, this:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    .local p1, parent:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    new-instance v0, Ljava/util/TreeMap$Node;

    iget-object v1, p0, Ljava/util/TreeMap$Node;->key:Ljava/lang/Object;

    invoke-direct {v0, p1, v1}, Ljava/util/TreeMap$Node;-><init>(Ljava/util/TreeMap$Node;Ljava/lang/Object;)V

    .line 749
    .local v0, result:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    iget-object v1, p0, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    if-eqz v1, :cond_13

    .line 750
    iget-object v1, p0, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap$Node;->copy(Ljava/util/TreeMap$Node;)Ljava/util/TreeMap$Node;

    move-result-object v1

    iput-object v1, v0, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    .line 752
    :cond_13
    iget-object v1, p0, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    if-eqz v1, :cond_1f

    .line 753
    iget-object v1, p0, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap$Node;->copy(Ljava/util/TreeMap$Node;)Ljava/util/TreeMap$Node;

    move-result-object v1

    iput-object v1, v0, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    .line 755
    :cond_1f
    iget-object v1, p0, Ljava/util/TreeMap$Node;->value:Ljava/lang/Object;

    iput-object v1, v0, Ljava/util/TreeMap$Node;->value:Ljava/lang/Object;

    .line 756
    iget v1, p0, Ljava/util/TreeMap$Node;->height:I

    iput v1, v0, Ljava/util/TreeMap$Node;->height:I

    .line 757
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "o"

    .prologue
    .local p0, this:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    const/4 v4, 0x0

    .line 775
    instance-of v2, p1, Ljava/util/Map$Entry;

    if-eqz v2, :cond_3a

    .line 776
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v1, v0

    .line 777
    .local v1, other:Ljava/util/Map$Entry;
    iget-object v2, p0, Ljava/util/TreeMap$Node;->key:Ljava/lang/Object;

    if-nez v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2b

    :cond_13
    iget-object v2, p0, Ljava/util/TreeMap$Node;->value:Ljava/lang/Object;

    if-nez v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2b

    :goto_1d
    const/4 v2, 0x1

    .line 780
    .end local v1           #other:Ljava/util/Map$Entry;
    :goto_1e
    return v2

    .line 777
    .restart local v1       #other:Ljava/util/Map$Entry;
    :cond_1f
    iget-object v2, p0, Ljava/util/TreeMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    :cond_2b
    move v2, v4

    goto :goto_1e

    :cond_2d
    iget-object v2, p0, Ljava/util/TreeMap$Node;->value:Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    goto :goto_1d

    .end local v1           #other:Ljava/util/Map$Entry;
    :cond_3a
    move v2, v4

    .line 780
    goto :goto_1e
.end method

.method public first()Ljava/util/TreeMap$Node;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 838
    .local p0, this:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    move-object v1, p0

    .line 839
    .local v1, node:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    iget-object v0, v1, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    .line 840
    .local v0, child:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    :goto_3
    if-eqz v0, :cond_9

    .line 841
    move-object v1, v0

    .line 842
    iget-object v0, v1, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    goto :goto_3

    .line 844
    :cond_9
    return-object v1
.end method

.method public getKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 761
    .local p0, this:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap$Node;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 765
    .local p0, this:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap$Node;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .local p0, this:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    const/4 v2, 0x0

    .line 784
    iget-object v0, p0, Ljava/util/TreeMap$Node;->key:Ljava/lang/Object;

    if-nez v0, :cond_d

    move v0, v2

    :goto_6
    iget-object v1, p0, Ljava/util/TreeMap$Node;->value:Ljava/lang/Object;

    if-nez v1, :cond_14

    move v1, v2

    :goto_b
    xor-int/2addr v0, v1

    return v0

    :cond_d
    iget-object v0, p0, Ljava/util/TreeMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_6

    :cond_14
    iget-object v1, p0, Ljava/util/TreeMap$Node;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_b
.end method

.method public last()Ljava/util/TreeMap$Node;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 851
    .local p0, this:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    move-object v1, p0

    .line 852
    .local v1, node:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    iget-object v0, v1, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    .line 853
    .local v0, child:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    :goto_3
    if-eqz v0, :cond_9

    .line 854
    move-object v1, v0

    .line 855
    iget-object v0, v1, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    goto :goto_3

    .line 857
    :cond_9
    return-object v1
.end method

.method next()Ljava/util/TreeMap$Node;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 797
    .local p0, this:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    iget-object v2, p0, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    if-eqz v2, :cond_b

    .line 798
    iget-object v2, p0, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    invoke-virtual {v2}, Ljava/util/TreeMap$Node;->first()Ljava/util/TreeMap$Node;

    move-result-object v2

    .line 810
    :goto_a
    return-object v2

    .line 801
    :cond_b
    move-object v0, p0

    .line 802
    .local v0, node:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    iget-object v1, v0, Ljava/util/TreeMap$Node;->parent:Ljava/util/TreeMap$Node;

    .line 803
    .local v1, parent:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    :goto_e
    if-eqz v1, :cond_1a

    .line 804
    iget-object v2, v1, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    if-ne v2, v0, :cond_16

    move-object v2, v1

    .line 805
    goto :goto_a

    .line 807
    :cond_16
    move-object v0, v1

    .line 808
    iget-object v1, v0, Ljava/util/TreeMap$Node;->parent:Ljava/util/TreeMap$Node;

    goto :goto_e

    .line 810
    :cond_1a
    const/4 v2, 0x0

    goto :goto_a
.end method

.method public prev()Ljava/util/TreeMap$Node;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 818
    .local p0, this:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    iget-object v2, p0, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    if-eqz v2, :cond_b

    .line 819
    iget-object v2, p0, Ljava/util/TreeMap$Node;->left:Ljava/util/TreeMap$Node;

    invoke-virtual {v2}, Ljava/util/TreeMap$Node;->last()Ljava/util/TreeMap$Node;

    move-result-object v2

    .line 831
    :goto_a
    return-object v2

    .line 822
    :cond_b
    move-object v0, p0

    .line 823
    .local v0, node:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    iget-object v1, v0, Ljava/util/TreeMap$Node;->parent:Ljava/util/TreeMap$Node;

    .line 824
    .local v1, parent:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    :goto_e
    if-eqz v1, :cond_1a

    .line 825
    iget-object v2, v1, Ljava/util/TreeMap$Node;->right:Ljava/util/TreeMap$Node;

    if-ne v2, v0, :cond_16

    move-object v2, v1

    .line 826
    goto :goto_a

    .line 828
    :cond_16
    move-object v0, v1

    .line 829
    iget-object v1, v0, Ljava/util/TreeMap$Node;->parent:Ljava/util/TreeMap$Node;

    goto :goto_e

    .line 831
    :cond_1a
    const/4 v2, 0x0

    goto :goto_a
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 769
    .local p0, this:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    .local p1, value:Ljava/lang/Object;,"TV;"
    iget-object v0, p0, Ljava/util/TreeMap$Node;->value:Ljava/lang/Object;

    .line 770
    .local v0, oldValue:Ljava/lang/Object;,"TV;"
    iput-object p1, p0, Ljava/util/TreeMap$Node;->value:Ljava/lang/Object;

    .line 771
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 789
    .local p0, this:Ljava/util/TreeMap$Node;,"Ljava/util/TreeMap$Node<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/util/TreeMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/util/TreeMap$Node;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
