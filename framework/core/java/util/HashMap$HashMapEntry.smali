.class Ljava/util/HashMap$HashMapEntry;
.super Ljava/lang/Object;
.source "HashMap.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HashMapEntry"
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
.field final hash:I

.field final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field next:Ljava/util/HashMap$HashMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap$HashMapEntry",
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
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/util/HashMap$HashMapEntry;)V
    .registers 5
    .parameter
    .parameter
    .parameter "hash"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;I",
            "Ljava/util/HashMap$HashMapEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 733
    .local p0, this:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    .local p4, next:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 734
    iput-object p1, p0, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    .line 735
    iput-object p2, p0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    .line 736
    iput p3, p0, Ljava/util/HashMap$HashMapEntry;->hash:I

    .line 737
    iput-object p4, p0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    .line 738
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "o"

    .prologue
    .local p0, this:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    const/4 v4, 0x0

    .line 755
    instance-of v2, p1, Ljava/util/Map$Entry;

    if-nez v2, :cond_7

    move v2, v4

    .line 759
    :goto_6
    return v2

    .line 758
    :cond_7
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v1, v0

    .line 759
    .local v1, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    invoke-static {v2, v3}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    invoke-static {v2, v3}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    const/4 v2, 0x1

    goto :goto_6

    :cond_25
    move v2, v4

    goto :goto_6
.end method

.method public final getKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 741
    .local p0, this:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    iget-object v0, p0, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 745
    .local p0, this:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    iget-object v0, p0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public final hashCode()I
    .registers 4

    .prologue
    .local p0, this:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    const/4 v2, 0x0

    .line 764
    iget-object v0, p0, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    if-nez v0, :cond_d

    move v0, v2

    :goto_6
    iget-object v1, p0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    if-nez v1, :cond_14

    move v1, v2

    :goto_b
    xor-int/2addr v0, v1

    return v0

    :cond_d
    iget-object v0, p0, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_6

    :cond_14
    iget-object v1, p0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_b
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 749
    .local p0, this:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    .local p1, value:Ljava/lang/Object;,"TV;"
    iget-object v0, p0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    .line 750
    .local v0, oldValue:Ljava/lang/Object;,"TV;"
    iput-object p1, p0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    .line 751
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 769
    .local p0, this:Ljava/util/HashMap$HashMapEntry;,"Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
