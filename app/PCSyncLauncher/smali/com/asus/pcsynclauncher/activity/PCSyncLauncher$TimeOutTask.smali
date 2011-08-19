.class public Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$TimeOutTask;
.super Ljava/util/TimerTask;
.source "PCSyncLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TimeOutTask"
.end annotation


# instance fields
.field mtask:Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;

.field final synthetic this$0:Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;


# direct methods
.method constructor <init>(Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;)V
    .locals 0
    .parameter
    .parameter "task"

    .prologue
    .line 368
    iput-object p1, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$TimeOutTask;->this$0:Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 369
    iput-object p2, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$TimeOutTask;->mtask:Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;

    .line 370
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 372
    iget-object v0, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$TimeOutTask;->mtask:Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;->access$002(Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;Z)Z

    .line 373
    iget-object v0, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$TimeOutTask;->mtask:Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;

    invoke-static {v0}, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;->access$100(Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;)V

    .line 374
    return-void
.end method
