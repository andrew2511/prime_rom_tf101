.class Lcom/google/android/apps/books/app/ReaderFragment$18;
.super Ljava/lang/Object;
.source "ReaderFragment.java"

# interfaces
.implements Lcom/google/android/apps/books/app/ReaderSettingsFragment$ReaderSettingsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/ReaderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/app/ReaderFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/ReaderFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1674
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment$18;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBrightnessChanged(I)V
    .locals 2
    .parameter "brightness"

    .prologue
    .line 1708
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$18;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/books/app/ReaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1709
    .local v0, window:Landroid/view/Window;
    invoke-static {p1, v0}, Lcom/google/android/apps/books/util/WindowUtils;->setBrightness(ILandroid/view/Window;)V

    .line 1710
    return-void
.end method

.method public onReadingModeChanged(I)V
    .locals 6
    .parameter "readingMode"

    .prologue
    .line 1679
    iget-object v3, p0, Lcom/google/android/apps/books/app/ReaderFragment$18;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v3}, Lcom/google/android/apps/books/app/ReaderFragment;->access$2800(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/render/ReaderRenderer;

    move-result-object v2

    .line 1680
    .local v2, originalRenderer:Lcom/google/android/apps/books/render/ReaderRenderer;,"Lcom/google/android/apps/books/render/ReaderRenderer<*>;"
    iget-object v3, p0, Lcom/google/android/apps/books/app/ReaderFragment$18;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v3, v2}, Lcom/google/android/apps/books/app/ReaderFragment;->access$2900(Lcom/google/android/apps/books/app/ReaderFragment;Lcom/google/android/apps/books/render/ReaderRenderer;)I

    move-result v1

    .line 1682
    .local v1, originalMode:I
    if-eqz v2, :cond_0

    if-ne v1, p1, :cond_1

    .line 1683
    :cond_0
    const-string v3, "ReaderFragment"

    const-string v4, "onReadingModeChanged() missing renderer, or found already matching"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    :goto_0
    return-void

    .line 1688
    :cond_1
    iget-object v3, p0, Lcom/google/android/apps/books/app/ReaderFragment$18;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v3, p1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$3000(Lcom/google/android/apps/books/app/ReaderFragment;I)Lcom/google/android/apps/books/render/ReaderRenderer;

    move-result-object v0

    .line 1689
    .local v0, newRenderer:Lcom/google/android/apps/books/render/ReaderRenderer;,"Lcom/google/android/apps/books/render/ReaderRenderer<*>;"
    invoke-virtual {v0, v2}, Lcom/google/android/apps/books/render/ReaderRenderer;->setupFrom(Lcom/google/android/apps/books/render/ReaderRenderer;)V

    .line 1691
    iget-object v3, p0, Lcom/google/android/apps/books/app/ReaderFragment$18;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v3, v0}, Lcom/google/android/apps/books/app/ReaderFragment;->access$3100(Lcom/google/android/apps/books/app/ReaderFragment;Lcom/google/android/apps/books/render/ReaderRenderer;)V

    .line 1692
    iget-object v3, p0, Lcom/google/android/apps/books/app/ReaderFragment$18;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v3}, Lcom/google/android/apps/books/app/ReaderFragment;->access$200(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/widget/PageTurnView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/books/widget/PageTurnView;->refreshPages()V

    .line 1693
    iget-object v3, p0, Lcom/google/android/apps/books/app/ReaderFragment$18;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v3}, Lcom/google/android/apps/books/app/ReaderFragment;->access$200(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/widget/PageTurnView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/books/widget/PageTurnView;->resetZoom()V

    .line 1697
    iget-object v3, p0, Lcom/google/android/apps/books/app/ReaderFragment$18;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v3}, Lcom/google/android/apps/books/app/ReaderFragment;->access$3200(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/widget/TableOfContentsActionItem;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->setReadingMode(I)V

    .line 1698
    iget-object v3, p0, Lcom/google/android/apps/books/app/ReaderFragment$18;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v3}, Lcom/google/android/apps/books/app/ReaderFragment;->access$3300(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/util/VolumeScrubIndex;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/android/apps/books/util/VolumeScrubIndex;->setReadingMode(I)V

    .line 1699
    iget-object v3, p0, Lcom/google/android/apps/books/app/ReaderFragment$18;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v3}, Lcom/google/android/apps/books/app/ReaderFragment;->access$3400(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/widget/ScrubBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/books/widget/ScrubBar;->invalidate()V

    .line 1702
    iget-object v3, p0, Lcom/google/android/apps/books/app/ReaderFragment$18;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v3}, Lcom/google/android/apps/books/app/ReaderFragment;->access$3500(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/model/ReadingPositionSaver;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/books/app/ReaderFragment$18;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v4}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1000(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/model/VolumeMetadata;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/apps/books/model/VolumeMetadata;->account:Landroid/accounts/Account;

    iget-object v5, p0, Lcom/google/android/apps/books/app/ReaderFragment$18;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v5}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1000(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/model/VolumeMetadata;

    move-result-object v5

    iget-object v5, v5, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, p1}, Lcom/google/android/apps/books/model/ReadingPositionSaver;->startModeSave(Landroid/accounts/Account;Ljava/lang/String;I)Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method public onTextSettingsChanged()V
    .locals 3

    .prologue
    .line 1722
    const-string v1, "ReaderFragment"

    const-string v2, "onTextSettingsChanged()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$18;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/books/app/ReaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1725
    .local v0, context:Landroid/content/Context;
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$18;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v1, v0}, Lcom/google/android/apps/books/app/ReaderFragment;->access$3600(Lcom/google/android/apps/books/app/ReaderFragment;Landroid/content/Context;)V

    .line 1726
    return-void
.end method

.method public onThemeChanged()V
    .locals 3

    .prologue
    .line 1714
    const-string v1, "ReaderFragment"

    const-string v2, "onThemeChanged()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1716
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$18;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/books/app/ReaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1717
    .local v0, context:Landroid/content/Context;
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$18;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v1, v0}, Lcom/google/android/apps/books/app/ReaderFragment;->access$3600(Lcom/google/android/apps/books/app/ReaderFragment;Landroid/content/Context;)V

    .line 1718
    return-void
.end method
