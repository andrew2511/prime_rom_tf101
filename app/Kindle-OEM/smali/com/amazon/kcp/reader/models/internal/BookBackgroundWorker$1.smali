.class Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$1;
.super Ljava/lang/Object;
.source "BookBackgroundWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;)V
    .locals 0
    .parameter

    .prologue
    .line 348
    iput-object p1, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$1;->this$0:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$1;->this$0:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    const-string v1, "positionChangedNotificationRunnable"

    invoke-static {v0, v1}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->access$000(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$1;->this$0:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-static {v0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->access$500(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;)Lcom/amazon/foundation/internal/EventProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 353
    return-void
.end method
