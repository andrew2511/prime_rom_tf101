.class Lcom/asus/DLNA/SendMediaPlayerCMD$1;
.super Ljava/lang/Thread;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/DLNA/SendMediaPlayerCMD;->runDoCMDInBackground()Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/DLNA/SendMediaPlayerCMD;


# direct methods
.method constructor <init>(Lcom/asus/DLNA/SendMediaPlayerCMD;)V
    .locals 0
    .parameter

    .prologue
    .line 830
    iput-object p1, p0, Lcom/asus/DLNA/SendMediaPlayerCMD$1;->this$0:Lcom/asus/DLNA/SendMediaPlayerCMD;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 833
    :try_start_0
    iget-object v0, p0, Lcom/asus/DLNA/SendMediaPlayerCMD$1;->this$0:Lcom/asus/DLNA/SendMediaPlayerCMD;

    iget-object v0, v0, Lcom/asus/DLNA/SendMediaPlayerCMD;->runnableSendCMDNOW:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 836
    return-void

    .line 834
    :catchall_0
    move-exception v0

    throw v0
.end method
