.class Lcom/amazon/kcp/reader/models/internal/CMBPBookDocument$1;
.super Ljava/lang/Object;
.source "CMBPBookDocument.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/models/internal/CMBPBookDocument;-><init>(Lcom/mobipocket/common/library/reader/BookViewManager;Lcom/mobipocket/common/library/reader/BookManager;Lcom/amazon/kcp/library/models/ILocalBookInfo;Lcom/amazon/kcp/application/IAnnotationUpdateHandler;Lcom/amazon/kcp/library/models/internal/CBookItemMobi$SearchHelper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/models/internal/CMBPBookDocument;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/models/internal/CMBPBookDocument;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDocument$1;->this$0:Lcom/amazon/kcp/reader/models/internal/CMBPBookDocument;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPBookDocument$1;->this$0:Lcom/amazon/kcp/reader/models/internal/CMBPBookDocument;

    invoke-static {v0}, Lcom/amazon/kcp/reader/models/internal/CMBPBookDocument;->access$000(Lcom/amazon/kcp/reader/models/internal/CMBPBookDocument;)Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/CMBPBookDisplay;->refresh()V

    .line 63
    return-void
.end method
