.class public Lcom/asus/mygazine/MyGazineWidget2;
.super Landroid/appwidget/AppWidgetProvider;
.source "MyGazineWidget2.java"

# interfaces
.implements Lcom/asus/mygazine/PhotoMonitor$PhotoChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/mygazine/MyGazineWidget2$CommandThread;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field public static mCtx:Landroid/content/Context;

.field private static sInstance:Lcom/asus/mygazine/MyGazineWidget2;

.field public static sSendToMusic:Z


# instance fields
.field private mCmdThread:Ljava/lang/Thread;

.field private mCmdlock:[I

.field private mCmds:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 26
    const-string v0, "ro.debuggable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/asus/mygazine/MyGazineWidget2;->DBG:Z

    .line 28
    sput-boolean v1, Lcom/asus/mygazine/MyGazineWidget2;->sSendToMusic:Z

    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/asus/mygazine/MyGazineWidget2;->mCtx:Landroid/content/Context;

    return-void

    :cond_0
    move v0, v1

    .line 26
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/mygazine/MyGazineWidget2;->mCmdThread:Ljava/lang/Thread;

    .line 33
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/asus/mygazine/MyGazineWidget2;->mCmdlock:[I

    .line 34
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/asus/mygazine/MyGazineWidget2;->mCmds:Ljava/util/Queue;

    .line 37
    invoke-static {p0}, Lcom/asus/mygazine/MyGazineWidget2;->setInstance(Lcom/asus/mygazine/MyGazineWidget2;)V

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/asus/mygazine/MyGazineWidget2;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/asus/mygazine/MyGazineWidget2;->doEventQueueChange()V

    return-void
.end method

.method static synthetic access$100(Lcom/asus/mygazine/MyGazineWidget2;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/asus/mygazine/MyGazineWidget2;->doWebQueueChange()V

    return-void
.end method

.method static synthetic access$200(Lcom/asus/mygazine/MyGazineWidget2;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/asus/mygazine/MyGazineWidget2;->doEmailQueueChange()V

    return-void
.end method

.method static synthetic access$300(Lcom/asus/mygazine/MyGazineWidget2;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/asus/mygazine/MyGazineWidget2;->doReaderQueueChange()V

    return-void
.end method

.method static synthetic access$400(Lcom/asus/mygazine/MyGazineWidget2;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/asus/mygazine/MyGazineWidget2;->doReaderPageQueueChange()V

    return-void
.end method

.method static synthetic access$500(Lcom/asus/mygazine/MyGazineWidget2;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/asus/mygazine/MyGazineWidget2;->doMusicChange()V

    return-void
.end method

.method static synthetic access$600(Lcom/asus/mygazine/MyGazineWidget2;)Ljava/util/Queue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/asus/mygazine/MyGazineWidget2;->mCmds:Ljava/util/Queue;

    return-object v0
.end method

.method private doEmailQueueChange()V
    .locals 6

    .prologue
    .line 226
    sget-object v0, Lcom/asus/mygazine/MyGazineWidget2;->mCtx:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 227
    sget-boolean v0, Lcom/asus/mygazine/MyGazineWidget2;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "MyGazineWidget2"

    const-string v1, "doEmailQueueChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_0
    sget-object v1, Lcom/asus/mygazine/MyGazineWidget2;->mCtx:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/asus/mygazine/MyGazineWidget2;->performUpdate(Landroid/content/Context;Landroid/content/Intent;IIZ)V

    .line 230
    :cond_1
    return-void
.end method

.method private doEventQueueChange()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 193
    sget-object v0, Lcom/asus/mygazine/MyGazineWidget2;->mCtx:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 194
    sget-boolean v0, Lcom/asus/mygazine/MyGazineWidget2;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "MyGazineWidget2"

    const-string v1, "doEventQueueChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_0
    sget-object v1, Lcom/asus/mygazine/MyGazineWidget2;->mCtx:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/asus/mygazine/MyGazineWidget2;->performUpdate(Landroid/content/Context;Landroid/content/Intent;IIZ)V

    .line 197
    :cond_1
    return-void
.end method

.method private doMusicChange()V
    .locals 6

    .prologue
    .line 207
    sget-object v0, Lcom/asus/mygazine/MyGazineWidget2;->mCtx:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 209
    sget-boolean v0, Lcom/asus/mygazine/MyGazineWidget2;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "MyGazineWidget2"

    const-string v1, "MyGazineWidget2 - doMusicChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_0
    sget-object v1, Lcom/asus/mygazine/MyGazineWidget2;->mCtx:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/asus/mygazine/MyGazineWidget2;->performUpdate(Landroid/content/Context;Landroid/content/Intent;IIZ)V

    .line 212
    :cond_1
    return-void
.end method

.method private doReaderPageQueueChange()V
    .locals 6

    .prologue
    .line 180
    sget-object v0, Lcom/asus/mygazine/MyGazineWidget2;->mCtx:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 181
    sget-boolean v0, Lcom/asus/mygazine/MyGazineWidget2;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "MyGazineWidget2"

    const-string v1, "doReaderQueueChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_0
    sget-object v1, Lcom/asus/mygazine/MyGazineWidget2;->mCtx:Landroid/content/Context;

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/asus/mygazine/MyGazineWidget2;->performUpdate(Landroid/content/Context;Landroid/content/Intent;IIZ)V

    .line 184
    :cond_1
    return-void
.end method

.method private doReaderQueueChange()V
    .locals 6

    .prologue
    .line 187
    sget-object v0, Lcom/asus/mygazine/MyGazineWidget2;->mCtx:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 188
    sget-boolean v0, Lcom/asus/mygazine/MyGazineWidget2;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "MyGazineWidget2"

    const-string v1, "doReaderQueueChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_0
    sget-object v1, Lcom/asus/mygazine/MyGazineWidget2;->mCtx:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x7

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/asus/mygazine/MyGazineWidget2;->performUpdate(Landroid/content/Context;Landroid/content/Intent;IIZ)V

    .line 191
    :cond_1
    return-void
.end method

.method private doWebQueueChange()V
    .locals 6

    .prologue
    .line 200
    sget-object v0, Lcom/asus/mygazine/MyGazineWidget2;->mCtx:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 201
    sget-boolean v0, Lcom/asus/mygazine/MyGazineWidget2;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "MyGazineWidget2"

    const-string v1, "doWebQueueChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_0
    sget-object v1, Lcom/asus/mygazine/MyGazineWidget2;->mCtx:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/asus/mygazine/MyGazineWidget2;->performUpdate(Landroid/content/Context;Landroid/content/Intent;IIZ)V

    .line 204
    :cond_1
    return-void
.end method

.method public static getInstance()Lcom/asus/mygazine/MyGazineWidget2;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/asus/mygazine/MyGazineWidget2;->sInstance:Lcom/asus/mygazine/MyGazineWidget2;

    return-object v0
.end method

.method public static setInstance(Lcom/asus/mygazine/MyGazineWidget2;)V
    .locals 1
    .parameter "obj"

    .prologue
    .line 44
    sget-object v0, Lcom/asus/mygazine/MyGazineWidget2;->sInstance:Lcom/asus/mygazine/MyGazineWidget2;

    if-nez v0, :cond_0

    .line 45
    sput-object p0, Lcom/asus/mygazine/MyGazineWidget2;->sInstance:Lcom/asus/mygazine/MyGazineWidget2;

    .line 46
    :cond_0
    return-void
.end method


# virtual methods
.method public addCommand(I)V
    .locals 3
    .parameter "cmd"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/asus/mygazine/MyGazineWidget2;->mCmdlock:[I

    monitor-enter v0

    .line 140
    :try_start_0
    iget-object v1, p0, Lcom/asus/mygazine/MyGazineWidget2;->mCmds:Ljava/util/Queue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 141
    iget-object v1, p0, Lcom/asus/mygazine/MyGazineWidget2;->mCmds:Ljava/util/Queue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 142
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    iget-object v0, p0, Lcom/asus/mygazine/MyGazineWidget2;->mCmdThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asus/mygazine/MyGazineWidget2;->mCmdThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 146
    :cond_0
    new-instance v0, Lcom/asus/mygazine/MyGazineWidget2$CommandThread;

    invoke-direct {v0, p0}, Lcom/asus/mygazine/MyGazineWidget2$CommandThread;-><init>(Lcom/asus/mygazine/MyGazineWidget2;)V

    iput-object v0, p0, Lcom/asus/mygazine/MyGazineWidget2;->mCmdThread:Ljava/lang/Thread;

    .line 147
    iget-object v0, p0, Lcom/asus/mygazine/MyGazineWidget2;->mCmdThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 149
    :cond_1
    return-void

    .line 142
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public dequeueCommand()I
    .locals 3

    .prologue
    .line 215
    iget-object v1, p0, Lcom/asus/mygazine/MyGazineWidget2;->mCmdlock:[I

    monitor-enter v1

    .line 218
    :try_start_0
    iget-object v2, p0, Lcom/asus/mygazine/MyGazineWidget2;->mCmds:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :try_start_1
    monitor-exit v1

    move v1, v2

    .line 221
    :goto_0
    return v1

    .line 220
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 221
    .local v0, e:Ljava/util/NoSuchElementException;
    const/4 v2, -0x1

    monitor-exit v1

    move v1, v2

    goto :goto_0

    .line 223
    .end local v0           #e:Ljava/util/NoSuchElementException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public onChange(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    .line 245
    sget-boolean v0, Lcom/asus/mygazine/MyGazineWidget2;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "MyGazineWidget2"

    const-string v1, "onChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_0
    const/4 v2, 0x0

    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/asus/mygazine/MyGazineWidget2;->performUpdate(Landroid/content/Context;Landroid/content/Intent;IIZ)V

    .line 247
    return-void
.end method

.method public onDeleted(Landroid/content/Context;[I)V
    .locals 3
    .parameter "context"
    .parameter "appWidgetIds"

    .prologue
    .line 130
    sget-boolean v0, Lcom/asus/mygazine/MyGazineWidget2;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "MyGazineWidget2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeleted - sSendToMusic="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/asus/mygazine/MyGazineWidget2;->sSendToMusic:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_0
    invoke-static {p1}, Lcom/asus/mygazine/WidgetSizeDBHelper;->getInstance(Landroid/content/Context;)Lcom/asus/mygazine/WidgetSizeDBHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/asus/mygazine/WidgetSizeDBHelper;->deleteWidget([I)V

    .line 132
    const/4 v0, 0x0

    sput-boolean v0, Lcom/asus/mygazine/MyGazineWidget2;->sSendToMusic:Z

    .line 133
    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 110
    sget-boolean v0, Lcom/asus/mygazine/MyGazineWidget2;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "MyGazineWidget2"

    const-string v1, "onDisabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_0
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    .line 112
    invoke-static {p1}, Lcom/asus/mygazine/PhotoMonitor;->getInstance(Landroid/content/Context;)Lcom/asus/mygazine/PhotoMonitor;

    move-result-object v0

    sget-object v1, Lcom/asus/mygazine/MyGazineWidget2;->sInstance:Lcom/asus/mygazine/MyGazineWidget2;

    invoke-virtual {v0, v1}, Lcom/asus/mygazine/PhotoMonitor;->disable(Lcom/asus/mygazine/PhotoMonitor$PhotoChangeListener;)V

    .line 113
    const/4 v3, -0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/asus/mygazine/MyGazineWidget2;->performUpdate(Landroid/content/Context;Landroid/content/Intent;IIZ)V

    .line 114
    sput-object v2, Lcom/asus/mygazine/MyGazineWidget2;->mCtx:Landroid/content/Context;

    .line 115
    sput-object v2, Lcom/asus/mygazine/MyGazineWidget2;->sInstance:Lcom/asus/mygazine/MyGazineWidget2;

    .line 116
    invoke-static {p1}, Lcom/asus/mygazine/WidgetSizeDBHelper;->getInstance(Landroid/content/Context;)Lcom/asus/mygazine/WidgetSizeDBHelper;

    move-result-object v6

    .line 117
    .local v6, dbHelper:Lcom/asus/mygazine/WidgetSizeDBHelper;
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Lcom/asus/mygazine/WidgetSizeDBHelper;->disableWidget(I)V

    .line 118
    invoke-static {p1}, Lcom/asus/mygazine/PhotoMonitor;->getInstance(Landroid/content/Context;)Lcom/asus/mygazine/PhotoMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/mygazine/PhotoMonitor;->getListenerCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 119
    invoke-static {p1}, Lcom/asus/mygazine/PhotoMonitor;->getInstance(Landroid/content/Context;)Lcom/asus/mygazine/PhotoMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/mygazine/PhotoMonitor;->closeDB()V

    .line 120
    const-string v0, "MyGazineWidget2"

    const-string v1, "stop service by MyZine2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 123
    .local v7, intent:Landroid/content/Intent;
    const-string v0, "com.asus.mygazine"

    const-string v1, "com.asus.mygazine.WidgetService"

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    invoke-virtual {p1, v7}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 125
    invoke-virtual {v6}, Lcom/asus/mygazine/WidgetSizeDBHelper;->close()V

    .line 127
    .end local v7           #intent:Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    .line 97
    sget-boolean v0, Lcom/asus/mygazine/MyGazineWidget2;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "MyGazineWidget2"

    const-string v1, "onEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 50
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 51
    sget-boolean v0, Lcom/asus/mygazine/MyGazineWidget2;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "MyGazineWidget2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mygazine onReceive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 53
    const-string v1, "com.asus.mygazine.APPWIDGET_UPDATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android.appwidget.action.APPWIDGET_ENABLED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 54
    :cond_1
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/asus/mygazine/MyGazineWidget2;

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    .line 56
    sget-boolean v2, Lcom/asus/mygazine/MyGazineWidget2;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "MyGazineWidget2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive: widgetIds.length = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v6, v1

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_2
    array-length v1, v1

    if-lez v1, :cond_4

    sget-object v1, Lcom/asus/mygazine/MyGazineWidget2;->mCtx:Landroid/content/Context;

    if-nez v1, :cond_4

    .line 61
    sput-object p1, Lcom/asus/mygazine/MyGazineWidget2;->mCtx:Landroid/content/Context;

    .line 63
    invoke-static {p1}, Lcom/asus/mygazine/PhotoMonitor;->getInstance(Landroid/content/Context;)Lcom/asus/mygazine/PhotoMonitor;

    move-result-object v1

    sget-object v2, Lcom/asus/mygazine/MyGazineWidget2;->sInstance:Lcom/asus/mygazine/MyGazineWidget2;

    invoke-virtual {v1, v2}, Lcom/asus/mygazine/PhotoMonitor;->enable(Lcom/asus/mygazine/PhotoMonitor$PhotoChangeListener;)V

    .line 66
    invoke-static {}, Lcom/asus/mygazine/BrowserUtils;->getInstance()Lcom/asus/mygazine/BrowserUtils;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/asus/mygazine/BrowserUtils;->registerCallback(Landroid/content/ContentResolver;)V

    .line 67
    invoke-static {}, Lcom/asus/mygazine/EmailUtils;->getInstance()Lcom/asus/mygazine/EmailUtils;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/asus/mygazine/EmailUtils;->registerCallback(Landroid/content/ContentResolver;)V

    .line 68
    invoke-static {}, Lcom/asus/mygazine/ReaderUtils;->getInstance()Lcom/asus/mygazine/ReaderUtils;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/asus/mygazine/ReaderUtils;->registerCallback(Landroid/content/ContentResolver;)V

    .line 69
    invoke-static {}, Lcom/asus/mygazine/MusicUtils;->getInstance()Lcom/asus/mygazine/MusicUtils;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/asus/mygazine/MusicUtils;->registerCallback(Landroid/content/ContentResolver;)V

    .line 71
    const-string v1, "android.appwidget.action.APPWIDGET_ENABLED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 72
    const-string v1, "MyGazineWidget2"

    const-string v2, "onReceive: enable widget"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_3
    const-string v1, "com.asus.mygazine.APPWIDGET_UPDATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 75
    const-string v0, "MyGazineWidget2"

    const-string v1, "onReceive: restart widget"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const/4 v2, 0x0

    const/4 v3, 0x5

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/asus/mygazine/MyGazineWidget2;->performUpdate(Landroid/content/Context;Landroid/content/Intent;IIZ)V

    .line 91
    :cond_4
    :goto_0
    return-void

    .line 80
    :cond_5
    const-string v1, "com.asus.appwidget.action.RESIZE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 81
    const-string v0, "appWidget_id"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 82
    const-string v1, "newSize"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    .line 83
    sget-boolean v2, Lcom/asus/mygazine/MyGazineWidget2;->DBG:Z

    if-eqz v2, :cond_6

    const-string v2, "MyGazineWidget2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive()- widgetId="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " newSize[0]="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " newSize[1]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_6
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.asus.myzine.resize"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    const-string v3, "com.asus.mygazine"

    const-string v4, "com.asus.mygazine.WidgetService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    const-string v3, "widget_id"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 87
    const-string v0, "size"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 88
    const-string v0, "widget_type"

    invoke-virtual {v2, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 89
    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 6
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    const/4 v5, 0x1

    .line 102
    sget-boolean v0, Lcom/asus/mygazine/MyGazineWidget2;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "MyGazineWidget2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdate- context="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_0
    invoke-static {p1}, Lcom/asus/mygazine/WidgetSizeDBHelper;->getInstance(Landroid/content/Context;)Lcom/asus/mygazine/WidgetSizeDBHelper;

    move-result-object v0

    invoke-virtual {v0, v5, p3}, Lcom/asus/mygazine/WidgetSizeDBHelper;->updateWidget(I[I)V

    .line 105
    const/4 v2, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/asus/mygazine/MyGazineWidget2;->performUpdate(Landroid/content/Context;Landroid/content/Intent;IIZ)V

    .line 106
    return-void
.end method

.method public performUpdate(Landroid/content/Context;Landroid/content/Intent;IIZ)V
    .locals 3
    .parameter "context"
    .parameter "intent"
    .parameter "type"
    .parameter "operation"
    .parameter "updating"

    .prologue
    .line 232
    sget-boolean v1, Lcom/asus/mygazine/MyGazineWidget2;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "MyGazineWidget2"

    const-string v2, "performUpdate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_0
    const/4 v0, 0x0

    .line 235
    .local v0, sendIntent:Landroid/content/Intent;
    if-eqz p2, :cond_1

    move-object v0, p2

    .line 236
    :goto_0
    const-string v1, "com.asus.mygazine"

    const-string v2, "com.asus.mygazine.WidgetService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    const-string v1, "update_type"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 238
    const-string v1, "operation"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 239
    const-string v1, "updating"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 240
    const-string v1, "widget_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 241
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 242
    return-void

    .line 235
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    move-object v0, v1

    goto :goto_0
.end method

.method public stopSlideShow(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 250
    sget-boolean v0, Lcom/asus/mygazine/MyGazineWidget2;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "MyGazineWidget2"

    const-string v1, "stopSlideShow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_0
    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/asus/mygazine/MyGazineWidget2;->performUpdate(Landroid/content/Context;Landroid/content/Intent;IIZ)V

    .line 252
    return-void
.end method
