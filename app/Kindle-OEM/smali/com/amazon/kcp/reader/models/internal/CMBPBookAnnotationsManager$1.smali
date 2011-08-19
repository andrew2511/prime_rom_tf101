.class Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager$1;
.super Ljava/lang/Object;
.source "CMBPBookAnnotationsManager.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager$1;->this$0:Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager$1;->this$0:Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/CMBPBookAnnotationsManager;->lprUpdated()V

    .line 38
    return-void
.end method
