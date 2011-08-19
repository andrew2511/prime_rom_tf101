.class Lcom/amazon/kcp/reader/ui/DefinitionContainer$4;
.super Ljava/lang/Object;
.source "DefinitionContainer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/DefinitionContainer;->showDictionaryDownloadingView(Lcom/amazon/kcp/library/dictionary/IDictionaryLocator;Ljava/lang/String;Landroid/view/View;Lcom/amazon/kcp/reader/models/ColorMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/DefinitionContainer;

.field final synthetic val$dictionaryLocator:Lcom/amazon/kcp/library/dictionary/IDictionaryLocator;

.field final synthetic val$selectedText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/DefinitionContainer;Lcom/amazon/kcp/library/dictionary/IDictionaryLocator;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 494
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer$4;->this$0:Lcom/amazon/kcp/reader/ui/DefinitionContainer;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer$4;->val$dictionaryLocator:Lcom/amazon/kcp/library/dictionary/IDictionaryLocator;

    iput-object p3, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer$4;->val$selectedText:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 499
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer$4;->this$0:Lcom/amazon/kcp/reader/ui/DefinitionContainer;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->access$200(Lcom/amazon/kcp/reader/ui/DefinitionContainer;)Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->stopTracking()V

    .line 502
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer$4;->val$dictionaryLocator:Lcom/amazon/kcp/library/dictionary/IDictionaryLocator;

    invoke-interface {v0}, Lcom/amazon/kcp/library/dictionary/IDictionaryLocator;->cancelDictionaryDownload()Z

    .line 503
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer$4;->this$0:Lcom/amazon/kcp/reader/ui/DefinitionContainer;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer$4;->val$selectedText:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->access$100(Lcom/amazon/kcp/reader/ui/DefinitionContainer;Ljava/lang/String;)Z

    .line 504
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer$4;->this$0:Lcom/amazon/kcp/reader/ui/DefinitionContainer;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->requestLayout()V

    .line 505
    return-void
.end method
