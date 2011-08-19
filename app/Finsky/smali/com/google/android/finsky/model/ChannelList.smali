.class public Lcom/google/android/finsky/model/ChannelList;
.super Ljava/lang/Object;
.source "ChannelList.java"


# instance fields
.field private mSelectedTabId:I

.field private final mTabs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/finsky/model/ChannelTab;",
            ">;"
        }
    .end annotation
.end field

.field private final mToc:Lcom/google/android/finsky/api/model/DfeToc;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/api/model/DfeToc;)V
    .locals 8
    .parameter "response"

    .prologue
    const/4 v4, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v1, 0x3

    iput v1, p0, Lcom/google/android/finsky/model/ChannelList;->mSelectedTabId:I

    .line 26
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/model/ChannelList;->mTabs:Ljava/util/Map;

    .line 29
    iput-object p1, p0, Lcom/google/android/finsky/model/ChannelList;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    .line 30
    iget-object v1, p0, Lcom/google/android/finsky/model/ChannelList;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeToc;->getCorpusList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    .line 31
    .local v7, metadata:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    new-instance v0, Lcom/google/android/finsky/model/ChannelTab;

    invoke-virtual {v7}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getBackend()I

    move-result v2

    invoke-virtual {v7}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getLandingUrl()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/model/ChannelTab;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/app/ActionBar$Tab;)V

    .line 33
    .local v0, tab:Lcom/google/android/finsky/model/ChannelTab;
    iget-object v1, p0, Lcom/google/android/finsky/model/ChannelList;->mTabs:Ljava/util/Map;

    invoke-virtual {v7}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getBackend()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 36
    .end local v0           #tab:Lcom/google/android/finsky/model/ChannelTab;
    .end local v7           #metadata:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    :cond_0
    return-void
.end method


# virtual methods
.method public getIndexForBackendId(I)I
    .locals 4
    .parameter "id"

    .prologue
    .line 57
    const/4 v1, 0x0

    .line 58
    .local v1, index:I
    iget-object v3, p0, Lcom/google/android/finsky/model/ChannelList;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/DfeToc;->getCorpusList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    .line 59
    .local v2, metadata:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getBackend()I

    move-result v3

    if-ne v3, p1, :cond_0

    move v3, v1

    .line 64
    .end local v2           #metadata:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    :goto_1
    return v3

    .line 62
    .restart local v2       #metadata:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 64
    .end local v2           #metadata:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    :cond_1
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public getSelectedTabId()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/google/android/finsky/model/ChannelList;->mSelectedTabId:I

    return v0
.end method

.method public getTab(I)Lcom/google/android/finsky/model/ChannelTab;
    .locals 2
    .parameter "id"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/finsky/model/ChannelList;->mTabs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/finsky/model/ChannelTab;

    return-object p0
.end method

.method public getTabs()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/model/ChannelTab;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 40
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/model/ChannelTab;>;"
    iget-object v1, p0, Lcom/google/android/finsky/model/ChannelList;->mTabs:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 41
    return-object v0
.end method

.method public selectTabWithId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 53
    iput p1, p0, Lcom/google/android/finsky/model/ChannelList;->mSelectedTabId:I

    .line 54
    return-void
.end method
