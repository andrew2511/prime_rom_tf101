.class Lcom/amazon/kcp/reader/ui/ReaderLayout$10;
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
    .line 1088
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$10;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$10;->val$annotation:Lcom/amazon/kcp/reader/models/IAnnotation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1093
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1095
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$10;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/amazon/kcp/reader/EditNoteActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1096
    const-string v1, "note_text"

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$10;->val$annotation:Lcom/amazon/kcp/reader/models/IAnnotation;

    invoke-interface {v2}, Lcom/amazon/kcp/reader/models/IAnnotation;->getUserText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1097
    const-string v1, "annotation_index"

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$10;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    iget-object v2, v2, Lcom/amazon/kcp/reader/ui/ReaderLayout;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/pages/internal/CReaderPage;->getBookDocument()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/reader/models/IBookDocument;->getAnnotationsManager()Lcom/amazon/kcp/reader/models/IBookAnnotationsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$10;->val$annotation:Lcom/amazon/kcp/reader/models/IAnnotation;

    invoke-interface {v2, v3}, Lcom/amazon/kcp/reader/models/IBookAnnotationsManager;->getIndex(Lcom/amazon/kcp/reader/models/IAnnotation;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1099
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$10;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1100
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1102
    :cond_0
    return-void
.end method
