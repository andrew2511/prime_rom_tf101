.class public Lcom/ecareme/utils/FileUtils$MultiANDFilter;
.super Lcom/ecareme/utils/FileUtils$MultiFilter;
.source "FileUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/utils/FileUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultiANDFilter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 395
    invoke-direct {p0}, Lcom/ecareme/utils/FileUtils$MultiFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 3
    .parameter "file"

    .prologue
    .line 399
    iget-object v2, p0, Lcom/ecareme/utils/FileUtils$MultiANDFilter;->filters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 407
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 401
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/FileFilter;

    .line 402
    .local v0, filter:Ljava/io/FileFilter;
    invoke-interface {v0, p1}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 404
    const/4 v2, 0x0

    goto :goto_0
.end method
