.class Lcom/android/vending/FlagContentActivity$FlagRequest;
.super Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequest;
.source "FlagContentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/FlagContentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FlagRequest"
.end annotation


# instance fields
.field private final mAssetId:Ljava/lang/String;

.field private final mFlagMessage:Ljava/lang/String;

.field private final mFlagType:Lcom/android/vending/model/ModifyCommentRequest$FlagType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/vending/model/ModifyCommentRequest$FlagType;Ljava/lang/String;)V
    .locals 0
    .parameter "assetId"
    .parameter "flagType"
    .parameter "flagMessage"

    .prologue
    .line 336
    invoke-direct {p0}, Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequest;-><init>()V

    .line 337
    iput-object p1, p0, Lcom/android/vending/FlagContentActivity$FlagRequest;->mAssetId:Ljava/lang/String;

    .line 338
    iput-object p2, p0, Lcom/android/vending/FlagContentActivity$FlagRequest;->mFlagType:Lcom/android/vending/model/ModifyCommentRequest$FlagType;

    .line 339
    iput-object p3, p0, Lcom/android/vending/FlagContentActivity$FlagRequest;->mFlagMessage:Ljava/lang/String;

    .line 340
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
    .line 343
    new-instance v0, Lcom/android/vending/model/ModifyCommentRequest;

    invoke-direct {v0}, Lcom/android/vending/model/ModifyCommentRequest;-><init>()V

    .line 344
    .local v0, modifyCommentRequest:Lcom/android/vending/model/ModifyCommentRequest;
    iget-object v1, p0, Lcom/android/vending/FlagContentActivity$FlagRequest;->mAssetId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/vending/model/ModifyCommentRequest;->setAssetId(Ljava/lang/String;)V

    .line 345
    iget-object v1, p0, Lcom/android/vending/FlagContentActivity$FlagRequest;->mFlagType:Lcom/android/vending/model/ModifyCommentRequest$FlagType;

    invoke-virtual {v0, v1}, Lcom/android/vending/model/ModifyCommentRequest;->setFlagType(Lcom/android/vending/model/ModifyCommentRequest$FlagType;)V

    .line 346
    iget-object v1, p0, Lcom/android/vending/FlagContentActivity$FlagRequest;->mFlagMessage:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 347
    iget-object v1, p0, Lcom/android/vending/FlagContentActivity$FlagRequest;->mFlagMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/vending/model/ModifyCommentRequest;->setFlagMessage(Ljava/lang/String;)V

    .line 350
    :cond_0
    new-instance v1, Lcom/android/vending/api/ModifyCommentService;

    invoke-direct {v1, p1}, Lcom/android/vending/api/ModifyCommentService;-><init>(Lcom/android/vending/api/RequestManager;)V

    invoke-virtual {v1, v0}, Lcom/android/vending/api/ModifyCommentService;->queueModifyComment(Lcom/android/vending/model/ModifyCommentRequest;)V

    .line 352
    invoke-virtual {p1}, Lcom/android/vending/api/RequestManager;->doRequests()V

    .line 353
    return-void
.end method

.method public onException(Ljava/lang/Throwable;)V
    .locals 4
    .parameter "t"

    .prologue
    .line 356
    const-string v0, "Failed to flag asset %s: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/vending/FlagContentActivity$FlagRequest;->mAssetId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 357
    return-void
.end method
