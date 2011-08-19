.class public Lcom/google/android/finsky/api/model/DfeToc;
.super Lcom/google/android/finsky/api/model/DfeModel;
.source "DfeToc.java"


# instance fields
.field private final mCorpusMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedBackendId:I

.field private final mToc:Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;)V
    .locals 4
    .parameter "response"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/finsky/api/model/DfeModel;-><init>()V

    .line 22
    const/4 v2, 0x3

    iput v2, p0, Lcom/google/android/finsky/api/model/DfeToc;->mSelectedBackendId:I

    .line 24
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/api/model/DfeToc;->mCorpusMap:Ljava/util/Map;

    .line 31
    iput-object p1, p0, Lcom/google/android/finsky/api/model/DfeToc;->mToc:Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;

    .line 32
    iget-object v2, p0, Lcom/google/android/finsky/api/model/DfeToc;->mToc:Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->getCorpusList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    .line 33
    .local v1, metadata:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    iget-object v2, p0, Lcom/google/android/finsky/api/model/DfeToc;->mCorpusMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getBackend()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 35
    .end local v1           #metadata:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    :cond_0
    return-void
.end method


# virtual methods
.method public getCorpusList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 52
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;>;"
    iget-object v1, p0, Lcom/google/android/finsky/api/model/DfeToc;->mCorpusMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 53
    return-object v0
.end method

.method public getTosContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeToc;->mToc:Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->getTosContent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
