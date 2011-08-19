.class Lcom/amazon/kcp/application/pages/internal/DeregisterPage$1;
.super Ljava/lang/Object;
.source "DeregisterPage.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/pages/internal/DeregisterPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/application/pages/internal/DeregisterPage;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/pages/internal/DeregisterPage;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/amazon/kcp/application/pages/internal/DeregisterPage$1;->this$0:Lcom/amazon/kcp/application/pages/internal/DeregisterPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/amazon/kcp/application/pages/internal/DeregisterPage$1;->this$0:Lcom/amazon/kcp/application/pages/internal/DeregisterPage;

    invoke-static {v0}, Lcom/amazon/kcp/application/pages/internal/DeregisterPage;->access$000(Lcom/amazon/kcp/application/pages/internal/DeregisterPage;)V

    .line 38
    return-void
.end method
