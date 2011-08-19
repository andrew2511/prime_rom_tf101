.class Lcom/google/android/talk/videochat/VideoChatActivity$SessionReadyCallback;
.super Ljava/lang/Object;
.source "VideoChatActivity.java"

# interfaces
.implements Lcom/google/android/talk/videochat/VideoChatService$LocalVideoChatSessionReadyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/videochat/VideoChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SessionReadyCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/videochat/VideoChatActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/talk/videochat/VideoChatActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1016
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SessionReadyCallback;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/talk/videochat/VideoChatActivity;Lcom/google/android/talk/videochat/VideoChatActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1016
    invoke-direct {p0, p1}, Lcom/google/android/talk/videochat/VideoChatActivity$SessionReadyCallback;-><init>(Lcom/google/android/talk/videochat/VideoChatActivity;)V

    return-void
.end method


# virtual methods
.method public onSessionReady(Lcom/google/android/talk/videochat/VideoChatSession;)V
    .locals 5
    .parameter "session"

    .prologue
    .line 1020
    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SessionReadyCallback;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-static {v2}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$2800(Lcom/google/android/talk/videochat/VideoChatActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1065
    :goto_0
    return-void

    .line 1025
    :cond_0
    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SessionReadyCallback;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-static {v2, p1}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$2902(Lcom/google/android/talk/videochat/VideoChatActivity;Lcom/google/android/talk/videochat/VideoChatSession;)Lcom/google/android/talk/videochat/VideoChatSession;

    .line 1026
    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SessionReadyCallback;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-static {v2}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$3000(Lcom/google/android/talk/videochat/VideoChatActivity;)V

    .line 1028
    invoke-static {}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$3100()Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;

    move-result-object v2

    monitor-enter v2

    .line 1029
    :try_start_0
    invoke-static {}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$3100()Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SessionReadyCallback;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-static {v4}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$3200(Lcom/google/android/talk/videochat/VideoChatActivity;)Lcom/google/android/talk/videochat/VideoChatActivity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;->setActivity(Lcom/google/android/talk/videochat/VideoChatActivity;)V

    .line 1030
    invoke-static {}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$3100()Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SessionReadyCallback;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-static {v4}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$400(Lcom/google/android/talk/videochat/VideoChatActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;->setJid(Ljava/lang/String;)V

    .line 1031
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1032
    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SessionReadyCallback;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-static {v2}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$2900(Lcom/google/android/talk/videochat/VideoChatActivity;)Lcom/google/android/talk/videochat/VideoChatSession;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SessionReadyCallback;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-static {v3}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$400(Lcom/google/android/talk/videochat/VideoChatActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$3100()Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/talk/videochat/VideoChatSession;->addRemoteChatListener(Ljava/lang/String;Lcom/google/android/gtalkservice/IChatListener;)V

    .line 1034
    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SessionReadyCallback;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-static {v2}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$3300(Lcom/google/android/talk/videochat/VideoChatActivity;)Ljava/lang/Runnable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1035
    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SessionReadyCallback;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-static {v2}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$3300(Lcom/google/android/talk/videochat/VideoChatActivity;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 1036
    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SessionReadyCallback;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$3302(Lcom/google/android/talk/videochat/VideoChatActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 1042
    :cond_1
    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SessionReadyCallback;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-static {v2}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$000(Lcom/google/android/talk/videochat/VideoChatActivity;)Lcom/google/android/talk/videochat/GlVideoView;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1043
    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SessionReadyCallback;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-static {v2}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$000(Lcom/google/android/talk/videochat/VideoChatActivity;)Lcom/google/android/talk/videochat/GlVideoView;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SessionReadyCallback;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-static {v3}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$2900(Lcom/google/android/talk/videochat/VideoChatActivity;)Lcom/google/android/talk/videochat/VideoChatSession;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/talk/videochat/VideoChatSession;->getLibjingle()Lcom/google/android/talk/videochat/Libjingle;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/talk/videochat/GlVideoView;->setLibjingle(Lcom/google/android/talk/videochat/Libjingle;)V

    .line 1046
    :cond_2
    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SessionReadyCallback;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-static {v2}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$3400(Lcom/google/android/talk/videochat/VideoChatActivity;)I

    move-result v1

    .line 1047
    .local v1, stabilizationLevel:I
    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SessionReadyCallback;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-static {v2}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$2900(Lcom/google/android/talk/videochat/VideoChatActivity;)Lcom/google/android/talk/videochat/VideoChatSession;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/talk/videochat/VideoChatSession;->setImageStabilizationLevel(I)V

    .line 1048
    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SessionReadyCallback;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-static {v2}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$3500(Lcom/google/android/talk/videochat/VideoChatActivity;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1050
    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SessionReadyCallback;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-static {v2}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$3500(Lcom/google/android/talk/videochat/VideoChatActivity;)Landroid/widget/SeekBar;

    move-result-object v2

    new-instance v3, Lcom/google/android/talk/videochat/VideoChatActivity$SessionReadyCallback$1;

    invoke-direct {v3, p0}, Lcom/google/android/talk/videochat/VideoChatActivity$SessionReadyCallback$1;-><init>(Lcom/google/android/talk/videochat/VideoChatActivity$SessionReadyCallback;)V

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1063
    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SessionReadyCallback;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-static {v2}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$2900(Lcom/google/android/talk/videochat/VideoChatActivity;)Lcom/google/android/talk/videochat/VideoChatSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/talk/videochat/VideoChatSession;->isMute()Z

    move-result v0

    .line 1064
    .local v0, muteState:Z
    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatActivity$SessionReadyCallback;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-virtual {v2, v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->setMuteButtonState(Z)V

    goto/16 :goto_0

    .line 1031
    .end local v0           #muteState:Z
    .end local v1           #stabilizationLevel:I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method
