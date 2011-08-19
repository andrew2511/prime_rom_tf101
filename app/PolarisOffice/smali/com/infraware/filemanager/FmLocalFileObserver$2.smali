.class Lcom/infraware/filemanager/FmLocalFileObserver$2;
.super Landroid/os/FileObserver;
.source "FmLocalFileObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/filemanager/FmLocalFileObserver;->createFileObserver(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/filemanager/FmLocalFileObserver;


# direct methods
.method constructor <init>(Lcom/infraware/filemanager/FmLocalFileObserver;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter "$anonymous1"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/filemanager/FmLocalFileObserver$2;->this$0:Lcom/infraware/filemanager/FmLocalFileObserver;

    .line 39
    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 4
    .parameter "event"
    .parameter "path"

    .prologue
    const/4 v3, 0x0

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 78
    :goto_0
    return-void

    .line 45
    :sswitch_0
    const-string v0, "FILE OBSERVER"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CREATE:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/infraware/filemanager/FmLocalFileObserver$2;->this$0:Lcom/infraware/filemanager/FmLocalFileObserver;

    iget-object v2, v2, Lcom/infraware/filemanager/FmLocalFileObserver;->m_strObservingPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v0, p0, Lcom/infraware/filemanager/FmLocalFileObserver$2;->this$0:Lcom/infraware/filemanager/FmLocalFileObserver;

    iget-object v0, v0, Lcom/infraware/filemanager/FmLocalFileObserver;->m_oUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 49
    :sswitch_1
    const-string v0, "FILE OBSERVER"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DELETE:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/infraware/filemanager/FmLocalFileObserver$2;->this$0:Lcom/infraware/filemanager/FmLocalFileObserver;

    iget-object v2, v2, Lcom/infraware/filemanager/FmLocalFileObserver;->m_strObservingPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v0, p0, Lcom/infraware/filemanager/FmLocalFileObserver$2;->this$0:Lcom/infraware/filemanager/FmLocalFileObserver;

    iget-object v0, v0, Lcom/infraware/filemanager/FmLocalFileObserver;->m_oUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 53
    :sswitch_2
    const-string v0, "FILE OBSERVER"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DELETE_SELF:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/infraware/filemanager/FmLocalFileObserver$2;->this$0:Lcom/infraware/filemanager/FmLocalFileObserver;

    iget-object v2, v2, Lcom/infraware/filemanager/FmLocalFileObserver;->m_strObservingPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". stop observing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 56
    :sswitch_3
    const-string v0, "FILE OBSERVER"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ATTRIB:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/infraware/filemanager/FmLocalFileObserver$2;->this$0:Lcom/infraware/filemanager/FmLocalFileObserver;

    iget-object v2, v2, Lcom/infraware/filemanager/FmLocalFileObserver;->m_strObservingPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, p0, Lcom/infraware/filemanager/FmLocalFileObserver$2;->this$0:Lcom/infraware/filemanager/FmLocalFileObserver;

    iget-object v0, v0, Lcom/infraware/filemanager/FmLocalFileObserver;->m_oUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 60
    :sswitch_4
    const-string v0, "FILE OBSERVER"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ATTRIB:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/infraware/filemanager/FmLocalFileObserver$2;->this$0:Lcom/infraware/filemanager/FmLocalFileObserver;

    iget-object v2, v2, Lcom/infraware/filemanager/FmLocalFileObserver;->m_strObservingPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v0, p0, Lcom/infraware/filemanager/FmLocalFileObserver$2;->this$0:Lcom/infraware/filemanager/FmLocalFileObserver;

    iget-object v0, v0, Lcom/infraware/filemanager/FmLocalFileObserver;->m_oUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 64
    :sswitch_5
    const-string v0, "FILE OBSERVER"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MOVED_FROM:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/infraware/filemanager/FmLocalFileObserver$2;->this$0:Lcom/infraware/filemanager/FmLocalFileObserver;

    iget-object v2, v2, Lcom/infraware/filemanager/FmLocalFileObserver;->m_strObservingPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v0, p0, Lcom/infraware/filemanager/FmLocalFileObserver$2;->this$0:Lcom/infraware/filemanager/FmLocalFileObserver;

    iget-object v0, v0, Lcom/infraware/filemanager/FmLocalFileObserver;->m_oUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 68
    :sswitch_6
    const-string v0, "FILE OBSERVER"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MOVED_TO:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lcom/infraware/filemanager/FmLocalFileObserver$2;->this$0:Lcom/infraware/filemanager/FmLocalFileObserver;

    iget-object v0, v0, Lcom/infraware/filemanager/FmLocalFileObserver;->m_oUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 72
    :sswitch_7
    const-string v0, "FILE OBSERVER"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MOVE_SELF:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lcom/infraware/filemanager/FmLocalFileObserver$2;->this$0:Lcom/infraware/filemanager/FmLocalFileObserver;

    iget-object v0, v0, Lcom/infraware/filemanager/FmLocalFileObserver;->m_oUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 43
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_3
        0x8 -> :sswitch_4
        0x40 -> :sswitch_5
        0x80 -> :sswitch_6
        0x100 -> :sswitch_0
        0x200 -> :sswitch_1
        0x400 -> :sswitch_2
        0x800 -> :sswitch_7
    .end sparse-switch
.end method
