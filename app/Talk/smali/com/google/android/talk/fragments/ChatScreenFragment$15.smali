.class Lcom/google/android/talk/fragments/ChatScreenFragment$15;
.super Ljava/lang/Object;
.source "ChatScreenFragment.java"

# interfaces
.implements Lcom/google/android/common/SwipeySwitcher$ViewRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/ChatScreenFragment;->onResume()V
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
    .line 1464
    iput-object p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$15;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/view/View;)Z
    .locals 3
    .parameter "v"

    .prologue
    .line 1466
    move-object v0, p1

    check-cast v0, Lcom/google/android/talk/ChatView;

    move-object v1, v0

    .line 1467
    .local v1, cv:Lcom/google/android/talk/ChatView;
    invoke-virtual {v1}, Lcom/google/android/talk/ChatView;->onActivityResume()V

    .line 1468
    const/4 v2, 0x1

    return v2
.end method
