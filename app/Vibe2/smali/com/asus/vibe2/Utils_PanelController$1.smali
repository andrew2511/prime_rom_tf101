.class Lcom/asus/vibe2/Utils_PanelController$1;
.super Landroid/os/Handler;
.source "Utils_PanelController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/vibe2/Utils_PanelController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/vibe2/Utils_PanelController;


# direct methods
.method constructor <init>(Lcom/asus/vibe2/Utils_PanelController;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/asus/vibe2/Utils_PanelController$1;->this$0:Lcom/asus/vibe2/Utils_PanelController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 37
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v3, v2, :cond_2

    .line 38
    iget-object v2, p0, Lcom/asus/vibe2/Utils_PanelController$1;->this$0:Lcom/asus/vibe2/Utils_PanelController;

    invoke-static {v2}, Lcom/asus/vibe2/Utils_PanelController;->access$000(Lcom/asus/vibe2/Utils_PanelController;)Lcom/asus/vibe2/Srv_Playback;

    move-result-object v2

    if-nez v2, :cond_1

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    iget-object v2, p0, Lcom/asus/vibe2/Utils_PanelController$1;->this$0:Lcom/asus/vibe2/Utils_PanelController;

    invoke-static {v2}, Lcom/asus/vibe2/Utils_PanelController;->access$100(Lcom/asus/vibe2/Utils_PanelController;)I

    move-result v1

    .line 42
    .local v1, pos:I
    iget-object v2, p0, Lcom/asus/vibe2/Utils_PanelController$1;->this$0:Lcom/asus/vibe2/Utils_PanelController;

    invoke-static {v2}, Lcom/asus/vibe2/Utils_PanelController;->access$200(Lcom/asus/vibe2/Utils_PanelController;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/asus/vibe2/Utils_PanelController$1;->this$0:Lcom/asus/vibe2/Utils_PanelController;

    invoke-static {v2}, Lcom/asus/vibe2/Utils_PanelController;->access$000(Lcom/asus/vibe2/Utils_PanelController;)Lcom/asus/vibe2/Srv_Playback;

    move-result-object v2

    invoke-virtual {v2}, Lcom/asus/vibe2/Srv_Playback;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 43
    invoke-virtual {p0, v3}, Lcom/asus/vibe2/Utils_PanelController$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 44
    const/16 v2, 0x3e8

    rem-int/lit16 v3, v1, 0x3e8

    sub-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {p0, p1, v2, v3}, Lcom/asus/vibe2/Utils_PanelController$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 48
    .end local v1           #pos:I
    :cond_2
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v4, v2, :cond_0

    .line 49
    iget-object v2, p0, Lcom/asus/vibe2/Utils_PanelController$1;->this$0:Lcom/asus/vibe2/Utils_PanelController;

    invoke-static {v2}, Lcom/asus/vibe2/Utils_PanelController;->access$000(Lcom/asus/vibe2/Utils_PanelController;)Lcom/asus/vibe2/Srv_Playback;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/asus/vibe2/Utils_PanelController$1;->this$0:Lcom/asus/vibe2/Utils_PanelController;

    invoke-static {v2}, Lcom/asus/vibe2/Utils_PanelController;->access$300(Lcom/asus/vibe2/Utils_PanelController;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 50
    iget-object v2, p0, Lcom/asus/vibe2/Utils_PanelController$1;->this$0:Lcom/asus/vibe2/Utils_PanelController;

    invoke-static {v2}, Lcom/asus/vibe2/Utils_PanelController;->access$000(Lcom/asus/vibe2/Utils_PanelController;)Lcom/asus/vibe2/Srv_Playback;

    move-result-object v2

    invoke-virtual {v2}, Lcom/asus/vibe2/Srv_Playback;->getBufferPercentage()I

    move-result v0

    .line 51
    .local v0, percent:I
    iget-object v2, p0, Lcom/asus/vibe2/Utils_PanelController$1;->this$0:Lcom/asus/vibe2/Utils_PanelController;

    invoke-static {v2}, Lcom/asus/vibe2/Utils_PanelController;->access$400(Lcom/asus/vibe2/Utils_PanelController;)Landroid/widget/SeekBar;

    move-result-object v2

    mul-int/lit8 v3, v0, 0xa

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 52
    iget-object v2, p0, Lcom/asus/vibe2/Utils_PanelController$1;->this$0:Lcom/asus/vibe2/Utils_PanelController;

    invoke-static {v2}, Lcom/asus/vibe2/Utils_PanelController;->access$200(Lcom/asus/vibe2/Utils_PanelController;)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x64

    if-eq v0, v2, :cond_0

    .line 53
    invoke-virtual {p0, v4}, Lcom/asus/vibe2/Utils_PanelController$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 54
    const-wide/16 v2, 0xfa

    invoke-virtual {p0, p1, v2, v3}, Lcom/asus/vibe2/Utils_PanelController$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
