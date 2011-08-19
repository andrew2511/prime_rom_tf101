.class public Lnet/yostore/aws/handler/entity/ClousMediaBean;
.super Ljava/lang/Object;
.source "ClousMediaBean.java"


# instance fields
.field private apicfg:Lnet/yostore/aws/api/ApiConfig;

.field private mediaId:J

.field private mediaParentId:J

.field private rty:I


# direct methods
.method public constructor <init>(Lnet/yostore/aws/api/ApiConfig;)V
    .locals 2
    .parameter "apicfg"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/yostore/aws/handler/entity/ClousMediaBean;->mediaParentId:J

    .line 8
    const-wide/16 v0, -0x3e7

    iput-wide v0, p0, Lnet/yostore/aws/handler/entity/ClousMediaBean;->mediaId:J

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lnet/yostore/aws/handler/entity/ClousMediaBean;->rty:I

    .line 13
    iput-object p1, p0, Lnet/yostore/aws/handler/entity/ClousMediaBean;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 14
    return-void
.end method


# virtual methods
.method public getApicfg()Lnet/yostore/aws/api/ApiConfig;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/ClousMediaBean;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    return-object v0
.end method

.method public getMediaId()J
    .locals 2

    .prologue
    .line 37
    iget-wide v0, p0, Lnet/yostore/aws/handler/entity/ClousMediaBean;->mediaId:J

    return-wide v0
.end method

.method public getMediaParentId()J
    .locals 2

    .prologue
    .line 21
    iget-wide v0, p0, Lnet/yostore/aws/handler/entity/ClousMediaBean;->mediaParentId:J

    return-wide v0
.end method

.method public setApicfg(Lnet/yostore/aws/api/ApiConfig;)V
    .locals 0
    .parameter "apicfg"

    .prologue
    .line 61
    iput-object p1, p0, Lnet/yostore/aws/handler/entity/ClousMediaBean;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 62
    return-void
.end method

.method public setMediaId(J)V
    .locals 0
    .parameter "mediaId"

    .prologue
    .line 45
    iput-wide p1, p0, Lnet/yostore/aws/handler/entity/ClousMediaBean;->mediaId:J

    .line 46
    return-void
.end method

.method public setMediaParentId(J)V
    .locals 0
    .parameter "mediaParentId"

    .prologue
    .line 29
    iput-wide p1, p0, Lnet/yostore/aws/handler/entity/ClousMediaBean;->mediaParentId:J

    .line 30
    return-void
.end method
