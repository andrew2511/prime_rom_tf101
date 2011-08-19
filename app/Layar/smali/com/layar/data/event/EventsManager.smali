.class public Lcom/layar/data/event/EventsManager;
.super Ljava/lang/Object;
.source "EventsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/data/event/EventsManager$PostTask;
    }
.end annotation


# static fields
.field private static final EVENTS_URL:Ljava/lang/String; = "/stream/api/events/"

.field private static final POST_INTERVAL:J = 0x7530L

.field private static final POST_MAX_IDLE:J = 0x7530L

.field private static final POST_MESSAGE:I = 0x0

.field private static final POST_MIN_EVENTS:J = 0x32L

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/layar/data/event/EventsManager;


# instance fields
.field private mActive:Z

.field private mEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/data/event/Event;",
            ">;"
        }
    .end annotation
.end field

.field private mEventsPosted:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/data/event/Event;",
            ">;"
        }
    .end annotation
.end field

.field private mLastPost:J

.field private mPostLoop:Landroid/os/Handler;

.field private mTask:Lcom/layar/data/event/EventsManager$PostTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/layar/data/event/EventsManager;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/data/event/EventsManager;->TAG:Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/layar/data/event/EventsManager;->sInstance:Lcom/layar/data/event/EventsManager;

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/layar/data/event/EventsManager;->mEvents:Ljava/util/ArrayList;

    .line 126
    new-instance v0, Lcom/layar/data/event/EventsManager$1;

    invoke-direct {v0, p0}, Lcom/layar/data/event/EventsManager$1;-><init>(Lcom/layar/data/event/EventsManager;)V

    iput-object v0, p0, Lcom/layar/data/event/EventsManager;->mPostLoop:Landroid/os/Handler;

    .line 30
    return-void
.end method

.method private _clear()V
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layar/data/event/EventsManager;->mEventsPosted:Ljava/util/ArrayList;

    .line 145
    return-void
.end method

.method private _restore()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/layar/data/event/EventsManager;->mEventsPosted:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/layar/data/event/EventsManager;->mEvents:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/layar/data/event/EventsManager;->mEventsPosted:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 140
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/layar/data/event/EventsManager;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/layar/data/event/EventsManager;->_restore()V

    return-void
.end method

.method static synthetic access$1(Lcom/layar/data/event/EventsManager;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/layar/data/event/EventsManager;->_clear()V

    return-void
.end method

.method static synthetic access$2(Lcom/layar/data/event/EventsManager;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    iput-wide p1, p0, Lcom/layar/data/event/EventsManager;->mLastPost:J

    return-void
.end method

.method public static getInstance()Lcom/layar/data/event/EventsManager;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/layar/data/event/EventsManager;->sInstance:Lcom/layar/data/event/EventsManager;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/layar/data/event/EventsManager;

    invoke-direct {v0}, Lcom/layar/data/event/EventsManager;-><init>()V

    sput-object v0, Lcom/layar/data/event/EventsManager;->sInstance:Lcom/layar/data/event/EventsManager;

    .line 54
    :cond_0
    sget-object v0, Lcom/layar/data/event/EventsManager;->sInstance:Lcom/layar/data/event/EventsManager;

    return-object v0
.end method


# virtual methods
.method public add(Lcom/layar/data/event/Event;)V
    .locals 5
    .parameter "event"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/layar/data/event/EventsManager;->mActive:Z

    if-nez v0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/layar/data/event/EventsManager;->mEvents:Ljava/util/ArrayList;

    monitor-enter v0

    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/layar/data/event/EventsManager;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v1, p0, Lcom/layar/data/event/EventsManager;->mPostLoop:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 83
    invoke-virtual {p0}, Lcom/layar/data/event/EventsManager;->postEvents()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/layar/data/event/EventsManager;->mPostLoop:Landroid/os/Handler;

    const/4 v2, 0x0

    const-wide/16 v3, 0x7530

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 78
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public add(SLjava/lang/String;)V
    .locals 1
    .parameter "code"
    .parameter "layerName"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/layar/data/event/EventsManager;->mActive:Z

    if-nez v0, :cond_0

    .line 61
    :goto_0
    return-void

    .line 60
    :cond_0
    new-instance v0, Lcom/layar/data/event/Event;

    invoke-direct {v0, p1, p2}, Lcom/layar/data/event/Event;-><init>(SLjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/layar/data/event/EventsManager;->add(Lcom/layar/data/event/Event;)V

    goto :goto_0
.end method

.method public add(SLjava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "code"
    .parameter "layerName"
    .parameter "poiId"
    .parameter "distance"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/layar/data/event/EventsManager;->mActive:Z

    if-nez v0, :cond_0

    .line 67
    :goto_0
    return-void

    .line 66
    :cond_0
    new-instance v0, Lcom/layar/data/event/Event;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/layar/data/event/Event;-><init>(SLjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/layar/data/event/EventsManager;->add(Lcom/layar/data/event/Event;)V

    goto :goto_0
.end method

.method public add(SLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .parameter "code"
    .parameter "layerName"
    .parameter "poiId"
    .parameter "distance"
    .parameter "action"

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/layar/data/event/EventsManager;->mActive:Z

    if-nez v0, :cond_0

    .line 73
    :goto_0
    return-void

    .line 72
    :cond_0
    new-instance v0, Lcom/layar/data/event/Event;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/layar/data/event/Event;-><init>(SLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/layar/data/event/EventsManager;->add(Lcom/layar/data/event/Event;)V

    goto :goto_0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/layar/data/event/EventsManager;->mActive:Z

    return v0
.end method

.method public postEvents()Z
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/layar/data/event/EventsManager;->postEvents(Z)Z

    move-result v0

    return v0
.end method

.method public postEvents(Z)Z
    .locals 7
    .parameter "flush"

    .prologue
    const/4 v6, 0x0

    .line 100
    if-nez p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/layar/data/event/EventsManager;->mLastPost:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x7530

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    move v1, v6

    .line 121
    :goto_0
    return v1

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/layar/data/event/EventsManager;->mEvents:Ljava/util/ArrayList;

    monitor-enter v1

    .line 104
    :try_start_0
    iget-object v2, p0, Lcom/layar/data/event/EventsManager;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    if-nez p1, :cond_2

    iget-object v2, p0, Lcom/layar/data/event/EventsManager;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x32

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 105
    :cond_1
    monitor-exit v1

    move v1, v6

    goto :goto_0

    .line 107
    :cond_2
    iget-object v2, p0, Lcom/layar/data/event/EventsManager;->mTask:Lcom/layar/data/event/EventsManager$PostTask;

    if-eqz v2, :cond_3

    .line 108
    iget-object v2, p0, Lcom/layar/data/event/EventsManager;->mTask:Lcom/layar/data/event/EventsManager$PostTask;

    invoke-virtual {v2}, Lcom/layar/data/event/EventsManager$PostTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 109
    iget-object v2, p0, Lcom/layar/data/event/EventsManager;->mTask:Lcom/layar/data/event/EventsManager$PostTask;

    invoke-virtual {v2}, Lcom/layar/data/event/EventsManager$PostTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v3, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v2, v3, :cond_4

    .line 110
    :cond_3
    new-instance v2, Lcom/layar/data/event/EventsManager$PostTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/layar/data/event/EventsManager$PostTask;-><init>(Lcom/layar/data/event/EventsManager;Lcom/layar/data/event/EventsManager$PostTask;)V

    iput-object v2, p0, Lcom/layar/data/event/EventsManager;->mTask:Lcom/layar/data/event/EventsManager$PostTask;

    .line 112
    iget-object v2, p0, Lcom/layar/data/event/EventsManager;->mEvents:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/layar/data/event/EventsManager;->mEventsPosted:Ljava/util/ArrayList;

    .line 113
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/layar/data/event/EventsManager;->mEvents:Ljava/util/ArrayList;

    .line 115
    iget-object v2, p0, Lcom/layar/data/event/EventsManager;->mEventsPosted:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v0, v2, [Lcom/layar/data/event/Event;

    .line 116
    .local v0, events:[Lcom/layar/data/event/Event;
    iget-object v2, p0, Lcom/layar/data/event/EventsManager;->mEventsPosted:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 117
    iget-object v2, p0, Lcom/layar/data/event/EventsManager;->mTask:Lcom/layar/data/event/EventsManager$PostTask;

    invoke-virtual {v2, v0}, Lcom/layar/data/event/EventsManager$PostTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 118
    monitor-exit v1

    const/4 v1, 0x1

    goto :goto_0

    .line 121
    .end local v0           #events:[Lcom/layar/data/event/Event;
    :cond_4
    monitor-exit v1

    move v1, v6

    goto :goto_0

    .line 103
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setActive(Z)V
    .locals 0
    .parameter "active"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/layar/data/event/EventsManager;->mActive:Z

    .line 90
    return-void
.end method
