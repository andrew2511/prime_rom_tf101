.class Lcom/android/calendar/month/MonthByWeekFragment$2;
.super Ljava/lang/Object;
.source "MonthByWeekFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/month/MonthByWeekFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/month/MonthByWeekFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/month/MonthByWeekFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/calendar/month/MonthByWeekFragment$2;->this$0:Lcom/android/calendar/month/MonthByWeekFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 116
    monitor-enter p0

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment$2;->this$0:Lcom/android/calendar/month/MonthByWeekFragment;

    invoke-static {v0}, Lcom/android/calendar/month/MonthByWeekFragment;->access$100(Lcom/android/calendar/month/MonthByWeekFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment$2;->this$0:Lcom/android/calendar/month/MonthByWeekFragment;

    invoke-static {v0}, Lcom/android/calendar/month/MonthByWeekFragment;->access$200(Lcom/android/calendar/month/MonthByWeekFragment;)Landroid/content/CursorLoader;

    move-result-object v0

    if-nez v0, :cond_1

    .line 118
    :cond_0
    monitor-exit p0

    .line 132
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment$2;->this$0:Lcom/android/calendar/month/MonthByWeekFragment;

    invoke-static {v0}, Lcom/android/calendar/month/MonthByWeekFragment;->access$300(Lcom/android/calendar/month/MonthByWeekFragment;)V

    .line 124
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment$2;->this$0:Lcom/android/calendar/month/MonthByWeekFragment;

    iget-object v1, p0, Lcom/android/calendar/month/MonthByWeekFragment$2;->this$0:Lcom/android/calendar/month/MonthByWeekFragment;

    invoke-static {v1}, Lcom/android/calendar/month/MonthByWeekFragment;->access$500(Lcom/android/calendar/month/MonthByWeekFragment;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/calendar/month/MonthByWeekFragment;->access$402(Lcom/android/calendar/month/MonthByWeekFragment;Landroid/net/Uri;)Landroid/net/Uri;

    .line 125
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment$2;->this$0:Lcom/android/calendar/month/MonthByWeekFragment;

    invoke-static {v0}, Lcom/android/calendar/month/MonthByWeekFragment;->access$200(Lcom/android/calendar/month/MonthByWeekFragment;)Landroid/content/CursorLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/month/MonthByWeekFragment$2;->this$0:Lcom/android/calendar/month/MonthByWeekFragment;

    invoke-static {v1}, Lcom/android/calendar/month/MonthByWeekFragment;->access$400(Lcom/android/calendar/month/MonthByWeekFragment;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 126
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment$2;->this$0:Lcom/android/calendar/month/MonthByWeekFragment;

    invoke-static {v0}, Lcom/android/calendar/month/MonthByWeekFragment;->access$200(Lcom/android/calendar/month/MonthByWeekFragment;)Landroid/content/CursorLoader;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/CursorLoader;->startLoading()V

    .line 127
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment$2;->this$0:Lcom/android/calendar/month/MonthByWeekFragment;

    invoke-static {v0}, Lcom/android/calendar/month/MonthByWeekFragment;->access$200(Lcom/android/calendar/month/MonthByWeekFragment;)Landroid/content/CursorLoader;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/CursorLoader;->onContentChanged()V

    .line 128
    const-string v0, "MonthFragment"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 129
    const-string v0, "MonthFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Started loader with uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/month/MonthByWeekFragment$2;->this$0:Lcom/android/calendar/month/MonthByWeekFragment;

    invoke-static {v2}, Lcom/android/calendar/month/MonthByWeekFragment;->access$400(Lcom/android/calendar/month/MonthByWeekFragment;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
