.class Lcom/newspaperdirect/pressreader/android/ArticleView$8;
.super Ljava/lang/Object;
.source "ArticleView.java"

# interfaces
.implements Lcom/newspaperdirect/pressreader/android/core/BaseChecker$OnPositiveResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/ArticleView;->onListenMenuItemChosen()V
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
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$8;->this$0:Lcom/newspaperdirect/pressreader/android/ArticleView;

    .line 755
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositiveResult()V
    .locals 1

    .prologue
    .line 757
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$8;->this$0:Lcom/newspaperdirect/pressreader/android/ArticleView;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/ArticleView;->access$13(Lcom/newspaperdirect/pressreader/android/ArticleView;)V

    .line 758
    return-void
.end method
