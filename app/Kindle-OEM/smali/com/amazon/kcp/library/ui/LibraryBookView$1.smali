.class Lcom/amazon/kcp/library/ui/LibraryBookView$1;
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
    .line 116
    iput-object p1, p0, Lcom/amazon/kcp/library/ui/LibraryBookView$1;->this$0:Lcom/amazon/kcp/library/ui/LibraryBookView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/amazon/kcp/library/models/IDownloadBookItem;)V
    .locals 2
    .parameter

    .prologue
    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BookRowView callback called with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".  The download status is getting updated."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookView$1;->this$0:Lcom/amazon/kcp/library/ui/LibraryBookView;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/ui/LibraryBookView;->setState(Lcom/amazon/kcp/library/models/IDownloadBookItem;)V

    .line 124
    return-void
.end method
