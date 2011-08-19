.class Lcom/ecareme/pixwe/view/navigate/UploadActivity$1;
.super Landroid/os/Handler;
.source "UploadActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/pixwe/view/navigate/UploadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/view/navigate/UploadActivity;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/view/navigate/UploadActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/view/navigate/UploadActivity$1;->this$0:Lcom/ecareme/pixwe/view/navigate/UploadActivity;

    .line 59
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 62
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 70
    :goto_0
    return-void

    .line 64
    :pswitch_0
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/UploadActivity$1;->this$0:Lcom/ecareme/pixwe/view/navigate/UploadActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->access$0(Lcom/ecareme/pixwe/view/navigate/UploadActivity;)V

    goto :goto_0

    .line 67
    :pswitch_1
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/UploadActivity$1;->this$0:Lcom/ecareme/pixwe/view/navigate/UploadActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->access$1(Lcom/ecareme/pixwe/view/navigate/UploadActivity;)V

    goto :goto_0

    .line 62
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
