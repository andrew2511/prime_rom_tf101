.class Lcom/google/android/talk/fragments/ChatScreenFragment$14;
.super Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;
.source "ChatScreenFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/ChatScreenFragment;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/ChatScreenFragment;Landroid/content/Context;J)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1430
    iput-object p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$14;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;-><init>(Landroid/content/Context;J)V

    return-void
.end method


# virtual methods
.method public onDisconnected()V
    .locals 2

    .prologue
    .line 1434
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$14;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$2400(Lcom/google/android/talk/fragments/ChatScreenFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/talk/fragments/ChatScreenFragment$14$1;

    invoke-direct {v1, p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$14$1;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment$14;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1445
    return-void
.end method
