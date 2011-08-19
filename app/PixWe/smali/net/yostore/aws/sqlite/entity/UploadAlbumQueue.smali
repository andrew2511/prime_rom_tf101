.class public Lnet/yostore/aws/sqlite/entity/UploadAlbumQueue;
.super Lnet/yostore/aws/sqlite/entity/UploadQueue;
.source "UploadAlbumQueue.java"


# instance fields
.field private albumId:J

.field private albumName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 3
    invoke-direct {p0}, Lnet/yostore/aws/sqlite/entity/UploadQueue;-><init>()V

    .line 5
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/yostore/aws/sqlite/entity/UploadAlbumQueue;->albumId:J

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/sqlite/entity/UploadAlbumQueue;->albumName:Ljava/lang/String;

    .line 3
    return-void
.end method


# virtual methods
.method public getAlbumId()J
    .locals 2

    .prologue
    .line 10
    iget-wide v0, p0, Lnet/yostore/aws/sqlite/entity/UploadAlbumQueue;->albumId:J

    return-wide v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lnet/yostore/aws/sqlite/entity/UploadAlbumQueue;->albumName:Ljava/lang/String;

    return-object v0
.end method

.method public setAlbumId(J)V
    .locals 0
    .parameter "albumId"

    .prologue
    .line 14
    iput-wide p1, p0, Lnet/yostore/aws/sqlite/entity/UploadAlbumQueue;->albumId:J

    .line 15
    return-void
.end method

.method public setAlbumName(Ljava/lang/String;)V
    .locals 0
    .parameter "albumName"

    .prologue
    .line 22
    iput-object p1, p0, Lnet/yostore/aws/sqlite/entity/UploadAlbumQueue;->albumName:Ljava/lang/String;

    .line 23
    return-void
.end method
