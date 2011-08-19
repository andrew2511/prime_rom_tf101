.class public Lcom/ecareme/utils/FileUtils$CopyConfig;
.super Ljava/lang/Object;
.source "FileUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/utils/FileUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CopyConfig"
.end annotation


# instance fields
.field private _copy_dir:Z

.field private _modify_date:Z

.field private _overwrite:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    const/4 v0, 0x0

    iput v0, p0, Lcom/ecareme/utils/FileUtils$CopyConfig;->_overwrite:I

    .line 236
    iput-boolean v1, p0, Lcom/ecareme/utils/FileUtils$CopyConfig;->_copy_dir:Z

    .line 239
    iput-boolean v1, p0, Lcom/ecareme/utils/FileUtils$CopyConfig;->_modify_date:Z

    .line 229
    return-void
.end method


# virtual methods
.method public getCopyDir()Z
    .locals 1

    .prologue
    .line 250
    iget-boolean v0, p0, Lcom/ecareme/utils/FileUtils$CopyConfig;->_copy_dir:Z

    return v0
.end method

.method public getModifyDate()Z
    .locals 1

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/ecareme/utils/FileUtils$CopyConfig;->_modify_date:Z

    return v0
.end method

.method public getOverwrite()I
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Lcom/ecareme/utils/FileUtils$CopyConfig;->_overwrite:I

    return v0
.end method

.method public setCopyDir(Z)Lcom/ecareme/utils/FileUtils$CopyConfig;
    .locals 0
    .parameter "copy_dir"

    .prologue
    .line 269
    iput-boolean p1, p0, Lcom/ecareme/utils/FileUtils$CopyConfig;->_copy_dir:Z

    .line 270
    return-object p0
.end method

.method public setModifyDate(Z)Lcom/ecareme/utils/FileUtils$CopyConfig;
    .locals 0
    .parameter "modify_date"

    .prologue
    .line 276
    iput-boolean p1, p0, Lcom/ecareme/utils/FileUtils$CopyConfig;->_modify_date:Z

    .line 277
    return-object p0
.end method

.method public setOverwrite(I)Lcom/ecareme/utils/FileUtils$CopyConfig;
    .locals 0
    .parameter "overwrite"

    .prologue
    .line 262
    iput p1, p0, Lcom/ecareme/utils/FileUtils$CopyConfig;->_overwrite:I

    .line 263
    return-object p0
.end method
