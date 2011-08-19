.class Lcom/amazon/kcp/reader/ReaderController$1;
.super Ljava/lang/Object;
.source "ReaderController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ReaderController;->closeCurrentBook()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ReaderController;

.field final synthetic val$bookToClose:Lcom/amazon/kcp/reader/models/IBookDocument;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ReaderController;Lcom/amazon/kcp/reader/models/IBookDocument;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/amazon/kcp/reader/ReaderController$1;->this$0:Lcom/amazon/kcp/reader/ReaderController;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ReaderController$1;->val$bookToClose:Lcom/amazon/kcp/reader/models/IBookDocument;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController$1;->val$bookToClose:Lcom/amazon/kcp/reader/models/IBookDocument;

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDocument;->closeDocument()V

    .line 135
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderController$1;->this$0:Lcom/amazon/kcp/reader/ReaderController;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ReaderController;->access$000(Lcom/amazon/kcp/reader/ReaderController;)Lcom/amazon/foundation/internal/EventProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 136
    return-void
.end method
