.class Lcom/newspaperdirect/pressreader/android/ArticleView$1;
.super Ljava/lang/Object;
.source "ArticleView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$1;->this$0:Lcom/newspaperdirect/pressreader/android/ArticleView;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter "mp"

    .prologue
    .line 160
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    .line 161
    return-void
.end method
