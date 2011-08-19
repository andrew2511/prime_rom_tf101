.class Lcom/infraware/filemanager/FmFileUnzip$2;
.super Ljava/lang/Object;
.source "FmFileUnzip.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/filemanager/FmFileUnzip;->unzipFile(Ljava/lang/String;Ljava/lang/String;Lcom/infraware/filemanager/FmFileUnzip$IZipEventListener;)I
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
    iput-object p1, p0, Lcom/infraware/filemanager/FmFileUnzip$2;->this$0:Lcom/infraware/filemanager/FmFileUnzip;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 151
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 154
    .local v1, msg:Landroid/os/Message;
    :try_start_0
    iget-object v2, p0, Lcom/infraware/filemanager/FmFileUnzip$2;->this$0:Lcom/infraware/filemanager/FmFileUnzip;

    iget-object v3, p0, Lcom/infraware/filemanager/FmFileUnzip$2;->this$0:Lcom/infraware/filemanager/FmFileUnzip;

    iget-object v3, v3, Lcom/infraware/filemanager/FmFileUnzip;->m_strFilePath:Ljava/lang/String;

    iget-object v4, p0, Lcom/infraware/filemanager/FmFileUnzip$2;->this$0:Lcom/infraware/filemanager/FmFileUnzip;

    iget-object v4, v4, Lcom/infraware/filemanager/FmFileUnzip;->m_strDestPath:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/infraware/filemanager/FmFileUnzip;->unzipFile(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_0
    iget-object v2, p0, Lcom/infraware/filemanager/FmFileUnzip$2;->this$0:Lcom/infraware/filemanager/FmFileUnzip;

    invoke-static {v2}, Lcom/infraware/filemanager/FmFileUnzip;->access$0(Lcom/infraware/filemanager/FmFileUnzip;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 163
    return-void

    .line 157
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    iput v2, v1, Landroid/os/Message;->what:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 158
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 159
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 160
    iput v5, v1, Landroid/os/Message;->what:I

    goto :goto_0
.end method
