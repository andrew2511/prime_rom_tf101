.class Lcom/asus/DLNA/DLNA$LocalContentListAdapter$2;
.super Ljava/lang/Thread;
.source "DLNA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->runDecodeInBackground()Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/asus/DLNA/DLNA$LocalContentListAdapter;


# direct methods
.method constructor <init>(Lcom/asus/DLNA/DLNA$LocalContentListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1666
    iput-object p1, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter$2;->this$1:Lcom/asus/DLNA/DLNA$LocalContentListAdapter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1669
    :try_start_0
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter$2;->this$1:Lcom/asus/DLNA/DLNA$LocalContentListAdapter;

    iget-object v0, v0, Lcom/asus/DLNA/DLNA$LocalContentListAdapter;->runnableDecodeThumbnail:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1672
    return-void

    .line 1670
    :catchall_0
    move-exception v0

    throw v0
.end method
