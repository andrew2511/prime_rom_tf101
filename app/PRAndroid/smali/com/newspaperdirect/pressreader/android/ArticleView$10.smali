.class Lcom/newspaperdirect/pressreader/android/ArticleView$10;
.super Ljava/lang/Object;
.source "ArticleView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/ArticleView;->listenToArticle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/ArticleView;

.field private final synthetic val$thread:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/ArticleView;Ljava/lang/Thread;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$10;->this$0:Lcom/newspaperdirect/pressreader/android/ArticleView;

    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$10;->val$thread:Ljava/lang/Thread;

    .line 869
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 871
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$10;->this$0:Lcom/newspaperdirect/pressreader/android/ArticleView;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/ArticleView;->access$8(Lcom/newspaperdirect/pressreader/android/ArticleView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 872
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$10;->val$thread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 873
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$10;->val$thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 874
    :cond_0
    return-void
.end method
