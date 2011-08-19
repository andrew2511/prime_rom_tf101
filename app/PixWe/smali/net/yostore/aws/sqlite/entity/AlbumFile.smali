.class public Lnet/yostore/aws/sqlite/entity/AlbumFile;
.super Ljava/lang/Object;
.source "AlbumFile.java"


# instance fields
.field private albumFolder:J

.field private changeSeq:J

.field private mediaInfoId:J

.field private updateTime:J

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x3e7

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-wide v0, p0, Lnet/yostore/aws/sqlite/entity/AlbumFile;->albumFolder:J

    .line 7
    iput-wide v0, p0, Lnet/yostore/aws/sqlite/entity/AlbumFile;->mediaInfoId:J

    .line 8
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lnet/yostore/aws/sqlite/entity/AlbumFile;->changeSeq:J

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/yostore/aws/sqlite/entity/AlbumFile;->updateTime:J

    .line 3
    return-void
.end method


# virtual methods
.method public getAlbumFolder()J
    .locals 2

    .prologue
    .line 16
    iget-wide v0, p0, Lnet/yostore/aws/sqlite/entity/AlbumFile;->albumFolder:J

    return-wide v0
.end method

.method public getChangeSeq()J
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lnet/yostore/aws/sqlite/entity/AlbumFile;->changeSeq:J

    return-wide v0
.end method

.method public getMediaInfoId()J
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lnet/yostore/aws/sqlite/entity/AlbumFile;->mediaInfoId:J

    return-wide v0
.end method

.method public getUpdateTime()J
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lnet/yostore/aws/sqlite/entity/AlbumFile;->updateTime:J

    return-wide v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lnet/yostore/aws/sqlite/entity/AlbumFile;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public setAlbumFolder(J)V
    .locals 0
    .parameter "albumFolder"

    .prologue
    .line 23
    iput-wide p1, p0, Lnet/yostore/aws/sqlite/entity/AlbumFile;->albumFolder:J

    .line 24
    return-void
.end method

.method public setChangeSeq(J)V
    .locals 0
    .parameter "changeSeq"

    .prologue
    .line 65
    iput-wide p1, p0, Lnet/yostore/aws/sqlite/entity/AlbumFile;->changeSeq:J

    .line 66
    return-void
.end method

.method public setMediaInfoId(J)V
    .locals 0
    .parameter "mediaInfoId"

    .prologue
    .line 51
    iput-wide p1, p0, Lnet/yostore/aws/sqlite/entity/AlbumFile;->mediaInfoId:J

    .line 52
    return-void
.end method

.method public setUpdateTime(J)V
    .locals 0
    .parameter "updateTime"

    .prologue
    .line 79
    iput-wide p1, p0, Lnet/yostore/aws/sqlite/entity/AlbumFile;->updateTime:J

    .line 80
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0
    .parameter "userName"

    .prologue
    .line 37
    iput-object p1, p0, Lnet/yostore/aws/sqlite/entity/AlbumFile;->userName:Ljava/lang/String;

    .line 38
    return-void
.end method
