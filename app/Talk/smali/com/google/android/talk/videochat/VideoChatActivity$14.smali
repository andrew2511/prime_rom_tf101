.class Lcom/google/android/talk/videochat/VideoChatActivity$14;
.super Ljava/lang/Object;
.source "VideoChatActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/videochat/VideoChatActivity;->setupOverlayClickLogic()V
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
    .line 1173
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$14;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 1176
    const/4 v0, 0x0

    .line 1177
    .local v0, dismissedTextOverlay:Z
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$14;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-static {v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$700(Lcom/google/android/talk/videochat/VideoChatActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 1178
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$14;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-static {v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$1700(Lcom/google/android/talk/videochat/VideoChatActivity;)V

    .line 1179
    const/4 v0, 0x1

    .line 1182
    :cond_0
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$14;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-static {v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$1800(Lcom/google/android/talk/videochat/VideoChatActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    .line 1183
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$14;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-static {v1, v3}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$1900(Lcom/google/android/talk/videochat/VideoChatActivity;Z)V

    .line 1187
    :cond_1
    :goto_0
    return-void

    .line 1184
    :cond_2
    if-nez v0, :cond_1

    .line 1185
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$14;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-static {v1, v3}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$100(Lcom/google/android/talk/videochat/VideoChatActivity;Z)V

    goto :goto_0
.end method
