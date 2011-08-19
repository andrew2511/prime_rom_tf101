.class Lcom/google/android/talk/util/ChatSwitcher$1;
.super Ljava/lang/Object;
.source "ChatSwitcher.java"

# interfaces
.implements Lcom/google/android/talk/util/ChatSwitcher$OnQueryCompleteRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/util/ChatSwitcher;->startQuery()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/util/ChatSwitcher;


# direct methods
.method constructor <init>(Lcom/google/android/talk/util/ChatSwitcher;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/google/android/talk/util/ChatSwitcher$1;->this$0:Lcom/google/android/talk/util/ChatSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Landroid/database/Cursor;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/talk/util/ChatSwitcher$1;->this$0:Lcom/google/android/talk/util/ChatSwitcher;

    iget-object v0, v0, Lcom/google/android/talk/util/ChatSwitcher;->mSwitcherAdapter:Lcom/google/android/talk/util/ChatSwitcher$SwitcherAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/talk/util/ChatSwitcher$SwitcherAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 84
    return-void
.end method
