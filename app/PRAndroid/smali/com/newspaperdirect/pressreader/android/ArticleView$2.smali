.class Lcom/newspaperdirect/pressreader/android/ArticleView$2;
.super Ljava/lang/Object;
.source "ArticleView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/ArticleView;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$2;->this$0:Lcom/newspaperdirect/pressreader/android/ArticleView;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/newspaperdirect/pressreader/android/ArticleView$2;)Lcom/newspaperdirect/pressreader/android/ArticleView;
    .locals 1
    .parameter

    .prologue
    .line 163
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$2;->this$0:Lcom/newspaperdirect/pressreader/android/ArticleView;

    return-object v0
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 165
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    .line 166
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$2;->this$0:Lcom/newspaperdirect/pressreader/android/ArticleView;

    new-instance v1, Lcom/newspaperdirect/pressreader/android/ArticleView$2$1;

    invoke-direct {v1, p0}, Lcom/newspaperdirect/pressreader/android/ArticleView$2$1;-><init>(Lcom/newspaperdirect/pressreader/android/ArticleView$2;)V

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/ArticleView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 175
    const/4 v0, 0x0

    return v0
.end method
