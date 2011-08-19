.class Lcom/android/vending/UninstallActivity$ReportApplicationRequest;
.super Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequest;
.source "UninstallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/UninstallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReportApplicationRequest"
.end annotation


# instance fields
.field private final mAssetId:Ljava/lang/String;

.field private final mReportMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "assetId"
    .parameter "reportMessage"

    .prologue
    .line 474
    invoke-direct {p0}, Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequest;-><init>()V

    .line 475
    iput-object p1, p0, Lcom/android/vending/UninstallActivity$ReportApplicationRequest;->mAssetId:Ljava/lang/String;

    .line 476
    iput-object p2, p0, Lcom/android/vending/UninstallActivity$ReportApplicationRequest;->mReportMessage:Ljava/lang/String;

    .line 477
    return-void
.end method


# virtual methods
.method public doRequest(Lcom/android/vending/api/RequestManager;)V
    .locals 2
    .parameter "manager"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vending/api/ApiException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 480
    new-instance v0, Lcom/android/vending/model/ModifyCommentRequest;

    invoke-direct {v0}, Lcom/android/vending/model/ModifyCommentRequest;-><init>()V

    .line 481
    .local v0, modifyCommentRequest:Lcom/android/vending/model/ModifyCommentRequest;
    iget-object v1, p0, Lcom/android/vending/UninstallActivity$ReportApplicationRequest;->mAssetId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/vending/model/ModifyCommentRequest;->setAssetId(Ljava/lang/String;)V

    .line 482
    sget-object v1, Lcom/android/vending/model/ModifyCommentRequest$FlagType;->HARMFUL_TO_DEVICE:Lcom/android/vending/model/ModifyCommentRequest$FlagType;

    invoke-virtual {v0, v1}, Lcom/android/vending/model/ModifyCommentRequest;->setFlagType(Lcom/android/vending/model/ModifyCommentRequest$FlagType;)V

    .line 483
    iget-object v1, p0, Lcom/android/vending/UninstallActivity$ReportApplicationRequest;->mReportMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/vending/model/ModifyCommentRequest;->setFlagMessage(Ljava/lang/String;)V

    .line 484
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/ModifyCommentRequest;->setNonFlagFlow(Z)V

    .line 486
    new-instance v1, Lcom/android/vending/api/ModifyCommentService;

    invoke-direct {v1, p1}, Lcom/android/vending/api/ModifyCommentService;-><init>(Lcom/android/vending/api/RequestManager;)V

    invoke-virtual {v1, v0}, Lcom/android/vending/api/ModifyCommentService;->queueModifyComment(Lcom/android/vending/model/ModifyCommentRequest;)V

    .line 488
    invoke-virtual {p1}, Lcom/android/vending/api/RequestManager;->doRequests()V

    .line 489
    return-void
.end method

.method public onException(Ljava/lang/Throwable;)V
    .locals 4
    .parameter "t"

    .prologue
    .line 492
    const-string v0, "Failed to flag application %s: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/vending/UninstallActivity$ReportApplicationRequest;->mAssetId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 493
    return-void
.end method
