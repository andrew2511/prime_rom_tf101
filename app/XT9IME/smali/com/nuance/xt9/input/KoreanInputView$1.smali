.class Lcom/nuance/xt9/input/KoreanInputView$1;
.super Landroid/os/Handler;
.source "KoreanInputView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/xt9/input/KoreanInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/xt9/input/KoreanInputView;


# direct methods
.method constructor <init>(Lcom/nuance/xt9/input/KoreanInputView;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/nuance/xt9/input/KoreanInputView$1;->this$0:Lcom/nuance/xt9/input/KoreanInputView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 50
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 58
    :goto_0
    return-void

    .line 52
    :sswitch_0
    iget-object v0, p0, Lcom/nuance/xt9/input/KoreanInputView$1;->this$0:Lcom/nuance/xt9/input/KoreanInputView;

    invoke-static {v0}, Lcom/nuance/xt9/input/KoreanInputView;->access$000(Lcom/nuance/xt9/input/KoreanInputView;)V

    goto :goto_0

    .line 55
    :sswitch_1
    iget-object v0, p0, Lcom/nuance/xt9/input/KoreanInputView$1;->this$0:Lcom/nuance/xt9/input/KoreanInputView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nuance/xt9/input/KoreanInputView;->access$100(Lcom/nuance/xt9/input/KoreanInputView;Z)V

    goto :goto_0

    .line 50
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
    .end sparse-switch
.end method
