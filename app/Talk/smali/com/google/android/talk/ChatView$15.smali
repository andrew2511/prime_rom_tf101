.class Lcom/google/android/talk/ChatView$15;
.super Ljava/lang/Object;
.source "ChatView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/ChatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/ChatView;


# direct methods
.method constructor <init>(Lcom/google/android/talk/ChatView;)V
    .locals 0
    .parameter

    .prologue
    .line 2734
    iput-object p1, p0, Lcom/google/android/talk/ChatView$15;->this$0:Lcom/google/android/talk/ChatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 2737
    iget-object v0, p0, Lcom/google/android/talk/ChatView$15;->this$0:Lcom/google/android/talk/ChatView;

    invoke-virtual {v0}, Lcom/google/android/talk/ChatView;->startVideoChat()V

    .line 2738
    return-void
.end method
