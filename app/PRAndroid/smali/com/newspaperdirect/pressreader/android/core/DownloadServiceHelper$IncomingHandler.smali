.class Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper$IncomingHandler;
.super Landroid/os/Handler;
.source "DownloadServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IncomingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;


# direct methods
.method private constructor <init>(Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper$IncomingHandler;->this$0:Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper$IncomingHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper$IncomingHandler;-><init>(Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 59
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 69
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 61
    :pswitch_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper$IncomingHandler;->this$0:Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;->access$3(Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;)Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper$OnDownloadProgressListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper$IncomingHandler;->this$0:Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;->access$3(Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;)Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper$OnDownloadProgressListener;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    int-to-long v1, v1

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2, v3}, Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper$OnDownloadProgressListener;->onDownloadProgress(JI)V

    goto :goto_0

    .line 65
    :pswitch_1
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper$IncomingHandler;->this$0:Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;->access$4(Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;)Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper$OnDownloadCompleteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper$IncomingHandler;->this$0:Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;->access$4(Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;)Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper$OnDownloadCompleteListener;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper$OnDownloadCompleteListener;->onDownloadCopmlete(J)V

    goto :goto_0

    .line 59
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
