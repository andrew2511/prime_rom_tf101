.class public Lcom/asus/mygazine/PhotoMonitor$CommandThread;
.super Ljava/lang/Thread;
.source "PhotoMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/mygazine/PhotoMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CommandThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/mygazine/PhotoMonitor;


# direct methods
.method public constructor <init>(Lcom/asus/mygazine/PhotoMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 477
    iput-object p1, p0, Lcom/asus/mygazine/PhotoMonitor$CommandThread;->this$0:Lcom/asus/mygazine/PhotoMonitor;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 480
    const/4 v0, -0x1

    .line 482
    .local v0, cmd:I
    :cond_0
    iget-object v1, p0, Lcom/asus/mygazine/PhotoMonitor$CommandThread;->this$0:Lcom/asus/mygazine/PhotoMonitor;

    invoke-static {v1}, Lcom/asus/mygazine/PhotoMonitor;->access$200(Lcom/asus/mygazine/PhotoMonitor;)I

    move-result v0

    .line 483
    packed-switch v0, :pswitch_data_0

    .line 497
    :goto_0
    :pswitch_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/asus/mygazine/PhotoMonitor$CommandThread;->this$0:Lcom/asus/mygazine/PhotoMonitor;

    invoke-static {v1}, Lcom/asus/mygazine/PhotoMonitor;->access$600(Lcom/asus/mygazine/PhotoMonitor;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 498
    return-void

    .line 487
    :pswitch_1
    iget-object v1, p0, Lcom/asus/mygazine/PhotoMonitor$CommandThread;->this$0:Lcom/asus/mygazine/PhotoMonitor;

    invoke-static {v1}, Lcom/asus/mygazine/PhotoMonitor;->access$300(Lcom/asus/mygazine/PhotoMonitor;)V

    goto :goto_0

    .line 490
    :pswitch_2
    iget-object v1, p0, Lcom/asus/mygazine/PhotoMonitor$CommandThread;->this$0:Lcom/asus/mygazine/PhotoMonitor;

    invoke-static {v1}, Lcom/asus/mygazine/PhotoMonitor;->access$400(Lcom/asus/mygazine/PhotoMonitor;)V

    goto :goto_0

    .line 493
    :pswitch_3
    iget-object v1, p0, Lcom/asus/mygazine/PhotoMonitor$CommandThread;->this$0:Lcom/asus/mygazine/PhotoMonitor;

    invoke-static {v1}, Lcom/asus/mygazine/PhotoMonitor;->access$500(Lcom/asus/mygazine/PhotoMonitor;)V

    goto :goto_0

    .line 483
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
