.class Lcom/google/android/talk/videochat/VideoChatActivity$11;
.super Ljava/lang/Object;
.source "VideoChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 964
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$11;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 967
    const-string v0, "accept"

    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$11;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-static {v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$2300(Lcom/google/android/talk/videochat/VideoChatActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 968
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$11;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$2400(Lcom/google/android/talk/videochat/VideoChatActivity;)V

    .line 975
    :goto_0
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$11;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$2702(Lcom/google/android/talk/videochat/VideoChatActivity;Z)Z

    .line 976
    return-void

    .line 969
    :cond_0
    const-string v0, "initiate"

    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$11;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-static {v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$2300(Lcom/google/android/talk/videochat/VideoChatActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 970
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$11;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$2500(Lcom/google/android/talk/videochat/VideoChatActivity;)V

    goto :goto_0

    .line 973
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$11;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$2600(Lcom/google/android/talk/videochat/VideoChatActivity;)V

    goto :goto_0
.end method
