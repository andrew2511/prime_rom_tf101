.class Lcom/amazon/kcp/reader/ui/ReaderLayout$6;
.super Ljava/lang/Object;
.source "ReaderLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/ReaderLayout;->dispatchDraw(Landroid/graphics/Canvas;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 414
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$6;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 418
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$6;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->access$300(Lcom/amazon/kcp/reader/ui/ReaderLayout;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$6;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$6;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->access$302(Lcom/amazon/kcp/reader/ui/ReaderLayout;Z)Z

    .line 423
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$6;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$6;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-static {v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->access$400(Lcom/amazon/kcp/reader/ui/ReaderLayout;)Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->access$500(Lcom/amazon/kcp/reader/ui/ReaderLayout;Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;)V

    .line 426
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$6;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/application/ReddingApplication;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/ReddingApplication;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;

    move-result-object v0

    .line 427
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$6;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    iget-object v1, v1, Lcom/amazon/kcp/reader/ui/ReaderLayout;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ReaderActivity;->updateColorModeFromSettings()V

    .line 428
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$6;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    iget-object v1, v1, Lcom/amazon/kcp/reader/ui/ReaderLayout;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/pages/internal/CReaderPage;->getBookDocument()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/reader/models/IBookDocument;->getDisplay()Lcom/amazon/kcp/reader/models/IBookDisplay;

    move-result-object v1

    sget-object v2, Lcom/mobipocket/android/drawing/AndroidFontFactory;->availableSizes:[I

    invoke-virtual {v0}, Lcom/amazon/kcp/application/SettingsController;->getFontSizeIndex()I

    move-result v3

    aget v2, v2, v3

    invoke-interface {v1, v2}, Lcom/amazon/kcp/reader/models/IBookDisplay;->setFontSize(I)V

    .line 431
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$6;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/SettingsController;->getColorMode()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->updateExtraUiForColorMode(I)V

    .line 434
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$6;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->currentPageView:Lcom/amazon/kcp/reader/ui/PageLayout;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$6;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    iget-object v1, v1, Lcom/amazon/kcp/reader/ui/ReaderLayout;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/PageLayout;->setPage(Lcom/amazon/kcp/reader/pages/internal/CReaderPage;)V

    .line 435
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$6;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->access$600(Lcom/amazon/kcp/reader/ui/ReaderLayout;)Lcom/amazon/kcp/reader/ui/PageLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$6;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    iget-object v1, v1, Lcom/amazon/kcp/reader/ui/ReaderLayout;->page:Lcom/amazon/kcp/reader/pages/internal/CReaderPage;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/PageLayout;->setPage(Lcom/amazon/kcp/reader/pages/internal/CReaderPage;)V

    .line 437
    :cond_0
    return-void
.end method
