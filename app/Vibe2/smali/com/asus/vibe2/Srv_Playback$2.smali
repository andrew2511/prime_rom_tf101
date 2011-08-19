.class Lcom/asus/vibe2/Srv_Playback$2;
.super Ljava/lang/Thread;
.source "Srv_Playback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/vibe2/Srv_Playback;->stop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/vibe2/Srv_Playback;


# direct methods
.method constructor <init>(Lcom/asus/vibe2/Srv_Playback;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/asus/vibe2/Srv_Playback$2;->this$0:Lcom/asus/vibe2/Srv_Playback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 100
    invoke-static {}, Lcom/asus/vibe2/Srv_Playback;->access$000()Ljava/lang/Boolean;

    move-result-object v0

    monitor-enter v0

    .line 101
    :try_start_0
    invoke-static {}, Lcom/asus/vibe2/Srv_Playback;->access$000()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    monitor-exit v0

    .line 109
    :goto_0
    return-void

    .line 104
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/asus/vibe2/Srv_Playback;->access$002(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 105
    iget-object v1, p0, Lcom/asus/vibe2/Srv_Playback$2;->this$0:Lcom/asus/vibe2/Srv_Playback;

    invoke-static {v1}, Lcom/asus/vibe2/Srv_Playback;->access$200(Lcom/asus/vibe2/Srv_Playback;)V

    .line 106
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/asus/vibe2/Srv_Playback;->access$002(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 108
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
