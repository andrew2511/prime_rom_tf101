.class Lcom/amazon/kcp/reader/models/internal/CMBPBookDocument$4;
.super Ljava/lang/Object;
.source "CMBPBookDocument.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/models/internal/CMBPBookDocument;->search(Ljava/lang/String;Lcom/amazon/kcp/reader/models/IBookDocument$SearchResultCallback;Lcom/amazon/foundation/ICallback;Lcom/amazon/foundation/IStatusTracker;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/models/internal/CMBPBookDocument;

.field final synthetic val$searchEvents:Lcom/amazon/kcp/reader/models/internal/MobiBookSearchEvents;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/models/internal/CMBPBookDocument;Lcom/amazon/kcp/reader/models/internal/MobiBookSearchEvents;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDocument$4;->this$0:Lcom/amazon/kcp/reader/models/internal/CMBPBookDocument;

    iput-object p2, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDocument$4;->val$searchEvents:Lcom/amazon/kcp/reader/models/internal/MobiBookSearchEvents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDocument$4;->val$searchEvents:Lcom/amazon/kcp/reader/models/internal/MobiBookSearchEvents;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/MobiBookSearchEvents;->requestStop()V

    .line 218
    return-void
.end method
