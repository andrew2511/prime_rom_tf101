.class public Lcom/ecareme/utils/FileUtils$MultiORFilter;
.super Lcom/ecareme/utils/FileUtils$MultiFilter;
.source "FileUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/utils/FileUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultiORFilter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 373
    invoke-direct {p0}, Lcom/ecareme/utils/FileUtils$MultiFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 3
    .parameter "file"

    .prologue
    .line 377
    iget-object v2, p0, Lcom/ecareme/utils/FileUtils$MultiORFilter;->filters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 385
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 379
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/FileFilter;

    .line 380
    .local v0, filter:Ljava/io/FileFilter;
    invoke-interface {v0, p1}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 382
    const/4 v2, 0x1

    goto :goto_0
.end method
