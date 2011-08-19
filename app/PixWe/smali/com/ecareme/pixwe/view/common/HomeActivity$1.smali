.class Lcom/ecareme/pixwe/view/common/HomeActivity$1;
.super Landroid/os/Handler;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/pixwe/view/common/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/view/common/HomeActivity;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/view/common/HomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/view/common/HomeActivity$1;->this$0:Lcom/ecareme/pixwe/view/common/HomeActivity;

    .line 62
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 65
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 73
    :goto_0
    return-void

    .line 67
    :pswitch_0
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/HomeActivity$1;->this$0:Lcom/ecareme/pixwe/view/common/HomeActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/common/HomeActivity;->access$0(Lcom/ecareme/pixwe/view/common/HomeActivity;)V

    goto :goto_0

    .line 70
    :pswitch_1
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/HomeActivity$1;->this$0:Lcom/ecareme/pixwe/view/common/HomeActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/common/HomeActivity;->access$1(Lcom/ecareme/pixwe/view/common/HomeActivity;)V

    goto :goto_0

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
