.class Lcom/newspaperdirect/pressreader/android/ArticleView$6;
.super Ljava/lang/Object;
.source "ArticleView.java"

# interfaces
.implements Lcom/newspaperdirect/pressreader/android/TitleView$OnLayoutSetupListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/ArticleView;->setActiveViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/ArticleView;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/ArticleView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$6;->this$0:Lcom/newspaperdirect/pressreader/android/ArticleView;

    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/newspaperdirect/pressreader/android/ArticleView$6;)Lcom/newspaperdirect/pressreader/android/ArticleView;
    .locals 1
    .parameter

    .prologue
    .line 382
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$6;->this$0:Lcom/newspaperdirect/pressreader/android/ArticleView;

    return-object v0
.end method


# virtual methods
.method public onLayoutSetup()V
    .locals 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$6;->this$0:Lcom/newspaperdirect/pressreader/android/ArticleView;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/ArticleView;->access$9(Lcom/newspaperdirect/pressreader/android/ArticleView;)Lcom/newspaperdirect/pressreader/android/TitleView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/TitleView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$6;->this$0:Lcom/newspaperdirect/pressreader/android/ArticleView;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/ArticleView;->access$10(Lcom/newspaperdirect/pressreader/android/ArticleView;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 385
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$6;->this$0:Lcom/newspaperdirect/pressreader/android/ArticleView;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/ArticleView;->access$11(Lcom/newspaperdirect/pressreader/android/ArticleView;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/newspaperdirect/pressreader/android/ArticleView$6$1;

    invoke-direct {v1, p0}, Lcom/newspaperdirect/pressreader/android/ArticleView$6$1;-><init>(Lcom/newspaperdirect/pressreader/android/ArticleView$6;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 392
    :cond_0
    return-void
.end method
