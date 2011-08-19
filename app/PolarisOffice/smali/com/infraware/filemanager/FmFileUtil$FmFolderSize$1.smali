.class Lcom/infraware/filemanager/FmFileUtil$FmFolderSize$1;
.super Landroid/os/Handler;
.source "FmFileUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/filemanager/FmFileUtil$FmFolderSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/infraware/filemanager/FmFileUtil$FmFolderSize;


# direct methods
.method constructor <init>(Lcom/infraware/filemanager/FmFileUtil$FmFolderSize;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/filemanager/FmFileUtil$FmFolderSize$1;->this$1:Lcom/infraware/filemanager/FmFileUtil$FmFolderSize;

    .line 1150
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 1153
    sget-boolean v2, Lcom/infraware/filemanager/FmFileUtil$FmFolderSize;->m_bCanceled:Z

    if-eqz v2, :cond_0

    .line 1163
    :goto_0
    return-void

    .line 1155
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    .line 1156
    .local v1, nResult:I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1158
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 1159
    .local v0, nFolderSize:Ljava/lang/Long;
    iget-object v2, p0, Lcom/infraware/filemanager/FmFileUtil$FmFolderSize$1;->this$1:Lcom/infraware/filemanager/FmFileUtil$FmFolderSize;

    iget-object v2, v2, Lcom/infraware/filemanager/FmFileUtil$FmFolderSize;->m_oIFolderSizeEventListener:Lcom/infraware/filemanager/FmFileUtil$IFolderSizeEventListener;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lcom/infraware/filemanager/FmFileUtil$IFolderSizeEventListener;->onFolderSize(J)V

    goto :goto_0

    .line 1162
    .end local v0           #nFolderSize:Ljava/lang/Long;
    :cond_1
    iget-object v2, p0, Lcom/infraware/filemanager/FmFileUtil$FmFolderSize$1;->this$1:Lcom/infraware/filemanager/FmFileUtil$FmFolderSize;

    iget-object v2, v2, Lcom/infraware/filemanager/FmFileUtil$FmFolderSize;->m_oIFolderSizeEventListener:Lcom/infraware/filemanager/FmFileUtil$IFolderSizeEventListener;

    const-wide/16 v3, 0x0

    invoke-interface {v2, v3, v4}, Lcom/infraware/filemanager/FmFileUtil$IFolderSizeEventListener;->onFolderSize(J)V

    goto :goto_0
.end method
