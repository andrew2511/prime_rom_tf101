.class Lcom/google/android/talk/ChatView$14;
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
    .line 2727
    iput-object p1, p0, Lcom/google/android/talk/ChatView$14;->this$0:Lcom/google/android/talk/ChatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 2730
    iget-object v0, p0, Lcom/google/android/talk/ChatView$14;->this$0:Lcom/google/android/talk/ChatView;

    iget-object v1, p0, Lcom/google/android/talk/ChatView$14;->this$0:Lcom/google/android/talk/ChatView;

    invoke-virtual {v1}, Lcom/google/android/talk/ChatView;->isOffTheRecord()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/talk/ChatView;->goOffTheRecord(Z)V

    .line 2731
    return-void

    .line 2730
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
