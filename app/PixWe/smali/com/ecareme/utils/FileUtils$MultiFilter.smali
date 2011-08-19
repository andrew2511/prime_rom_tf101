.class public abstract Lcom/ecareme/utils/FileUtils$MultiFilter;
.super Ljava/lang/Object;
.source "FileUtils.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/utils/FileUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MultiFilter"
.end annotation


# instance fields
.field protected filters:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/ecareme/utils/FileUtils$MultiFilter;->filters:Ljava/util/List;

    .line 353
    return-void
.end method


# virtual methods
.method public add(Ljava/io/FileFilter;)Z
    .locals 2
    .parameter "filter"

    .prologue
    .line 359
    iget-object v0, p0, Lcom/ecareme/utils/FileUtils$MultiFilter;->filters:Ljava/util/List;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-ne v0, v1, :cond_0

    .line 361
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ecareme/utils/FileUtils$MultiFilter;->filters:Ljava/util/List;

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/ecareme/utils/FileUtils$MultiFilter;->filters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
