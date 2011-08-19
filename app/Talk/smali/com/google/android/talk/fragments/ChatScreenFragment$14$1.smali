.class Lcom/google/android/talk/fragments/ChatScreenFragment$14$1;
.super Ljava/lang/Object;
.source "ChatScreenFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/ChatScreenFragment$14;->onDisconnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$14;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/ChatScreenFragment$14;)V
    .locals 0
    .parameter

    .prologue
    .line 1434
    iput-object p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$14$1;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 1436
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$14$1;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$14;

    iget-object v2, v2, Lcom/google/android/talk/fragments/ChatScreenFragment$14;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v2}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$1100(Lcom/google/android/talk/fragments/ChatScreenFragment;)Lcom/google/android/talk/ChatView;

    move-result-object v7

    .line 1437
    .local v7, cv:Lcom/google/android/talk/ChatView;
    if-eqz v7, :cond_0

    .line 1438
    invoke-virtual {v7}, Lcom/google/android/talk/ChatView;->getContact()Ljava/lang/String;

    move-result-object v1

    .line 1439
    .local v1, contact:Ljava/lang/String;
    new-instance v0, Lcom/google/android/talk/videochat/CallState;

    const/16 v2, 0xd

    move v4, v3

    move v5, v3

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/talk/videochat/CallState;-><init>(Ljava/lang/String;IZZIZ)V

    .line 1441
    .local v0, c:Lcom/google/android/talk/videochat/CallState;
    invoke-virtual {v7, v1, v0, v3}, Lcom/google/android/talk/ChatView;->onCallStateUpdate(Ljava/lang/String;Lcom/google/android/talk/videochat/CallState;Z)V

    .line 1443
    .end local v0           #c:Lcom/google/android/talk/videochat/CallState;
    .end local v1           #contact:Ljava/lang/String;
    :cond_0
    return-void
.end method
