.class Lcom/infraware/filemanager/FmUpdateManager$2;
.super Landroid/os/Handler;
.source "FmUpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/filemanager/FmUpdateManager;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/filemanager/FmUpdateManager;


# direct methods
.method constructor <init>(Lcom/infraware/filemanager/FmUpdateManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/filemanager/FmUpdateManager$2;->this$0:Lcom/infraware/filemanager/FmUpdateManager;

    .line 94
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 98
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 104
    :goto_0
    return-void

    .line 100
    :pswitch_0
    iget-object v0, p0, Lcom/infraware/filemanager/FmUpdateManager$2;->this$0:Lcom/infraware/filemanager/FmUpdateManager;

    iget-object v1, p0, Lcom/infraware/filemanager/FmUpdateManager$2;->this$0:Lcom/infraware/filemanager/FmUpdateManager;

    invoke-static {v1}, Lcom/infraware/filemanager/FmUpdateManager;->access$3(Lcom/infraware/filemanager/FmUpdateManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/filemanager/FmUpdateManager;->onUpdateApk(Ljava/lang/String;)Z

    goto :goto_0

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
