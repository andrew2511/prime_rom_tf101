.class Lcom/amazon/kcp/library/models/internal/BookDownloadTracker$4;
.super Ljava/lang/Object;
.source "BookDownloadTracker.java"

# interfaces
.implements Lcom/amazon/foundation/internal/IDownloadBookItemCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker$4;->this$0:Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/amazon/kcp/library/models/IDownloadBookItem;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    return-void
.end method
