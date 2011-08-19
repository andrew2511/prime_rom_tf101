.class Lcom/amazon/kcp/reader/ReaderActivity$8;
.super Ljava/lang/Object;
.source "ReaderActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ReaderActivity;->verifyAndDeleteAnnotation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ReaderActivity;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ReaderActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 838
    iput-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity$8;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    iput p2, p0, Lcom/amazon/kcp/reader/ReaderActivity$8;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 843
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 845
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity$8;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ReaderActivity;->readerController:Lcom/amazon/kcp/reader/ReaderController;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderController;->getCurrentBook()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDocument;->getAnnotationsManager()Lcom/amazon/kcp/reader/models/IBookAnnotationsManager;

    move-result-object v0

    .line 846
    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookAnnotationsManager;->getAnnotationsList()[Lcom/amazon/kcp/reader/models/IAnnotation;

    move-result-object v1

    .line 848
    iget v2, p0, Lcom/amazon/kcp/reader/ReaderActivity$8;->val$index:I

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/amazon/kcp/reader/ReaderActivity$8;->val$index:I

    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 850
    iget v2, p0, Lcom/amazon/kcp/reader/ReaderActivity$8;->val$index:I

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Lcom/amazon/kcp/reader/models/IBookAnnotationsManager;->deleteAnnotation(Lcom/amazon/kcp/reader/models/IAnnotation;)Z

    .line 853
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 855
    :cond_1
    return-void
.end method
