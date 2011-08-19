.class Lcom/newspaperdirect/pressreader/android/NewspaperView$13;
.super Ljava/lang/Object;
.source "NewspaperView.java"

# interfaces
.implements Lcom/newspaperdirect/pressreader/android/BaseZoomView$OnArticleClickedListener;


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
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView$13;->this$0:Lcom/newspaperdirect/pressreader/android/NewspaperView;

    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onArticleClicked(Lcom/newspaperdirect/pressreader/android/core/layout/Article;)V
    .locals 1
    .parameter "article"

    .prologue
    .line 346
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView$13;->this$0:Lcom/newspaperdirect/pressreader/android/NewspaperView;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->access$8(Lcom/newspaperdirect/pressreader/android/NewspaperView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView$13;->this$0:Lcom/newspaperdirect/pressreader/android/NewspaperView;

    invoke-static {v0, p1}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->access$12(Lcom/newspaperdirect/pressreader/android/NewspaperView;Lcom/newspaperdirect/pressreader/android/core/layout/Article;)V

    .line 348
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView$13;->this$0:Lcom/newspaperdirect/pressreader/android/NewspaperView;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->access$15(Lcom/newspaperdirect/pressreader/android/NewspaperView;)Lcom/newspaperdirect/pressreader/android/BaseZoomView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/BaseZoomView;->recycle()V

    .line 350
    :cond_0
    return-void
.end method
