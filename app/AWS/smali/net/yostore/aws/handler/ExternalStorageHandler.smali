.class public Lnet/yostore/aws/handler/ExternalStorageHandler;
.super Ljava/lang/Object;
.source "ExternalStorageHandler.java"


# static fields
.field private static final CAP_ADO:Ljava/lang/String; = "/asuswebstorage/audio"

.field private static final CAP_CAM:Ljava/lang/String; = "/asuswebstorage/photo"

.field private static final CAP_FAM:Ljava/lang/String; = "/test001asuswebstorage/family"

.field private static final CAP_FIL:Ljava/lang/String; = "/asuswebstorage/file"

.field private static final CAP_MEM:Ljava/lang/String; = "/asuswebstorage/family/memo"

.field private static final CAP_NOT:Ljava/lang/String; = "/asuswebstorage/note"

.field private static final CAP_VDO:Ljava/lang/String; = "/asuswebstorage/video"

.field private static final OPEN_CACHE:Ljava/lang/String; = "/asuswebstorage/cache"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdoRoot()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    const-string v0, "/asuswebstorage/audio"

    invoke-static {v0}, Lnet/yostore/aws/handler/ExternalStorageHandler;->getRoot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCamRoot()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    const-string v0, "/asuswebstorage/photo"

    invoke-static {v0}, Lnet/yostore/aws/handler/ExternalStorageHandler;->getRoot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFamRoot()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    const-string v0, "/test001asuswebstorage/family"

    invoke-static {v0}, Lnet/yostore/aws/handler/ExternalStorageHandler;->getRoot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFilRoot()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    const-string v0, "/asuswebstorage/file"

    invoke-static {v0}, Lnet/yostore/aws/handler/ExternalStorageHandler;->getRoot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMamRoot()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    const-string v0, "/asuswebstorage/family/memo"

    invoke-static {v0}, Lnet/yostore/aws/handler/ExternalStorageHandler;->getRoot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNotRoot()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    const-string v0, "/asuswebstorage/note"

    invoke-static {v0}, Lnet/yostore/aws/handler/ExternalStorageHandler;->getRoot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOpenCacheRoot()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const-string v0, "/asuswebstorage/cache"

    invoke-static {v0}, Lnet/yostore/aws/handler/ExternalStorageHandler;->getRoot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getRoot(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    .line 30
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 34
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSdRoot()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    const-string v0, ""

    invoke-static {v0}, Lnet/yostore/aws/handler/ExternalStorageHandler;->getRoot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVdoRoot()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    const-string v0, "/asuswebstorage/video"

    invoke-static {v0}, Lnet/yostore/aws/handler/ExternalStorageHandler;->getRoot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
