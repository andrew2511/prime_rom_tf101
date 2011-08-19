.class public Lnet/yostore/aws/api/rest/entity/UploadInfo;
.super Ljava/lang/Object;
.source "UploadInfo.java"


# instance fields
.field public fileid:J

.field public parent:J

.field public status:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/32 v1, -0x5f5e0ff

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    iput v0, p0, Lnet/yostore/aws/api/rest/entity/UploadInfo;->status:I

    .line 5
    iput-wide v1, p0, Lnet/yostore/aws/api/rest/entity/UploadInfo;->parent:J

    .line 6
    iput-wide v1, p0, Lnet/yostore/aws/api/rest/entity/UploadInfo;->fileid:J

    .line 3
    return-void
.end method
