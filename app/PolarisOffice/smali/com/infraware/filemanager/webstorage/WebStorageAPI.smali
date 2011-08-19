.class public Lcom/infraware/filemanager/webstorage/WebStorageAPI;
.super Ljava/lang/Object;
.source "WebStorageAPI.java"


# static fields
.field static final ROOT_PATH:Ljava/lang/String; = ""

.field private static instance:Lcom/infraware/filemanager/webstorage/WebStorageAPI;


# instance fields
.field private arrayMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;",
            ">;>;"
        }
    .end annotation
.end field

.field private indexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private runningThread:Lcom/infraware/filemanager/webstorage/thread/AbstractThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->instance:Lcom/infraware/filemanager/webstorage/WebStorageAPI;

    .line 33
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->arrayMap:Ljava/util/HashMap;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->indexMap:Ljava/util/HashMap;

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->runningThread:Lcom/infraware/filemanager/webstorage/thread/AbstractThread;

    .line 40
    return-void
.end method

.method private addExtension(Ljava/lang/String;Lcom/infraware/filemanager/webstorage/service/AbstractEntry;)Ljava/lang/String;
    .locals 3
    .parameter "title"
    .parameter "entry"

    .prologue
    .line 350
    invoke-interface {p2}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;->getKind()Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    move-result-object v0

    .line 351
    .local v0, kind:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;
    sget-object v1, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->DOCUMENT:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 352
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".doc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 360
    :cond_0
    :goto_0
    return-object p1

    .line 353
    :cond_1
    sget-object v1, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->SPREADSHEET:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 354
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".xls"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 355
    :cond_2
    sget-object v1, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->PRESENTATION:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".ppt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 357
    :cond_3
    sget-object v1, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->DRAWING:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 358
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private findNode(ILjava/lang/String;Ljava/lang/String;Z)Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    .locals 12
    .parameter "serviceType"
    .parameter "userID"
    .parameter "path"
    .parameter "onlyFolder"

    .prologue
    .line 268
    invoke-static {}, Lcom/infraware/filemanager/webstorage/service/WebStorage;->getInstance()Lcom/infraware/filemanager/webstorage/service/WebStorage;

    move-result-object v9

    .line 269
    .local v9, webStorage:Lcom/infraware/filemanager/webstorage/service/WebStorage;
    if-nez v9, :cond_0

    .line 270
    const/4 v10, 0x0

    .line 325
    .end local p0
    :goto_0
    return-object v10

    .line 272
    .restart local p0
    :cond_0
    invoke-virtual {v9, p1, p2}, Lcom/infraware/filemanager/webstorage/service/WebStorage;->getData(ILjava/lang/String;)Lcom/infraware/filemanager/webstorage/objects/WebStorageData;

    move-result-object v8

    .line 273
    .local v8, webData:Lcom/infraware/filemanager/webstorage/objects/WebStorageData;
    if-nez v8, :cond_1

    .line 274
    const/4 v10, 0x0

    goto :goto_0

    .line 276
    :cond_1
    invoke-virtual {v8}, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;->getEntryTree()Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    move-result-object v5

    .line 277
    .local v5, node:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    if-nez v5, :cond_2

    .line 278
    const/4 v10, 0x0

    goto :goto_0

    .line 280
    :cond_2
    new-instance v6, Ljava/util/StringTokenizer;

    const-string v10, "/"

    invoke-direct {v6, p3, v10}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    .local v6, strToken:Ljava/util/StringTokenizer;
    invoke-virtual {v5}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->getChildArray()Ljava/util/ArrayList;

    move-result-object v0

    .line 283
    .end local p0
    .local v0, childEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;>;"
    :cond_3
    :goto_1
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v10

    if-nez v10, :cond_4

    move-object v10, v5

    .line 325
    goto :goto_0

    .line 285
    :cond_4
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 286
    .local v7, tmpPath:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_5

    .line 287
    const/4 v10, 0x0

    goto :goto_0

    .line 289
    :cond_5
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v2, v10, :cond_3

    .line 291
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    invoke-virtual {p0}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;

    .line 292
    .local v1, entry:Lcom/infraware/filemanager/webstorage/service/AbstractEntry;
    if-eqz p4, :cond_6

    invoke-interface {v1}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;->isFolder()Z

    move-result v10

    if-nez v10, :cond_6

    .line 294
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    if-ne v2, v10, :cond_a

    .line 296
    const/4 v10, 0x0

    goto :goto_0

    .line 301
    :cond_6
    const/16 v10, 0x2e

    invoke-virtual {v7, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 304
    .local v3, nIndex:I
    const/4 v10, -0x1

    if-ne v3, v10, :cond_7

    .line 305
    invoke-interface {v1}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;->getEntryTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;->encodeTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    .line 309
    .local v4, nSameName:I
    :goto_3
    if-nez v4, :cond_9

    .line 311
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 313
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    invoke-virtual {p0}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->getChildArray()Ljava/util/ArrayList;

    move-result-object v0

    .line 314
    goto :goto_1

    .line 307
    .end local v4           #nSameName:I
    :cond_7
    invoke-interface {v1}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;->getEntryFullTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;->encodeTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    .restart local v4       #nSameName:I
    goto :goto_3

    .line 316
    :cond_8
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    move-object v10, p0

    goto/16 :goto_0

    .line 319
    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    if-ne v2, v10, :cond_a

    .line 321
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 289
    .end local v3           #nIndex:I
    .end local v4           #nSameName:I
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private getExtension(Ljava/lang/String;Lcom/infraware/filemanager/webstorage/service/AbstractEntry;)Ljava/lang/String;
    .locals 4
    .parameter "title"
    .parameter "entry"

    .prologue
    .line 365
    invoke-interface {p2}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;->getKind()Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    move-result-object v0

    .line 366
    .local v0, kind:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;
    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 368
    .local v1, lastSubString:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->getExtension(Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getInstance()Lcom/infraware/filemanager/webstorage/WebStorageAPI;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->instance:Lcom/infraware/filemanager/webstorage/WebStorageAPI;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;

    invoke-direct {v0}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;-><init>()V

    sput-object v0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->instance:Lcom/infraware/filemanager/webstorage/WebStorageAPI;

    .line 51
    :cond_0
    sget-object v0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->instance:Lcom/infraware/filemanager/webstorage/WebStorageAPI;

    return-object v0
.end method

.method private getParentFolder(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "folder"

    .prologue
    .line 330
    const-string v1, ""

    .line 331
    .local v1, parentFolder:Ljava/lang/String;
    const/4 v0, 0x0

    .line 333
    .local v0, newFolder:Ljava/lang/String;
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, "/"

    invoke-direct {v2, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    .local v2, strToken:Ljava/util/StringTokenizer;
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-nez v3, :cond_2

    .line 341
    move-object p1, v0

    .line 342
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 343
    const-string v1, "/"

    .line 345
    :cond_1
    return-object v1

    .line 337
    :cond_2
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 338
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 339
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private removeEntry(ILjava/lang/String;Ljava/lang/String;Z)Z
    .locals 5
    .parameter "serviceType"
    .parameter "userId"
    .parameter "path"
    .parameter "isFolder"

    .prologue
    const/4 v4, 0x0

    .line 415
    invoke-static {}, Lcom/infraware/filemanager/webstorage/service/WebStorage;->getInstance()Lcom/infraware/filemanager/webstorage/service/WebStorage;

    move-result-object v3

    .line 416
    .local v3, webStorage:Lcom/infraware/filemanager/webstorage/service/WebStorage;
    invoke-virtual {v3, p1, p2}, Lcom/infraware/filemanager/webstorage/service/WebStorage;->getData(ILjava/lang/String;)Lcom/infraware/filemanager/webstorage/objects/WebStorageData;

    move-result-object v2

    .line 417
    .local v2, webData:Lcom/infraware/filemanager/webstorage/objects/WebStorageData;
    if-nez v2, :cond_1

    .line 433
    :cond_0
    :goto_0
    return v4

    .line 420
    :cond_1
    invoke-direct {p0, p1, p2, p3, v4}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->findNode(ILjava/lang/String;Ljava/lang/String;Z)Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    move-result-object v1

    .line 421
    .local v1, node:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    if-eqz v1, :cond_0

    .line 428
    :try_start_0
    invoke-virtual {v2, v1}, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;->removeEntry(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;)V
    :try_end_0
    .catch Lcom/infraware/filemanager/webstorage/WebStorageException; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    const/4 v4, 0x1

    goto :goto_0

    .line 429
    :catch_0
    move-exception v0

    .line 430
    .local v0, e:Lcom/infraware/filemanager/webstorage/WebStorageException;
    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->runningThread:Lcom/infraware/filemanager/webstorage/thread/AbstractThread;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->runningThread:Lcom/infraware/filemanager/webstorage/thread/AbstractThread;

    invoke-virtual {v0}, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;->cancel()V

    .line 112
    :cond_0
    return-void
.end method

.method public checkLoginThreadAlive()Z
    .locals 2

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->checkThreadAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->runningThread:Lcom/infraware/filemanager/webstorage/thread/AbstractThread;

    invoke-virtual {v0}, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LOGIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 104
    const/4 v0, 0x1

    .line 106
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkThreadAlive()Z
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->runningThread:Lcom/infraware/filemanager/webstorage/thread/AbstractThread;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->runningThread:Lcom/infraware/filemanager/webstorage/thread/AbstractThread;

    invoke-virtual {v0}, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->runningThread:Lcom/infraware/filemanager/webstorage/thread/AbstractThread;

    .line 96
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 94
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public clear()Z
    .locals 2

    .prologue
    .line 217
    iget-object v1, p0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->runningThread:Lcom/infraware/filemanager/webstorage/thread/AbstractThread;

    if-eqz v1, :cond_0

    .line 219
    iget-object v1, p0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->runningThread:Lcom/infraware/filemanager/webstorage/thread/AbstractThread;

    invoke-virtual {v1}, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;->cancel()V

    .line 220
    const/4 v1, 0x0

    .line 226
    :goto_0
    return v1

    .line 223
    :cond_0
    invoke-static {}, Lcom/infraware/filemanager/webstorage/service/WebStorage;->getInstance()Lcom/infraware/filemanager/webstorage/service/WebStorage;

    move-result-object v0

    .line 224
    .local v0, webStorage:Lcom/infraware/filemanager/webstorage/service/WebStorage;
    invoke-virtual {v0}, Lcom/infraware/filemanager/webstorage/service/WebStorage;->clearData()V

    .line 226
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public createFolder(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "serviceType"
    .parameter "userId"
    .parameter "newFolderName"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 386
    invoke-static {}, Lcom/infraware/filemanager/webstorage/service/WebStorage;->getInstance()Lcom/infraware/filemanager/webstorage/service/WebStorage;

    move-result-object v5

    .line 387
    .local v5, webStorage:Lcom/infraware/filemanager/webstorage/service/WebStorage;
    invoke-virtual {v5, p1, p2}, Lcom/infraware/filemanager/webstorage/service/WebStorage;->getData(ILjava/lang/String;)Lcom/infraware/filemanager/webstorage/objects/WebStorageData;

    move-result-object v4

    .line 388
    .local v4, webData:Lcom/infraware/filemanager/webstorage/objects/WebStorageData;
    if-nez v4, :cond_0

    move v6, v7

    .line 410
    :goto_0
    return v6

    .line 391
    :cond_0
    invoke-direct {p0, p1, p2, p3, v8}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->findNode(ILjava/lang/String;Ljava/lang/String;Z)Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    move-result-object v2

    .line 392
    .local v2, node:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    if-eqz v2, :cond_1

    move v6, v7

    .line 393
    goto :goto_0

    .line 395
    :cond_1
    invoke-direct {p0, p3}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->getParentFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 396
    .local v3, parentFolder:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v8, :cond_2

    move v1, v8

    .line 398
    .local v1, index:I
    :goto_1
    invoke-direct {p0, p1, p2, v3, v8}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->findNode(ILjava/lang/String;Ljava/lang/String;Z)Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    move-result-object v2

    .line 399
    if-nez v2, :cond_3

    move v6, v7

    .line 400
    goto :goto_0

    .line 396
    .end local v1           #index:I
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    move v1, v6

    goto :goto_1

    .line 403
    .restart local v1       #index:I
    :cond_3
    :try_start_0
    invoke-virtual {p3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v2, v6}, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;->createFolder(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/infraware/filemanager/webstorage/WebStorageException; {:try_start_0 .. :try_end_0} :catch_1

    move v6, v8

    .line 410
    goto :goto_0

    .line 404
    :catch_0
    move-exception v6

    move-object v0, v6

    .local v0, e:Ljava/lang/IllegalArgumentException;
    move v6, v7

    .line 405
    goto :goto_0

    .line 406
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v6

    move-object v0, v6

    .local v0, e:Lcom/infraware/filemanager/webstorage/WebStorageException;
    move v6, v7

    .line 407
    goto :goto_0
.end method

.method public createThreadByType(Ljava/lang/String;ILjava/lang/String;)Lcom/infraware/filemanager/webstorage/thread/AbstractThread;
    .locals 3
    .parameter "type"
    .parameter "serviceType"
    .parameter "userId"

    .prologue
    const/4 v2, 0x0

    .line 56
    if-nez p1, :cond_0

    move-object v1, v2

    .line 84
    :goto_0
    return-object v1

    .line 59
    :cond_0
    const/4 v0, 0x0

    .line 60
    .local v0, thread:Lcom/infraware/filemanager/webstorage/thread/AbstractThread;
    const-string v1, "LOGIN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 62
    new-instance v0, Lcom/infraware/filemanager/webstorage/thread/LoginThread;

    .end local v0           #thread:Lcom/infraware/filemanager/webstorage/thread/AbstractThread;
    invoke-direct {v0, p2, p3}, Lcom/infraware/filemanager/webstorage/thread/LoginThread;-><init>(ILjava/lang/String;)V

    .restart local v0       #thread:Lcom/infraware/filemanager/webstorage/thread/AbstractThread;
    move-object v1, v0

    .line 63
    goto :goto_0

    .line 66
    :cond_1
    const-string v1, "UPLOAD"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 68
    new-instance v0, Lcom/infraware/filemanager/webstorage/thread/UploadThread;

    .end local v0           #thread:Lcom/infraware/filemanager/webstorage/thread/AbstractThread;
    invoke-direct {v0, p2, p3}, Lcom/infraware/filemanager/webstorage/thread/UploadThread;-><init>(ILjava/lang/String;)V

    .restart local v0       #thread:Lcom/infraware/filemanager/webstorage/thread/AbstractThread;
    move-object v1, v0

    .line 69
    goto :goto_0

    .line 72
    :cond_2
    const-string v1, "DOWNLOAD"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    .line 74
    new-instance v0, Lcom/infraware/filemanager/webstorage/thread/DownloadThread;

    .end local v0           #thread:Lcom/infraware/filemanager/webstorage/thread/AbstractThread;
    invoke-direct {v0, p2, p3}, Lcom/infraware/filemanager/webstorage/thread/DownloadThread;-><init>(ILjava/lang/String;)V

    .restart local v0       #thread:Lcom/infraware/filemanager/webstorage/thread/AbstractThread;
    move-object v1, v0

    .line 75
    goto :goto_0

    .line 78
    :cond_3
    const-string v1, "FILE OPERATION"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4

    .line 80
    new-instance v0, Lcom/infraware/filemanager/webstorage/thread/FileOperationThread;

    .end local v0           #thread:Lcom/infraware/filemanager/webstorage/thread/AbstractThread;
    invoke-direct {v0, p2, p3}, Lcom/infraware/filemanager/webstorage/thread/FileOperationThread;-><init>(ILjava/lang/String;)V

    .restart local v0       #thread:Lcom/infraware/filemanager/webstorage/thread/AbstractThread;
    move-object v1, v0

    .line 81
    goto :goto_0

    :cond_4
    move-object v1, v2

    .line 84
    goto :goto_0
.end method

.method public download(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 19
    .parameter "serviceType"
    .parameter "userId"
    .parameter "srcPath"
    .parameter "dstPath"

    .prologue
    .line 773
    invoke-static {}, Lcom/infraware/filemanager/webstorage/service/WebStorage;->getInstance()Lcom/infraware/filemanager/webstorage/service/WebStorage;

    move-result-object v16

    .line 774
    .local v16, webStorage:Lcom/infraware/filemanager/webstorage/service/WebStorage;
    move-object/from16 v0, v16

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/infraware/filemanager/webstorage/service/WebStorage;->getData(ILjava/lang/String;)Lcom/infraware/filemanager/webstorage/objects/WebStorageData;

    move-result-object v15

    .line 775
    .local v15, webData:Lcom/infraware/filemanager/webstorage/objects/WebStorageData;
    if-nez v15, :cond_0

    .line 776
    const/16 v17, 0x0

    .line 843
    :goto_0
    return v17

    .line 778
    :cond_0
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->findNode(ILjava/lang/String;Ljava/lang/String;Z)Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    move-result-object v12

    .line 779
    .local v12, node:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    if-nez v12, :cond_1

    .line 780
    const/16 v17, 0x0

    goto :goto_0

    .line 782
    :cond_1
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 785
    .local v11, newFileName:Ljava/lang/String;
    const-string v17, "/"

    move-object v0, v11

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    .line 786
    .local v9, lastIndex:I
    const/16 v17, -0x1

    move v0, v9

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    .line 787
    const/16 v17, 0x0

    goto :goto_0

    .line 789
    :cond_2
    const/16 v17, 0x0

    add-int/lit8 v18, v9, 0x1

    move-object v0, v11

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 790
    .local v7, dstFolder:Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, "."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    add-int/lit8 v18, v9, 0x1

    move-object v0, v11

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 793
    .local v14, tmpFile:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v15, v12, v14}, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;->downloadFile(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/infraware/filemanager/webstorage/WebStorageException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v14

    .line 816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->runningThread:Lcom/infraware/filemanager/webstorage/thread/AbstractThread;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    sget-boolean v17, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;->m_bCancel:Z

    if-eqz v17, :cond_6

    .line 819
    if-eqz v14, :cond_3

    .line 821
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 822
    .local v5, deleteFile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 823
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 826
    .end local v5           #deleteFile:Ljava/io/File;
    :cond_3
    const/16 v17, -0x6

    goto/16 :goto_0

    .line 794
    :catch_0
    move-exception v8

    .line 796
    .local v8, e:Ljava/lang/IllegalArgumentException;
    if-eqz v14, :cond_4

    .line 798
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 799
    .restart local v5       #deleteFile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 800
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 803
    .end local v5           #deleteFile:Ljava/io/File;
    :cond_4
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 804
    .end local v8           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v8

    .line 806
    .local v8, e:Lcom/infraware/filemanager/webstorage/WebStorageException;
    if-eqz v14, :cond_5

    .line 808
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 809
    .restart local v5       #deleteFile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 810
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 813
    .end local v5           #deleteFile:Ljava/io/File;
    :cond_5
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 829
    .end local v8           #e:Lcom/infraware/filemanager/webstorage/WebStorageException;
    :cond_6
    if-nez v14, :cond_7

    .line 830
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 832
    :cond_7
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 833
    .local v13, srcFile:Ljava/io/File;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 835
    .local v6, dstFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 837
    invoke-virtual {v13, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v10

    .line 838
    .local v10, nResult:Z
    if-nez v10, :cond_8

    .line 839
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 842
    :cond_8
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/infraware/filemanager/MTPSyncManager;->updateFileCreated(Ljava/lang/String;)I

    .line 843
    const/16 v17, 0x1

    goto/16 :goto_0
.end method

.method public download(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/infraware/filemanager/webstorage/thread/AbstractThread;)I
    .locals 2
    .parameter "serviceType"
    .parameter "userId"
    .parameter "srcPath"
    .parameter "dstPath"
    .parameter "thread"

    .prologue
    .line 764
    iput-object p5, p0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->runningThread:Lcom/infraware/filemanager/webstorage/thread/AbstractThread;

    .line 765
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->download(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 766
    .local v0, result:I
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->runningThread:Lcom/infraware/filemanager/webstorage/thread/AbstractThread;

    .line 768
    return v0
.end method

.method public getFirst(ILjava/lang/String;Ljava/lang/String;)Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;
    .locals 12
    .parameter "serviceType"
    .parameter "userId"
    .parameter "path"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 548
    invoke-direct {p0, p1, p2, p3, v11}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->findNode(ILjava/lang/String;Ljava/lang/String;Z)Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    move-result-object v5

    .line 549
    .local v5, node:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    if-nez v5, :cond_0

    move-object v9, v10

    .line 599
    :goto_0
    return-object v9

    .line 552
    :cond_0
    invoke-virtual {v5}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->getChildArray()Ljava/util/ArrayList;

    move-result-object v0

    .line 553
    .local v0, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_2

    :cond_1
    move-object v9, v10

    .line 554
    goto :goto_0

    .line 557
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int v3, v9, v11

    .line 558
    .local v3, index:I
    :goto_1
    if-gez v3, :cond_3

    .line 568
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_6

    move-object v9, v10

    .line 569
    goto :goto_0

    .line 560
    :cond_3
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #node:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    check-cast v5, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    .line 561
    .restart local v5       #node:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    invoke-virtual {v5}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;

    .line 562
    .local v1, entry:Lcom/infraware/filemanager/webstorage/service/AbstractEntry;
    invoke-interface {v1}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;->getEntryTitle()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-interface {v1}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;->getEntryTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_5

    .line 563
    :cond_4
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 565
    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 571
    .end local v1           #entry:Lcom/infraware/filemanager/webstorage/service/AbstractEntry;
    :cond_6
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #node:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    check-cast v5, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    .line 572
    .restart local v5       #node:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    invoke-virtual {v5}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;

    .line 574
    .restart local v1       #entry:Lcom/infraware/filemanager/webstorage/service/AbstractEntry;
    invoke-static {}, Lcom/infraware/filemanager/webstorage/service/WebStorage;->getInstance()Lcom/infraware/filemanager/webstorage/service/WebStorage;

    move-result-object v8

    .line 575
    .local v8, webStorage:Lcom/infraware/filemanager/webstorage/service/WebStorage;
    invoke-virtual {v8, p1, p2}, Lcom/infraware/filemanager/webstorage/service/WebStorage;->getData(ILjava/lang/String;)Lcom/infraware/filemanager/webstorage/objects/WebStorageData;

    move-result-object v7

    .line 576
    .local v7, webData:Lcom/infraware/filemanager/webstorage/objects/WebStorageData;
    if-nez v7, :cond_7

    move-object v9, v10

    .line 577
    goto :goto_0

    .line 579
    :cond_7
    invoke-interface {v1}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;->getEntryTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;->encodeTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 580
    .local v6, title:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_8

    move-object v9, v10

    .line 581
    goto :goto_0

    .line 583
    :cond_8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 585
    .local v4, key:Ljava/lang/String;
    iget-object v9, p0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->arrayMap:Ljava/util/HashMap;

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    iget-object v9, p0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->arrayMap:Ljava/util/HashMap;

    invoke-virtual {v9, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    iget-object v9, p0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->indexMap:Ljava/util/HashMap;

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    iget-object v9, p0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->indexMap:Ljava/util/HashMap;

    const-string v10, "0"

    invoke-virtual {v9, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    new-instance v2, Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;

    invoke-direct {v2}, Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;-><init>()V

    .line 593
    .local v2, file:Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;
    invoke-interface {v1}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;->isFolder()Z

    move-result v9

    iput-boolean v9, v2, Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;->isFolder:Z

    .line 594
    iput-object v6, v2, Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;->name:Ljava/lang/String;

    .line 595
    invoke-interface {v1}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;->getSize()J

    move-result-wide v9

    iput-wide v9, v2, Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;->size:J

    .line 596
    invoke-interface {v1}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;->getUpdated()J

    move-result-wide v9

    iput-wide v9, v2, Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;->updateTime:J

    .line 597
    invoke-direct {p0, v6, v1}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->getExtension(Ljava/lang/String;Lcom/infraware/filemanager/webstorage/service/AbstractEntry;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;->ext:Ljava/lang/String;

    move-object v9, v2

    .line 599
    goto/16 :goto_0
.end method

.method public getNext(ILjava/lang/String;Ljava/lang/String;)Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;
    .locals 12
    .parameter "serviceType"
    .parameter "userId"
    .parameter "path"

    .prologue
    .line 604
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 605
    .local v5, key:Ljava/lang/String;
    iget-object v10, p0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->arrayMap:Ljava/util/HashMap;

    invoke-virtual {v10, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 607
    .local v0, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;>;"
    if-nez v0, :cond_0

    .line 608
    const/4 v10, 0x0

    .line 648
    :goto_0
    return-object v10

    .line 610
    :cond_0
    iget-object v10, p0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->indexMap:Ljava/util/HashMap;

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 611
    .local v4, indexString:Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 613
    .local v3, index:I
    add-int/lit8 v3, v3, 0x1

    .line 614
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v3, v10, :cond_1

    .line 616
    iget-object v10, p0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->arrayMap:Ljava/util/HashMap;

    invoke-virtual {v10, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    const/4 v10, 0x0

    goto :goto_0

    .line 620
    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    .line 621
    .local v6, node:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    invoke-virtual {v6}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;

    .line 623
    .local v1, entry:Lcom/infraware/filemanager/webstorage/service/AbstractEntry;
    invoke-static {}, Lcom/infraware/filemanager/webstorage/service/WebStorage;->getInstance()Lcom/infraware/filemanager/webstorage/service/WebStorage;

    move-result-object v9

    .line 624
    .local v9, webStorage:Lcom/infraware/filemanager/webstorage/service/WebStorage;
    invoke-virtual {v9, p1, p2}, Lcom/infraware/filemanager/webstorage/service/WebStorage;->getData(ILjava/lang/String;)Lcom/infraware/filemanager/webstorage/objects/WebStorageData;

    move-result-object v8

    .line 625
    .local v8, webData:Lcom/infraware/filemanager/webstorage/objects/WebStorageData;
    if-nez v8, :cond_2

    .line 627
    iget-object v10, p0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->arrayMap:Ljava/util/HashMap;

    invoke-virtual {v10, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    const/4 v10, 0x0

    goto :goto_0

    .line 631
    :cond_2
    invoke-interface {v1}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;->getEntryTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;->encodeTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 632
    .local v7, title:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_3

    .line 634
    iget-object v10, p0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->arrayMap:Ljava/util/HashMap;

    invoke-virtual {v10, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    const/4 v10, 0x0

    goto :goto_0

    .line 638
    :cond_3
    iget-object v10, p0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->indexMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    new-instance v2, Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;

    invoke-direct {v2}, Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;-><init>()V

    .line 642
    .local v2, file:Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;
    invoke-interface {v1}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;->isFolder()Z

    move-result v10

    iput-boolean v10, v2, Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;->isFolder:Z

    .line 643
    iput-object v7, v2, Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;->name:Ljava/lang/String;

    .line 644
    invoke-interface {v1}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;->getSize()J

    move-result-wide v10

    iput-wide v10, v2, Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;->size:J

    .line 645
    invoke-interface {v1}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;->getUpdated()J

    move-result-wide v10

    iput-wide v10, v2, Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;->updateTime:J

    .line 646
    invoke-direct {p0, v7, v1}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->getExtension(Ljava/lang/String;Lcom/infraware/filemanager/webstorage/service/AbstractEntry;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;->ext:Ljava/lang/String;

    move-object v10, v2

    .line 648
    goto :goto_0
.end method

.method public isExist(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "serviceType"
    .parameter "userId"
    .parameter "path"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 653
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->findNode(ILjava/lang/String;Ljava/lang/String;Z)Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    move-result-object v0

    .line 654
    .local v0, node:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    if-nez v0, :cond_1

    .line 656
    if-ne p1, v2, :cond_0

    .line 658
    invoke-static {p3}, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->cutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 659
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->findNode(ILjava/lang/String;Ljava/lang/String;Z)Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    move-result-object v0

    .line 662
    :cond_0
    if-nez v0, :cond_1

    .line 666
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public isLogin(ILjava/lang/String;)Z
    .locals 6
    .parameter "serviceType"
    .parameter "userId"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 116
    invoke-virtual {p0}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->checkThreadAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    iget-object v2, p0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->runningThread:Lcom/infraware/filemanager/webstorage/thread/AbstractThread;

    invoke-virtual {v2}, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LOGIN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    move v2, v4

    .line 133
    :goto_0
    return v2

    .line 122
    :cond_0
    if-nez p2, :cond_1

    move v2, v4

    .line 123
    goto :goto_0

    .line 125
    :cond_1
    invoke-static {}, Lcom/infraware/filemanager/webstorage/service/WebStorage;->getInstance()Lcom/infraware/filemanager/webstorage/service/WebStorage;

    move-result-object v1

    .line 126
    .local v1, webStorage:Lcom/infraware/filemanager/webstorage/service/WebStorage;
    invoke-virtual {v1, p1, p2}, Lcom/infraware/filemanager/webstorage/service/WebStorage;->getData(ILjava/lang/String;)Lcom/infraware/filemanager/webstorage/objects/WebStorageData;

    move-result-object v0

    .line 127
    .local v0, webData:Lcom/infraware/filemanager/webstorage/objects/WebStorageData;
    if-eqz v0, :cond_2

    .line 129
    const-string v2, "/"

    invoke-direct {p0, p1, p2, v2, v5}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->findNode(ILjava/lang/String;Ljava/lang/String;Z)Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    move-result-object v2

    if-eqz v2, :cond_2

    move v2, v5

    .line 130
    goto :goto_0

    :cond_2
    move v2, v4

    .line 133
    goto :goto_0
.end method

.method public login(ILjava/lang/String;Ljava/lang/String;Z)I
    .locals 7
    .parameter "serviceType"
    .parameter "userId"
    .parameter "password"
    .parameter "isRefresh"

    .prologue
    const/4 v6, -0x6

    .line 147
    if-nez p2, :cond_0

    .line 148
    const/4 v4, -0x5

    .line 192
    :goto_0
    return v4

    .line 150
    :cond_0
    if-nez p3, :cond_1

    .line 151
    const-string p3, ""

    .line 153
    :cond_1
    const/4 v1, 0x1

    .line 155
    .local v1, result:I
    invoke-static {}, Lcom/infraware/filemanager/webstorage/service/WebStorage;->getInstance()Lcom/infraware/filemanager/webstorage/service/WebStorage;

    move-result-object v3

    .line 156
    .local v3, webStorage:Lcom/infraware/filemanager/webstorage/service/WebStorage;
    invoke-virtual {v3, p1, p2}, Lcom/infraware/filemanager/webstorage/service/WebStorage;->getData(ILjava/lang/String;)Lcom/infraware/filemanager/webstorage/objects/WebStorageData;

    move-result-object v2

    .line 157
    .local v2, webData:Lcom/infraware/filemanager/webstorage/objects/WebStorageData;
    if-nez v2, :cond_2

    .line 160
    :try_start_0
    invoke-virtual {v3, p2, p3, p1}, Lcom/infraware/filemanager/webstorage/service/WebStorage;->login(Ljava/lang/String;Ljava/lang/String;I)Lcom/infraware/filemanager/webstorage/objects/WebStorageData;
    :try_end_0
    .catch Lorg/apache/http/auth/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/infraware/filemanager/webstorage/WebStorageException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 176
    :cond_2
    :goto_1
    const/4 v4, 0x1

    if-eq v1, v4, :cond_6

    move v4, v1

    .line 177
    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, e:Lorg/apache/http/auth/AuthenticationException;
    const/4 v1, 0x0

    goto :goto_1

    .line 163
    .end local v0           #e:Lorg/apache/http/auth/AuthenticationException;
    :catch_1
    move-exception v0

    .line 164
    .local v0, e:Lcom/infraware/filemanager/webstorage/WebStorageException;
    invoke-virtual {v0}, Lcom/infraware/filemanager/webstorage/WebStorageException;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 165
    invoke-virtual {v0}, Lcom/infraware/filemanager/webstorage/WebStorageException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "403"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_3

    .line 166
    const/4 v1, -0x5

    goto :goto_1

    .line 167
    :cond_3
    invoke-virtual {v0}, Lcom/infraware/filemanager/webstorage/WebStorageException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "404"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_4

    .line 168
    const/4 v1, -0x1

    goto :goto_1

    .line 170
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 172
    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    .line 179
    .end local v0           #e:Lcom/infraware/filemanager/webstorage/WebStorageException;
    :cond_6
    iget-object v4, p0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->runningThread:Lcom/infraware/filemanager/webstorage/thread/AbstractThread;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->runningThread:Lcom/infraware/filemanager/webstorage/thread/AbstractThread;

    invoke-virtual {v4}, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;->isCancel()Z

    move-result v4

    if-eqz v4, :cond_7

    move v4, v6

    .line 180
    goto :goto_0

    .line 183
    :cond_7
    if-eqz p4, :cond_8

    if-eqz v2, :cond_8

    .line 184
    :try_start_1
    invoke-virtual {v2}, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;->refreshEntryTree()V
    :try_end_1
    .catch Lcom/infraware/filemanager/webstorage/WebStorageException; {:try_start_1 .. :try_end_1} :catch_2

    .line 189
    :cond_8
    :goto_2
    iget-object v4, p0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->runningThread:Lcom/infraware/filemanager/webstorage/thread/AbstractThread;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->runningThread:Lcom/infraware/filemanager/webstorage/thread/AbstractThread;

    invoke-virtual {v4}, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;->isCancel()Z

    move-result v4

    if-eqz v4, :cond_9

    move v4, v6

    .line 190
    goto :goto_0

    .line 185
    :catch_2
    move-exception v0

    .line 186
    .restart local v0       #e:Lcom/infraware/filemanager/webstorage/WebStorageException;
    const/4 v1, 0x0

    goto :goto_2

    .end local v0           #e:Lcom/infraware/filemanager/webstorage/WebStorageException;
    :cond_9
    move v4, v1

    .line 192
    goto :goto_0
.end method

.method public login(ILjava/lang/String;Ljava/lang/String;ZLcom/infraware/filemanager/webstorage/thread/AbstractThread;)I
    .locals 2
    .parameter "serviceType"
    .parameter "userId"
    .parameter "password"
    .parameter "isRefresh"
    .parameter "thread"

    .prologue
    .line 138
    iput-object p5, p0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->runningThread:Lcom/infraware/filemanager/webstorage/thread/AbstractThread;

    .line 139
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->login(ILjava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    .line 140
    .local v0, result:I
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->runningThread:Lcom/infraware/filemanager/webstorage/thread/AbstractThread;

    .line 142
    return v0
.end method

.method public logout(ILjava/lang/String;)Z
    .locals 2
    .parameter "serviceType"
    .parameter "userId"

    .prologue
    .line 197
    iget-object v1, p0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->runningThread:Lcom/infraware/filemanager/webstorage/thread/AbstractThread;

    if-eqz v1, :cond_0

    .line 199
    iget-object v1, p0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->runningThread:Lcom/infraware/filemanager/webstorage/thread/AbstractThread;

    invoke-virtual {v1}, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;->cancel()V

    .line 200
    const/4 v1, 0x0

    .line 206
    :goto_0
    return v1

    .line 203
    :cond_0
    invoke-static {}, Lcom/infraware/filemanager/webstorage/service/WebStorage;->getInstance()Lcom/infraware/filemanager/webstorage/service/WebStorage;

    move-result-object v0

    .line 204
    .local v0, webStorage:Lcom/infraware/filemanager/webstorage/service/WebStorage;
    invoke-virtual {v0, p1, p2}, Lcom/infraware/filemanager/webstorage/service/WebStorage;->removeData(ILjava/lang/String;)V

    .line 206
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public logoutNotcareOperation(ILjava/lang/String;)V
    .locals 1
    .parameter "serviceType"
    .parameter "userId"

    .prologue
    .line 211
    invoke-static {}, Lcom/infraware/filemanager/webstorage/service/WebStorage;->getInstance()Lcom/infraware/filemanager/webstorage/service/WebStorage;

    move-result-object v0

    .line 212
    .local v0, webStorage:Lcom/infraware/filemanager/webstorage/service/WebStorage;
    invoke-virtual {v0, p1, p2}, Lcom/infraware/filemanager/webstorage/service/WebStorage;->removeData(ILjava/lang/String;)V

    .line 213
    return-void
.end method

.method public refreshData(ILjava/lang/String;)Z
    .locals 5
    .parameter "serviceType"
    .parameter "userId"

    .prologue
    const/4 v4, 0x0

    .line 248
    iget-object v3, p0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->arrayMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 249
    iget-object v3, p0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->indexMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 251
    invoke-static {}, Lcom/infraware/filemanager/webstorage/service/WebStorage;->getInstance()Lcom/infraware/filemanager/webstorage/service/WebStorage;

    move-result-object v2

    .line 252
    .local v2, webStorage:Lcom/infraware/filemanager/webstorage/service/WebStorage;
    invoke-virtual {v2, p1, p2}, Lcom/infraware/filemanager/webstorage/service/WebStorage;->getData(ILjava/lang/String;)Lcom/infraware/filemanager/webstorage/objects/WebStorageData;

    move-result-object v1

    .line 253
    .local v1, webData:Lcom/infraware/filemanager/webstorage/objects/WebStorageData;
    if-nez v1, :cond_0

    move v3, v4

    .line 263
    :goto_0
    return v3

    .line 257
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;->refreshEntryTree()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/infraware/filemanager/webstorage/WebStorageException; {:try_start_0 .. :try_end_0} :catch_1

    .line 263
    const/4 v3, 0x1

    goto :goto_0

    .line 258
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/IllegalArgumentException;
    move v3, v4

    .line 259
    goto :goto_0

    .line 260
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .local v0, e:Lcom/infraware/filemanager/webstorage/WebStorageException;
    move v3, v4

    .line 261
    goto :goto_0
.end method

.method public refreshData(ILjava/lang/String;Lcom/infraware/filemanager/webstorage/thread/AbstractThread;)Z
    .locals 2
    .parameter "serviceType"
    .parameter "userId"
    .parameter "thread"

    .prologue
    .line 231
    iput-object p3, p0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->runningThread:Lcom/infraware/filemanager/webstorage/thread/AbstractThread;

    .line 232
    invoke-virtual {p0, p1, p2}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->refreshData(ILjava/lang/String;)Z

    move-result v0

    .line 233
    .local v0, result:Z
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->runningThread:Lcom/infraware/filemanager/webstorage/thread/AbstractThread;

    .line 235
    return v0
.end method

.method public removeFile(ILjava/lang/String;Ljava/lang/String;Lcom/infraware/filemanager/webstorage/thread/AbstractThread;)Z
    .locals 2
    .parameter "serviceType"
    .parameter "userId"
    .parameter "path"
    .parameter "thread"

    .prologue
    .line 446
    iput-object p4, p0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->runningThread:Lcom/infraware/filemanager/webstorage/thread/AbstractThread;

    .line 447
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->removeEntry(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 448
    .local v0, bResult:Ljava/lang/Boolean;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->runningThread:Lcom/infraware/filemanager/webstorage/thread/AbstractThread;

    .line 449
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public removeFolder(ILjava/lang/String;Ljava/lang/String;Lcom/infraware/filemanager/webstorage/thread/AbstractThread;)Z
    .locals 2
    .parameter "serviceType"
    .parameter "userId"
    .parameter "path"
    .parameter "thread"

    .prologue
    .line 438
    iput-object p4, p0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->runningThread:Lcom/infraware/filemanager/webstorage/thread/AbstractThread;

    .line 439
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->removeEntry(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 440
    .local v0, bResult:Ljava/lang/Boolean;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->runningThread:Lcom/infraware/filemanager/webstorage/thread/AbstractThread;

    .line 441
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public rename(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 20
    .parameter "serviceType"
    .parameter "userId"
    .parameter "srcPath"
    .parameter "dstPath"

    .prologue
    .line 454
    invoke-static {}, Lcom/infraware/filemanager/webstorage/service/WebStorage;->getInstance()Lcom/infraware/filemanager/webstorage/service/WebStorage;

    move-result-object v16

    .line 455
    .local v16, webStorage:Lcom/infraware/filemanager/webstorage/service/WebStorage;
    move-object/from16 v0, v16

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/infraware/filemanager/webstorage/service/WebStorage;->getData(ILjava/lang/String;)Lcom/infraware/filemanager/webstorage/objects/WebStorageData;

    move-result-object v15

    .line 456
    .local v15, webData:Lcom/infraware/filemanager/webstorage/objects/WebStorageData;
    if-nez v15, :cond_0

    .line 457
    const/16 v17, 0x0

    .line 543
    :goto_0
    return v17

    .line 459
    :cond_0
    const/4 v10, 0x0

    .line 460
    .local v10, node:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    const/4 v14, 0x0

    .line 462
    .local v14, tmpPath:Ljava/lang/String;
    invoke-static {}, Lcom/infraware/filemanager/FmWebStorageAccount;->getServiceType()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 463
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->findNode(ILjava/lang/String;Ljava/lang/String;Z)Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    move-result-object v10

    .line 464
    if-nez v10, :cond_1

    .line 465
    const/16 v17, 0x0

    goto :goto_0

    .line 466
    :cond_1
    invoke-virtual {v10}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;

    invoke-interface {v5}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;->getKind()Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->toString()Ljava/lang/String;

    move-result-object v17

    const-string v18, "folder"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v17

    if-eqz v17, :cond_2

    .line 467
    invoke-static/range {p3 .. p3}, Lcom/infraware/filemanager/FmFileUtil;->getFileExtString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_2

    .line 468
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, "."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static/range {p3 .. p3}, Lcom/infraware/filemanager/FmFileUtil;->getFileExtString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 473
    :cond_2
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->findNode(ILjava/lang/String;Ljava/lang/String;Z)Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    move-result-object v10

    .line 474
    if-eqz v10, :cond_3

    .line 476
    const/16 v17, -0xf

    invoke-static/range {v17 .. v17}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->setErrorCode(I)V

    .line 477
    const/16 v17, 0x0

    goto :goto_0

    .line 480
    :cond_3
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->findNode(ILjava/lang/String;Ljava/lang/String;Z)Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    move-result-object v10

    .line 481
    if-nez v10, :cond_4

    .line 482
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 484
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->getParentFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 485
    .local v13, srcParent:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->getParentFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 487
    .local v7, dstParent:Ljava/lang/String;
    invoke-virtual {v13, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_7

    .line 490
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    const/16 v17, 0x1

    move/from16 v9, v17

    .line 492
    .local v9, index:I
    :goto_1
    :try_start_0
    move-object/from16 v0, p4

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    move-object v0, v15

    move-object v1, v10

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;->renameEntry(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/infraware/filemanager/webstorage/WebStorageException; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    .end local v9           #index:I
    :cond_5
    :goto_2
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 490
    :cond_6
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    move/from16 v9, v17

    goto :goto_1

    .line 493
    .restart local v9       #index:I
    :catch_0
    move-exception v17

    move-object/from16 v8, v17

    .line 494
    .local v8, e:Lcom/infraware/filemanager/webstorage/WebStorageException;
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 500
    .end local v8           #e:Lcom/infraware/filemanager/webstorage/WebStorageException;
    .end local v9           #index:I
    :cond_7
    const/4 v14, 0x0

    .line 501
    const/4 v12, 0x0

    .local v12, srcNode:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    const/4 v6, 0x0

    .line 503
    .local v6, dstNode:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    const/16 v17, 0x1

    move/from16 v11, v17

    .line 504
    .local v11, srcIndex:I
    :goto_3
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    const/16 v17, 0x1

    move/from16 v5, v17

    .line 506
    .local v5, dstIndex:I
    :goto_4
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    const-string v18, ""

    :goto_5
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p3

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 507
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v14

    move/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->findNode(ILjava/lang/String;Ljava/lang/String;Z)Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    move-result-object v10

    .line 508
    if-eqz v10, :cond_b

    .line 509
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 503
    .end local v5           #dstIndex:I
    .end local v11           #srcIndex:I
    :cond_8
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    move/from16 v11, v17

    goto :goto_3

    .line 504
    .restart local v11       #srcIndex:I
    :cond_9
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    move/from16 v5, v17

    goto :goto_4

    .line 506
    .restart local v5       #dstIndex:I
    :cond_a
    const-string v18, "/"

    goto :goto_5

    .line 511
    :cond_b
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->findNode(ILjava/lang/String;Ljava/lang/String;Z)Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    move-result-object v12

    .line 512
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v7

    move/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->findNode(ILjava/lang/String;Ljava/lang/String;Z)Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    move-result-object v6

    .line 514
    if-eqz v12, :cond_c

    if-nez v6, :cond_d

    .line 515
    :cond_c
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 518
    :cond_d
    :try_start_1
    invoke-virtual {v15, v12, v6}, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;->moveEntry(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;)V
    :try_end_1
    .catch Lcom/infraware/filemanager/webstorage/WebStorageException; {:try_start_1 .. :try_end_1} :catch_2

    .line 523
    move-object/from16 v0, p3

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p4

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v17

    if-eqz v17, :cond_5

    .line 527
    :try_start_2
    invoke-virtual {v15}, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;->refreshEntryTree()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/infraware/filemanager/webstorage/WebStorageException; {:try_start_2 .. :try_end_2} :catch_4

    .line 534
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v14

    move/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->findNode(ILjava/lang/String;Ljava/lang/String;Z)Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    move-result-object v10

    .line 537
    :try_start_3
    move-object/from16 v0, p4

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    move-object v0, v15

    move-object v1, v10

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;->renameEntry(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/infraware/filemanager/webstorage/WebStorageException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    .line 538
    :catch_1
    move-exception v17

    move-object/from16 v8, v17

    .line 539
    .restart local v8       #e:Lcom/infraware/filemanager/webstorage/WebStorageException;
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 519
    .end local v8           #e:Lcom/infraware/filemanager/webstorage/WebStorageException;
    :catch_2
    move-exception v8

    .line 520
    .restart local v8       #e:Lcom/infraware/filemanager/webstorage/WebStorageException;
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 528
    .end local v8           #e:Lcom/infraware/filemanager/webstorage/WebStorageException;
    :catch_3
    move-exception v8

    .line 529
    .local v8, e:Ljava/lang/IllegalArgumentException;
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 530
    .end local v8           #e:Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v8

    .line 531
    .local v8, e:Lcom/infraware/filemanager/webstorage/WebStorageException;
    const/16 v17, 0x0

    goto/16 :goto_0
.end method

.method public rename(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/infraware/filemanager/webstorage/thread/AbstractThread;)Z
    .locals 2
    .parameter "serviceType"
    .parameter "userId"
    .parameter "srcPath"
    .parameter "dstPath"
    .parameter "thread"

    .prologue
    .line 240
    iput-object p5, p0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->runningThread:Lcom/infraware/filemanager/webstorage/thread/AbstractThread;

    .line 241
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->rename(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 242
    .local v0, result:Z
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->runningThread:Lcom/infraware/filemanager/webstorage/thread/AbstractThread;

    .line 244
    return v0
.end method

.method public upload(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 18
    .parameter "serviceType"
    .parameter "userId"
    .parameter "srcPath"
    .parameter "dstPath"

    .prologue
    .line 680
    invoke-static {}, Lcom/infraware/filemanager/webstorage/service/WebStorage;->getInstance()Lcom/infraware/filemanager/webstorage/service/WebStorage;

    move-result-object v15

    .line 681
    .local v15, webStorage:Lcom/infraware/filemanager/webstorage/service/WebStorage;
    move-object v0, v15

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/infraware/filemanager/webstorage/service/WebStorage;->getData(ILjava/lang/String;)Lcom/infraware/filemanager/webstorage/objects/WebStorageData;

    move-result-object v14

    .line 682
    .local v14, webData:Lcom/infraware/filemanager/webstorage/objects/WebStorageData;
    if-nez v14, :cond_0

    .line 683
    const/16 v16, -0x5

    .line 759
    :goto_0
    return v16

    .line 685
    :cond_0
    const/4 v11, 0x0

    .line 687
    .local v11, node:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move/from16 v4, v16

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->findNode(ILjava/lang/String;Ljava/lang/String;Z)Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    move-result-object v11

    .line 688
    if-eqz v11, :cond_1

    .line 689
    const/16 v16, -0x2

    goto :goto_0

    .line 691
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->getParentFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 692
    .local v6, dstParent:Ljava/lang/String;
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v6

    move/from16 v4, v16

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->findNode(ILjava/lang/String;Ljava/lang/String;Z)Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    move-result-object v11

    .line 693
    if-nez v11, :cond_2

    .line 694
    const/16 v16, -0x3

    goto :goto_0

    .line 696
    :cond_2
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 697
    .local v9, newFileName:Ljava/lang/String;
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 699
    .local v13, uploadFile:Ljava/io/File;
    const/4 v8, 0x0

    .line 700
    .local v8, index:I
    const/4 v12, 0x0

    .line 701
    .local v12, tmpFileName:Ljava/lang/String;
    const/4 v10, 0x0

    .line 704
    .local v10, newNode:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    :goto_1
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "["

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "]"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "TempUpload"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 705
    const-string v16, "/"

    move-object v0, v6

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_5

    .line 706
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v16

    move/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->findNode(ILjava/lang/String;Ljava/lang/String;Z)Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    move-result-object v10

    .line 710
    :goto_2
    if-nez v10, :cond_6

    .line 712
    invoke-virtual {v14, v12}, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;->setTmpFile(Ljava/lang/String;)V

    .line 718
    const/4 v5, 0x0

    .line 720
    .local v5, bResult:I
    :try_start_0
    invoke-virtual {v14, v11, v13}, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;->uploadFile(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;Ljava/io/File;)I
    :try_end_0
    .catch Lcom/infraware/filemanager/webstorage/WebStorageException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->runningThread:Lcom/infraware/filemanager/webstorage/thread/AbstractThread;

    move-object/from16 v16, v0

    if-eqz v16, :cond_d

    sget-boolean v16, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;->m_bCancel:Z

    if-eqz v16, :cond_d

    .line 738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->runningThread:Lcom/infraware/filemanager/webstorage/thread/AbstractThread;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;->cancel()V

    .line 739
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move/from16 v4, v16

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->findNode(ILjava/lang/String;Ljava/lang/String;Z)Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    move-result-object v11

    .line 740
    if-nez v11, :cond_3

    .line 742
    const/16 v16, 0x1

    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_3

    .line 744
    invoke-static/range {p4 .. p4}, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->cutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 745
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move/from16 v4, v16

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->findNode(ILjava/lang/String;Ljava/lang/String;Z)Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    move-result-object v11

    .line 749
    :cond_3
    if-eqz v11, :cond_4

    .line 752
    :try_start_1
    invoke-virtual {v14, v11}, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;->removeEntry(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;)V
    :try_end_1
    .catch Lcom/infraware/filemanager/webstorage/WebStorageException; {:try_start_1 .. :try_end_1} :catch_1

    .line 756
    :cond_4
    :goto_3
    const/16 v16, -0x6

    goto/16 :goto_0

    .line 708
    .end local v5           #bResult:I
    :cond_5
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v16

    move/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->findNode(ILjava/lang/String;Ljava/lang/String;Z)Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    move-result-object v10

    goto :goto_2

    .line 715
    :cond_6
    add-int/lit8 v8, v8, 0x1

    .line 702
    goto/16 :goto_1

    .line 721
    .restart local v5       #bResult:I
    :catch_0
    move-exception v7

    .line 722
    .local v7, e:Lcom/infraware/filemanager/webstorage/WebStorageException;
    if-eqz v7, :cond_7

    invoke-virtual {v7}, Lcom/infraware/filemanager/webstorage/WebStorageException;->getCause()Ljava/lang/Throwable;

    move-result-object v16

    if-eqz v16, :cond_7

    invoke-virtual {v7}, Lcom/infraware/filemanager/webstorage/WebStorageException;->getCause()Ljava/lang/Throwable;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v16

    if-nez v16, :cond_8

    .line 723
    :cond_7
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 724
    :cond_8
    invoke-virtual {v7}, Lcom/infraware/filemanager/webstorage/WebStorageException;->getCause()Ljava/lang/Throwable;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v17, "com.google.api.client.http.HttpResponseException: 400 Bad Request"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v16

    if-nez v16, :cond_9

    .line 725
    const/16 v16, -0xd

    goto/16 :goto_0

    .line 726
    :cond_9
    invoke-virtual {v7}, Lcom/infraware/filemanager/webstorage/WebStorageException;->getCause()Ljava/lang/Throwable;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v17, "com.google.api.client.http.HttpResponseException: 403 Forbidden"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v16

    if-nez v16, :cond_a

    .line 727
    const/16 v16, -0xe

    goto/16 :goto_0

    .line 728
    :cond_a
    invoke-virtual {v7}, Lcom/infraware/filemanager/webstorage/WebStorageException;->getCause()Ljava/lang/Throwable;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v17, "java.net.SocketTimeoutException: Read timed out"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v16

    if-nez v16, :cond_b

    .line 729
    const/16 v16, -0xc

    goto/16 :goto_0

    .line 730
    :cond_b
    sget-boolean v16, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;->m_bCancel:Z

    if-eqz v16, :cond_c

    .line 731
    const/16 v16, -0x6

    goto/16 :goto_0

    .line 733
    :cond_c
    const/16 v16, 0x0

    goto/16 :goto_0

    .end local v7           #e:Lcom/infraware/filemanager/webstorage/WebStorageException;
    :cond_d
    move/from16 v16, v5

    .line 759
    goto/16 :goto_0

    .line 753
    :catch_1
    move-exception v16

    goto/16 :goto_3
.end method

.method public upload(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/infraware/filemanager/webstorage/thread/AbstractThread;)I
    .locals 2
    .parameter "serviceType"
    .parameter "userId"
    .parameter "srcPath"
    .parameter "dstPath"
    .parameter "thread"

    .prologue
    .line 671
    iput-object p5, p0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->runningThread:Lcom/infraware/filemanager/webstorage/thread/AbstractThread;

    .line 672
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->upload(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 673
    .local v0, result:I
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->runningThread:Lcom/infraware/filemanager/webstorage/thread/AbstractThread;

    .line 675
    return v0
.end method
