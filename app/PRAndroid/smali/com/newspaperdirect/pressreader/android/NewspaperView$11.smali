.class Lcom/newspaperdirect/pressreader/android/NewspaperView$11;
.super Ljava/lang/Object;
.source "NewspaperView.java"

# interfaces
.implements Lcom/newspaperdirect/pressreader/android/BaseZoomView$OnZoomClosedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/NewspaperView;->initZoomView()V
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
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView$11;->this$0:Lcom/newspaperdirect/pressreader/android/NewspaperView;

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onZoomClosed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 327
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView$11;->this$0:Lcom/newspaperdirect/pressreader/android/NewspaperView;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->access$6(Lcom/newspaperdirect/pressreader/android/NewspaperView;)Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;->restore()V

    .line 328
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView$11;->this$0:Lcom/newspaperdirect/pressreader/android/NewspaperView;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->access$8(Lcom/newspaperdirect/pressreader/android/NewspaperView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView$11;->this$0:Lcom/newspaperdirect/pressreader/android/NewspaperView;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->access$6(Lcom/newspaperdirect/pressreader/android/NewspaperView;)Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;

    move-result-object v0

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView$11;->this$0:Lcom/newspaperdirect/pressreader/android/NewspaperView;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->access$11(Lcom/newspaperdirect/pressreader/android/NewspaperView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0, v2, v1, v2, v2}, Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;->setPadding(IIII)V

    .line 330
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView$11;->this$0:Lcom/newspaperdirect/pressreader/android/NewspaperView;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->access$6(Lcom/newspaperdirect/pressreader/android/NewspaperView;)Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;->setHighlightArticles(Z)V

    .line 336
    :goto_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView$11;->this$0:Lcom/newspaperdirect/pressreader/android/NewspaperView;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->access$6(Lcom/newspaperdirect/pressreader/android/NewspaperView;)Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;->setVisibility(I)V

    .line 337
    return-void

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView$11;->this$0:Lcom/newspaperdirect/pressreader/android/NewspaperView;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->access$6(Lcom/newspaperdirect/pressreader/android/NewspaperView;)Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;->setPadding(IIII)V

    .line 334
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView$11;->this$0:Lcom/newspaperdirect/pressreader/android/NewspaperView;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->access$6(Lcom/newspaperdirect/pressreader/android/NewspaperView;)Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;->setHighlightArticles(Z)V

    goto :goto_0
.end method
