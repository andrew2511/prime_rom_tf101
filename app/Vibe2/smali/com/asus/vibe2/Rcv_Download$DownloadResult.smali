.class Lcom/asus/vibe2/Rcv_Download$DownloadResult;
.super Ljava/lang/Object;
.source "Rcv_Download.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/vibe2/Rcv_Download;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadResult"
.end annotation


# instance fields
.field private mActualDownloadSize:J

.field private mDownloadUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/asus/vibe2/Rcv_Download;


# direct methods
.method public constructor <init>(Lcom/asus/vibe2/Rcv_Download;Ljava/lang/String;J)V
    .locals 2
    .parameter
    .parameter "downloadUrl"
    .parameter "actualDownloadSize"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/asus/vibe2/Rcv_Download$DownloadResult;->this$0:Lcom/asus/vibe2/Rcv_Download;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/vibe2/Rcv_Download$DownloadResult;->mDownloadUrl:Ljava/lang/String;

    .line 55
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/asus/vibe2/Rcv_Download$DownloadResult;->mActualDownloadSize:J

    .line 58
    iput-object p2, p0, Lcom/asus/vibe2/Rcv_Download$DownloadResult;->mDownloadUrl:Ljava/lang/String;

    .line 59
    iput-wide p3, p0, Lcom/asus/vibe2/Rcv_Download$DownloadResult;->mActualDownloadSize:J

    .line 60
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 63
    iget-object v2, p0, Lcom/asus/vibe2/Rcv_Download$DownloadResult;->mDownloadUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/asus/vibe2/Rcv_Download$DownloadResult;->mActualDownloadSize:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/asus/vibe2/Rcv_Download$DownloadResult;->mDownloadUrl:Ljava/lang/String;

    const-string v3, "http://www.inmusic.com.tw"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://www.inmusic.com.tw/asus/report.aspx?fsize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/asus/vibe2/Rcv_Download$DownloadResult;->mActualDownloadSize:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/asus/vibe2/Rcv_Download$DownloadResult;->mDownloadUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, feedbackUrl:Ljava/lang/String;
    const-string v2, "ASUS@Vibe"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start feedback downloaded file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/asus/vibe2/Rcv_Download$DownloadResult;->mDownloadUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; size= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/asus/vibe2/Rcv_Download$DownloadResult;->mActualDownloadSize:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance v1, Lcom/asus/vibe/api/VibeHttpRequest;

    const-string v2, "GET"

    invoke-direct {v1, v2, v0, v6, v6}, Lcom/asus/vibe/api/VibeHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 69
    .local v1, request:Lcom/asus/vibe/api/VibeHttpRequest;
    new-instance v2, Lcom/asus/vibe/api/Interrupter;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/asus/vibe/api/Interrupter;-><init>(Z)V

    invoke-virtual {v1, v2}, Lcom/asus/vibe/api/VibeHttpRequest;->execute(Lcom/asus/vibe/api/Interrupter;)I

    move-result v2

    if-nez v2, :cond_2

    .line 70
    const-string v2, "ASUS@Vibe"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Download Result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/asus/vibe/api/VibeHttpRequest;->getStringResponse()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_2
    invoke-virtual {v1}, Lcom/asus/vibe/api/VibeHttpRequest;->getFileResponse()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 73
    invoke-virtual {v1}, Lcom/asus/vibe/api/VibeHttpRequest;->getFileResponse()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto/16 :goto_0
.end method
