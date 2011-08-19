.class Ljava/util/Hashtable$HashtableEntry;
.super Ljava/lang/Object;
.source "Hashtable.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Hashtable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HashtableEntry"
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

.field next:Ljava/util/Hashtable$HashtableEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable$HashtableEntry",
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
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/util/Hashtable$HashtableEntry;)V
    .registers 5
    .parameter
    .parameter
    .parameter "hash"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;I",
            "Ljava/util/Hashtable$HashtableEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 670
    .local p0, this:Ljava/util/Hashtable$HashtableEntry;,"Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    .local p4, next:Ljava/util/Hashtable$HashtableEntry;,"Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 671
    iput-object p1, p0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    .line 672
    iput-object p2, p0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    .line 673
    iput p3, p0, Ljava/util/Hashtable$HashtableEntry;->hash:I

    .line 674
    iput-object p4, p0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    .line 675
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "o"

    .prologue
    .local p0, this:Ljava/util/Hashtable$HashtableEntry;,"Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    const/4 v4, 0x0

    .line 695
    instance-of v2, p1, Ljava/util/Map$Entry;

    if-nez v2, :cond_7

    move v2, v4

    .line 699
    :goto_6
    return v2

    .line 698
    :cond_7
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v1, v0

    .line 699
    .local v1, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    iget-object v2, p0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    iget-object v2, p0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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
    .line 678
    .local p0, this:Ljava/util/Hashtable$HashtableEntry;,"Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

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
    .line 682
    .local p0, this:Ljava/util/Hashtable$HashtableEntry;,"Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public final hashCode()I
    .registers 3

    .prologue
    .line 703
    .local p0, this:Ljava/util/Hashtable$HashtableEntry;,"Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 686
    .local p0, this:Ljava/util/Hashtable$HashtableEntry;,"Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .local p1, value:Ljava/lang/Object;,"TV;"
    if-nez p1, :cond_8

    .line 687
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 689
    :cond_8
    iget-object v0, p0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    .line 690
    .local v0, oldValue:Ljava/lang/Object;,"TV;"
    iput-object p1, p0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    .line 691
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 707
    .local p0, this:Ljava/util/Hashtable$HashtableEntry;,"Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
