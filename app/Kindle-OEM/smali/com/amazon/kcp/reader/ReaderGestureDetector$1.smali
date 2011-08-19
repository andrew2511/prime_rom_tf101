.class Lcom/amazon/kcp/reader/ReaderGestureDetector$1;
.super Ljava/lang/Object;
.source "ReaderGestureDetector.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ReaderGestureDetector;-><init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;Lcom/amazon/kcp/reader/ObjectSelectionModel;Lcom/amazon/kcp/reader/ObjectSelectionController;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ReaderGestureDetector;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ReaderGestureDetector;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector$1;->this$0:Lcom/amazon/kcp/reader/ReaderGestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector$1;->this$0:Lcom/amazon/kcp/reader/ReaderGestureDetector;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->access$000(Lcom/amazon/kcp/reader/ReaderGestureDetector;)V

    .line 95
    return-void
.end method
