.class Lcom/newspaperdirect/pressreader/android/ArticleView$2$1;
.super Ljava/lang/Object;
.source "ArticleView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/ArticleView$2;->onError(Landroid/media/MediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/newspaperdirect/pressreader/android/ArticleView$2;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/ArticleView$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$2$1;->this$1:Lcom/newspaperdirect/pressreader/android/ArticleView$2;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$2$1;->this$1:Lcom/newspaperdirect/pressreader/android/ArticleView$2;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/ArticleView$2;->access$0(Lcom/newspaperdirect/pressreader/android/ArticleView$2;)Lcom/newspaperdirect/pressreader/android/ArticleView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/ArticleView;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$2$1;->this$1:Lcom/newspaperdirect/pressreader/android/ArticleView$2;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/ArticleView$2;->access$0(Lcom/newspaperdirect/pressreader/android/ArticleView$2;)Lcom/newspaperdirect/pressreader/android/ArticleView;

    move-result-object v0

    .line 170
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$2$1;->this$1:Lcom/newspaperdirect/pressreader/android/ArticleView$2;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/ArticleView$2;->access$0(Lcom/newspaperdirect/pressreader/android/ArticleView$2;)Lcom/newspaperdirect/pressreader/android/ArticleView;

    move-result-object v1

    const v2, 0x7f090012

    invoke-virtual {v1, v2}, Lcom/newspaperdirect/pressreader/android/ArticleView;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 171
    const/4 v2, 0x0

    .line 169
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 173
    :cond_0
    return-void
.end method
