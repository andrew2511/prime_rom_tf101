.class Lcom/google/android/talk/ChatView$MessageBar$2;
.super Ljava/lang/Object;
.source "ChatView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/ChatView$MessageBar;->setMessageBarState(Lcom/google/android/talk/ChatView$VideoChatState;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/talk/ChatView$MessageBar;

.field final synthetic val$bluetoothState:I

.field final synthetic val$forceUpdate:Z

.field final synthetic val$state:Lcom/google/android/talk/ChatView$VideoChatState;


# direct methods
.method constructor <init>(Lcom/google/android/talk/ChatView$MessageBar;Lcom/google/android/talk/ChatView$VideoChatState;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3031
    iput-object p1, p0, Lcom/google/android/talk/ChatView$MessageBar$2;->this$1:Lcom/google/android/talk/ChatView$MessageBar;

    iput-object p2, p0, Lcom/google/android/talk/ChatView$MessageBar$2;->val$state:Lcom/google/android/talk/ChatView$VideoChatState;

    iput p3, p0, Lcom/google/android/talk/ChatView$MessageBar$2;->val$bluetoothState:I

    iput-boolean p4, p0, Lcom/google/android/talk/ChatView$MessageBar$2;->val$forceUpdate:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3034
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageBar$2;->this$1:Lcom/google/android/talk/ChatView$MessageBar;

    invoke-static {v0}, Lcom/google/android/talk/ChatView$MessageBar;->access$6500(Lcom/google/android/talk/ChatView$MessageBar;)Lcom/google/android/talk/ChatView$VideoChatState;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageBar$2;->val$state:Lcom/google/android/talk/ChatView$VideoChatState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageBar$2;->this$1:Lcom/google/android/talk/ChatView$MessageBar;

    iget v0, v0, Lcom/google/android/talk/ChatView$MessageBar;->mBluetoothState:I

    iget v1, p0, Lcom/google/android/talk/ChatView$MessageBar$2;->val$bluetoothState:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/talk/ChatView$MessageBar$2;->val$forceUpdate:Z

    if-eqz v0, :cond_1

    .line 3039
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageBar$2;->this$1:Lcom/google/android/talk/ChatView$MessageBar;

    iget-object v0, v0, Lcom/google/android/talk/ChatView$MessageBar;->this$0:Lcom/google/android/talk/ChatView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMessageBarState: force="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/talk/ChatView$MessageBar$2;->val$forceUpdate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", old="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/talk/ChatView$MessageBar$2;->this$1:Lcom/google/android/talk/ChatView$MessageBar;

    invoke-static {v2}, Lcom/google/android/talk/ChatView$MessageBar;->access$6500(Lcom/google/android/talk/ChatView$MessageBar;)Lcom/google/android/talk/ChatView$VideoChatState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", new="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/talk/ChatView$MessageBar$2;->val$state:Lcom/google/android/talk/ChatView$VideoChatState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", oldBT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/talk/ChatView$MessageBar$2;->this$1:Lcom/google/android/talk/ChatView$MessageBar;

    iget v2, v2, Lcom/google/android/talk/ChatView$MessageBar;->mBluetoothState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newBT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/talk/ChatView$MessageBar$2;->val$bluetoothState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/talk/ChatView;->access$000(Lcom/google/android/talk/ChatView;Ljava/lang/String;)V

    .line 3042
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageBar$2;->this$1:Lcom/google/android/talk/ChatView$MessageBar;

    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageBar$2;->val$state:Lcom/google/android/talk/ChatView$VideoChatState;

    invoke-static {v0, v1}, Lcom/google/android/talk/ChatView$MessageBar;->access$6502(Lcom/google/android/talk/ChatView$MessageBar;Lcom/google/android/talk/ChatView$VideoChatState;)Lcom/google/android/talk/ChatView$VideoChatState;

    .line 3043
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageBar$2;->this$1:Lcom/google/android/talk/ChatView$MessageBar;

    iget v1, p0, Lcom/google/android/talk/ChatView$MessageBar$2;->val$bluetoothState:I

    iput v1, v0, Lcom/google/android/talk/ChatView$MessageBar;->mBluetoothState:I

    .line 3044
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageBar$2;->this$1:Lcom/google/android/talk/ChatView$MessageBar;

    invoke-virtual {v0}, Lcom/google/android/talk/ChatView$MessageBar;->update()V

    .line 3046
    :cond_1
    return-void
.end method
