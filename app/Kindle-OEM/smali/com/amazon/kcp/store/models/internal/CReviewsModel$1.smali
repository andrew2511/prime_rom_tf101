.class Lcom/amazon/kcp/store/models/internal/CReviewsModel$1;
.super Ljava/lang/Object;
.source "CReviewsModel.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/store/models/internal/CReviewsModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/store/models/internal/CReviewsModel;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/store/models/internal/CReviewsModel;)V
    .locals 0
    .parameter

    .prologue
    .line 14
    iput-object p1, p0, Lcom/amazon/kcp/store/models/internal/CReviewsModel$1;->this$0:Lcom/amazon/kcp/store/models/internal/CReviewsModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CReviewsModel$1;->this$0:Lcom/amazon/kcp/store/models/internal/CReviewsModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/store/models/internal/CReviewsModel;->listModified()V

    .line 18
    return-void
.end method
