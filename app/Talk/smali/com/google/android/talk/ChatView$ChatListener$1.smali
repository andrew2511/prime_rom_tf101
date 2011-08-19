.class Lcom/google/android/talk/ChatView$ChatListener$1;
.super Ljava/lang/Object;
.source "ChatView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/ChatView$ChatListener;->participantJoined(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/talk/ChatView$ChatListener;


# direct methods
.method constructor <init>(Lcom/google/android/talk/ChatView$ChatListener;)V
    .locals 0
    .parameter

    .prologue
    .line 2527
    iput-object p1, p0, Lcom/google/android/talk/ChatView$ChatListener$1;->this$1:Lcom/google/android/talk/ChatView$ChatListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2530
    iget-object v0, p0, Lcom/google/android/talk/ChatView$ChatListener$1;->this$1:Lcom/google/android/talk/ChatView$ChatListener;

    iget-object v0, v0, Lcom/google/android/talk/ChatView$ChatListener;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$2700(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/ChatView$ChatListener$1;->this$1:Lcom/google/android/talk/ChatView$ChatListener;

    iget-object v1, v1, Lcom/google/android/talk/ChatView$ChatListener;->this$0:Lcom/google/android/talk/ChatView;

    invoke-interface {v0, v1}, Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;->update(Landroid/view/View;)V

    .line 2531
    return-void
.end method
