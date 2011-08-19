.class Lcom/asus/dm/SystemUpdateActivity$1;
.super Landroid/os/Handler;
.source "SystemUpdateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/dm/SystemUpdateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/dm/SystemUpdateActivity;


# direct methods
.method constructor <init>(Lcom/asus/dm/SystemUpdateActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/asus/dm/SystemUpdateActivity$1;->this$0:Lcom/asus/dm/SystemUpdateActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "pMsg"

    .prologue
    .line 132
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 134
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 147
    :goto_0
    return-void

    .line 136
    :pswitch_0
    iget-object v0, p0, Lcom/asus/dm/SystemUpdateActivity$1;->this$0:Lcom/asus/dm/SystemUpdateActivity;

    invoke-static {v0}, Lcom/asus/dm/SystemUpdateActivity;->access$000(Lcom/asus/dm/SystemUpdateActivity;)V

    goto :goto_0

    .line 140
    :pswitch_1
    iget-object v0, p0, Lcom/asus/dm/SystemUpdateActivity$1;->this$0:Lcom/asus/dm/SystemUpdateActivity;

    invoke-static {v0}, Lcom/asus/dm/SystemUpdateActivity;->access$100(Lcom/asus/dm/SystemUpdateActivity;)V

    goto :goto_0

    .line 144
    :pswitch_2
    iget-object v0, p0, Lcom/asus/dm/SystemUpdateActivity$1;->this$0:Lcom/asus/dm/SystemUpdateActivity;

    invoke-static {v0}, Lcom/asus/dm/SystemUpdateActivity;->access$200(Lcom/asus/dm/SystemUpdateActivity;)V

    goto :goto_0

    .line 134
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
