.class Lcom/ecareme/pixwe/service/UploadService$3;
.super Ljava/lang/Thread;
.source "UploadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/service/UploadService;->popUploadFile()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/service/UploadService;

.field private final synthetic val$vhelper:Lnet/yostore/aws/api/helper/VideoEncHelper;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/service/UploadService;Lnet/yostore/aws/api/helper/VideoEncHelper;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/service/UploadService$3;->this$0:Lcom/ecareme/pixwe/service/UploadService;

    iput-object p2, p0, Lcom/ecareme/pixwe/service/UploadService$3;->val$vhelper:Lnet/yostore/aws/api/helper/VideoEncHelper;

    .line 472
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 476
    :try_start_0
    iget-object v2, p0, Lcom/ecareme/pixwe/service/UploadService$3;->val$vhelper:Lnet/yostore/aws/api/helper/VideoEncHelper;

    invoke-static {}, Lcom/ecareme/pixwe/PixWe;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/yostore/aws/api/helper/VideoEncHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v1

    check-cast v1, Lnet/yostore/aws/api/entity/VideoEncResponse;

    .line 477
    .local v1, vresponse:Lnet/yostore/aws/api/entity/VideoEncResponse;
    invoke-virtual {v1}, Lnet/yostore/aws/api/entity/VideoEncResponse;->getStatus()I

    move-result v2

    if-nez v2, :cond_0

    .line 478
    invoke-virtual {v1}, Lnet/yostore/aws/api/entity/VideoEncResponse;->getPuri()Ljava/lang/String;
    :try_end_0
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    .end local v1           #vresponse:Lnet/yostore/aws/api/entity/VideoEncResponse;
    :cond_0
    :goto_0
    return-void

    .line 480
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 481
    .local v0, e:Lnet/yostore/aws/api/exception/APIException;
    const-string v2, "UploadService"

    invoke-virtual {v0}, Lnet/yostore/aws/api/exception/APIException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
