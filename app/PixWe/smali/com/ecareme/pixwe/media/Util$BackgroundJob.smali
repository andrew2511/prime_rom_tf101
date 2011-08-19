.class Lcom/ecareme/pixwe/media/Util$BackgroundJob;
.super Lcom/ecareme/pixwe/media/MonitoredActivity$LifeCycleAdapter;
.source "Util.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/pixwe/media/Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BackgroundJob"
.end annotation


# instance fields
.field private final mActivity:Lcom/ecareme/pixwe/media/MonitoredActivity;

.field private final mCleanupRunner:Ljava/lang/Runnable;

.field private final mDialog:Landroid/app/ProgressDialog;

.field private final mHandler:Landroid/os/Handler;

.field private final mJob:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/ecareme/pixwe/media/MonitoredActivity;Ljava/lang/Runnable;Landroid/app/ProgressDialog;Landroid/os/Handler;)V
    .locals 1
    .parameter "activity"
    .parameter "job"
    .parameter "dialog"
    .parameter "handler"

    .prologue
    .line 215
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/MonitoredActivity$LifeCycleAdapter;-><init>()V

    .line 207
    new-instance v0, Lcom/ecareme/pixwe/media/Util$BackgroundJob$1;

    invoke-direct {v0, p0}, Lcom/ecareme/pixwe/media/Util$BackgroundJob$1;-><init>(Lcom/ecareme/pixwe/media/Util$BackgroundJob;)V

    iput-object v0, p0, Lcom/ecareme/pixwe/media/Util$BackgroundJob;->mCleanupRunner:Ljava/lang/Runnable;

    .line 216
    iput-object p1, p0, Lcom/ecareme/pixwe/media/Util$BackgroundJob;->mActivity:Lcom/ecareme/pixwe/media/MonitoredActivity;

    .line 217
    iput-object p3, p0, Lcom/ecareme/pixwe/media/Util$BackgroundJob;->mDialog:Landroid/app/ProgressDialog;

    .line 218
    iput-object p2, p0, Lcom/ecareme/pixwe/media/Util$BackgroundJob;->mJob:Ljava/lang/Runnable;

    .line 219
    iget-object v0, p0, Lcom/ecareme/pixwe/media/Util$BackgroundJob;->mActivity:Lcom/ecareme/pixwe/media/MonitoredActivity;

    invoke-virtual {v0, p0}, Lcom/ecareme/pixwe/media/MonitoredActivity;->addLifeCycleListener(Lcom/ecareme/pixwe/media/MonitoredActivity$LifeCycleListener;)V

    .line 220
    iput-object p4, p0, Lcom/ecareme/pixwe/media/Util$BackgroundJob;->mHandler:Landroid/os/Handler;

    .line 221
    return-void
.end method

.method static synthetic access$0(Lcom/ecareme/pixwe/media/Util$BackgroundJob;)Lcom/ecareme/pixwe/media/MonitoredActivity;
    .locals 1
    .parameter

    .prologue
    .line 203
    iget-object v0, p0, Lcom/ecareme/pixwe/media/Util$BackgroundJob;->mActivity:Lcom/ecareme/pixwe/media/MonitoredActivity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ecareme/pixwe/media/Util$BackgroundJob;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 204
    iget-object v0, p0, Lcom/ecareme/pixwe/media/Util$BackgroundJob;->mDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method public onActivityDestroyed(Lcom/ecareme/pixwe/media/MonitoredActivity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/ecareme/pixwe/media/Util$BackgroundJob;->mCleanupRunner:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 236
    iget-object v0, p0, Lcom/ecareme/pixwe/media/Util$BackgroundJob;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ecareme/pixwe/media/Util$BackgroundJob;->mCleanupRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 237
    return-void
.end method

.method public onActivityStarted(Lcom/ecareme/pixwe/media/MonitoredActivity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 246
    iget-object v0, p0, Lcom/ecareme/pixwe/media/Util$BackgroundJob;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 247
    return-void
.end method

.method public onActivityStopped(Lcom/ecareme/pixwe/media/MonitoredActivity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 241
    iget-object v0, p0, Lcom/ecareme/pixwe/media/Util$BackgroundJob;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 242
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/ecareme/pixwe/media/Util$BackgroundJob;->mJob:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    iget-object v0, p0, Lcom/ecareme/pixwe/media/Util$BackgroundJob;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ecareme/pixwe/media/Util$BackgroundJob;->mCleanupRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 229
    return-void

    .line 226
    :catchall_0
    move-exception v0

    .line 227
    iget-object v1, p0, Lcom/ecareme/pixwe/media/Util$BackgroundJob;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/ecareme/pixwe/media/Util$BackgroundJob;->mCleanupRunner:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 228
    throw v0
.end method
