.class Lcom/newspaperdirect/pressreader/android/ArticleView$6$1;
.super Ljava/lang/Object;
.source "ArticleView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/ArticleView$6;->onLayoutSetup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/newspaperdirect/pressreader/android/ArticleView$6;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/ArticleView$6;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$6$1;->this$1:Lcom/newspaperdirect/pressreader/android/ArticleView$6;

    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$6$1;->this$1:Lcom/newspaperdirect/pressreader/android/ArticleView$6;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/ArticleView$6;->access$0(Lcom/newspaperdirect/pressreader/android/ArticleView$6;)Lcom/newspaperdirect/pressreader/android/ArticleView;

    move-result-object v0

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/ArticleView;->access$3(Lcom/newspaperdirect/pressreader/android/ArticleView;)V

    .line 388
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$6$1;->this$1:Lcom/newspaperdirect/pressreader/android/ArticleView$6;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/ArticleView$6;->access$0(Lcom/newspaperdirect/pressreader/android/ArticleView$6;)Lcom/newspaperdirect/pressreader/android/ArticleView;

    move-result-object v0

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$6$1;->this$1:Lcom/newspaperdirect/pressreader/android/ArticleView$6;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/ArticleView$6;->access$0(Lcom/newspaperdirect/pressreader/android/ArticleView$6;)Lcom/newspaperdirect/pressreader/android/ArticleView;

    move-result-object v1

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/ArticleView;->access$9(Lcom/newspaperdirect/pressreader/android/ArticleView;)Lcom/newspaperdirect/pressreader/android/TitleView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/TitleView;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/ArticleView;->access$12(Lcom/newspaperdirect/pressreader/android/ArticleView;I)V

    .line 389
    return-void
.end method
