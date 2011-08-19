.class final Ljava/util/HashMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "HashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/HashMap;


# direct methods
.method private constructor <init>(Ljava/util/HashMap;)V
    .registers 2
    .parameter

    .prologue
    .line 942
    .local p0, this:Ljava/util/HashMap$EntrySet;,"Ljava/util/HashMap<TK;TV;>.EntrySet;"
    iput-object p1, p0, Ljava/util/HashMap$EntrySet;->this$0:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/HashMap;Ljava/util/HashMap$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 942
    .local p0, this:Ljava/util/HashMap$EntrySet;,"Ljava/util/HashMap<TK;TV;>.EntrySet;"
    invoke-direct {p0, p1}, Ljava/util/HashMap$EntrySet;-><init>(Ljava/util/HashMap;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 965
    .local p0, this:Ljava/util/HashMap$EntrySet;,"Ljava/util/HashMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Ljava/util/HashMap$EntrySet;->this$0:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 966
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 7
    .parameter "o"

    .prologue
    .line 947
    .local p0, this:Ljava/util/HashMap$EntrySet;,"Ljava/util/HashMap<TK;TV;>.EntrySet;"
    instance-of v2, p1, Ljava/util/Map$Entry;

    if-nez v2, :cond_6

    .line 948
    const/4 v2, 0x0

    .line 950
    :goto_5
    return v2

    .line 949
    :cond_6
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v1, v0

    .line 950
    .local v1, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    iget-object v2, p0, Ljava/util/HashMap$EntrySet;->this$0:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    #calls: Ljava/util/HashMap;->containsMapping(Ljava/lang/Object;Ljava/lang/Object;)Z
    invoke-static {v2, v3, v4}, Ljava/util/HashMap;->access$600(Ljava/util/HashMap;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_5
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 962
    .local p0, this:Ljava/util/HashMap$EntrySet;,"Ljava/util/HashMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Ljava/util/HashMap$EntrySet;->this$0:Ljava/util/HashMap;

    iget v0, v0, Ljava/util/HashMap;->size:I

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

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
    .line 944
    .local p0, this:Ljava/util/HashMap$EntrySet;,"Ljava/util/HashMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Ljava/util/HashMap$EntrySet;->this$0:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->newEntryIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 7
    .parameter "o"

    .prologue
    .line 953
    .local p0, this:Ljava/util/HashMap$EntrySet;,"Ljava/util/HashMap<TK;TV;>.EntrySet;"
    instance-of v2, p1, Ljava/util/Map$Entry;

    if-nez v2, :cond_6

    .line 954
    const/4 v2, 0x0

    .line 956
    :goto_5
    return v2

    .line 955
    :cond_6
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v1, v0

    .line 956
    .local v1, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    iget-object v2, p0, Ljava/util/HashMap$EntrySet;->this$0:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    #calls: Ljava/util/HashMap;->removeMapping(Ljava/lang/Object;Ljava/lang/Object;)Z
    invoke-static {v2, v3, v4}, Ljava/util/HashMap;->access$700(Ljava/util/HashMap;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_5
.end method

.method public size()I
    .registers 2

    .prologue
    .line 959
    .local p0, this:Ljava/util/HashMap$EntrySet;,"Ljava/util/HashMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Ljava/util/HashMap$EntrySet;->this$0:Ljava/util/HashMap;

    iget v0, v0, Ljava/util/HashMap;->size:I

    return v0
.end method
