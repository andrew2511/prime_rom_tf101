.class public Lnet/yostore/aws/handler/CaptureItemHandler;
.super Ljava/lang/Object;
.source "CaptureItemHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearByUploadType(Landroid/content/Context;I)V
    .locals 1
    .parameter "ctx"
    .parameter "utype"

    .prologue
    .line 20
    new-instance v0, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;

    invoke-direct {v0, p0}, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;-><init>(Landroid/content/Context;)V

    .line 21
    .local v0, bca:Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;->open()Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;

    .line 22
    invoke-virtual {v0, p1}, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;->deleteUploadItemByType(I)Z

    .line 23
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;->close()V

    .line 24
    return-void
.end method

.method public static clearUploadItem(Landroid/content/Context;)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 14
    new-instance v0, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;

    invoke-direct {v0, p0}, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;-><init>(Landroid/content/Context;)V

    .line 15
    .local v0, bca:Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;->open()Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;

    .line 16
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;->deleteAllUploadItem()Z

    .line 17
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;->close()V

    .line 18
    return-void
.end method

.method public static insertUploadItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 8
    .parameter "ctx"
    .parameter "parent"
    .parameter "name"
    .parameter "type"
    .parameter "utype"

    .prologue
    .line 27
    if-nez p3, :cond_1

    .line 28
    new-instance v0, Lnet/yostore/aws/sqlite/entity/UploadItem;

    const-wide/16 v4, -0x1

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lnet/yostore/aws/sqlite/entity/UploadItem;-><init>(Ljava/lang/String;Ljava/lang/String;IJI)V

    invoke-static {p0, v0}, Lnet/yostore/aws/handler/CaptureItemHandler;->smartInsertUploadItem(Landroid/content/Context;Lnet/yostore/aws/sqlite/entity/UploadItem;)V

    .line 29
    new-instance p3, Ljava/lang/StringBuilder;

    .end local p3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .end local p1
    invoke-direct {p3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p4}, Lnet/yostore/aws/handler/CaptureItemHandler;->smartInsertUItems(Landroid/content/Context;Ljava/lang/String;I)V

    .line 42
    .end local p2
    :cond_0
    return-void

    .line 31
    .restart local p1
    .restart local p2
    .restart local p3
    :cond_1
    new-instance v7, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    .local v7, pf:Ljava/io/File;
    new-instance v0, Lnet/yostore/aws/sqlite/entity/UploadItem;

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v4

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lnet/yostore/aws/sqlite/entity/UploadItem;-><init>(Ljava/lang/String;Ljava/lang/String;IJI)V

    invoke-static {p0, v0}, Lnet/yostore/aws/handler/CaptureItemHandler;->smartInsertUploadItem(Landroid/content/Context;Lnet/yostore/aws/sqlite/entity/UploadItem;)V

    .line 34
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    .line 35
    .end local v7           #pf:Ljava/io/File;
    .end local p2
    .end local p3
    .local p1, pf:Ljava/io/File;
    :goto_0
    if-eqz p1, :cond_0

    .line 36
    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    const/4 p3, 0x2

    if-lt p2, p3, :cond_0

    .line 37
    new-instance v0, Lnet/yostore/aws/sqlite/entity/UploadItem;

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lnet/yostore/aws/sqlite/entity/UploadItem;-><init>(Ljava/lang/String;Ljava/lang/String;IJI)V

    invoke-static {p0, v0}, Lnet/yostore/aws/handler/CaptureItemHandler;->smartInsertUploadItem(Landroid/content/Context;Lnet/yostore/aws/sqlite/entity/UploadItem;)V

    .line 38
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    goto :goto_0
.end method

.method public static removeUploadItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 7
    .parameter "ctx"
    .parameter "parent"
    .parameter "name"
    .parameter "type"
    .parameter "uptype"

    .prologue
    .line 72
    new-instance v0, Lnet/yostore/aws/sqlite/entity/UploadItem;

    const-wide/16 v4, -0x1

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lnet/yostore/aws/sqlite/entity/UploadItem;-><init>(Ljava/lang/String;Ljava/lang/String;IJI)V

    invoke-static {p0, v0}, Lnet/yostore/aws/sqlite/helper/UploadItemHelper;->removeUploadItem(Landroid/content/Context;Lnet/yostore/aws/sqlite/entity/UploadItem;)V

    .line 73
    return-void
.end method

.method private static smartInsertUItems(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 10
    .parameter "ctx"
    .parameter "ppath"
    .parameter "uptype"

    .prologue
    .line 50
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 52
    .local v0, pf:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    .end local p1
    if-eqz p1, :cond_0

    .line 54
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    .line 55
    .local v7, fs:[Ljava/io/File;
    array-length v8, v7

    const/4 p1, 0x0

    move v9, p1

    .end local v0           #pf:Ljava/io/File;
    :goto_0
    if-lt v9, v8, :cond_1

    .line 68
    .end local v7           #fs:[Ljava/io/File;
    :cond_0
    return-void

    .line 55
    .restart local v7       #fs:[Ljava/io/File;
    :cond_1
    aget-object p1, v7, v9

    .line 56
    .local p1, file:Ljava/io/File;
    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, parent:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, name:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    new-instance v0, Lnet/yostore/aws/sqlite/entity/UploadItem;

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lnet/yostore/aws/sqlite/entity/UploadItem;-><init>(Ljava/lang/String;Ljava/lang/String;IJI)V

    invoke-static {p0, v0}, Lnet/yostore/aws/handler/CaptureItemHandler;->smartInsertUploadItem(Landroid/content/Context;Lnet/yostore/aws/sqlite/entity/UploadItem;)V

    .line 60
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .end local p1           #file:Ljava/io/File;
    invoke-static {p0, p1, p2}, Lnet/yostore/aws/handler/CaptureItemHandler;->smartInsertUItems(Landroid/content/Context;Ljava/lang/String;I)V

    .line 55
    :goto_1
    add-int/lit8 p1, v9, 0x1

    move v9, p1

    goto :goto_0

    .line 63
    .restart local p1       #file:Ljava/io/File;
    :cond_2
    new-instance v0, Lnet/yostore/aws/sqlite/entity/UploadItem;

    const/4 v3, 0x1

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lnet/yostore/aws/sqlite/entity/UploadItem;-><init>(Ljava/lang/String;Ljava/lang/String;IJI)V

    invoke-static {p0, v0}, Lnet/yostore/aws/handler/CaptureItemHandler;->smartInsertUploadItem(Landroid/content/Context;Lnet/yostore/aws/sqlite/entity/UploadItem;)V

    goto :goto_1
.end method

.method private static smartInsertUploadItem(Landroid/content/Context;Lnet/yostore/aws/sqlite/entity/UploadItem;)V
    .locals 1
    .parameter "ctx"
    .parameter "ui"

    .prologue
    .line 45
    invoke-static {p0, p1}, Lnet/yostore/aws/sqlite/helper/UploadItemHelper;->isUploadItemExist(Landroid/content/Context;Lnet/yostore/aws/sqlite/entity/UploadItem;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    invoke-static {p0, p1}, Lnet/yostore/aws/sqlite/helper/UploadItemHelper;->insertUploadItem(Landroid/content/Context;Lnet/yostore/aws/sqlite/entity/UploadItem;)V

    .line 47
    :cond_0
    return-void
.end method
