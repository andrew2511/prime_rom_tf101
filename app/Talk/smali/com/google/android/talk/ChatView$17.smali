.class Lcom/google/android/talk/ChatView$17;
.super Ljava/lang/Object;
.source "ChatView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/ChatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/ChatView;


# direct methods
.method constructor <init>(Lcom/google/android/talk/ChatView;)V
    .locals 0
    .parameter

    .prologue
    .line 2764
    iput-object p1, p0, Lcom/google/android/talk/ChatView$17;->this$0:Lcom/google/android/talk/ChatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 2767
    iget-object v0, p0, Lcom/google/android/talk/ChatView$17;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$2600(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/ChatView$MessageBar;

    move-result-object v0

    sget-object v1, Lcom/google/android/talk/ChatView$VideoChatState;->VIDEO_ACTIVE:Lcom/google/android/talk/ChatView$VideoChatState;

    invoke-virtual {v0, v1}, Lcom/google/android/talk/ChatView$MessageBar;->setMessageBarState(Lcom/google/android/talk/ChatView$VideoChatState;)V

    .line 2768
    iget-object v0, p0, Lcom/google/android/talk/ChatView$17;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$6300(Lcom/google/android/talk/ChatView;)V

    .line 2769
    return-void
.end method
