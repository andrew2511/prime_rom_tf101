.class Lcom/newspaperdirect/pressreader/android/ArticleView$9$2$1;
.super Ljava/lang/Object;
.source "ArticleView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/ArticleView$9$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/newspaperdirect/pressreader/android/ArticleView$9$2;

.field private final synthetic val$flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/ArticleView$9$2;Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$9$2$1;->this$2:Lcom/newspaperdirect/pressreader/android/ArticleView$9$2;

    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$9$2$1;->val$flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    .line 849
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 851
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$9$2$1;->val$flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 855
    :cond_0
    :goto_0
    return-void

    .line 852
    :cond_1
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$9$2$1;->val$flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;->value:Ljava/lang/Object;

    .line 853
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$9$2$1;->this$2:Lcom/newspaperdirect/pressreader/android/ArticleView$9$2;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/ArticleView$9$2;->access$0(Lcom/newspaperdirect/pressreader/android/ArticleView$9$2;)Lcom/newspaperdirect/pressreader/android/ArticleView$9;

    move-result-object v0

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/ArticleView$9;->access$0(Lcom/newspaperdirect/pressreader/android/ArticleView$9;)Lcom/newspaperdirect/pressreader/android/ArticleView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/ArticleView;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 854
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method
