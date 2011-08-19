.class Lcom/google/android/talk/fragments/ChatScreenFragment$7;
.super Ljava/lang/Object;
.source "ChatScreenFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/ChatScreenFragment;->setupInputFieldAndSendButton(Landroid/view/View;)V
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
    .line 1083
    iput-object p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$7;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 1085
    if-eqz p3, :cond_0

    .line 1086
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1087
    const/4 v0, 0x0

    .line 1092
    :goto_0
    return v0

    .line 1091
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$7;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$3100(Lcom/google/android/talk/fragments/ChatScreenFragment;)V

    .line 1092
    const/4 v0, 0x1

    goto :goto_0
.end method
