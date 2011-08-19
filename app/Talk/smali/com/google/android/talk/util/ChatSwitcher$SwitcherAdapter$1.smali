.class Lcom/google/android/talk/util/ChatSwitcher$SwitcherAdapter$1;
.super Landroid/database/ContentObserver;
.source "ChatSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/util/ChatSwitcher$SwitcherAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/talk/util/ChatSwitcher$SwitcherAdapter;


# direct methods
.method constructor <init>(Lcom/google/android/talk/util/ChatSwitcher$SwitcherAdapter;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/google/android/talk/util/ChatSwitcher$SwitcherAdapter$1;->this$1:Lcom/google/android/talk/util/ChatSwitcher$SwitcherAdapter;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 130
    const-string v0, "talk"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/google/android/talk/util/ChatSwitcher$SwitcherAdapter$1;->this$1:Lcom/google/android/talk/util/ChatSwitcher$SwitcherAdapter;

    iget-object v0, v0, Lcom/google/android/talk/util/ChatSwitcher$SwitcherAdapter;->this$0:Lcom/google/android/talk/util/ChatSwitcher;

    const-string v1, "SwitcherAdapter.mContentObserver.onChange"

    invoke-static {v0, v1}, Lcom/google/android/talk/util/ChatSwitcher;->access$000(Lcom/google/android/talk/util/ChatSwitcher;Ljava/lang/String;)V

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/util/ChatSwitcher$SwitcherAdapter$1;->this$1:Lcom/google/android/talk/util/ChatSwitcher$SwitcherAdapter;

    iget-object v0, v0, Lcom/google/android/talk/util/ChatSwitcher$SwitcherAdapter;->this$0:Lcom/google/android/talk/util/ChatSwitcher;

    invoke-virtual {v0}, Lcom/google/android/talk/util/ChatSwitcher;->requery()V

    .line 134
    return-void
.end method
