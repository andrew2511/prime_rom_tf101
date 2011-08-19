.class Lcom/amazon/kcp/library/models/internal/CDownloadManager$PendingSynchronization;
.super Ljava/lang/Object;
.source "CDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/models/internal/CDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PendingSynchronization"
.end annotation


# instance fields
.field public callback:Lcom/amazon/foundation/internal/IBooleanCallback;

.field final synthetic this$0:Lcom/amazon/kcp/library/models/internal/CDownloadManager;


# direct methods
.method private constructor <init>(Lcom/amazon/kcp/library/models/internal/CDownloadManager;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/CDownloadManager$PendingSynchronization;->this$0:Lcom/amazon/kcp/library/models/internal/CDownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kcp/library/models/internal/CDownloadManager;Lcom/amazon/kcp/library/models/internal/CDownloadManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/models/internal/CDownloadManager$PendingSynchronization;-><init>(Lcom/amazon/kcp/library/models/internal/CDownloadManager;)V

    return-void
.end method
