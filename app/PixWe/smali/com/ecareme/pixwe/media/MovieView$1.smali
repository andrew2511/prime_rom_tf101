.class Lcom/ecareme/pixwe/media/MovieView$1;
.super Lcom/ecareme/pixwe/media/MovieViewControl;
.source "MovieView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/media/MovieView;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/media/MovieView;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/media/MovieView;Landroid/view/View;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter "$anonymous1"
    .parameter "$anonymous2"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/media/MovieView$1;->this$0:Lcom/ecareme/pixwe/media/MovieView;

    .line 49
    invoke-direct {p0, p2, p3, p4}, Lcom/ecareme/pixwe/media/MovieViewControl;-><init>(Landroid/view/View;Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public onCompletion()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MovieView$1;->this$0:Lcom/ecareme/pixwe/media/MovieView;

    invoke-static {v0}, Lcom/ecareme/pixwe/media/MovieView;->access$0(Lcom/ecareme/pixwe/media/MovieView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MovieView$1;->this$0:Lcom/ecareme/pixwe/media/MovieView;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/MovieView;->finish()V

    .line 55
    :cond_0
    return-void
.end method
