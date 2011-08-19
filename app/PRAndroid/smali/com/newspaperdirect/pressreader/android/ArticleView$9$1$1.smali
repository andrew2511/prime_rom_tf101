.class Lcom/newspaperdirect/pressreader/android/ArticleView$9$1$1;
.super Ljava/lang/Object;
.source "ArticleView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/ArticleView$9$1;->end(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/newspaperdirect/pressreader/android/ArticleView$9$1;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/ArticleView$9$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$9$1$1;->this$2:Lcom/newspaperdirect/pressreader/android/ArticleView$9$1;

    .line 781
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/newspaperdirect/pressreader/android/ArticleView$9$1$1;)Lcom/newspaperdirect/pressreader/android/ArticleView$9$1;
    .locals 1
    .parameter

    .prologue
    .line 781
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$9$1$1;->this$2:Lcom/newspaperdirect/pressreader/android/ArticleView$9$1;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 783
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$9$1$1;->this$2:Lcom/newspaperdirect/pressreader/android/ArticleView$9$1;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/ArticleView$9$1;->access$0(Lcom/newspaperdirect/pressreader/android/ArticleView$9$1;)Lcom/newspaperdirect/pressreader/android/ArticleView$9;

    move-result-object v1

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/ArticleView$9;->access$0(Lcom/newspaperdirect/pressreader/android/ArticleView$9;)Lcom/newspaperdirect/pressreader/android/ArticleView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/ArticleView;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 797
    :goto_0
    return-void

    .line 784
    :cond_0
    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;-><init>(Ljava/lang/Object;)V

    .line 785
    .local v0, flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;,"Lcom/newspaperdirect/pressreader/android/core/NDWrapper<Ljava/lang/Boolean;>;"
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$9$1$1;->this$2:Lcom/newspaperdirect/pressreader/android/ArticleView$9$1;

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/ArticleView$9$1;->access$0(Lcom/newspaperdirect/pressreader/android/ArticleView$9$1;)Lcom/newspaperdirect/pressreader/android/ArticleView$9;

    move-result-object v2

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/ArticleView$9;->access$0(Lcom/newspaperdirect/pressreader/android/ArticleView$9;)Lcom/newspaperdirect/pressreader/android/ArticleView;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 786
    const v2, 0x7f090011

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 787
    const v2, 0x7f090013

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 788
    const v2, 0x7f09005e

    new-instance v3, Lcom/newspaperdirect/pressreader/android/ArticleView$9$1$1$1;

    invoke-direct {v3, p0, v0}, Lcom/newspaperdirect/pressreader/android/ArticleView$9$1$1$1;-><init>(Lcom/newspaperdirect/pressreader/android/ArticleView$9$1$1;Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 796
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
