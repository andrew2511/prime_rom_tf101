.class Lcom/android/vending/CheckinUpdater$3;
.super Ljava/lang/Thread;
.source "CheckinUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/CheckinUpdater;->performCheckin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/CheckinUpdater;


# direct methods
.method constructor <init>(Lcom/android/vending/CheckinUpdater;)V
    .locals 0
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/vending/CheckinUpdater$3;->this$0:Lcom/android/vending/CheckinUpdater;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 245
    iget-object v2, p0, Lcom/android/vending/CheckinUpdater$3;->this$0:Lcom/android/vending/CheckinUpdater;

    invoke-static {v2}, Lcom/android/vending/CheckinUpdater;->access$000(Lcom/android/vending/CheckinUpdater;)Ljava/util/ArrayList;

    move-result-object v3

    monitor-enter v3

    .line 246
    :try_start_0
    iget-object v2, p0, Lcom/android/vending/CheckinUpdater$3;->this$0:Lcom/android/vending/CheckinUpdater;

    invoke-static {v2}, Lcom/android/vending/CheckinUpdater;->access$000(Lcom/android/vending/CheckinUpdater;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    const/4 v4, 0x1

    sub-int v1, v2, v4

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 248
    :try_start_1
    iget-object v2, p0, Lcom/android/vending/CheckinUpdater$3;->this$0:Lcom/android/vending/CheckinUpdater;

    invoke-static {v2}, Lcom/android/vending/CheckinUpdater;->access$000(Lcom/android/vending/CheckinUpdater;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/vending/CheckinUpdater$CheckinListener;

    invoke-interface {v2}, Lcom/android/vending/CheckinUpdater$CheckinListener;->checkinCompleted()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 246
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 249
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 250
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v2, "Caught exception in checkinCompleted"

    invoke-static {v2, v0}, Lcom/android/vending/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 253
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .restart local v1       #i:I
    :cond_0
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 254
    return-void
.end method
