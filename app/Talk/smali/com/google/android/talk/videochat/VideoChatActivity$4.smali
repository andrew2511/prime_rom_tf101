.class Lcom/google/android/talk/videochat/VideoChatActivity$4;
.super Lcom/google/android/talk/videochat/ICallStateListener$Stub;
.source "VideoChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/videochat/VideoChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/videochat/VideoChatActivity;


# direct methods
.method constructor <init>(Lcom/google/android/talk/videochat/VideoChatActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 443
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$4;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-direct {p0}, Lcom/google/android/talk/videochat/ICallStateListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateUpdate(Ljava/lang/String;Lcom/google/android/talk/videochat/CallState;Z)V
    .locals 4
    .parameter "remoteBareJid"
    .parameter "callState"
    .parameter "requestReply"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 448
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$4;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$400(Lcom/google/android/talk/videochat/VideoChatActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 495
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 454
    :cond_1
    if-eqz p2, :cond_0

    .line 455
    iget v0, p2, Lcom/google/android/talk/videochat/CallState;->libjingleCallState:I

    packed-switch v0, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 457
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$4;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    const-string v1, "got call state SENDINITIATE, set audio stream to MEDIA"

    invoke-static {v0, v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$1200(Lcom/google/android/talk/videochat/VideoChatActivity;Ljava/lang/String;)V

    .line 458
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$4;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-virtual {v0, v3}, Lcom/google/android/talk/videochat/VideoChatActivity;->setVolumeControlStream(I)V

    .line 459
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$4;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-static {v0, v3}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$1300(Lcom/google/android/talk/videochat/VideoChatActivity;I)V

    goto :goto_0

    .line 464
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$4;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request call with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/talk/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$1200(Lcom/google/android/talk/videochat/VideoChatActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 468
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$4;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/google/android/talk/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " accepted call"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$1200(Lcom/google/android/talk/videochat/VideoChatActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 479
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$4;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$1300(Lcom/google/android/talk/videochat/VideoChatActivity;I)V

    .line 480
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$4;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    const-string v1, "call ended"

    invoke-static {v0, v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$1200(Lcom/google/android/talk/videochat/VideoChatActivity;Ljava/lang/String;)V

    .line 481
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$4;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$1400(Lcom/google/android/talk/videochat/VideoChatActivity;)V

    goto :goto_0

    .line 484
    :pswitch_6
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$4;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    const-string v1, "got call state INPROGRESS, set audio stream to VOICE_CALL"

    invoke-static {v0, v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$1200(Lcom/google/android/talk/videochat/VideoChatActivity;Ljava/lang/String;)V

    .line 485
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$4;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-virtual {v0, v2}, Lcom/google/android/talk/videochat/VideoChatActivity;->setVolumeControlStream(I)V

    .line 487
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$4;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$1300(Lcom/google/android/talk/videochat/VideoChatActivity;I)V

    .line 488
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$4;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$1500(Lcom/google/android/talk/videochat/VideoChatActivity;)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p2, Lcom/google/android/talk/videochat/CallState;->secure:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 489
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$4;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    iget v1, p2, Lcom/google/android/talk/videochat/CallState;->bluetoothState:I

    invoke-static {v0, v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$1600(Lcom/google/android/talk/videochat/VideoChatActivity;I)V

    .line 490
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$4;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In call with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/talk/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " secure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p2, Lcom/google/android/talk/videochat/CallState;->secure:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$1200(Lcom/google/android/talk/videochat/VideoChatActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 488
    :cond_2
    const/16 v1, 0x8

    goto :goto_1

    .line 455
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_1
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method
