.class public Lnet/yostore/aws/handler/AlbumDataHandler;
.super Ljava/lang/Object;
.source "AlbumDataHandler.java"


# instance fields
.field apicfg:Lnet/yostore/aws/api/ApiConfig;

.field private ctx:Landroid/content/Context;

.field private rtyTimes:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;)V
    .locals 1
    .parameter "ctx"
    .parameter "apicfg"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x3

    iput v0, p0, Lnet/yostore/aws/handler/AlbumDataHandler;->rtyTimes:I

    .line 16
    iput-object p1, p0, Lnet/yostore/aws/handler/AlbumDataHandler;->ctx:Landroid/content/Context;

    .line 17
    iput-object p2, p0, Lnet/yostore/aws/handler/AlbumDataHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 18
    return-void
.end method

.method public constructor <init>(Lnet/yostore/aws/api/ApiConfig;)V
    .locals 1
    .parameter "apicfg"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x3

    iput v0, p0, Lnet/yostore/aws/handler/AlbumDataHandler;->rtyTimes:I

    .line 20
    iput-object p1, p0, Lnet/yostore/aws/handler/AlbumDataHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 21
    return-void
.end method


# virtual methods
.method public copyCloudMediaToAlbum(Ljava/util/List;J)V
    .locals 0
    .parameter
    .parameter "albumId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/handler/entity/ClousMediaBean;",
            ">;J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/yostore/aws/api/exception/APIException;
        }
    .end annotation

    .prologue
    .line 31
    .local p1, cloudMediaList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/ClousMediaBean;>;"
    return-void
.end method

.method public copyLocalMediaToAlbum(Ljava/util/List;J)V
    .locals 0
    .parameter
    .parameter "albumId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/yostore/aws/api/exception/APIException;
        }
    .end annotation

    .prologue
    .line 36
    .local p1, localMediaUri:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public delAlbum(J)V
    .locals 0
    .parameter "albumId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/yostore/aws/api/exception/APIException;
        }
    .end annotation

    .prologue
    .line 41
    return-void
.end method

.method public delMedia(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/handler/entity/ClousMediaBean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/yostore/aws/api/exception/APIException;
        }
    .end annotation

    .prologue
    .line 46
    .local p1, cloudMediaList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/ClousMediaBean;>;"
    return-void
.end method

.method public moveCloudMediaToAlbum(Ljava/util/List;J)V
    .locals 0
    .parameter
    .parameter "albumId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/handler/entity/ClousMediaBean;",
            ">;J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/yostore/aws/api/exception/APIException;
        }
    .end annotation

    .prologue
    .line 26
    .local p1, cloudMediaList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/ClousMediaBean;>;"
    return-void
.end method
