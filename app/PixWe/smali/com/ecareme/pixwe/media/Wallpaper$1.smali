.class Lcom/ecareme/pixwe/media/Wallpaper$1;
.super Landroid/os/Handler;
.source "Wallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/pixwe/media/Wallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/media/Wallpaper;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/media/Wallpaper;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/media/Wallpaper$1;->this$0:Lcom/ecareme/pixwe/media/Wallpaper;

    .line 59
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 62
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 75
    :goto_0
    return-void

    .line 64
    :pswitch_0
    iget-object v1, p0, Lcom/ecareme/pixwe/media/Wallpaper$1;->this$0:Lcom/ecareme/pixwe/media/Wallpaper;

    const v2, 0x7f060012

    invoke-virtual {v1, v2}, Lcom/ecareme/pixwe/media/Wallpaper;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 65
    .local v0, c:Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/ecareme/pixwe/media/Wallpaper$1;->this$0:Lcom/ecareme/pixwe/media/Wallpaper;

    iget-object v2, p0, Lcom/ecareme/pixwe/media/Wallpaper$1;->this$0:Lcom/ecareme/pixwe/media/Wallpaper;

    const-string v3, ""

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v2, v3, v0, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ecareme/pixwe/media/Wallpaper;->access$0(Lcom/ecareme/pixwe/media/Wallpaper;Landroid/app/ProgressDialog;)V

    goto :goto_0

    .line 69
    .end local v0           #c:Ljava/lang/CharSequence;
    :pswitch_1
    iget-object v1, p0, Lcom/ecareme/pixwe/media/Wallpaper$1;->this$0:Lcom/ecareme/pixwe/media/Wallpaper;

    invoke-static {v1}, Lcom/ecareme/pixwe/media/Wallpaper;->access$1(Lcom/ecareme/pixwe/media/Wallpaper;)V

    .line 70
    iget-object v1, p0, Lcom/ecareme/pixwe/media/Wallpaper$1;->this$0:Lcom/ecareme/pixwe/media/Wallpaper;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/ecareme/pixwe/media/Wallpaper;->setResult(I)V

    .line 71
    iget-object v1, p0, Lcom/ecareme/pixwe/media/Wallpaper$1;->this$0:Lcom/ecareme/pixwe/media/Wallpaper;

    invoke-virtual {v1}, Lcom/ecareme/pixwe/media/Wallpaper;->finish()V

    goto :goto_0

    .line 62
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
