.class Lcom/google/android/voicesearch/performanceanalysis/PerformanceLogger$1;
.super Landroid/os/Handler;
.source "PerformanceLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/performanceanalysis/PerformanceLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/performanceanalysis/PerformanceLogger;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/performanceanalysis/PerformanceLogger;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/google/android/voicesearch/performanceanalysis/PerformanceLogger$1;->this$0:Lcom/google/android/voicesearch/performanceanalysis/PerformanceLogger;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    .line 95
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 97
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/voicesearch/performanceanalysis/TimeEvent;

    .line 98
    iget-object v1, p0, Lcom/google/android/voicesearch/performanceanalysis/PerformanceLogger$1;->this$0:Lcom/google/android/voicesearch/performanceanalysis/PerformanceLogger;

    invoke-static {v1}, Lcom/google/android/voicesearch/performanceanalysis/PerformanceLogger;->access$000(Lcom/google/android/voicesearch/performanceanalysis/PerformanceLogger;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-virtual {v0}, Lcom/google/android/voicesearch/performanceanalysis/TimeEvent;->isInSnippet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/google/android/voicesearch/performanceanalysis/PerformanceLogger$1;->this$0:Lcom/google/android/voicesearch/performanceanalysis/PerformanceLogger;

    invoke-static {v1}, Lcom/google/android/voicesearch/performanceanalysis/PerformanceLogger;->access$100(Lcom/google/android/voicesearch/performanceanalysis/PerformanceLogger;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/voicesearch/performanceanalysis/PerformanceLogger$Listener;

    .line 101
    invoke-virtual {v0}, Lcom/google/android/voicesearch/performanceanalysis/TimeEvent;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Lcom/google/android/voicesearch/performanceanalysis/PerformanceLogger$Listener;->snippetEventAdded(Ljava/lang/String;)V

    goto :goto_1

    .line 106
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/voicesearch/performanceanalysis/PerformanceLogger$1;->this$0:Lcom/google/android/voicesearch/performanceanalysis/PerformanceLogger;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/voicesearch/performanceanalysis/PerformanceLogger;->access$002(Lcom/google/android/voicesearch/performanceanalysis/PerformanceLogger;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 107
    iget-object v0, p0, Lcom/google/android/voicesearch/performanceanalysis/PerformanceLogger$1;->this$0:Lcom/google/android/voicesearch/performanceanalysis/PerformanceLogger;

    new-instance v1, Lcom/google/android/voicesearch/performanceanalysis/TimeEvent;

    const-string v2, "Execution data:"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/android/voicesearch/performanceanalysis/TimeEvent;-><init>(Ljava/lang/String;Z)V

    invoke-static {v0, v1}, Lcom/google/android/voicesearch/performanceanalysis/PerformanceLogger;->access$202(Lcom/google/android/voicesearch/performanceanalysis/PerformanceLogger;Lcom/google/android/voicesearch/performanceanalysis/TimeEvent;)Lcom/google/android/voicesearch/performanceanalysis/TimeEvent;

    goto :goto_0

    .line 110
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/voicesearch/performanceanalysis/PerformanceLogger$1;->this$0:Lcom/google/android/voicesearch/performanceanalysis/PerformanceLogger;

    invoke-static {v0}, Lcom/google/android/voicesearch/performanceanalysis/PerformanceLogger;->access$300(Lcom/google/android/voicesearch/performanceanalysis/PerformanceLogger;)V

    goto :goto_0

    .line 95
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
