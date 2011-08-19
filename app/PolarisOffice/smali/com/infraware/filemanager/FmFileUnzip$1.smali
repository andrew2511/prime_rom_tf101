.class Lcom/infraware/filemanager/FmFileUnzip$1;
.super Landroid/os/Handler;
.source "FmFileUnzip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/filemanager/FmFileUnzip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/filemanager/FmFileUnzip;


# direct methods
.method constructor <init>(Lcom/infraware/filemanager/FmFileUnzip;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/filemanager/FmFileUnzip$1;->this$0:Lcom/infraware/filemanager/FmFileUnzip;

    .line 102
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 105
    iget-object v1, p0, Lcom/infraware/filemanager/FmFileUnzip$1;->this$0:Lcom/infraware/filemanager/FmFileUnzip;

    iget-object v1, v1, Lcom/infraware/filemanager/FmFileUnzip;->m_oIZipEventListener:Lcom/infraware/filemanager/FmFileUnzip$IZipEventListener;

    if-nez v1, :cond_0

    .line 112
    :goto_0
    return-void

    .line 107
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    .line 108
    .local v0, nResult:I
    if-ne v0, v2, :cond_1

    .line 109
    iget-object v1, p0, Lcom/infraware/filemanager/FmFileUnzip$1;->this$0:Lcom/infraware/filemanager/FmFileUnzip;

    iget-object v1, v1, Lcom/infraware/filemanager/FmFileUnzip;->m_oIZipEventListener:Lcom/infraware/filemanager/FmFileUnzip$IZipEventListener;

    invoke-interface {v1, v2}, Lcom/infraware/filemanager/FmFileUnzip$IZipEventListener;->onZipEvent(Z)V

    goto :goto_0

    .line 111
    :cond_1
    iget-object v1, p0, Lcom/infraware/filemanager/FmFileUnzip$1;->this$0:Lcom/infraware/filemanager/FmFileUnzip;

    iget-object v1, v1, Lcom/infraware/filemanager/FmFileUnzip;->m_oIZipEventListener:Lcom/infraware/filemanager/FmFileUnzip$IZipEventListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/infraware/filemanager/FmFileUnzip$IZipEventListener;->onZipEvent(Z)V

    goto :goto_0
.end method
