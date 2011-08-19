.class Lcom/ecareme/pixwe/cache/CacheService$3;
.super Ljava/lang/Object;
.source "CacheService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/cache/CacheService;->startNewThumbnailThread(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/cache/CacheService$3;->val$context:Landroid/content/Context;

    .line 797
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 799
    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 803
    const-wide/16 v1, 0x7d0

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 807
    iget-object v1, p0, Lcom/ecareme/pixwe/cache/CacheService$3;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/ecareme/pixwe/cache/CacheService;->access$0(Landroid/content/Context;)V

    .line 808
    :goto_0
    return-void

    .line 804
    :catch_0
    move-exception v0

    .line 805
    .local v0, e:Ljava/lang/InterruptedException;
    goto :goto_0
.end method
