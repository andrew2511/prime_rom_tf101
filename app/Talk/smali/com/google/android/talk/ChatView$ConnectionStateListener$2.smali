.class Lcom/google/android/talk/ChatView$ConnectionStateListener$2;
.super Ljava/lang/Object;
.source "ChatView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/ChatView$ConnectionStateListener;->connectionStateChanged(Lcom/google/android/gtalkservice/ConnectionState;Lcom/google/android/gtalkservice/ConnectionError;JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/talk/ChatView$ConnectionStateListener;


# direct methods
.method constructor <init>(Lcom/google/android/talk/ChatView$ConnectionStateListener;)V
    .locals 0
    .parameter

    .prologue
    .line 2123
    iput-object p1, p0, Lcom/google/android/talk/ChatView$ConnectionStateListener$2;->this$1:Lcom/google/android/talk/ChatView$ConnectionStateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2126
    iget-object v0, p0, Lcom/google/android/talk/ChatView$ConnectionStateListener$2;->this$1:Lcom/google/android/talk/ChatView$ConnectionStateListener;

    iget-object v0, v0, Lcom/google/android/talk/ChatView$ConnectionStateListener;->this$0:Lcom/google/android/talk/ChatView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/talk/ChatView;->access$5402(Lcom/google/android/talk/ChatView;Z)Z

    .line 2127
    iget-object v0, p0, Lcom/google/android/talk/ChatView$ConnectionStateListener$2;->this$1:Lcom/google/android/talk/ChatView$ConnectionStateListener;

    iget-object v0, v0, Lcom/google/android/talk/ChatView$ConnectionStateListener;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$2800(Lcom/google/android/talk/ChatView;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 2128
    iget-object v0, p0, Lcom/google/android/talk/ChatView$ConnectionStateListener$2;->this$1:Lcom/google/android/talk/ChatView$ConnectionStateListener;

    iget-object v0, v0, Lcom/google/android/talk/ChatView$ConnectionStateListener;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$900(Lcom/google/android/talk/ChatView;)V

    .line 2129
    iget-object v0, p0, Lcom/google/android/talk/ChatView$ConnectionStateListener$2;->this$1:Lcom/google/android/talk/ChatView$ConnectionStateListener;

    iget-object v0, v0, Lcom/google/android/talk/ChatView$ConnectionStateListener;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$2600(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/ChatView$MessageBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/talk/ChatView$MessageBar;->update()V

    .line 2130
    return-void
.end method
