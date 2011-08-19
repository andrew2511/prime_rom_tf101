.class Lcom/google/android/talk/fragments/ChatScreenFragment$1$1;
.super Ljava/lang/Object;
.source "ChatScreenFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/ChatScreenFragment$1;->handleMenuItem(Lcom/google/android/talk/ChatView;Landroid/view/MenuItem;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$1;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/ChatScreenFragment$1;)V
    .locals 0
    .parameter

    .prologue
    .line 556
    iput-object p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1$1;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 558
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1$1;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$1;

    iget-object v2, v2, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v2}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$900(Lcom/google/android/talk/fragments/ChatScreenFragment;)Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 559
    .local v0, t:[Ljava/lang/String;
    aget-object v1, v0, p2

    .line 560
    .local v1, text:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1$1;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$1;

    iget-object v2, v2, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v2}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$200(Lcom/google/android/talk/fragments/ChatScreenFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1$1;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$1;

    iget-object v3, v3, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v3}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$200(Lcom/google/android/talk/fragments/ChatScreenFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v3

    invoke-interface {v2, v3, v1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 561
    return-void
.end method
