.class Lcom/asus/Viewer/MovieView$11;
.super Ljava/lang/Object;
.source "MovieView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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
    .line 739
    iput-object p1, p0, Lcom/asus/Viewer/MovieView$11;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 8
    .parameter "bar"
    .parameter "progress"
    .parameter "fromuser"

    .prologue
    .line 754
    if-eqz p3, :cond_0

    iget-object v4, p0, Lcom/asus/Viewer/MovieView$11;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-static {v4}, Lcom/asus/Viewer/MovieView;->access$100(Lcom/asus/Viewer/MovieView;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 766
    :cond_0
    :goto_0
    return-void

    .line 760
    :cond_1
    iget-object v4, p0, Lcom/asus/Viewer/MovieView$11;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-static {v4}, Lcom/asus/Viewer/MovieView;->access$800(Lcom/asus/Viewer/MovieView;)Landroid/widget/VideoView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/VideoView;->getDuration()I

    move-result v4

    int-to-long v0, v4

    .line 761
    .local v0, duration:J
    int-to-long v4, p2

    mul-long/2addr v4, v0

    const-wide/16 v6, 0x3e8

    div-long v2, v4, v6

    .line 762
    .local v2, newposition:J
    iget-object v4, p0, Lcom/asus/Viewer/MovieView$11;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-static {v4}, Lcom/asus/Viewer/MovieView;->access$800(Lcom/asus/Viewer/MovieView;)Landroid/widget/VideoView;

    move-result-object v4

    long-to-int v5, v2

    invoke-virtual {v4, v5}, Landroid/widget/VideoView;->seekTo(I)V

    .line 763
    iget-object v4, p0, Lcom/asus/Viewer/MovieView$11;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-static {v4}, Lcom/asus/Viewer/MovieView;->access$2100(Lcom/asus/Viewer/MovieView;)Landroid/widget/TextView;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 764
    iget-object v4, p0, Lcom/asus/Viewer/MovieView$11;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-static {v4}, Lcom/asus/Viewer/MovieView;->access$2100(Lcom/asus/Viewer/MovieView;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/asus/Viewer/MovieView$11;->this$0:Lcom/asus/Viewer/MovieView;

    long-to-int v6, v2

    invoke-static {v5, v6}, Lcom/asus/Viewer/MovieView;->formatDuration(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "bar"

    .prologue
    .line 741
    iget-object v0, p0, Lcom/asus/Viewer/MovieView$11;->this$0:Lcom/asus/Viewer/MovieView;

    const v1, 0x36ee80

    invoke-virtual {v0, v1}, Lcom/asus/Viewer/MovieView;->show(I)V

    .line 743
    iget-object v0, p0, Lcom/asus/Viewer/MovieView$11;->this$0:Lcom/asus/Viewer/MovieView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/asus/Viewer/MovieView;->access$302(Lcom/asus/Viewer/MovieView;Z)Z

    .line 750
    iget-object v0, p0, Lcom/asus/Viewer/MovieView$11;->this$0:Lcom/asus/Viewer/MovieView;

    iget-object v0, v0, Lcom/asus/Viewer/MovieView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x62

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 751
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "bar"

    .prologue
    .line 769
    iget-object v0, p0, Lcom/asus/Viewer/MovieView$11;->this$0:Lcom/asus/Viewer/MovieView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/asus/Viewer/MovieView;->access$302(Lcom/asus/Viewer/MovieView;Z)Z

    .line 770
    iget-object v0, p0, Lcom/asus/Viewer/MovieView$11;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-static {v0}, Lcom/asus/Viewer/MovieView;->access$200(Lcom/asus/Viewer/MovieView;)I

    .line 771
    iget-object v0, p0, Lcom/asus/Viewer/MovieView$11;->this$0:Lcom/asus/Viewer/MovieView;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lcom/asus/Viewer/MovieView;->show(I)V

    .line 776
    iget-object v0, p0, Lcom/asus/Viewer/MovieView$11;->this$0:Lcom/asus/Viewer/MovieView;

    iget-object v0, v0, Lcom/asus/Viewer/MovieView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x62

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 777
    return-void
.end method
