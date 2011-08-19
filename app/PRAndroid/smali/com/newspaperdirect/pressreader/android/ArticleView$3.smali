.class Lcom/newspaperdirect/pressreader/android/ArticleView$3;
.super Landroid/telephony/PhoneStateListener;
.source "ArticleView.java"


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
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$3;->this$0:Lcom/newspaperdirect/pressreader/android/ArticleView;

    .line 181
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 1
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 185
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$3;->this$0:Lcom/newspaperdirect/pressreader/android/ArticleView;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/ArticleView;->access$8(Lcom/newspaperdirect/pressreader/android/ArticleView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$3;->this$0:Lcom/newspaperdirect/pressreader/android/ArticleView;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/ArticleView;->access$8(Lcom/newspaperdirect/pressreader/android/ArticleView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 187
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$3;->this$0:Lcom/newspaperdirect/pressreader/android/ArticleView;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/ArticleView;->access$8(Lcom/newspaperdirect/pressreader/android/ArticleView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 189
    :cond_0
    return-void
.end method
