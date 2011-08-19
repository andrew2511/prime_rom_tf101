.class Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument$4;
.super Ljava/lang/Object;
.source "CTPZBookDocument.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;->search(Ljava/lang/String;Lcom/amazon/kcp/reader/models/IBookDocument$SearchResultCallback;Lcom/amazon/foundation/ICallback;Lcom/amazon/foundation/IStatusTracker;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;

.field final synthetic val$canceler:Lcom/amazon/foundation/internal/ICanceler;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;Lcom/amazon/foundation/internal/ICanceler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 386
    iput-object p1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument$4;->this$0:Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;

    iput-object p2, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument$4;->val$canceler:Lcom/amazon/foundation/internal/ICanceler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument$4;->val$canceler:Lcom/amazon/foundation/internal/ICanceler;

    invoke-interface {v0}, Lcom/amazon/foundation/internal/ICanceler;->requestCancel()V

    .line 390
    return-void
.end method
