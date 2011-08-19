.class Lcom/asus/filemanager/toolbar/PathIndicator$MyFileObserver;
.super Landroid/os/FileObserver;
.source "PathIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/filemanager/toolbar/PathIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyFileObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/filemanager/toolbar/PathIndicator;


# direct methods
.method public constructor <init>(Lcom/asus/filemanager/toolbar/PathIndicator;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "path"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/asus/filemanager/toolbar/PathIndicator$MyFileObserver;->this$0:Lcom/asus/filemanager/toolbar/PathIndicator;

    .line 42
    const/16 v0, 0x3c0

    invoke-direct {p0, p2, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 43
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 6
    .parameter "event"
    .parameter "path"

    .prologue
    const/16 v5, 0x1645

    .line 49
    const v2, 0xffff

    and-int v0, p1, v2

    .line 51
    .local v0, mask:I
    const/4 v1, 0x0

    .line 52
    .local v1, re_Scan:Z
    sparse-switch v0, :sswitch_data_0

    .line 88
    :goto_0
    :sswitch_0
    if-eqz v1, :cond_0

    .line 89
    iget-object v2, p0, Lcom/asus/filemanager/toolbar/PathIndicator$MyFileObserver;->this$0:Lcom/asus/filemanager/toolbar/PathIndicator;

    invoke-static {v2}, Lcom/asus/filemanager/toolbar/PathIndicator;->access$000(Lcom/asus/filemanager/toolbar/PathIndicator;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 90
    iget-object v2, p0, Lcom/asus/filemanager/toolbar/PathIndicator$MyFileObserver;->this$0:Lcom/asus/filemanager/toolbar/PathIndicator;

    invoke-static {v2}, Lcom/asus/filemanager/toolbar/PathIndicator;->access$000(Lcom/asus/filemanager/toolbar/PathIndicator;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/asus/filemanager/toolbar/PathIndicator$MyFileObserver;->this$0:Lcom/asus/filemanager/toolbar/PathIndicator;

    invoke-static {v3}, Lcom/asus/filemanager/toolbar/PathIndicator;->access$000(Lcom/asus/filemanager/toolbar/PathIndicator;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/asus/filemanager/toolbar/PathIndicator$MyFileObserver;->this$0:Lcom/asus/filemanager/toolbar/PathIndicator;

    invoke-static {v4}, Lcom/asus/filemanager/toolbar/PathIndicator;->access$100(Lcom/asus/filemanager/toolbar/PathIndicator;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 93
    :cond_0
    return-void

    .line 60
    :sswitch_1
    const/4 v1, 0x1

    .line 61
    goto :goto_0

    .line 65
    :sswitch_2
    const/4 v1, 0x1

    .line 66
    goto :goto_0

    .line 70
    :sswitch_3
    const/4 v1, 0x1

    .line 71
    goto :goto_0

    .line 75
    :sswitch_4
    const/4 v1, 0x1

    .line 76
    goto :goto_0

    .line 52
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x4 -> :sswitch_0
        0x8 -> :sswitch_0
        0x10 -> :sswitch_0
        0x40 -> :sswitch_1
        0x80 -> :sswitch_2
        0x100 -> :sswitch_3
        0x200 -> :sswitch_4
        0x400 -> :sswitch_0
        0x800 -> :sswitch_0
    .end sparse-switch
.end method
