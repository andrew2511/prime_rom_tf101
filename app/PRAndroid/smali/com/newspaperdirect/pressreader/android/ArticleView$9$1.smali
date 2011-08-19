.class Lcom/newspaperdirect/pressreader/android/ArticleView$9$1;
.super Ljava/lang/Object;
.source "ArticleView.java"

# interfaces
.implements Landroid/sax/EndTextElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/ArticleView$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/newspaperdirect/pressreader/android/ArticleView$9;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/ArticleView$9;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$9$1;->this$1:Lcom/newspaperdirect/pressreader/android/ArticleView$9;

    .line 773
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/newspaperdirect/pressreader/android/ArticleView$9$1;)Lcom/newspaperdirect/pressreader/android/ArticleView$9;
    .locals 1
    .parameter

    .prologue
    .line 773
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$9$1;->this$1:Lcom/newspaperdirect/pressreader/android/ArticleView$9;

    return-object v0
.end method


# virtual methods
.method public end(Ljava/lang/String;)V
    .locals 5
    .parameter "body"

    .prologue
    .line 775
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 776
    .local v0, audioThread:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Thread;>;"
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 836
    :cond_0
    :goto_0
    return-void

    .line 778
    :cond_1
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$9$1;->this$1:Lcom/newspaperdirect/pressreader/android/ArticleView$9;

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/ArticleView$9;->access$0(Lcom/newspaperdirect/pressreader/android/ArticleView$9;)Lcom/newspaperdirect/pressreader/android/ArticleView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/ArticleView;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 780
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 781
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$9$1;->this$1:Lcom/newspaperdirect/pressreader/android/ArticleView$9;

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/ArticleView$9;->access$0(Lcom/newspaperdirect/pressreader/android/ArticleView$9;)Lcom/newspaperdirect/pressreader/android/ArticleView;

    move-result-object v2

    new-instance v3, Lcom/newspaperdirect/pressreader/android/ArticleView$9$1$1;

    invoke-direct {v3, p0}, Lcom/newspaperdirect/pressreader/android/ArticleView$9$1$1;-><init>(Lcom/newspaperdirect/pressreader/android/ArticleView$9$1;)V

    invoke-virtual {v2, v3}, Lcom/newspaperdirect/pressreader/android/ArticleView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 799
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$9$1;->this$1:Lcom/newspaperdirect/pressreader/android/ArticleView$9;

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/ArticleView$9;->access$0(Lcom/newspaperdirect/pressreader/android/ArticleView$9;)Lcom/newspaperdirect/pressreader/android/ArticleView;

    move-result-object v2

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/ArticleView;->access$16(Lcom/newspaperdirect/pressreader/android/ArticleView;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0

    .line 803
    :cond_2
    :try_start_0
    new-instance v2, Lcom/newspaperdirect/pressreader/android/ArticleView$9$1$2;

    invoke-direct {v2, p0, v0}, Lcom/newspaperdirect/pressreader/android/ArticleView$9$1$2;-><init>(Lcom/newspaperdirect/pressreader/android/ArticleView$9$1;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 817
    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/ArticleView$9$1$2;->start()V

    .line 819
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$9$1;->this$1:Lcom/newspaperdirect/pressreader/android/ArticleView$9;

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/ArticleView$9;->access$0(Lcom/newspaperdirect/pressreader/android/ArticleView$9;)Lcom/newspaperdirect/pressreader/android/ArticleView;

    move-result-object v2

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/ArticleView;->access$8(Lcom/newspaperdirect/pressreader/android/ArticleView;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 820
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$9$1;->this$1:Lcom/newspaperdirect/pressreader/android/ArticleView$9;

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/ArticleView$9;->access$0(Lcom/newspaperdirect/pressreader/android/ArticleView$9;)Lcom/newspaperdirect/pressreader/android/ArticleView;

    move-result-object v2

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/ArticleView;->access$8(Lcom/newspaperdirect/pressreader/android/ArticleView;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    .line 821
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$9$1;->this$1:Lcom/newspaperdirect/pressreader/android/ArticleView$9;

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/ArticleView$9;->access$0(Lcom/newspaperdirect/pressreader/android/ArticleView$9;)Lcom/newspaperdirect/pressreader/android/ArticleView;

    move-result-object v2

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/ArticleView;->access$8(Lcom/newspaperdirect/pressreader/android/ArticleView;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 834
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$9$1;->this$1:Lcom/newspaperdirect/pressreader/android/ArticleView$9;

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/ArticleView$9;->access$0(Lcom/newspaperdirect/pressreader/android/ArticleView$9;)Lcom/newspaperdirect/pressreader/android/ArticleView;

    move-result-object v2

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/ArticleView;->access$16(Lcom/newspaperdirect/pressreader/android/ArticleView;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0

    .line 822
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 823
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$9$1;->this$1:Lcom/newspaperdirect/pressreader/android/ArticleView$9;

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/ArticleView$9;->access$0(Lcom/newspaperdirect/pressreader/android/ArticleView$9;)Lcom/newspaperdirect/pressreader/android/ArticleView;

    move-result-object v2

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/ArticleView;->access$8(Lcom/newspaperdirect/pressreader/android/ArticleView;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->reset()V

    .line 824
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$9$1;->this$1:Lcom/newspaperdirect/pressreader/android/ArticleView$9;

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/ArticleView$9;->access$0(Lcom/newspaperdirect/pressreader/android/ArticleView$9;)Lcom/newspaperdirect/pressreader/android/ArticleView;

    move-result-object v2

    new-instance v3, Lcom/newspaperdirect/pressreader/android/ArticleView$9$1$3;

    invoke-direct {v3, p0}, Lcom/newspaperdirect/pressreader/android/ArticleView$9$1$3;-><init>(Lcom/newspaperdirect/pressreader/android/ArticleView$9$1;)V

    invoke-virtual {v2, v3}, Lcom/newspaperdirect/pressreader/android/ArticleView;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 834
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$9$1;->this$1:Lcom/newspaperdirect/pressreader/android/ArticleView$9;

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/ArticleView$9;->access$0(Lcom/newspaperdirect/pressreader/android/ArticleView$9;)Lcom/newspaperdirect/pressreader/android/ArticleView;

    move-result-object v2

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/ArticleView;->access$16(Lcom/newspaperdirect/pressreader/android/ArticleView;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    goto/16 :goto_0

    .line 833
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 834
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$9$1;->this$1:Lcom/newspaperdirect/pressreader/android/ArticleView$9;

    invoke-static {v3}, Lcom/newspaperdirect/pressreader/android/ArticleView$9;->access$0(Lcom/newspaperdirect/pressreader/android/ArticleView$9;)Lcom/newspaperdirect/pressreader/android/ArticleView;

    move-result-object v3

    invoke-static {v3}, Lcom/newspaperdirect/pressreader/android/ArticleView;->access$16(Lcom/newspaperdirect/pressreader/android/ArticleView;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 835
    throw v2
.end method
