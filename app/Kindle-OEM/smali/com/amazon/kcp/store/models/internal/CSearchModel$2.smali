.class Lcom/amazon/kcp/store/models/internal/CSearchModel$2;
.super Ljava/lang/Object;
.source "CSearchModel.java"

# interfaces
.implements Lcom/amazon/foundation/IIntCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/store/models/internal/CSearchModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/store/models/internal/CSearchModel;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/store/models/internal/CSearchModel;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/amazon/kcp/store/models/internal/CSearchModel$2;->this$0:Lcom/amazon/kcp/store/models/internal/CSearchModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CSearchModel$2;->this$0:Lcom/amazon/kcp/store/models/internal/CSearchModel;

    invoke-static {v0}, Lcom/amazon/kcp/store/models/internal/CSearchModel;->access$000(Lcom/amazon/kcp/store/models/internal/CSearchModel;)Lcom/amazon/foundation/internal/IntEventProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/foundation/internal/IntEventProvider;->notifyListeners(I)V

    .line 37
    return-void
.end method
