.class Lcom/infraware/filemanager/FmFileListActivity$1;
.super Landroid/os/Handler;
.source "FmFileListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/filemanager/FmFileListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/filemanager/FmFileListActivity;


# direct methods
.method constructor <init>(Lcom/infraware/filemanager/FmFileListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/filemanager/FmFileListActivity$1;->this$0:Lcom/infraware/filemanager/FmFileListActivity;

    .line 85
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/high16 v5, 0x2

    const/4 v4, 0x1

    .line 88
    iget-object v3, p0, Lcom/infraware/filemanager/FmFileListActivity$1;->this$0:Lcom/infraware/filemanager/FmFileListActivity;

    iget-object v3, v3, Lcom/infraware/filemanager/FmFileListActivity;->m_oAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 90
    const/16 v3, 0x32

    invoke-static {v4, v5, v3}, Lcom/infraware/filemanager/FmFileUtil;->FileCopyModeOn(III)V

    .line 97
    :goto_0
    iget v1, p1, Landroid/os/Message;->what:I

    .line 98
    .local v1, nOperation:I
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 99
    .local v2, nProgress:I
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 100
    .local v0, nFileName:Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 109
    :goto_1
    return-void

    .line 94
    .end local v0           #nFileName:Ljava/lang/String;
    .end local v1           #nOperation:I
    .end local v2           #nProgress:I
    :cond_0
    const/4 v3, 0x0

    invoke-static {v4, v5, v3}, Lcom/infraware/filemanager/FmFileUtil;->FileCopyModeOn(III)V

    goto :goto_0

    .line 103
    .restart local v0       #nFileName:Ljava/lang/String;
    .restart local v1       #nOperation:I
    .restart local v2       #nProgress:I
    :pswitch_0
    invoke-static {v2}, Lcom/infraware/filemanager/FmFileProgress;->setProgressIncreaseBy(I)V

    goto :goto_1

    .line 106
    :pswitch_1
    const/4 v3, 0x0

    invoke-static {v3, v0, v4}, Lcom/infraware/filemanager/FmFileProgress;->setHorizonAccumulateProgressText(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 100
    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
