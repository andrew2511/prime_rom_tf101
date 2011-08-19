.class Lcom/google/common/collect/AbstractMultimap$Entries;
.super Ljava/util/AbstractCollection;
.source "AbstractMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Entries"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/AbstractMultimap;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/AbstractMultimap;)V
    .locals 0
    .parameter

    .prologue
    .line 1190
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$Entries;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.Entries;"
    iput-object p1, p0, Lcom/google/common/collect/AbstractMultimap$Entries;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/AbstractMultimap;Lcom/google/common/collect/AbstractMultimap$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1190
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$Entries;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.Entries;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractMultimap$Entries;-><init>(Lcom/google/common/collect/AbstractMultimap;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 1209
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$Entries;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.Entries;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$Entries;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMultimap;->clear()V

    .line 1210
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    .line 1201
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$Entries;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.Entries;"
    instance-of v2, p1, Ljava/util/Map$Entry;

    if-nez v2, :cond_0

    .line 1202
    const/4 v2, 0x0

    .line 1205
    :goto_0
    return v2

    .line 1204
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v1, v0

    .line 1205
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    iget-object v2, p0, Lcom/google/common/collect/AbstractMultimap$Entries;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/common/collect/AbstractMultimap;->containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
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
    .line 1192
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$Entries;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.Entries;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$Entries;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMultimap;->createEntryIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    .line 1213
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$Entries;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.Entries;"
    instance-of v2, p1, Ljava/util/Map$Entry;

    if-nez v2, :cond_0

    .line 1214
    const/4 v2, 0x0

    .line 1217
    :goto_0
    return v2

    .line 1216
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v1, v0

    .line 1217
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    iget-object v2, p0, Lcom/google/common/collect/AbstractMultimap$Entries;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/common/collect/AbstractMultimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1195
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$Entries;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.Entries;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$Entries;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v0}, Lcom/google/common/collect/AbstractMultimap;->access$200(Lcom/google/common/collect/AbstractMultimap;)I

    move-result v0

    return v0
.end method
