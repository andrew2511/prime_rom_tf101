.class public final Lcom/amazon/topaz/internal/binxml/Collection;
.super Ljava/lang/Object;
.source "Collection.java"


# instance fields
.field private final dict_:Lcom/amazon/topaz/internal/binxml/Dictionary;

.field private final tables_:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lcom/amazon/topaz/internal/binxml/Dictionary;Lcom/amazon/topaz/internal/binxml/Deserializer;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/amazon/topaz/internal/binxml/Collection;->dict_:Lcom/amazon/topaz/internal/binxml/Dictionary;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/topaz/internal/binxml/Collection;->tables_:Ljava/util/HashMap;

    .line 25
    :try_start_0
    invoke-direct {p0, p2}, Lcom/amazon/topaz/internal/binxml/Collection;->deserialize(Lcom/amazon/topaz/internal/binxml/Deserializer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    return-void

    .line 32
    :catchall_0
    move-exception v0

    throw v0
.end method

.method private deserialize(Lcom/amazon/topaz/internal/binxml/Deserializer;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/topaz/exception/TopazException;
        }
    .end annotation

    .prologue
    .line 38
    const/16 v0, 0x5f

    invoke-virtual {p1, v0}, Lcom/amazon/topaz/internal/binxml/Deserializer;->skipSentinel(I)V

    .line 39
    invoke-virtual {p1}, Lcom/amazon/topaz/internal/binxml/Deserializer;->readInt()I

    move-result v0

    .line 41
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 42
    invoke-virtual {p1}, Lcom/amazon/topaz/internal/binxml/Deserializer;->readInt()I

    move-result v2

    .line 43
    new-instance v3, Lcom/amazon/topaz/internal/binxml/Table;

    iget-object v4, p0, Lcom/amazon/topaz/internal/binxml/Collection;->dict_:Lcom/amazon/topaz/internal/binxml/Dictionary;

    invoke-direct {v3, v4}, Lcom/amazon/topaz/internal/binxml/Table;-><init>(Lcom/amazon/topaz/internal/binxml/Dictionary;)V

    .line 44
    iget-object v4, p0, Lcom/amazon/topaz/internal/binxml/Collection;->tables_:Ljava/util/HashMap;

    new-instance v5, Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-direct {v5, v2}, Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;-><init>(I)V

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-virtual {v3, p1}, Lcom/amazon/topaz/internal/binxml/Table;->deserialize(Lcom/amazon/topaz/internal/binxml/Deserializer;)V

    .line 41
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized get(Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;)Lcom/amazon/topaz/internal/binxml/Table;
    .locals 2
    .parameter

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amazon/topaz/internal/binxml/Collection;->tables_:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/topaz/internal/binxml/Table;

    .line 51
    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/amazon/topaz/internal/binxml/Table;

    iget-object v1, p0, Lcom/amazon/topaz/internal/binxml/Collection;->dict_:Lcom/amazon/topaz/internal/binxml/Dictionary;

    invoke-direct {v0, v1}, Lcom/amazon/topaz/internal/binxml/Table;-><init>(Lcom/amazon/topaz/internal/binxml/Dictionary;)V

    .line 54
    iget-object v1, p0, Lcom/amazon/topaz/internal/binxml/Collection;->tables_:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :cond_0
    monitor-exit p0

    return-object v0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAllocSize()I
    .locals 5

    .prologue
    .line 61
    monitor-enter p0

    const/4 v0, 0x0

    .line 63
    .local v0, allocSize:I
    :try_start_0
    iget-object v4, p0, Lcom/amazon/topaz/internal/binxml/Collection;->tables_:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 64
    .local v2, keySetIt:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 66
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    .line 67
    .local v1, key:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;
    iget-object v4, p0, Lcom/amazon/topaz/internal/binxml/Collection;->tables_:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/topaz/internal/binxml/Table;

    .line 68
    .local v3, value:Lcom/amazon/topaz/internal/binxml/Table;
    invoke-virtual {v3}, Lcom/amazon/topaz/internal/binxml/Table;->getAllocSize()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    add-int/2addr v0, v4

    .line 69
    goto :goto_0

    .line 70
    .end local v1           #key:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;
    .end local v3           #value:Lcom/amazon/topaz/internal/binxml/Table;
    :cond_0
    monitor-exit p0

    return v0

    .line 61
    .end local v2           #keySetIt:Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method
