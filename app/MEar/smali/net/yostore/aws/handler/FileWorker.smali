.class public Lnet/yostore/aws/handler/FileWorker;
.super Ljava/lang/Object;
.source "FileWorker.java"


# instance fields
.field private fileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private items:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/handler/FileWorker;->fileList:Ljava/util/List;

    .line 20
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lnet/yostore/aws/handler/FileWorker;->getSubFiles(Ljava/io/File;)V

    .line 21
    iget-object v0, p0, Lnet/yostore/aws/handler/FileWorker;->fileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/handler/FileWorker;->items:Ljava/util/Iterator;

    .line 22
    return-void
.end method

.method private getSubFiles(Ljava/io/File;)V
    .locals 5
    .parameter "root"

    .prologue
    .line 31
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 32
    .local v1, files:[Ljava/io/File;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_0

    .line 45
    return-void

    .line 32
    :cond_0
    aget-object v0, v1, v3

    .line 33
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 34
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 36
    iget-object v4, p0, Lnet/yostore/aws/handler/FileWorker;->fileList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-direct {p0, v0}, Lnet/yostore/aws/handler/FileWorker;->getSubFiles(Ljava/io/File;)V

    .line 32
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 41
    :cond_2
    iget-object v4, p0, Lnet/yostore/aws/handler/FileWorker;->fileList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static isExist(Ljava/lang/String;I)Z
    .locals 3
    .parameter "path"
    .parameter "type"

    .prologue
    .line 48
    const/4 v1, 0x0

    .line 49
    .local v1, rtn:Z
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 52
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 53
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    const/4 v1, 0x1

    .line 59
    :cond_0
    :goto_0
    return v1

    .line 55
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public next()Ljava/io/File;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lnet/yostore/aws/handler/FileWorker;->items:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lnet/yostore/aws/handler/FileWorker;->items:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/io/File;

    move-object v0, p0

    .line 27
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
