.class Lcom/asus/DLNA/DLNA$14;
.super Landroid/os/Handler;
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
    .line 1054
    iput-object p1, p0, Lcom/asus/DLNA/DLNA$14;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 1057
    const/16 v3, 0x6e

    iget v4, p1, Landroid/os/Message;->what:I

    if-eq v3, v4, :cond_0

    const/16 v3, 0x1f4

    iget v4, p1, Landroid/os/Message;->what:I

    if-ne v3, v4, :cond_2

    .line 1060
    :cond_0
    iget-object v3, p0, Lcom/asus/DLNA/DLNA$14;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v3, p1}, Lcom/asus/DLNA/DLNA;->access$2500(Lcom/asus/DLNA/DLNA;Landroid/os/Message;)J

    move-result-wide v0

    .line 1061
    .local v0, delay:J
    iget-object v3, p0, Lcom/asus/DLNA/DLNA$14;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v3, v0, v1}, Lcom/asus/DLNA/DLNA;->access$2600(Lcom/asus/DLNA/DLNA;J)V

    .line 1084
    .end local v0           #delay:J
    :cond_1
    :goto_0
    return-void

    .line 1062
    :cond_2
    const/16 v3, 0x6f

    iget v4, p1, Landroid/os/Message;->what:I

    if-ne v3, v4, :cond_3

    .line 1063
    iget-object v3, p0, Lcom/asus/DLNA/DLNA$14;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v3}, Lcom/asus/DLNA/DLNA;->access$200(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/MediaControl;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1064
    iget-object v3, p0, Lcom/asus/DLNA/DLNA$14;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v3}, Lcom/asus/DLNA/DLNA;->access$200(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/MediaControl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/asus/DLNA/MediaControl;->updateSeekBar()V

    goto :goto_0

    .line 1065
    :cond_3
    const/16 v3, 0x64

    iget v4, p1, Landroid/os/Message;->what:I

    if-ne v3, v4, :cond_5

    .line 1066
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 1067
    .local v2, str:Ljava/lang/String;
    const-string v3, "PLAYSTATE_PLAYING"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 1068
    const-string v3, "PLAYSTATE_STOPPED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 1069
    const-string v3, "PLAYSTATE_PAUSED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 1070
    const-string v3, "PLAYSTATE_PAUSED_RECORDING"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 1071
    const-string v3, "PLAYSTATE_RECORDING"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 1072
    const-string v3, "PLAYSTATE_TRANSITIONING"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 1073
    const-string v3, "PLAYSTATE_NO_MEDIA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_4

    .line 1074
    iget-object v3, p0, Lcom/asus/DLNA/DLNA$14;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v3}, Lcom/asus/DLNA/DLNA;->access$200(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/MediaControl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/asus/DLNA/MediaControl;->clickOnStopBTN()V

    goto :goto_0

    .line 1075
    :cond_4
    const-string v3, "PLAYSTATE_UNKNOWN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 1078
    .end local v2           #str:Ljava/lang/String;
    :cond_5
    const/16 v3, 0x71

    iget v4, p1, Landroid/os/Message;->what:I

    if-ne v3, v4, :cond_6

    .line 1079
    iget-object v3, p0, Lcom/asus/DLNA/DLNA$14;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v3}, Lcom/asus/DLNA/DLNA;->access$200(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/MediaControl;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/asus/DLNA/MediaControl;->updateCurrentMuteState(Z)V

    goto :goto_0

    .line 1080
    :cond_6
    const/16 v3, 0x72

    iget v4, p1, Landroid/os/Message;->what:I

    if-ne v3, v4, :cond_1

    .line 1081
    iget-object v3, p0, Lcom/asus/DLNA/DLNA$14;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v3}, Lcom/asus/DLNA/DLNA;->access$200(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/MediaControl;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/asus/DLNA/MediaControl;->updateCurrentMuteState(Z)V

    goto/16 :goto_0
.end method
