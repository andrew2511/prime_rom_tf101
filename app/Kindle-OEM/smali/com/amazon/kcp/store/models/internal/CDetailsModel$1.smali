.class Lcom/amazon/kcp/store/models/internal/CDetailsModel$1;
.super Ljava/lang/Object;
.source "CDetailsModel.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/store/models/internal/CDetailsModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/store/models/internal/CDetailsModel;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/store/models/internal/CDetailsModel;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    iput-object p1, p0, Lcom/amazon/kcp/store/models/internal/CDetailsModel$1;->this$0:Lcom/amazon/kcp/store/models/internal/CDetailsModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/CDetailsModel$1;->this$0:Lcom/amazon/kcp/store/models/internal/CDetailsModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/store/models/internal/CDetailsModel;->listModified()V

    .line 24
    return-void
.end method
