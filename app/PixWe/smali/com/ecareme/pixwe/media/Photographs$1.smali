.class Lcom/ecareme/pixwe/media/Photographs$1;
.super Landroid/os/Handler;
.source "Photographs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/pixwe/media/Photographs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/media/Photographs;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/media/Photographs;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/media/Photographs$1;->this$0:Lcom/ecareme/pixwe/media/Photographs;

    .line 61
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 64
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 77
    :goto_0
    return-void

    .line 66
    :pswitch_0
    iget-object v1, p0, Lcom/ecareme/pixwe/media/Photographs$1;->this$0:Lcom/ecareme/pixwe/media/Photographs;

    const v2, 0x7f060012

    invoke-virtual {v1, v2}, Lcom/ecareme/pixwe/media/Photographs;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 67
    .local v0, c:Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/ecareme/pixwe/media/Photographs$1;->this$0:Lcom/ecareme/pixwe/media/Photographs;

    iget-object v2, p0, Lcom/ecareme/pixwe/media/Photographs$1;->this$0:Lcom/ecareme/pixwe/media/Photographs;

    const-string v3, ""

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v2, v3, v0, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ecareme/pixwe/media/Photographs;->access$0(Lcom/ecareme/pixwe/media/Photographs;Landroid/app/ProgressDialog;)V

    goto :goto_0

    .line 71
    .end local v0           #c:Ljava/lang/CharSequence;
    :pswitch_1
    iget-object v1, p0, Lcom/ecareme/pixwe/media/Photographs$1;->this$0:Lcom/ecareme/pixwe/media/Photographs;

    invoke-static {v1}, Lcom/ecareme/pixwe/media/Photographs;->access$1(Lcom/ecareme/pixwe/media/Photographs;)V

    .line 72
    iget-object v1, p0, Lcom/ecareme/pixwe/media/Photographs$1;->this$0:Lcom/ecareme/pixwe/media/Photographs;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/ecareme/pixwe/media/Photographs;->setResult(I)V

    .line 73
    iget-object v1, p0, Lcom/ecareme/pixwe/media/Photographs$1;->this$0:Lcom/ecareme/pixwe/media/Photographs;

    invoke-virtual {v1}, Lcom/ecareme/pixwe/media/Photographs;->finish()V

    goto :goto_0

    .line 64
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
