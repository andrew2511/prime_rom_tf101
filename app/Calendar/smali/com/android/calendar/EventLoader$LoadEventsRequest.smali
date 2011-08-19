.class Lcom/android/calendar/EventLoader$LoadEventsRequest;
.super Ljava/lang/Object;
.source "EventLoader.java"

# interfaces
.implements Lcom/android/calendar/EventLoader$LoadRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/EventLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadEventsRequest"
.end annotation


# instance fields
.field public cancelCallback:Ljava/lang/Runnable;

.field public events:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;"
        }
    .end annotation
.end field

.field public id:I

.field public numDays:I

.field public startMillis:J

.field public successCallback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(IJILjava/util/ArrayList;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "id"
    .parameter "startMillis"
    .parameter "numDays"
    .parameter
    .parameter "successCallback"
    .parameter "cancelCallback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJI",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 124
    .local p5, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput p1, p0, Lcom/android/calendar/EventLoader$LoadEventsRequest;->id:I

    .line 126
    iput-wide p2, p0, Lcom/android/calendar/EventLoader$LoadEventsRequest;->startMillis:J

    .line 127
    iput p4, p0, Lcom/android/calendar/EventLoader$LoadEventsRequest;->numDays:I

    .line 128
    iput-object p5, p0, Lcom/android/calendar/EventLoader$LoadEventsRequest;->events:Ljava/util/ArrayList;

    .line 129
    iput-object p6, p0, Lcom/android/calendar/EventLoader$LoadEventsRequest;->successCallback:Ljava/lang/Runnable;

    .line 130
    iput-object p7, p0, Lcom/android/calendar/EventLoader$LoadEventsRequest;->cancelCallback:Ljava/lang/Runnable;

    .line 131
    return-void
.end method


# virtual methods
.method public processRequest(Lcom/android/calendar/EventLoader;)V
    .locals 7
    .parameter "eventLoader"

    .prologue
    .line 134
    invoke-static {p1}, Lcom/android/calendar/EventLoader;->access$200(Lcom/android/calendar/EventLoader;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/EventLoader$LoadEventsRequest;->events:Ljava/util/ArrayList;

    iget-wide v2, p0, Lcom/android/calendar/EventLoader$LoadEventsRequest;->startMillis:J

    iget v4, p0, Lcom/android/calendar/EventLoader$LoadEventsRequest;->numDays:I

    iget v5, p0, Lcom/android/calendar/EventLoader$LoadEventsRequest;->id:I

    invoke-static {p1}, Lcom/android/calendar/EventLoader;->access$300(Lcom/android/calendar/EventLoader;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/android/calendar/Event;->loadEvents(Landroid/content/Context;Ljava/util/ArrayList;JIILjava/util/concurrent/atomic/AtomicInteger;)V

    .line 138
    iget v0, p0, Lcom/android/calendar/EventLoader$LoadEventsRequest;->id:I

    invoke-static {p1}, Lcom/android/calendar/EventLoader;->access$300(Lcom/android/calendar/EventLoader;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 139
    invoke-static {p1}, Lcom/android/calendar/EventLoader;->access$000(Lcom/android/calendar/EventLoader;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/EventLoader$LoadEventsRequest;->successCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 143
    :goto_0
    return-void

    .line 141
    :cond_0
    invoke-static {p1}, Lcom/android/calendar/EventLoader;->access$000(Lcom/android/calendar/EventLoader;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/EventLoader$LoadEventsRequest;->cancelCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public skipRequest(Lcom/android/calendar/EventLoader;)V
    .locals 2
    .parameter "eventLoader"

    .prologue
    .line 146
    invoke-static {p1}, Lcom/android/calendar/EventLoader;->access$000(Lcom/android/calendar/EventLoader;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/EventLoader$LoadEventsRequest;->cancelCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 147
    return-void
.end method
