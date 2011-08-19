.class Lcom/newspaperdirect/pressreader/android/NewspaperView$5;
.super Ljava/lang/Object;
.source "NewspaperView.java"

# interfaces
.implements Lcom/newspaperdirect/pressreader/android/BaseNewspaperView$OnArticleClickedListener;


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
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView$5;->this$0:Lcom/newspaperdirect/pressreader/android/NewspaperView;

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onArticleClicked(Lcom/newspaperdirect/pressreader/android/core/layout/Article;)V
    .locals 1
    .parameter "article"

    .prologue
    .line 281
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView$5;->this$0:Lcom/newspaperdirect/pressreader/android/NewspaperView;

    invoke-static {v0, p1}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->access$12(Lcom/newspaperdirect/pressreader/android/NewspaperView;Lcom/newspaperdirect/pressreader/android/core/layout/Article;)V

    .line 282
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView$5;->this$0:Lcom/newspaperdirect/pressreader/android/NewspaperView;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->access$6(Lcom/newspaperdirect/pressreader/android/NewspaperView;)Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;->recycle()V

    .line 283
    return-void
.end method
