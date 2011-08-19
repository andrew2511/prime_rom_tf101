.class Lcom/nuance/xt9/input/IME$10;
.super Landroid/os/Handler;
.source "IME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/xt9/input/IME;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/xt9/input/IME;


# direct methods
.method constructor <init>(Lcom/nuance/xt9/input/IME;)V
    .locals 0
    .parameter

    .prologue
    .line 2089
    iput-object p1, p0, Lcom/nuance/xt9/input/IME$10;->this$0:Lcom/nuance/xt9/input/IME;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 2093
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 2134
    :goto_0
    return-void

    .line 2095
    :pswitch_0
    iget-object v0, p0, Lcom/nuance/xt9/input/IME$10;->this$0:Lcom/nuance/xt9/input/IME;

    iget-object v1, p0, Lcom/nuance/xt9/input/IME$10;->this$0:Lcom/nuance/xt9/input/IME;

    iget-object v1, v1, Lcom/nuance/xt9/input/IME;->mInputFieldInfo:Lcom/nuance/xt9/input/InputFieldInfo;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/nuance/xt9/input/IME;->access$600(Lcom/nuance/xt9/input/IME;Lcom/nuance/xt9/input/InputFieldInfo;ZZ)V

    goto :goto_0

    .line 2099
    :pswitch_1
    iget-object v0, p0, Lcom/nuance/xt9/input/IME$10;->this$0:Lcom/nuance/xt9/input/IME;

    invoke-static {v0}, Lcom/nuance/xt9/input/IME;->access$700(Lcom/nuance/xt9/input/IME;)V

    goto :goto_0

    .line 2103
    :pswitch_2
    iget-object v0, p0, Lcom/nuance/xt9/input/IME$10;->this$0:Lcom/nuance/xt9/input/IME;

    invoke-static {v0}, Lcom/nuance/xt9/input/IME;->access$800(Lcom/nuance/xt9/input/IME;)V

    goto :goto_0

    .line 2107
    :pswitch_3
    iget-object v0, p0, Lcom/nuance/xt9/input/IME$10;->this$0:Lcom/nuance/xt9/input/IME;

    invoke-virtual {v0}, Lcom/nuance/xt9/input/IME;->showKeyboardLayoutOption()V

    goto :goto_0

    .line 2111
    :pswitch_4
    iget-object v0, p0, Lcom/nuance/xt9/input/IME$10;->this$0:Lcom/nuance/xt9/input/IME;

    invoke-static {v0}, Lcom/nuance/xt9/input/IME;->access$900(Lcom/nuance/xt9/input/IME;)V

    goto :goto_0

    .line 2115
    :pswitch_5
    iget-object v0, p0, Lcom/nuance/xt9/input/IME$10;->this$0:Lcom/nuance/xt9/input/IME;

    invoke-static {v0}, Lcom/nuance/xt9/input/IME;->access$300(Lcom/nuance/xt9/input/IME;)V

    goto :goto_0

    .line 2119
    :pswitch_6
    iget-object v0, p0, Lcom/nuance/xt9/input/IME$10;->this$0:Lcom/nuance/xt9/input/IME;

    invoke-static {v0}, Lcom/nuance/xt9/input/IME;->access$1000(Lcom/nuance/xt9/input/IME;)V

    goto :goto_0

    .line 2123
    :pswitch_7
    iget-object v0, p0, Lcom/nuance/xt9/input/IME$10;->this$0:Lcom/nuance/xt9/input/IME;

    invoke-static {v0}, Lcom/nuance/xt9/input/IME;->access$200(Lcom/nuance/xt9/input/IME;)V

    goto :goto_0

    .line 2127
    :pswitch_8
    iget-object v0, p0, Lcom/nuance/xt9/input/IME$10;->this$0:Lcom/nuance/xt9/input/IME;

    const v1, 0x7f080057

    invoke-static {v0, v1}, Lcom/nuance/xt9/input/IME;->access$1100(Lcom/nuance/xt9/input/IME;I)V

    goto :goto_0

    .line 2131
    :pswitch_9
    iget-object v0, p0, Lcom/nuance/xt9/input/IME$10;->this$0:Lcom/nuance/xt9/input/IME;

    const v1, 0x7f080058

    invoke-static {v0, v1}, Lcom/nuance/xt9/input/IME;->access$1100(Lcom/nuance/xt9/input/IME;I)V

    goto :goto_0

    .line 2093
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
