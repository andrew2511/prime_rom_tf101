.class Lcom/google/android/talk/fragments/ChatScreenFragment$21$1;
.super Ljava/lang/Object;
.source "ChatScreenFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/ChatScreenFragment$21;->onCallStateUpdate(Ljava/lang/String;Lcom/google/android/talk/videochat/CallState;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$21;

.field final synthetic val$callState:Lcom/google/android/talk/videochat/CallState;

.field final synthetic val$remoteBareJid:Ljava/lang/String;

.field final synthetic val$requestReply:Z


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/ChatScreenFragment$21;Ljava/lang/String;Lcom/google/android/talk/videochat/CallState;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2112
    iput-object p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$21$1;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$21;

    iput-object p2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$21$1;->val$remoteBareJid:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$21$1;->val$callState:Lcom/google/android/talk/videochat/CallState;

    iput-boolean p4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$21$1;->val$requestReply:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2114
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$21$1;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$21;

    iget-object v1, v1, Lcom/google/android/talk/fragments/ChatScreenFragment$21;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$1100(Lcom/google/android/talk/fragments/ChatScreenFragment;)Lcom/google/android/talk/ChatView;

    move-result-object v0

    .line 2115
    .local v0, cv:Lcom/google/android/talk/ChatView;
    if-eqz v0, :cond_0

    .line 2116
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$21$1;->val$remoteBareJid:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$21$1;->val$callState:Lcom/google/android/talk/videochat/CallState;

    iget-boolean v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$21$1;->val$requestReply:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/talk/ChatView;->onCallStateUpdate(Ljava/lang/String;Lcom/google/android/talk/videochat/CallState;Z)V

    .line 2118
    :cond_0
    return-void
.end method
