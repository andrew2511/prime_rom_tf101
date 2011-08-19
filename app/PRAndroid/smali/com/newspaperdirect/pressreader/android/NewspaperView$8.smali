.class Lcom/newspaperdirect/pressreader/android/NewspaperView$8;
.super Ljava/lang/Object;
.source "NewspaperView.java"

# interfaces
.implements Lcom/newspaperdirect/pressreader/android/BaseNewspaperView$OnPageZoomInFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/NewspaperView;->initNewspaperView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/NewspaperView;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/NewspaperView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView$8;->this$0:Lcom/newspaperdirect/pressreader/android/NewspaperView;

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageZoomInFinished(Lcom/newspaperdirect/pressreader/android/core/layout/Page;Landroid/graphics/RectF;)V
    .locals 2
    .parameter "page"
    .parameter "position"

    .prologue
    .line 301
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView$8;->this$0:Lcom/newspaperdirect/pressreader/android/NewspaperView;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->access$15(Lcom/newspaperdirect/pressreader/android/NewspaperView;)Lcom/newspaperdirect/pressreader/android/BaseZoomView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/BaseZoomView;->show()V

    .line 302
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView$8;->this$0:Lcom/newspaperdirect/pressreader/android/NewspaperView;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->access$15(Lcom/newspaperdirect/pressreader/android/NewspaperView;)Lcom/newspaperdirect/pressreader/android/BaseZoomView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/newspaperdirect/pressreader/android/BaseZoomView;->setCurrentPage(Lcom/newspaperdirect/pressreader/android/core/layout/Page;)V

    .line 303
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView$8;->this$0:Lcom/newspaperdirect/pressreader/android/NewspaperView;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->access$15(Lcom/newspaperdirect/pressreader/android/NewspaperView;)Lcom/newspaperdirect/pressreader/android/BaseZoomView;

    move-result-object v0

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView$8;->this$0:Lcom/newspaperdirect/pressreader/android/NewspaperView;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->access$6(Lcom/newspaperdirect/pressreader/android/NewspaperView;)Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;->getPosition()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/BaseZoomView;->setOriginalPosition(Landroid/graphics/RectF;)V

    .line 304
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView$8;->this$0:Lcom/newspaperdirect/pressreader/android/NewspaperView;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->access$15(Lcom/newspaperdirect/pressreader/android/NewspaperView;)Lcom/newspaperdirect/pressreader/android/BaseZoomView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/newspaperdirect/pressreader/android/BaseZoomView;->setCurrentPosition(Landroid/graphics/RectF;)V

    .line 305
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView$8;->this$0:Lcom/newspaperdirect/pressreader/android/NewspaperView;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->access$6(Lcom/newspaperdirect/pressreader/android/NewspaperView;)Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;->setVisibility(I)V

    .line 306
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView$8;->this$0:Lcom/newspaperdirect/pressreader/android/NewspaperView;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->access$6(Lcom/newspaperdirect/pressreader/android/NewspaperView;)Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;->recycle()V

    .line 307
    return-void
.end method
