.class Lcom/amazon/kcp/reader/ui/ReaderLayout$11;
.super Ljava/lang/Object;
.source "ReaderLayout.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/ReaderLayout;->displayNotePopup(Lcom/amazon/kcp/reader/models/IAnnotation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

.field final synthetic val$annotation:Lcom/amazon/kcp/reader/models/IAnnotation;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;Lcom/amazon/kcp/reader/models/IAnnotation;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1106
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$11;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$11;->val$annotation:Lcom/amazon/kcp/reader/models/IAnnotation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1110
    const/4 v0, -0x3

    if-ne p2, v0, :cond_0

    .line 1112
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1113
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$11;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$11;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    iget-object v1, v1, Lcom/amazon/kcp/reader/ui/ReaderLayout;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/pages/internal/CReaderPage;->getBookDocument()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/reader/models/IBookDocument;->getAnnotationsManager()Lcom/amazon/kcp/reader/models/IBookAnnotationsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$11;->val$annotation:Lcom/amazon/kcp/reader/models/IAnnotation;

    invoke-interface {v1, v2}, Lcom/amazon/kcp/reader/models/IBookAnnotationsManager;->getIndex(Lcom/amazon/kcp/reader/models/IAnnotation;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ReaderActivity;->verifyAndDeleteAnnotation(I)V

    .line 1115
    :cond_0
    return-void
.end method
