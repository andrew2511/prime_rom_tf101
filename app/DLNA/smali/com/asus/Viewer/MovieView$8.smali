.class Lcom/asus/Viewer/MovieView$8;
.super Ljava/lang/Object;
.source "MovieView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/Viewer/MovieView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/Viewer/MovieView;


# direct methods
.method constructor <init>(Lcom/asus/Viewer/MovieView;)V
    .locals 0
    .parameter

    .prologue
    .line 528
    iput-object p1, p0, Lcom/asus/Viewer/MovieView$8;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 531
    iget-object v1, p0, Lcom/asus/Viewer/MovieView$8;->this$0:Lcom/asus/Viewer/MovieView;

    iget-object v1, v1, Lcom/asus/Viewer/MovieView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 532
    const/4 v0, 0x0

    .line 533
    .local v0, message:I
    const v0, 0x7f070036

    .line 534
    iget-object v1, p0, Lcom/asus/Viewer/MovieView$8;->this$0:Lcom/asus/Viewer/MovieView;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 535
    iget-object v1, p0, Lcom/asus/Viewer/MovieView$8;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-virtual {v1}, Lcom/asus/Viewer/MovieView;->finish()V

    .line 536
    const/4 v1, 0x1

    return v1
.end method
