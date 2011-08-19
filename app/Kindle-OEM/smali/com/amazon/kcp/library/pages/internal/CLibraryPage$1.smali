.class Lcom/amazon/kcp/library/pages/internal/CLibraryPage$1;
.super Ljava/lang/Object;
.source "CLibraryPage.java"

# interfaces
.implements Lcom/amazon/foundation/IIntCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/pages/internal/CLibraryPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/pages/internal/CLibraryPage;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/pages/internal/CLibraryPage;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/amazon/kcp/library/pages/internal/CLibraryPage$1;->this$0:Lcom/amazon/kcp/library/pages/internal/CLibraryPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/amazon/kcp/library/pages/internal/CLibraryPage$1;->this$0:Lcom/amazon/kcp/library/pages/internal/CLibraryPage;

    invoke-static {v0}, Lcom/amazon/kcp/library/pages/internal/CLibraryPage;->access$000(Lcom/amazon/kcp/library/pages/internal/CLibraryPage;)Lcom/amazon/foundation/internal/IntEventProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/foundation/internal/IntEventProvider;->notifyListeners(I)V

    .line 42
    return-void
.end method
