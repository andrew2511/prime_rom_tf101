.class Lcom/amazon/kcp/store/pages/internal/BuyResultsPage$1;
.super Ljava/lang/Object;
.source "BuyResultsPage.java"

# interfaces
.implements Lcom/amazon/foundation/internal/IStatefulTodoItemCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage$1;->this$0:Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;)V
    .locals 1
    .parameter "itemWrapper"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage$1;->this$0:Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;

    invoke-static {v0, p1}, Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;->access$000(Lcom/amazon/kcp/store/pages/internal/BuyResultsPage;Lcom/amazon/kcp/application/models/internal/StatefulTodoItemWrapper;)V

    .line 58
    return-void
.end method
