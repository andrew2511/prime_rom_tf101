.class Lcom/asus/dm/DMClient$1;
.super Landroid/os/Handler;
.source "DMClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/dm/DMClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/dm/DMClient;


# direct methods
.method constructor <init>(Lcom/asus/dm/DMClient;)V
    .locals 0
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/asus/dm/DMClient$1;->this$0:Lcom/asus/dm/DMClient;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "pMsg"

    .prologue
    .line 230
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 232
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 248
    .end local p0
    :goto_0
    return-void

    .line 234
    .restart local p0
    :pswitch_0
    iget-object v0, p0, Lcom/asus/dm/DMClient$1;->this$0:Lcom/asus/dm/DMClient;

    invoke-static {v0}, Lcom/asus/dm/DMClient;->access$000(Lcom/asus/dm/DMClient;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 238
    :pswitch_1
    iget-object v0, p0, Lcom/asus/dm/DMClient$1;->this$0:Lcom/asus/dm/DMClient;

    invoke-static {v0}, Lcom/asus/dm/DMClient;->access$000(Lcom/asus/dm/DMClient;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 242
    :pswitch_2
    iget-object v0, p0, Lcom/asus/dm/DMClient$1;->this$0:Lcom/asus/dm/DMClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/asus/dm/DMClient;->access$100(Lcom/asus/dm/DMClient;II)V

    goto :goto_0

    .line 245
    :pswitch_3
    iget-object v0, p0, Lcom/asus/dm/DMClient$1;->this$0:Lcom/asus/dm/DMClient;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/asus/dm/DMClient;->access$200(Lcom/asus/dm/DMClient;Ljava/lang/String;)V

    goto :goto_0

    .line 232
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
