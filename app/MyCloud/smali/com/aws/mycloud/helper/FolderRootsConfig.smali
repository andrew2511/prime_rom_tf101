.class public Lcom/aws/mycloud/helper/FolderRootsConfig;
.super Ljava/lang/Object;
.source "FolderRootsConfig.java"


# static fields
.field public static final ERR:Ljava/lang/String; = "ERR:"

.field private static MEarMeta:Ljava/lang/String; = null

.field private static final MEarMetaDisplays:[Ljava/lang/String; = null

.field private static MySync:Ljava/lang/String; = null

.field private static final MySyncDisplays:[Ljava/lang/String; = null

.field private static PixWeAlbum:Ljava/lang/String; = null

.field private static final PixWeAlbumDisplays:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "FolderRootsConfig"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    sput-object v5, Lcom/aws/mycloud/helper/FolderRootsConfig;->MEarMeta:Ljava/lang/String;

    .line 14
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "-20"

    aput-object v1, v0, v2

    const-string v1, "mear"

    aput-object v1, v0, v3

    const-string v1, "meta"

    aput-object v1, v0, v4

    sput-object v0, Lcom/aws/mycloud/helper/FolderRootsConfig;->MEarMetaDisplays:[Ljava/lang/String;

    .line 16
    sput-object v5, Lcom/aws/mycloud/helper/FolderRootsConfig;->MySync:Ljava/lang/String;

    .line 17
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "-5"

    aput-object v1, v0, v2

    const-string v1, "MySyncFolder"

    aput-object v1, v0, v3

    sput-object v0, Lcom/aws/mycloud/helper/FolderRootsConfig;->MySyncDisplays:[Ljava/lang/String;

    .line 19
    sput-object v5, Lcom/aws/mycloud/helper/FolderRootsConfig;->PixWeAlbum:Ljava/lang/String;

    .line 20
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "-24"

    aput-object v1, v0, v2

    const-string v1, "pixwe"

    aput-object v1, v0, v3

    sput-object v0, Lcom/aws/mycloud/helper/FolderRootsConfig;->PixWeAlbumDisplays:[Ljava/lang/String;

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMEarMeta(Lnet/yostore/aws/api/ApiConfig;)Ljava/lang/String;
    .locals 4
    .parameter "apicfg"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    iget-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->mEarMeta:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->mEarMeta:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    sget-object v0, Lcom/aws/mycloud/helper/FolderRootsConfig;->MEarMeta:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/aws/mycloud/helper/FolderRootsConfig;->MEarMeta:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 24
    :cond_1
    sget-object v0, Lcom/aws/mycloud/helper/FolderRootsConfig;->MEarMetaDisplays:[Ljava/lang/String;

    aget-object v0, v0, v2

    sget-object v1, Lcom/aws/mycloud/helper/FolderRootsConfig;->MEarMetaDisplays:[Ljava/lang/String;

    invoke-static {v0, v1, v3, p0}, Lcom/aws/mycloud/helper/FolderRootsConfig;->propfindFolder(Ljava/lang/String;[Ljava/lang/String;ILnet/yostore/aws/api/ApiConfig;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aws/mycloud/helper/FolderRootsConfig;->MEarMeta:Ljava/lang/String;

    .line 25
    sget-object v0, Lcom/aws/mycloud/helper/FolderRootsConfig;->MEarMeta:Ljava/lang/String;

    iput-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->mEarMeta:Ljava/lang/String;

    .line 39
    :cond_2
    :goto_0
    sget-object v0, Lcom/aws/mycloud/helper/FolderRootsConfig;->MEarMeta:Ljava/lang/String;

    return-object v0

    .line 27
    :cond_3
    iget-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->mEarMeta:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->mEarMeta:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    sget-object v0, Lcom/aws/mycloud/helper/FolderRootsConfig;->MEarMeta:Ljava/lang/String;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/aws/mycloud/helper/FolderRootsConfig;->MEarMeta:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    .line 28
    :cond_4
    iget-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->mEarMeta:Ljava/lang/String;

    sput-object v0, Lcom/aws/mycloud/helper/FolderRootsConfig;->MEarMeta:Ljava/lang/String;

    goto :goto_0

    .line 30
    :cond_5
    iget-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->mEarMeta:Ljava/lang/String;

    if-nez v0, :cond_7

    iget-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->mEarMeta:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/aws/mycloud/helper/FolderRootsConfig;->MEarMeta:Ljava/lang/String;

    if-nez v0, :cond_6

    sget-object v0, Lcom/aws/mycloud/helper/FolderRootsConfig;->MEarMeta:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    .line 31
    :cond_6
    sget-object v0, Lcom/aws/mycloud/helper/FolderRootsConfig;->MEarMeta:Ljava/lang/String;

    iput-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->mEarMeta:Ljava/lang/String;

    goto :goto_0

    .line 33
    :cond_7
    iget-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->mEarMeta:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->mEarMeta:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    sget-object v0, Lcom/aws/mycloud/helper/FolderRootsConfig;->MEarMeta:Ljava/lang/String;

    if-nez v0, :cond_8

    sget-object v0, Lcom/aws/mycloud/helper/FolderRootsConfig;->MEarMeta:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 34
    :cond_8
    sget-object v0, Lcom/aws/mycloud/helper/FolderRootsConfig;->MEarMeta:Ljava/lang/String;

    iget-object v1, p0, Lnet/yostore/aws/api/ApiConfig;->mEarMeta:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 35
    sget-object v0, Lcom/aws/mycloud/helper/FolderRootsConfig;->MEarMetaDisplays:[Ljava/lang/String;

    aget-object v0, v0, v2

    sget-object v1, Lcom/aws/mycloud/helper/FolderRootsConfig;->MEarMetaDisplays:[Ljava/lang/String;

    invoke-static {v0, v1, v3, p0}, Lcom/aws/mycloud/helper/FolderRootsConfig;->propfindFolder(Ljava/lang/String;[Ljava/lang/String;ILnet/yostore/aws/api/ApiConfig;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aws/mycloud/helper/FolderRootsConfig;->MEarMeta:Ljava/lang/String;

    .line 36
    sget-object v0, Lcom/aws/mycloud/helper/FolderRootsConfig;->MEarMeta:Ljava/lang/String;

    iput-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->mEarMeta:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getMySync(Lnet/yostore/aws/api/ApiConfig;)Ljava/lang/String;
    .locals 4
    .parameter "apicfg"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    iget-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->mySync:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->mySync:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 43
    :cond_0
    sget-object v0, Lcom/aws/mycloud/helper/FolderRootsConfig;->MySync:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/aws/mycloud/helper/FolderRootsConfig;->MySync:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 44
    :cond_1
    const-string v0, "null"

    iget-object v1, p0, Lnet/yostore/aws/api/ApiConfig;->mySync:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 45
    :cond_2
    const-string v0, "FolderRootsConfig"

    const-string v1, "FolderRoot & ApiCfg are empty, Get it from server"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    sget-object v0, Lcom/aws/mycloud/helper/FolderRootsConfig;->MySyncDisplays:[Ljava/lang/String;

    aget-object v0, v0, v2

    sget-object v1, Lcom/aws/mycloud/helper/FolderRootsConfig;->MySyncDisplays:[Ljava/lang/String;

    invoke-static {v0, v1, v3, p0}, Lcom/aws/mycloud/helper/FolderRootsConfig;->propfindFolder(Ljava/lang/String;[Ljava/lang/String;ILnet/yostore/aws/api/ApiConfig;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aws/mycloud/helper/FolderRootsConfig;->MySync:Ljava/lang/String;

    .line 47
    sget-object v0, Lcom/aws/mycloud/helper/FolderRootsConfig;->MySync:Ljava/lang/String;

    iput-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->mySync:Ljava/lang/String;

    .line 48
    const-string v0, "FolderRootsConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Get MySync from server="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/aws/mycloud/helper/FolderRootsConfig;->MySync:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_3
    :goto_0
    sget-object v0, Lcom/aws/mycloud/helper/FolderRootsConfig;->MySync:Ljava/lang/String;

    return-object v0

    .line 50
    :cond_4
    iget-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->mySync:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->mySync:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    sget-object v0, Lcom/aws/mycloud/helper/FolderRootsConfig;->MySync:Ljava/lang/String;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/aws/mycloud/helper/FolderRootsConfig;->MySync:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_6

    .line 51
    :cond_5
    iget-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->mySync:Ljava/lang/String;

    sput-object v0, Lcom/aws/mycloud/helper/FolderRootsConfig;->MySync:Ljava/lang/String;

    .line 52
    const-string v0, "FolderRootsConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ApiCfg is not null && MySync is null, return apicfg:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/aws/mycloud/helper/FolderRootsConfig;->MySync:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 54
    :cond_6
    iget-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->mySync:Ljava/lang/String;

    if-nez v0, :cond_8

    iget-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->mySync:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/aws/mycloud/helper/FolderRootsConfig;->MySync:Ljava/lang/String;

    if-nez v0, :cond_7

    sget-object v0, Lcom/aws/mycloud/helper/FolderRootsConfig;->MySync:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_8

    .line 55
    :cond_7
    sget-object v0, Lcom/aws/mycloud/helper/FolderRootsConfig;->MySync:Ljava/lang/String;

    iput-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->mySync:Ljava/lang/String;

    .line 56
    const-string v0, "FolderRootsConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ApiCfg is null && MySync is not null, return MySync:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/aws/mycloud/helper/FolderRootsConfig;->MySync:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 58
    :cond_8
    iget-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->mySync:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->mySync:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    sget-object v0, Lcom/aws/mycloud/helper/FolderRootsConfig;->MySync:Ljava/lang/String;

    if-nez v0, :cond_9

    sget-object v0, Lcom/aws/mycloud/helper/FolderRootsConfig;->MySync:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 59
    :cond_9
    sget-object v0, Lcom/aws/mycloud/helper/FolderRootsConfig;->MySync:Ljava/lang/String;

    iget-object v1, p0, Lnet/yostore/aws/api/ApiConfig;->mySync:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 60
    sget-object v0, Lcom/aws/mycloud/helper/FolderRootsConfig;->MySyncDisplays:[Ljava/lang/String;

    aget-object v0, v0, v2

    sget-object v1, Lcom/aws/mycloud/helper/FolderRootsConfig;->MySyncDisplays:[Ljava/lang/String;

    invoke-static {v0, v1, v3, p0}, Lcom/aws/mycloud/helper/FolderRootsConfig;->propfindFolder(Ljava/lang/String;[Ljava/lang/String;ILnet/yostore/aws/api/ApiConfig;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aws/mycloud/helper/FolderRootsConfig;->MySync:Ljava/lang/String;

    .line 61
    sget-object v0, Lcom/aws/mycloud/helper/FolderRootsConfig;->MySync:Ljava/lang/String;

    iput-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->mySync:Ljava/lang/String;

    .line 62
    const-string v0, "FolderRootsConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ApiCfg is not null && MySync is not null, return from Server:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/aws/mycloud/helper/FolderRootsConfig;->MySync:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static getPixWeAlbum(Lnet/yostore/aws/api/ApiConfig;)Ljava/lang/String;
    .locals 4
    .parameter "apicfg"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 68
    iget-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->pixWeAlbum:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->pixWeAlbum:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    sget-object v0, Lcom/aws/mycloud/helper/FolderRootsConfig;->PixWeAlbum:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/aws/mycloud/helper/FolderRootsConfig;->PixWeAlbum:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 69
    :cond_1
    sget-object v0, Lcom/aws/mycloud/helper/FolderRootsConfig;->PixWeAlbumDisplays:[Ljava/lang/String;

    aget-object v0, v0, v2

    sget-object v1, Lcom/aws/mycloud/helper/FolderRootsConfig;->PixWeAlbumDisplays:[Ljava/lang/String;

    invoke-static {v0, v1, v3, p0}, Lcom/aws/mycloud/helper/FolderRootsConfig;->propfindFolder(Ljava/lang/String;[Ljava/lang/String;ILnet/yostore/aws/api/ApiConfig;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aws/mycloud/helper/FolderRootsConfig;->PixWeAlbum:Ljava/lang/String;

    .line 70
    sget-object v0, Lcom/aws/mycloud/helper/FolderRootsConfig;->PixWeAlbum:Ljava/lang/String;

    iput-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->pixWeAlbum:Ljava/lang/String;

    .line 84
    :cond_2
    :goto_0
    sget-object v0, Lcom/aws/mycloud/helper/FolderRootsConfig;->PixWeAlbum:Ljava/lang/String;

    return-object v0

    .line 72
    :cond_3
    iget-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->pixWeAlbum:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->pixWeAlbum:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    sget-object v0, Lcom/aws/mycloud/helper/FolderRootsConfig;->PixWeAlbum:Ljava/lang/String;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/aws/mycloud/helper/FolderRootsConfig;->PixWeAlbum:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    .line 73
    :cond_4
    iget-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->pixWeAlbum:Ljava/lang/String;

    sput-object v0, Lcom/aws/mycloud/helper/FolderRootsConfig;->PixWeAlbum:Ljava/lang/String;

    goto :goto_0

    .line 75
    :cond_5
    iget-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->pixWeAlbum:Ljava/lang/String;

    if-nez v0, :cond_7

    iget-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->pixWeAlbum:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/aws/mycloud/helper/FolderRootsConfig;->PixWeAlbum:Ljava/lang/String;

    if-nez v0, :cond_6

    sget-object v0, Lcom/aws/mycloud/helper/FolderRootsConfig;->PixWeAlbum:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    .line 76
    :cond_6
    sget-object v0, Lcom/aws/mycloud/helper/FolderRootsConfig;->PixWeAlbum:Ljava/lang/String;

    iput-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->pixWeAlbum:Ljava/lang/String;

    goto :goto_0

    .line 78
    :cond_7
    iget-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->pixWeAlbum:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->pixWeAlbum:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    sget-object v0, Lcom/aws/mycloud/helper/FolderRootsConfig;->PixWeAlbum:Ljava/lang/String;

    if-nez v0, :cond_8

    sget-object v0, Lcom/aws/mycloud/helper/FolderRootsConfig;->PixWeAlbum:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 79
    :cond_8
    sget-object v0, Lcom/aws/mycloud/helper/FolderRootsConfig;->PixWeAlbum:Ljava/lang/String;

    iget-object v1, p0, Lnet/yostore/aws/api/ApiConfig;->pixWeAlbum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 80
    sget-object v0, Lcom/aws/mycloud/helper/FolderRootsConfig;->PixWeAlbumDisplays:[Ljava/lang/String;

    aget-object v0, v0, v2

    sget-object v1, Lcom/aws/mycloud/helper/FolderRootsConfig;->PixWeAlbumDisplays:[Ljava/lang/String;

    invoke-static {v0, v1, v3, p0}, Lcom/aws/mycloud/helper/FolderRootsConfig;->propfindFolder(Ljava/lang/String;[Ljava/lang/String;ILnet/yostore/aws/api/ApiConfig;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aws/mycloud/helper/FolderRootsConfig;->PixWeAlbum:Ljava/lang/String;

    .line 81
    sget-object v0, Lcom/aws/mycloud/helper/FolderRootsConfig;->PixWeAlbum:Ljava/lang/String;

    iput-object v0, p0, Lnet/yostore/aws/api/ApiConfig;->pixWeAlbum:Ljava/lang/String;

    goto :goto_0
.end method

.method private static propfindFolder(Ljava/lang/String;[Ljava/lang/String;ILnet/yostore/aws/api/ApiConfig;)Ljava/lang/String;
    .locals 10
    .parameter "parent"
    .parameter "displays"
    .parameter "index"
    .parameter "apicfg"

    .prologue
    const/4 v9, 0x0

    .line 88
    const-string v6, "FolderRootsConfig"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Find "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, p1, p2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance v2, Lnet/yostore/aws/api/helper/FindPropfindHelper;

    .line 90
    add-int/lit8 v4, p2, 0x1

    .end local p2
    .local v4, index:I
    aget-object v6, p1, p2

    const-string v7, "system.folder"

    .line 89
    invoke-direct {v2, p0, v6, v7}, Lnet/yostore/aws/api/helper/FindPropfindHelper;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .local v2, helper:Lnet/yostore/aws/api/helper/FindPropfindHelper;
    const/4 v5, 0x0

    .line 93
    .local v5, response:Lnet/yostore/aws/api/entity/FindPropfindResponse;
    :try_start_0
    invoke-virtual {v2, p3}, Lnet/yostore/aws/api/helper/FindPropfindHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lnet/yostore/aws/api/entity/FindPropfindResponse;

    move-object v5, v0

    .line 94
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lnet/yostore/aws/api/entity/FindPropfindResponse;->getStatus()I

    move-result v6

    if-nez v6, :cond_3

    .line 95
    invoke-virtual {v5}, Lnet/yostore/aws/api/entity/FindPropfindResponse;->getId()Ljava/lang/String;

    move-result-object v3

    .line 96
    .local v3, id:Ljava/lang/String;
    array-length v6, p1

    if-lt v4, v6, :cond_1

    .line 97
    if-eqz v3, :cond_0

    move-object v6, v3

    .line 110
    .end local v3           #id:Ljava/lang/String;
    :goto_0
    return-object v6

    .restart local v3       #id:Ljava/lang/String;
    :cond_0
    move-object v6, v9

    .line 98
    goto :goto_0

    .line 101
    :cond_1
    if-eqz v3, :cond_2

    invoke-static {v3, p1, v4, p3}, Lcom/aws/mycloud/helper/FolderRootsConfig;->propfindFolder(Ljava/lang/String;[Ljava/lang/String;ILnet/yostore/aws/api/ApiConfig;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_2
    move-object v6, v9

    .line 102
    goto :goto_0

    .line 106
    .end local v3           #id:Ljava/lang/String;
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ERR:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lnet/yostore/aws/api/entity/FindPropfindResponse;->getStatus()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 108
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 109
    .local v1, e:Lnet/yostore/aws/api/exception/APIException;
    invoke-virtual {v1}, Lnet/yostore/aws/api/exception/APIException;->printStackTrace()V

    .line 110
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ERR:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v1, Lnet/yostore/aws/api/exception/APIException;->status:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 114
    sput-object v0, Lcom/aws/mycloud/helper/FolderRootsConfig;->MEarMeta:Ljava/lang/String;

    .line 115
    sput-object v0, Lcom/aws/mycloud/helper/FolderRootsConfig;->MySync:Ljava/lang/String;

    .line 116
    sput-object v0, Lcom/aws/mycloud/helper/FolderRootsConfig;->PixWeAlbum:Ljava/lang/String;

    .line 117
    return-void
.end method
