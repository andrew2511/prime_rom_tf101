.class public abstract Lcom/ecareme/utils/FileUtils$FilePathFilter;
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
    name = "FilePathFilter"
.end annotation


# instance fields
.field _name:Ljava/lang/String;

.field _path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .parameter "path"

    .prologue
    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f

    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ecareme/utils/FileUtils$FilePathFilter;->_path:Ljava/lang/String;

    .line 336
    iget-object v1, p0, Lcom/ecareme/utils/FileUtils$FilePathFilter;->_path:Ljava/lang/String;

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 337
    .local v0, idx:I
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/ecareme/utils/FileUtils$FilePathFilter;->_path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 339
    iget-object v1, p0, Lcom/ecareme/utils/FileUtils$FilePathFilter;->_path:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ecareme/utils/FileUtils$FilePathFilter;->_name:Ljava/lang/String;

    .line 345
    :goto_0
    return-void

    .line 343
    :cond_0
    iget-object v1, p0, Lcom/ecareme/utils/FileUtils$FilePathFilter;->_path:Ljava/lang/String;

    iput-object v1, p0, Lcom/ecareme/utils/FileUtils$FilePathFilter;->_name:Ljava/lang/String;

    goto :goto_0
.end method
