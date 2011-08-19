.class Lcom/infraware/registration/UserRegistrationActivity$1;
.super Landroid/os/Handler;
.source "UserRegistrationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/registration/UserRegistrationActivity;->SetEventHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/registration/UserRegistrationActivity;


# direct methods
.method constructor <init>(Lcom/infraware/registration/UserRegistrationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/registration/UserRegistrationActivity$1;->this$0:Lcom/infraware/registration/UserRegistrationActivity;

    .line 136
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/infraware/registration/UserRegistrationActivity$1;)Lcom/infraware/registration/UserRegistrationActivity;
    .locals 1
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lcom/infraware/registration/UserRegistrationActivity$1;->this$0:Lcom/infraware/registration/UserRegistrationActivity;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/16 v2, 0xbb8

    .line 138
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 140
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 288
    :goto_0
    return-void

    .line 142
    :sswitch_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/infraware/registration/UserRegistrationActivity$1$1;

    invoke-direct {v1, p0}, Lcom/infraware/registration/UserRegistrationActivity$1$1;-><init>(Lcom/infraware/registration/UserRegistrationActivity$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 160
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 165
    :sswitch_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/infraware/registration/UserRegistrationActivity$1$2;

    invoke-direct {v1, p0}, Lcom/infraware/registration/UserRegistrationActivity$1$2;-><init>(Lcom/infraware/registration/UserRegistrationActivity$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 219
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 224
    :sswitch_2
    iget-object v0, p0, Lcom/infraware/registration/UserRegistrationActivity$1;->this$0:Lcom/infraware/registration/UserRegistrationActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/infraware/registration/UserRegistrationActivity;->access$6(Lcom/infraware/registration/UserRegistrationActivity;Z)V

    .line 225
    iget-object v0, p0, Lcom/infraware/registration/UserRegistrationActivity$1;->this$0:Lcom/infraware/registration/UserRegistrationActivity;

    invoke-virtual {v0}, Lcom/infraware/registration/UserRegistrationActivity;->finish()V

    goto :goto_0

    .line 229
    :sswitch_3
    iget-object v0, p0, Lcom/infraware/registration/UserRegistrationActivity$1;->this$0:Lcom/infraware/registration/UserRegistrationActivity;

    invoke-static {v0}, Lcom/infraware/registration/UserRegistrationActivity;->access$7(Lcom/infraware/registration/UserRegistrationActivity;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 270
    :goto_1
    iget-object v0, p0, Lcom/infraware/registration/UserRegistrationActivity$1;->this$0:Lcom/infraware/registration/UserRegistrationActivity;

    const/16 v1, 0xfa0

    invoke-virtual {v0, v1}, Lcom/infraware/registration/UserRegistrationActivity;->showDialog(I)V

    goto :goto_0

    .line 231
    :pswitch_0
    iget-object v0, p0, Lcom/infraware/registration/UserRegistrationActivity$1;->this$0:Lcom/infraware/registration/UserRegistrationActivity;

    const v1, 0x7f0a0371

    invoke-static {v0, v1}, Lcom/infraware/registration/UserRegistrationActivity;->access$8(Lcom/infraware/registration/UserRegistrationActivity;I)V

    goto :goto_1

    .line 235
    :pswitch_1
    iget-object v0, p0, Lcom/infraware/registration/UserRegistrationActivity$1;->this$0:Lcom/infraware/registration/UserRegistrationActivity;

    const v1, 0x7f0a0372

    invoke-static {v0, v1}, Lcom/infraware/registration/UserRegistrationActivity;->access$8(Lcom/infraware/registration/UserRegistrationActivity;I)V

    goto :goto_1

    .line 239
    :pswitch_2
    iget-object v0, p0, Lcom/infraware/registration/UserRegistrationActivity$1;->this$0:Lcom/infraware/registration/UserRegistrationActivity;

    const v1, 0x7f0a0373

    invoke-static {v0, v1}, Lcom/infraware/registration/UserRegistrationActivity;->access$8(Lcom/infraware/registration/UserRegistrationActivity;I)V

    goto :goto_1

    .line 243
    :pswitch_3
    iget-object v0, p0, Lcom/infraware/registration/UserRegistrationActivity$1;->this$0:Lcom/infraware/registration/UserRegistrationActivity;

    const v1, 0x7f0a0374

    invoke-static {v0, v1}, Lcom/infraware/registration/UserRegistrationActivity;->access$8(Lcom/infraware/registration/UserRegistrationActivity;I)V

    goto :goto_1

    .line 247
    :pswitch_4
    iget-object v0, p0, Lcom/infraware/registration/UserRegistrationActivity$1;->this$0:Lcom/infraware/registration/UserRegistrationActivity;

    const v1, 0x7f0a0375

    invoke-static {v0, v1}, Lcom/infraware/registration/UserRegistrationActivity;->access$8(Lcom/infraware/registration/UserRegistrationActivity;I)V

    goto :goto_1

    .line 251
    :pswitch_5
    iget-object v0, p0, Lcom/infraware/registration/UserRegistrationActivity$1;->this$0:Lcom/infraware/registration/UserRegistrationActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/infraware/registration/UserRegistrationActivity;->access$4(Lcom/infraware/registration/UserRegistrationActivity;Z)V

    .line 252
    iget-object v0, p0, Lcom/infraware/registration/UserRegistrationActivity$1;->this$0:Lcom/infraware/registration/UserRegistrationActivity;

    iget-object v0, v0, Lcom/infraware/registration/UserRegistrationActivity;->mEventHandler:Landroid/os/Handler;

    const/16 v1, 0x44c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 264
    :pswitch_6
    iget-object v0, p0, Lcom/infraware/registration/UserRegistrationActivity$1;->this$0:Lcom/infraware/registration/UserRegistrationActivity;

    const v1, 0x7f0a0376

    invoke-static {v0, v1}, Lcom/infraware/registration/UserRegistrationActivity;->access$8(Lcom/infraware/registration/UserRegistrationActivity;I)V

    goto :goto_1

    .line 274
    :sswitch_4
    iget-object v0, p0, Lcom/infraware/registration/UserRegistrationActivity$1;->this$0:Lcom/infraware/registration/UserRegistrationActivity;

    const v1, 0x7f0a0377

    invoke-static {v0, v1}, Lcom/infraware/registration/UserRegistrationActivity;->access$8(Lcom/infraware/registration/UserRegistrationActivity;I)V

    .line 275
    iget-object v0, p0, Lcom/infraware/registration/UserRegistrationActivity$1;->this$0:Lcom/infraware/registration/UserRegistrationActivity;

    invoke-virtual {v0, v2}, Lcom/infraware/registration/UserRegistrationActivity;->showDialog(I)V

    goto/16 :goto_0

    .line 279
    :sswitch_5
    iget-object v0, p0, Lcom/infraware/registration/UserRegistrationActivity$1;->this$0:Lcom/infraware/registration/UserRegistrationActivity;

    const v1, 0x7f0a0378

    invoke-static {v0, v1}, Lcom/infraware/registration/UserRegistrationActivity;->access$8(Lcom/infraware/registration/UserRegistrationActivity;I)V

    .line 280
    iget-object v0, p0, Lcom/infraware/registration/UserRegistrationActivity$1;->this$0:Lcom/infraware/registration/UserRegistrationActivity;

    invoke-virtual {v0, v2}, Lcom/infraware/registration/UserRegistrationActivity;->showDialog(I)V

    goto/16 :goto_0

    .line 284
    :sswitch_6
    iget-object v0, p0, Lcom/infraware/registration/UserRegistrationActivity$1;->this$0:Lcom/infraware/registration/UserRegistrationActivity;

    invoke-virtual {v0}, Lcom/infraware/registration/UserRegistrationActivity;->finish()V

    goto/16 :goto_0

    .line 140
    nop

    :sswitch_data_0
    .sparse-switch
        0x384 -> :sswitch_0
        0x3e8 -> :sswitch_1
        0x44c -> :sswitch_2
        0x4b0 -> :sswitch_3
        0x514 -> :sswitch_4
        0x578 -> :sswitch_5
        0x5dc -> :sswitch_6
    .end sparse-switch

    .line 229
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method
