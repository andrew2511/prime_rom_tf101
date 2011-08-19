.class Lcom/asus/Viewer/MovieView$1;
.super Landroid/os/Handler;
.source "MovieView.java"


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
    .line 93
    iput-object p1, p0, Lcom/asus/Viewer/MovieView$1;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const-wide/16 v3, 0xfa

    .line 96
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 127
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 128
    return-void

    .line 98
    :pswitch_0
    iget-object v1, p0, Lcom/asus/Viewer/MovieView$1;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-static {v1}, Lcom/asus/Viewer/MovieView;->access$000(Lcom/asus/Viewer/MovieView;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    iget-object v1, p0, Lcom/asus/Viewer/MovieView$1;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-static {v1}, Lcom/asus/Viewer/MovieView;->access$100(Lcom/asus/Viewer/MovieView;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 101
    :cond_1
    iget-object v1, p0, Lcom/asus/Viewer/MovieView$1;->this$0:Lcom/asus/Viewer/MovieView;

    iget-object v1, v1, Lcom/asus/Viewer/MovieView;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x63

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 106
    :pswitch_1
    iget-object v1, p0, Lcom/asus/Viewer/MovieView$1;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-static {v1}, Lcom/asus/Viewer/MovieView;->access$000(Lcom/asus/Viewer/MovieView;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 107
    iget-object v1, p0, Lcom/asus/Viewer/MovieView$1;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-virtual {v1}, Lcom/asus/Viewer/MovieView;->openVideo()V

    goto :goto_0

    .line 109
    :cond_2
    iget-object v1, p0, Lcom/asus/Viewer/MovieView$1;->this$0:Lcom/asus/Viewer/MovieView;

    iget-object v1, v1, Lcom/asus/Viewer/MovieView;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x60

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 115
    :pswitch_2
    iget-object v1, p0, Lcom/asus/Viewer/MovieView$1;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-static {v1}, Lcom/asus/Viewer/MovieView;->access$200(Lcom/asus/Viewer/MovieView;)I

    move-result v0

    .line 116
    .local v0, pos:I
    iget-object v1, p0, Lcom/asus/Viewer/MovieView$1;->this$0:Lcom/asus/Viewer/MovieView;

    invoke-static {v1}, Lcom/asus/Viewer/MovieView;->access$300(Lcom/asus/Viewer/MovieView;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 117
    const/16 v1, 0x62

    invoke-virtual {p0, v1}, Lcom/asus/Viewer/MovieView$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 118
    const/16 v1, 0x3e8

    rem-int/lit16 v2, v0, 0x3e8

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {p0, p1, v1, v2}, Lcom/asus/Viewer/MovieView$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 123
    .end local v0           #pos:I
    :pswitch_3
    iget-object v1, p0, Lcom/asus/Viewer/MovieView$1;->this$0:Lcom/asus/Viewer/MovieView;

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Lcom/asus/Viewer/MovieView;->hide(I)V

    goto :goto_0

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x60
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
