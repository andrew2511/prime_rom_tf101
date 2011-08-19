.class Lcom/asus/DLNA/DLNA$12;
.super Landroid/content/BroadcastReceiver;
.source "DLNA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/DLNA/DLNA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/DLNA/DLNA;


# direct methods
.method constructor <init>(Lcom/asus/DLNA/DLNA;)V
    .locals 0
    .parameter

    .prologue
    .line 710
    iput-object p1, p0, Lcom/asus/DLNA/DLNA$12;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 713
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 715
    .local v0, act:Ljava/lang/String;
    const-string v1, "music.playback.complete"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 716
    iget-object v1, p0, Lcom/asus/DLNA/DLNA$12;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v1}, Lcom/asus/DLNA/DLNA;->access$200(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/MediaControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/asus/DLNA/MediaControl;->clickOnStopBTN()V

    .line 732
    :cond_0
    :goto_0
    return-void

    .line 717
    :cond_1
    const-string v1, "music.playback.next"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 718
    iget-object v1, p0, Lcom/asus/DLNA/DLNA$12;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v1}, Lcom/asus/DLNA/DLNA;->access$1000(Lcom/asus/DLNA/DLNA;)V

    goto :goto_0

    .line 719
    :cond_2
    const-string v1, "music.playback.previous"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    .line 720
    iget-object v1, p0, Lcom/asus/DLNA/DLNA$12;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v1}, Lcom/asus/DLNA/DLNA;->access$1100(Lcom/asus/DLNA/DLNA;)V

    goto :goto_0

    .line 721
    :cond_3
    const-string v1, "music.playback.error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4

    .line 722
    const-string v1, "DLNA"

    const-string v2, " Error!! can\'t play!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    iget-object v1, p0, Lcom/asus/DLNA/DLNA$12;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v1}, Lcom/asus/DLNA/DLNA;->access$1200(Lcom/asus/DLNA/DLNA;)V

    .line 724
    iget-object v1, p0, Lcom/asus/DLNA/DLNA$12;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v1}, Lcom/asus/DLNA/DLNA;->access$1300(Lcom/asus/DLNA/DLNA;)V

    .line 725
    iget-object v1, p0, Lcom/asus/DLNA/DLNA$12;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v1, v3}, Lcom/asus/DLNA/DLNA;->access$1400(Lcom/asus/DLNA/DLNA;Z)V

    goto :goto_0

    .line 726
    :cond_4
    const-string v1, "music.playback.prepared"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 727
    iget-object v1, p0, Lcom/asus/DLNA/DLNA$12;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v1}, Lcom/asus/DLNA/DLNA;->access$200(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/MediaControl;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 728
    iget-object v1, p0, Lcom/asus/DLNA/DLNA$12;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v1}, Lcom/asus/DLNA/DLNA;->access$200(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/MediaControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/asus/DLNA/MediaControl;->updateSeekBar()V

    .line 729
    :cond_5
    iget-object v1, p0, Lcom/asus/DLNA/DLNA$12;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v1, v3}, Lcom/asus/DLNA/DLNA;->access$1400(Lcom/asus/DLNA/DLNA;Z)V

    goto :goto_0
.end method
