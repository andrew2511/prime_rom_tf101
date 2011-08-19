.class final Lcom/ecareme/pixwe/media/RenderView$TextureLoadThread;
.super Ljava/lang/Thread;
.source "RenderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/pixwe/media/RenderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TextureLoadThread"
.end annotation


# instance fields
.field public mIsLoading:Z

.field final synthetic this$0:Lcom/ecareme/pixwe/media/RenderView;


# direct methods
.method public constructor <init>(Lcom/ecareme/pixwe/media/RenderView;)V
    .locals 1
    .parameter

    .prologue
    .line 993
    iput-object p1, p0, Lcom/ecareme/pixwe/media/RenderView$TextureLoadThread;->this$0:Lcom/ecareme/pixwe/media/RenderView;

    .line 992
    const-string v0, "TextureLoad"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private load(Lcom/ecareme/pixwe/media/Texture;)V
    .locals 1
    .parameter "texture"

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/ecareme/pixwe/media/RenderView$TextureLoadThread;->this$0:Lcom/ecareme/pixwe/media/RenderView;

    .line 1028
    .local v0, view:Lcom/ecareme/pixwe/media/RenderView;
    invoke-static {v0, p1}, Lcom/ecareme/pixwe/media/RenderView;->access$6(Lcom/ecareme/pixwe/media/RenderView;Lcom/ecareme/pixwe/media/Texture;)V

    .line 1029
    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/RenderView;->requestRender()V

    .line 1030
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 996
    const/16 v4, 0xa

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 997
    invoke-static {}, Lcom/ecareme/pixwe/media/RenderView;->access$0()Lcom/ecareme/pixwe/media/RenderView$TextureLoadThread;

    move-result-object v4

    if-ne v4, p0, :cond_1

    invoke-static {}, Lcom/ecareme/pixwe/media/RenderView;->access$1()Lcom/ecareme/pixwe/media/Deque;

    move-result-object v4

    move-object v1, v4

    .line 999
    .local v1, inputQueue:Lcom/ecareme/pixwe/media/Deque;,"Lcom/ecareme/pixwe/media/Deque<Lcom/ecareme/pixwe/media/Texture;>;"
    :goto_0
    invoke-static {}, Lcom/ecareme/pixwe/media/RenderView;->access$5()Lcom/ecareme/pixwe/media/Deque;

    move-result-object v2

    .line 1003
    .local v2, outputQueue:Lcom/ecareme/pixwe/media/Deque;,"Lcom/ecareme/pixwe/media/Deque<Lcom/ecareme/pixwe/media/Texture;>;"
    :goto_1
    const/4 v3, 0x0

    .line 1004
    .local v3, texture:Lcom/ecareme/pixwe/media/Texture;
    :try_start_0
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1005
    :goto_2
    :try_start_1
    invoke-virtual {v1}, Lcom/ecareme/pixwe/media/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/ecareme/pixwe/media/Texture;

    move-object v3, v0

    if-eqz v3, :cond_3

    .line 1004
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1009
    :try_start_2
    invoke-static {}, Lcom/ecareme/pixwe/media/RenderView;->access$2()Lcom/ecareme/pixwe/media/RenderView$TextureLoadThread;

    move-result-object v4

    if-eq v4, p0, :cond_0

    .line 1010
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/ecareme/pixwe/media/RenderView$TextureLoadThread;->mIsLoading:Z

    .line 1012
    :cond_0
    invoke-direct {p0, v3}, Lcom/ecareme/pixwe/media/RenderView$TextureLoadThread;->load(Lcom/ecareme/pixwe/media/Texture;)V

    .line 1013
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/ecareme/pixwe/media/RenderView$TextureLoadThread;->mIsLoading:Z

    .line 1016
    monitor-enter v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1017
    :try_start_3
    invoke-virtual {v2, v3}, Lcom/ecareme/pixwe/media/Deque;->addLast(Ljava/lang/Object;)V

    .line 1016
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1020
    :catch_0
    move-exception v4

    .line 1023
    return-void

    .line 998
    .end local v1           #inputQueue:Lcom/ecareme/pixwe/media/Deque;,"Lcom/ecareme/pixwe/media/Deque<Lcom/ecareme/pixwe/media/Texture;>;"
    .end local v2           #outputQueue:Lcom/ecareme/pixwe/media/Deque;,"Lcom/ecareme/pixwe/media/Deque<Lcom/ecareme/pixwe/media/Texture;>;"
    .end local v3           #texture:Lcom/ecareme/pixwe/media/Texture;
    :cond_1
    invoke-static {}, Lcom/ecareme/pixwe/media/RenderView;->access$2()Lcom/ecareme/pixwe/media/RenderView$TextureLoadThread;

    move-result-object v4

    if-ne v4, p0, :cond_2

    invoke-static {}, Lcom/ecareme/pixwe/media/RenderView;->access$3()Lcom/ecareme/pixwe/media/Deque;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/ecareme/pixwe/media/RenderView;->access$4()Lcom/ecareme/pixwe/media/Deque;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 1006
    .restart local v1       #inputQueue:Lcom/ecareme/pixwe/media/Deque;,"Lcom/ecareme/pixwe/media/Deque<Lcom/ecareme/pixwe/media/Texture;>;"
    .restart local v2       #outputQueue:Lcom/ecareme/pixwe/media/Deque;,"Lcom/ecareme/pixwe/media/Deque<Lcom/ecareme/pixwe/media/Texture;>;"
    .restart local v3       #texture:Lcom/ecareme/pixwe/media/Texture;
    :cond_3
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_2

    .line 1004
    :catchall_1
    move-exception v4

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v4
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
.end method
