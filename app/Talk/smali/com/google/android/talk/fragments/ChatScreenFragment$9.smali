.class Lcom/google/android/talk/fragments/ChatScreenFragment$9;
.super Ljava/lang/Object;
.source "ChatScreenFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 1112
    iput-object p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$9;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 1120
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 1114
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 1116
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$9;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$3300(Lcom/google/android/talk/fragments/ChatScreenFragment;)V

    .line 1117
    return-void
.end method
