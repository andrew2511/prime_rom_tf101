.class Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay$1;
.super Ljava/lang/Object;
.source "CMBPBookDisplay.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay$1;->this$0:Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay$1;->this$0:Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;->refresh()V

    .line 57
    return-void
.end method
