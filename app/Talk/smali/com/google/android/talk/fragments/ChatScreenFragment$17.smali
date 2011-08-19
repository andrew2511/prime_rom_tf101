.class Lcom/google/android/talk/fragments/ChatScreenFragment$17;
.super Ljava/lang/Object;
.source "ChatScreenFragment.java"

# interfaces
.implements Lcom/google/android/common/SwipeySwitcher$ViewRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/ChatScreenFragment;->onDestroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/ChatScreenFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1549
    iput-object p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$17;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/view/View;)Z
    .locals 4
    .parameter "v"

    .prologue
    .line 1551
    move-object v0, p1

    check-cast v0, Lcom/google/android/talk/ChatView;

    move-object v2, v0

    .line 1552
    .local v2, cv:Lcom/google/android/talk/ChatView;
    invoke-virtual {v2}, Lcom/google/android/talk/ChatView;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 1553
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    .line 1554
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1556
    :cond_0
    const/4 v3, 0x1

    return v3
.end method
