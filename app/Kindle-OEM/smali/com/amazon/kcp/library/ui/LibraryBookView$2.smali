.class Lcom/amazon/kcp/library/ui/LibraryBookView$2;
.super Ljava/lang/Object;
.source "LibraryBookView.java"

# interfaces
.implements Lcom/amazon/foundation/internal/IDownloadBookItemCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/ui/LibraryBookView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/ui/LibraryBookView;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/ui/LibraryBookView;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/amazon/kcp/library/ui/LibraryBookView$2;->this$0:Lcom/amazon/kcp/library/ui/LibraryBookView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/amazon/kcp/library/models/IDownloadBookItem;)V
    .locals 1
    .parameter "book"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookView$2;->this$0:Lcom/amazon/kcp/library/ui/LibraryBookView;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/ui/LibraryBookView;->setDownloadProgress(Lcom/amazon/kcp/library/models/IDownloadBookItem;)V

    .line 133
    return-void
.end method
