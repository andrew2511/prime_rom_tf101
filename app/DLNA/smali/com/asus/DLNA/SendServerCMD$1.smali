.class Lcom/asus/DLNA/SendServerCMD$1;
.super Ljava/lang/Thread;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/DLNA/SendServerCMD;->runDoCMDInBackground()Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/DLNA/SendServerCMD;


# direct methods
.method constructor <init>(Lcom/asus/DLNA/SendServerCMD;)V
    .locals 0
    .parameter

    .prologue
    .line 618
    iput-object p1, p0, Lcom/asus/DLNA/SendServerCMD$1;->this$0:Lcom/asus/DLNA/SendServerCMD;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 621
    :try_start_0
    iget-object v0, p0, Lcom/asus/DLNA/SendServerCMD$1;->this$0:Lcom/asus/DLNA/SendServerCMD;

    iget-object v0, v0, Lcom/asus/DLNA/SendServerCMD;->runnableSendCMDNOW:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 624
    return-void

    .line 622
    :catchall_0
    move-exception v0

    throw v0
.end method
