.class Lcom/google/android/talk/videochat/VideoChatActivity$12;
.super Ljava/lang/Object;
.source "VideoChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/videochat/VideoChatActivity;->connectToExistingCall()V
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
    .line 1109
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$12;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1112
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$12;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$2600(Lcom/google/android/talk/videochat/VideoChatActivity;)V

    .line 1113
    return-void
.end method
