.class public Lcom/android/exchange/adapter/PingParser;
.super Lcom/android/exchange/adapter/Parser;
.source "PingParser.java"


# instance fields
.field private mService:Lcom/android/exchange/EasSyncService;

.field private mSyncStatus:I

.field private syncList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/android/exchange/EasSyncService;)V
    .locals 1
    .parameter "in"
    .parameter "service"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/Parser;-><init>(Ljava/io/InputStream;)V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/PingParser;->syncList:Ljava/util/ArrayList;

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/exchange/adapter/PingParser;->mSyncStatus:I

    .line 49
    iput-object p2, p0, Lcom/android/exchange/adapter/PingParser;->mService:Lcom/android/exchange/EasSyncService;

    .line 50
    return-void
.end method


# virtual methods
.method public getSyncList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/exchange/adapter/PingParser;->syncList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSyncStatus()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/android/exchange/adapter/PingParser;->mSyncStatus:I

    return v0
.end method

.method public parse()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/exchange/StaleFolderListException;,
            Lcom/android/exchange/IllegalHeartbeatException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, res:Z
    invoke-virtual {p0, v4}, Lcom/android/exchange/adapter/PingParser;->nextTag(I)I

    move-result v2

    const/16 v3, 0x345

    if-eq v2, v3, :cond_0

    .line 69
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 71
    :cond_0
    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/exchange/adapter/PingParser;->nextTag(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_7

    .line 72
    iget v2, p0, Lcom/android/exchange/adapter/PingParser;->tag:I

    const/16 v3, 0x347

    if-ne v2, v3, :cond_4

    .line 73
    invoke-virtual {p0}, Lcom/android/exchange/adapter/PingParser;->getValueInt()I

    move-result v1

    .line 74
    .local v1, status:I
    iput v1, p0, Lcom/android/exchange/adapter/PingParser;->mSyncStatus:I

    .line 75
    iget-object v2, p0, Lcom/android/exchange/adapter/PingParser;->mService:Lcom/android/exchange/EasSyncService;

    const-string v3, "Ping completed, status = "

    invoke-virtual {v2, v3, v1}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V

    .line 76
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 77
    const/4 v0, 0x1

    goto :goto_0

    .line 78
    :cond_1
    const/4 v2, 0x7

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 80
    :cond_2
    new-instance v2, Lcom/android/exchange/StaleFolderListException;

    invoke-direct {v2}, Lcom/android/exchange/StaleFolderListException;-><init>()V

    throw v2

    .line 81
    :cond_3
    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 85
    .end local v1           #status:I
    :cond_4
    iget v2, p0, Lcom/android/exchange/adapter/PingParser;->tag:I

    const/16 v3, 0x349

    if-ne v2, v3, :cond_5

    .line 86
    iget-object v2, p0, Lcom/android/exchange/adapter/PingParser;->syncList:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/PingParser;->parsePingFolders(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 87
    :cond_5
    iget v2, p0, Lcom/android/exchange/adapter/PingParser;->tag:I

    const/16 v3, 0x348

    if-ne v2, v3, :cond_6

    .line 89
    new-instance v2, Lcom/android/exchange/IllegalHeartbeatException;

    invoke-virtual {p0}, Lcom/android/exchange/adapter/PingParser;->getValueInt()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/android/exchange/IllegalHeartbeatException;-><init>(I)V

    throw v2

    .line 91
    :cond_6
    invoke-virtual {p0}, Lcom/android/exchange/adapter/PingParser;->skipTag()V

    goto :goto_0

    .line 94
    :cond_7
    return v0
.end method

.method public parsePingFolders(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    .local p1, syncList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    const/16 v1, 0x349

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/PingParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 54
    iget v1, p0, Lcom/android/exchange/adapter/PingParser;->tag:I

    const/16 v2, 0x34a

    if-ne v1, v2, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/android/exchange/adapter/PingParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, serverId:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v1, p0, Lcom/android/exchange/adapter/PingParser;->mService:Lcom/android/exchange/EasSyncService;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Changes found in: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_0

    .line 60
    .end local v0           #serverId:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/PingParser;->skipTag()V

    goto :goto_0

    .line 63
    :cond_1
    return-void
.end method
