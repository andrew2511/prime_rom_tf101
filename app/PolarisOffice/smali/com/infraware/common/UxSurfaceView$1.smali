.class Lcom/infraware/common/UxSurfaceView$1;
.super Landroid/os/Handler;
.source "UxSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/common/UxSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/common/UxSurfaceView;


# direct methods
.method constructor <init>(Lcom/infraware/common/UxSurfaceView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/common/UxSurfaceView$1;->this$0:Lcom/infraware/common/UxSurfaceView;

    .line 82
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 85
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 97
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 98
    return-void

    .line 87
    :pswitch_0
    iget-object v2, p0, Lcom/infraware/common/UxSurfaceView$1;->this$0:Lcom/infraware/common/UxSurfaceView;

    iget v2, v2, Lcom/infraware/common/UxSurfaceView;->m_nWidth:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/infraware/common/UxSurfaceView$1;->this$0:Lcom/infraware/common/UxSurfaceView;

    iget v2, v2, Lcom/infraware/common/UxSurfaceView;->m_nHeight:I

    if-eqz v2, :cond_0

    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, bLandScape:I
    iget-object v2, p0, Lcom/infraware/common/UxSurfaceView$1;->this$0:Lcom/infraware/common/UxSurfaceView;

    invoke-virtual {v2}, Lcom/infraware/common/UxSurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 91
    .local v1, resources:Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 92
    const/4 v0, 0x1

    .line 93
    :cond_1
    iget-object v2, p0, Lcom/infraware/common/UxSurfaceView$1;->this$0:Lcom/infraware/common/UxSurfaceView;

    iget-object v2, v2, Lcom/infraware/common/UxSurfaceView;->m_EvInterface:Lcom/infraware/evengine/ICoEngineInterface;

    iget-object v3, p0, Lcom/infraware/common/UxSurfaceView$1;->this$0:Lcom/infraware/common/UxSurfaceView;

    iget v3, v3, Lcom/infraware/common/UxSurfaceView;->m_nWidth:I

    iget-object v4, p0, Lcom/infraware/common/UxSurfaceView$1;->this$0:Lcom/infraware/common/UxSurfaceView;

    iget v4, v4, Lcom/infraware/common/UxSurfaceView;->m_nHeight:I

    invoke-virtual {v2, v0, v3, v4}, Lcom/infraware/evengine/ICoEngineInterface;->IChangeScreen(III)V

    goto :goto_0

    .line 85
    :pswitch_data_0
    .packed-switch -0x11b
        :pswitch_0
    .end packed-switch
.end method
