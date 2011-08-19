.class Lcom/ecareme/pixwe/media/Gallery$1;
.super Landroid/os/Handler;
.source "Gallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/pixwe/media/Gallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/media/Gallery;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/media/Gallery;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/media/Gallery$1;->this$0:Lcom/ecareme/pixwe/media/Gallery;

    .line 65
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 68
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 76
    :goto_0
    return-void

    .line 70
    :pswitch_0
    iget-object v0, p0, Lcom/ecareme/pixwe/media/Gallery$1;->this$0:Lcom/ecareme/pixwe/media/Gallery;

    invoke-static {v0}, Lcom/ecareme/pixwe/media/Gallery;->access$0(Lcom/ecareme/pixwe/media/Gallery;)V

    goto :goto_0

    .line 73
    :pswitch_1
    iget-object v0, p0, Lcom/ecareme/pixwe/media/Gallery$1;->this$0:Lcom/ecareme/pixwe/media/Gallery;

    invoke-static {v0}, Lcom/ecareme/pixwe/media/Gallery;->access$1(Lcom/ecareme/pixwe/media/Gallery;)V

    goto :goto_0

    .line 68
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
