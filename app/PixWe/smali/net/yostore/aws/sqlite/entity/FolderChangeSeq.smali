.class public Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;
.super Ljava/lang/Object;
.source "FolderChangeSeq.java"


# static fields
.field public static formatter:Ljava/text/Format;


# instance fields
.field private changeSeq:J

.field private changeSeqTime:J

.field private folderId:J

.field private localUpdateTime:J

.field private userName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmssSSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->formatter:Ljava/text/Format;

    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide v2, 0x46b3105d4d90d8L

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-wide/16 v0, -0x3e7

    iput-wide v0, p0, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->folderId:J

    .line 10
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->changeSeq:J

    .line 11
    iput-wide v2, p0, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->changeSeqTime:J

    .line 12
    iput-wide v2, p0, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->localUpdateTime:J

    .line 25
    return-void
.end method

.method public constructor <init>(JJJ)V
    .locals 4
    .parameter "folder_id"
    .parameter "change_seq"
    .parameter "changeSeqTime"

    .prologue
    const-wide v2, 0x46b3105d4d90d8L

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-wide/16 v0, -0x3e7

    iput-wide v0, p0, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->folderId:J

    .line 10
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->changeSeq:J

    .line 11
    iput-wide v2, p0, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->changeSeqTime:J

    .line 12
    iput-wide v2, p0, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->localUpdateTime:J

    .line 16
    iput-wide p1, p0, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->folderId:J

    .line 17
    iput-wide p3, p0, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->changeSeq:J

    .line 18
    iput-wide p5, p0, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->changeSeqTime:J

    .line 19
    iput-wide p5, p0, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->localUpdateTime:J

    .line 20
    return-void
.end method


# virtual methods
.method public getChangeSeq()J
    .locals 2

    .prologue
    .line 49
    iget-wide v0, p0, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->changeSeq:J

    return-wide v0
.end method

.method public getChangeSeqTime()J
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->changeSeqTime:J

    return-wide v0
.end method

.method public getFolderId()J
    .locals 2

    .prologue
    .line 29
    iget-wide v0, p0, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->folderId:J

    return-wide v0
.end method

.method public getLocalUpdateTime()J
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p0, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->localUpdateTime:J

    return-wide v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public setChangeSeq(J)V
    .locals 0
    .parameter "changeSeq"

    .prologue
    .line 54
    iput-wide p1, p0, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->changeSeq:J

    .line 55
    return-void
.end method

.method public setChangeSeqTime(J)V
    .locals 0
    .parameter "changeSeqTime"

    .prologue
    .line 70
    iput-wide p1, p0, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->changeSeqTime:J

    .line 71
    return-void
.end method

.method public setFolderId(J)V
    .locals 0
    .parameter "folderId"

    .prologue
    .line 34
    iput-wide p1, p0, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->folderId:J

    .line 35
    return-void
.end method

.method public setLocalUpdateTime(J)V
    .locals 0
    .parameter "localUpdateTime"

    .prologue
    .line 86
    iput-wide p1, p0, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->localUpdateTime:J

    .line 87
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0
    .parameter "userName"

    .prologue
    .line 44
    iput-object p1, p0, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->userName:Ljava/lang/String;

    .line 45
    return-void
.end method
