.class final Lcom/ecareme/utils/FileUtils$DefaultCopyConfig;
.super Lcom/ecareme/utils/FileUtils$CopyConfig;
.source "FileUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/utils/FileUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultCopyConfig"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 284
    invoke-direct {p0}, Lcom/ecareme/utils/FileUtils$CopyConfig;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ecareme/utils/FileUtils$DefaultCopyConfig;)V
    .locals 0
    .parameter

    .prologue
    .line 284
    invoke-direct {p0}, Lcom/ecareme/utils/FileUtils$DefaultCopyConfig;-><init>()V

    return-void
.end method


# virtual methods
.method public setCopyDir(Z)Lcom/ecareme/utils/FileUtils$CopyConfig;
    .locals 0
    .parameter "copy_dir"

    .prologue
    .line 296
    return-object p0
.end method

.method public setModifyDate(Z)Lcom/ecareme/utils/FileUtils$CopyConfig;
    .locals 0
    .parameter "modify_date"

    .prologue
    .line 302
    return-object p0
.end method

.method public setOverwrite(I)Lcom/ecareme/utils/FileUtils$CopyConfig;
    .locals 0
    .parameter "overwrite"

    .prologue
    .line 290
    return-object p0
.end method
