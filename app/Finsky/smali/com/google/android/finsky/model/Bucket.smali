.class public Lcom/google/android/finsky/model/Bucket;
.super Ljava/lang/Object;
.source "Bucket.java"


# instance fields
.field private final mBucket:Lcom/google/android/finsky/remoting/protos/DocList$Bucket;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/remoting/protos/DocList$Bucket;)V
    .locals 0
    .parameter "bucket"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/android/finsky/model/Bucket;->mBucket:Lcom/google/android/finsky/remoting/protos/DocList$Bucket;

    .line 36
    return-void
.end method

.method public static fromProtos(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocList$Bucket;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/model/Bucket;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, bucketList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/DocList$Bucket;>;"
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 23
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/model/Bucket;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;

    .line 24
    .local v0, bucket:Lcom/google/android/finsky/remoting/protos/DocList$Bucket;
    new-instance v3, Lcom/google/android/finsky/model/Bucket;

    invoke-direct {v3, v0}, Lcom/google/android/finsky/model/Bucket;-><init>(Lcom/google/android/finsky/remoting/protos/DocList$Bucket;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 26
    .end local v0           #bucket:Lcom/google/android/finsky/remoting/protos/DocList$Bucket;
    :cond_0
    return-object v2
.end method


# virtual methods
.method public getBackend()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    iget-object v0, p0, Lcom/google/android/finsky/model/Bucket;->mBucket:Lcom/google/android/finsky/remoting/protos/DocList$Bucket;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getMultiCorpus()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 47
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/model/Bucket;->mBucket:Lcom/google/android/finsky/remoting/protos/DocList$Bucket;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getDocumentCount()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/model/Bucket;->mBucket:Lcom/google/android/finsky/remoting/protos/DocList$Bucket;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getDocument(I)Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->getFinskyDoc()Lcom/google/android/finsky/remoting/protos/Doc$Document;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getDocid()Lcom/google/android/finsky/remoting/protos/Doc$Docid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Doc$Docid;->getBackend()I

    move-result v0

    goto :goto_0
.end method

.method public getCookie()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/finsky/model/Bucket;->mBucket:Lcom/google/android/finsky/remoting/protos/DocList$Bucket;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getAnalyticsCookie()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEstimatedResults()I
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/finsky/model/Bucket;->mBucket:Lcom/google/android/finsky/remoting/protos/DocList$Bucket;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getEstimatedResults()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getHeaderText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/finsky/model/Bucket;->mBucket:Lcom/google/android/finsky/remoting/protos/DocList$Bucket;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/finsky/model/Bucket;->mBucket:Lcom/google/android/finsky/remoting/protos/DocList$Bucket;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getFullContentsUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/finsky/model/Bucket;->mBucket:Lcom/google/android/finsky/remoting/protos/DocList$Bucket;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;
    .locals 1
    .parameter "index"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/finsky/model/Bucket;->mBucket:Lcom/google/android/finsky/remoting/protos/DocList$Bucket;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getDocument(I)Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/finsky/model/Bucket;->mBucket:Lcom/google/android/finsky/remoting/protos/DocList$Bucket;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getDocumentCount()I

    move-result v0

    return v0
.end method

.method public hasMoreItems()Z
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/finsky/model/Bucket;->mBucket:Lcom/google/android/finsky/remoting/protos/DocList$Bucket;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getFullContentsUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSongsList()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 72
    iget-object v0, p0, Lcom/google/android/finsky/model/Bucket;->mBucket:Lcom/google/android/finsky/remoting/protos/DocList$Bucket;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getDocumentCount()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/model/Bucket;->mBucket:Lcom/google/android/finsky/remoting/protos/DocList$Bucket;

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;->getDocument(I)Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;->getFinskyDoc()Lcom/google/android/finsky/remoting/protos/Doc$Document;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getDocid()Lcom/google/android/finsky/remoting/protos/Doc$Docid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Doc$Docid;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method
