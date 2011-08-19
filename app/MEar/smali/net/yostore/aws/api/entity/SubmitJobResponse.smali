.class public Lnet/yostore/aws/api/entity/SubmitJobResponse;
.super Lnet/yostore/aws/api/entity/ApiResponse;
.source "SubmitJobResponse.java"


# instance fields
.field private jobuuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lnet/yostore/aws/api/entity/ApiResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getJobuuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6
    iget-object v0, p0, Lnet/yostore/aws/api/entity/SubmitJobResponse;->jobuuid:Ljava/lang/String;

    return-object v0
.end method

.method public setJobuuid(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 7
    iput-object p1, p0, Lnet/yostore/aws/api/entity/SubmitJobResponse;->jobuuid:Ljava/lang/String;

    return-void
.end method
