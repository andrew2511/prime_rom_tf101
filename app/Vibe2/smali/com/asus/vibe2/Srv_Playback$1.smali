.class Lcom/asus/vibe2/Srv_Playback$1;
.super Ljava/lang/Thread;
.source "Srv_Playback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/vibe2/Srv_Playback;->play(Lcom/asus/vibe/item/VibeParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/vibe2/Srv_Playback;

.field final synthetic val$param:Lcom/asus/vibe/item/VibeParam;


# direct methods
.method constructor <init>(Lcom/asus/vibe2/Srv_Playback;Lcom/asus/vibe/item/VibeParam;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/asus/vibe2/Srv_Playback$1;->this$0:Lcom/asus/vibe2/Srv_Playback;

    iput-object p2, p0, Lcom/asus/vibe2/Srv_Playback$1;->val$param:Lcom/asus/vibe/item/VibeParam;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 84
    invoke-static {}, Lcom/asus/vibe2/Srv_Playback;->access$000()Ljava/lang/Boolean;

    move-result-object v0

    monitor-enter v0

    .line 85
    :try_start_0
    invoke-static {}, Lcom/asus/vibe2/Srv_Playback;->access$000()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    monitor-exit v0

    .line 93
    :goto_0
    return-void

    .line 88
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/asus/vibe2/Srv_Playback;->access$002(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 89
    iget-object v1, p0, Lcom/asus/vibe2/Srv_Playback$1;->this$0:Lcom/asus/vibe2/Srv_Playback;

    new-instance v2, Lcom/asus/vibe/item/VibeParam;

    iget-object v3, p0, Lcom/asus/vibe2/Srv_Playback$1;->val$param:Lcom/asus/vibe/item/VibeParam;

    invoke-direct {v2, v3}, Lcom/asus/vibe/item/VibeParam;-><init>(Lcom/asus/vibe/item/VibeParam;)V

    invoke-static {v1, v2}, Lcom/asus/vibe2/Srv_Playback;->access$100(Lcom/asus/vibe2/Srv_Playback;Lcom/asus/vibe/item/VibeParam;)V

    .line 90
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/asus/vibe2/Srv_Playback;->access$002(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 92
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
