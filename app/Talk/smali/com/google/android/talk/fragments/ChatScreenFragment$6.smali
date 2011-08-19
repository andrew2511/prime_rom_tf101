.class Lcom/google/android/talk/fragments/ChatScreenFragment$6;
.super Ljava/lang/Object;
.source "ChatScreenFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 1073
    iput-object p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$6;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1075
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1077
    .local v0, id:I
    const v1, 0x7f100054

    if-ne v0, v1, :cond_0

    .line 1078
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$6;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$3100(Lcom/google/android/talk/fragments/ChatScreenFragment;)V

    .line 1080
    :cond_0
    return-void
.end method
