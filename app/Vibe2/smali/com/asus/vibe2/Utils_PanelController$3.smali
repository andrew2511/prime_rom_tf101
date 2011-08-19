.class Lcom/asus/vibe2/Utils_PanelController$3;
.super Ljava/lang/Object;
.source "Utils_PanelController.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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
    .line 148
    iput-object p1, p0, Lcom/asus/vibe2/Utils_PanelController$3;->this$0:Lcom/asus/vibe2/Utils_PanelController;

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
    .line 155
    if-eqz p3, :cond_0

    iget-object v4, p0, Lcom/asus/vibe2/Utils_PanelController$3;->this$0:Lcom/asus/vibe2/Utils_PanelController;

    invoke-static {v4}, Lcom/asus/vibe2/Utils_PanelController;->access$000(Lcom/asus/vibe2/Utils_PanelController;)Lcom/asus/vibe2/Srv_Playback;

    move-result-object v4

    if-nez v4, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    iget-object v4, p0, Lcom/asus/vibe2/Utils_PanelController$3;->this$0:Lcom/asus/vibe2/Utils_PanelController;

    invoke-static {v4}, Lcom/asus/vibe2/Utils_PanelController;->access$500(Lcom/asus/vibe2/Utils_PanelController;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 157
    iget-object v4, p0, Lcom/asus/vibe2/Utils_PanelController$3;->this$0:Lcom/asus/vibe2/Utils_PanelController;

    invoke-static {v4}, Lcom/asus/vibe2/Utils_PanelController;->access$000(Lcom/asus/vibe2/Utils_PanelController;)Lcom/asus/vibe2/Srv_Playback;

    move-result-object v4

    invoke-virtual {v4}, Lcom/asus/vibe2/Srv_Playback;->getDuration()I

    move-result v4

    int-to-long v0, v4

    .line 158
    .local v0, duration:J
    int-to-long v4, p2

    mul-long/2addr v4, v0

    const-wide/16 v6, 0x3e8

    div-long v2, v4, v6

    .line 159
    .local v2, newposition:J
    iget-object v4, p0, Lcom/asus/vibe2/Utils_PanelController$3;->this$0:Lcom/asus/vibe2/Utils_PanelController;

    invoke-static {v4}, Lcom/asus/vibe2/Utils_PanelController;->access$000(Lcom/asus/vibe2/Utils_PanelController;)Lcom/asus/vibe2/Srv_Playback;

    move-result-object v4

    long-to-int v5, v2

    invoke-virtual {v4, v5}, Lcom/asus/vibe2/Srv_Playback;->seekTo(I)V

    .line 160
    iget-object v4, p0, Lcom/asus/vibe2/Utils_PanelController$3;->this$0:Lcom/asus/vibe2/Utils_PanelController;

    invoke-static {v4}, Lcom/asus/vibe2/Utils_PanelController;->access$900(Lcom/asus/vibe2/Utils_PanelController;)Landroid/widget/TextView;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 161
    iget-object v4, p0, Lcom/asus/vibe2/Utils_PanelController$3;->this$0:Lcom/asus/vibe2/Utils_PanelController;

    invoke-static {v4}, Lcom/asus/vibe2/Utils_PanelController;->access$900(Lcom/asus/vibe2/Utils_PanelController;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/asus/vibe2/Utils_PanelController$3;->this$0:Lcom/asus/vibe2/Utils_PanelController;

    invoke-static {v5}, Lcom/asus/vibe2/Utils_PanelController;->access$700(Lcom/asus/vibe2/Utils_PanelController;)Landroid/content/Context;

    move-result-object v5

    long-to-int v6, v2

    invoke-static {v5, v6}, Lcom/asus/vibe2/Utils_PanelController;->formatDuration(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "bar"

    .prologue
    const/4 v1, 0x1

    .line 150
    iget-object v0, p0, Lcom/asus/vibe2/Utils_PanelController$3;->this$0:Lcom/asus/vibe2/Utils_PanelController;

    invoke-static {v0, v1}, Lcom/asus/vibe2/Utils_PanelController;->access$202(Lcom/asus/vibe2/Utils_PanelController;Z)Z

    .line 151
    iget-object v0, p0, Lcom/asus/vibe2/Utils_PanelController$3;->this$0:Lcom/asus/vibe2/Utils_PanelController;

    invoke-static {v0}, Lcom/asus/vibe2/Utils_PanelController;->access$500(Lcom/asus/vibe2/Utils_PanelController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 152
    iget-object v0, p0, Lcom/asus/vibe2/Utils_PanelController$3;->this$0:Lcom/asus/vibe2/Utils_PanelController;

    invoke-static {v0}, Lcom/asus/vibe2/Utils_PanelController;->access$500(Lcom/asus/vibe2/Utils_PanelController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 153
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "bar"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/asus/vibe2/Utils_PanelController$3;->this$0:Lcom/asus/vibe2/Utils_PanelController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/asus/vibe2/Utils_PanelController;->access$202(Lcom/asus/vibe2/Utils_PanelController;Z)Z

    .line 166
    iget-object v0, p0, Lcom/asus/vibe2/Utils_PanelController$3;->this$0:Lcom/asus/vibe2/Utils_PanelController;

    invoke-static {v0}, Lcom/asus/vibe2/Utils_PanelController;->access$500(Lcom/asus/vibe2/Utils_PanelController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 167
    iget-object v0, p0, Lcom/asus/vibe2/Utils_PanelController$3;->this$0:Lcom/asus/vibe2/Utils_PanelController;

    invoke-static {v0}, Lcom/asus/vibe2/Utils_PanelController;->access$500(Lcom/asus/vibe2/Utils_PanelController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 168
    iget-object v0, p0, Lcom/asus/vibe2/Utils_PanelController$3;->this$0:Lcom/asus/vibe2/Utils_PanelController;

    invoke-static {v0}, Lcom/asus/vibe2/Utils_PanelController;->access$100(Lcom/asus/vibe2/Utils_PanelController;)I

    .line 170
    return-void
.end method
