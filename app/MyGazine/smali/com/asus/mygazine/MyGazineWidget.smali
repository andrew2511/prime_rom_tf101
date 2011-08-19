.class public Lcom/asus/mygazine/MyGazineWidget;
.super Landroid/appwidget/AppWidgetProvider;
.source "MyGazineWidget.java"

# interfaces
.implements Lcom/asus/mygazine/PhotoMonitor$PhotoChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/mygazine/MyGazineWidget$CommandThread;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field public static mCtx:Landroid/content/Context;

.field private static sInstance:Lcom/asus/mygazine/MyGazineWidget;

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
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 28
    const-string v0, "ro.debuggable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/asus/mygazine/MyGazineWidget;->DBG:Z

    .line 30
    sput-boolean v1, Lcom/asus/mygazine/MyGazineWidget;->sSendToMusic:Z

    .line 31
    sput-object v3, Lcom/asus/mygazine/MyGazineWidget;->sInstance:Lcom/asus/mygazine/MyGazineWidget;

    .line 37
    sput-object v3, Lcom/asus/mygazine/MyGazineWidget;->mCtx:Landroid/content/Context;

    return-void

    :cond_0
    move v0, v1

    .line 28
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/mygazine/MyGazineWidget;->mCmdThread:Ljava/lang/Thread;

    .line 35
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/asus/mygazine/MyGazineWidget;->mCmdlock:[I

    .line 36
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/asus/mygazine/MyGazineWidget;->mCmds:Ljava/util/Queue;

    .line 41
    invoke-static {p0}, Lcom/asus/mygazine/MyGazineWidget;->setInstance(Lcom/asus/mygazine/MyGazineWidget;)V

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/asus/mygazine/MyGazineWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/asus/mygazine/MyGazineWidget;->doEventQueueChange()V

    return-void
.end method

.method static synthetic access$100(Lcom/asus/mygazine/MyGazineWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/asus/mygazine/MyGazineWidget;->doWebQueueChange()V

    return-void
.end method

.method static synthetic access$200(Lcom/asus/mygazine/MyGazineWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/asus/mygazine/MyGazineWidget;->doMusicChange()V

    return-void
.end method

.method static synthetic access$300(Lcom/asus/mygazine/MyGazineWidget;)Ljava/util/Queue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/asus/mygazine/MyGazineWidget;->mCmds:Ljava/util/Queue;

    return-object v0
.end method

.method private doEventQueueChange()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 137
    sget-object v0, Lcom/asus/mygazine/MyGazineWidget;->mCtx:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 139
    sget-boolean v0, Lcom/asus/mygazine/MyGazineWidget;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "MyGazineWidget"

    const-string v1, "MyGazineWidget - doEventQueueChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_0
    sget-object v1, Lcom/asus/mygazine/MyGazineWidget;->mCtx:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/asus/mygazine/MyGazineWidget;->performUpdate(Landroid/content/Context;Landroid/content/Intent;IIZ)V

    .line 142
    :cond_1
    return-void
.end method

.method private doMusicChange()V
    .locals 6

    .prologue
    .line 157
    sget-object v0, Lcom/asus/mygazine/MyGazineWidget;->mCtx:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 159
    sget-boolean v0, Lcom/asus/mygazine/MyGazineWidget;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "MyGazineWidget"

    const-string v1, "MyGazineWidget - doMusicChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_0
    sget-object v1, Lcom/asus/mygazine/MyGazineWidget;->mCtx:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/asus/mygazine/MyGazineWidget;->performUpdate(Landroid/content/Context;Landroid/content/Intent;IIZ)V

    .line 162
    :cond_1
    return-void
.end method

.method private doWebQueueChange()V
    .locals 6

    .prologue
    .line 147
    sget-object v0, Lcom/asus/mygazine/MyGazineWidget;->mCtx:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 149
    sget-boolean v0, Lcom/asus/mygazine/MyGazineWidget;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "MyGazineWidget"

    const-string v1, "MyGazineWidget - doWebQueueChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_0
    sget-object v1, Lcom/asus/mygazine/MyGazineWidget;->mCtx:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/asus/mygazine/MyGazineWidget;->performUpdate(Landroid/content/Context;Landroid/content/Intent;IIZ)V

    .line 152
    :cond_1
    return-void
.end method

.method public static getInstance()Lcom/asus/mygazine/MyGazineWidget;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/asus/mygazine/MyGazineWidget;->sInstance:Lcom/asus/mygazine/MyGazineWidget;

    return-object v0
.end method

.method public static setInstance(Lcom/asus/mygazine/MyGazineWidget;)V
    .locals 1
    .parameter "obj"

    .prologue
    .line 47
    sget-object v0, Lcom/asus/mygazine/MyGazineWidget;->sInstance:Lcom/asus/mygazine/MyGazineWidget;

    if-nez v0, :cond_0

    .line 48
    sput-object p0, Lcom/asus/mygazine/MyGazineWidget;->sInstance:Lcom/asus/mygazine/MyGazineWidget;

    .line 49
    :cond_0
    return-void
.end method


# virtual methods
.method public addCommand(I)V
    .locals 3
    .parameter "cmd"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/asus/mygazine/MyGazineWidget;->mCmdlock:[I

    monitor-enter v0

    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/asus/mygazine/MyGazineWidget;->mCmds:Ljava/util/Queue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 88
    iget-object v1, p0, Lcom/asus/mygazine/MyGazineWidget;->mCmds:Ljava/util/Queue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 89
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    iget-object v0, p0, Lcom/asus/mygazine/MyGazineWidget;->mCmdThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asus/mygazine/MyGazineWidget;->mCmdThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 93
    :cond_0
    new-instance v0, Lcom/asus/mygazine/MyGazineWidget$CommandThread;

    invoke-direct {v0, p0}, Lcom/asus/mygazine/MyGazineWidget$CommandThread;-><init>(Lcom/asus/mygazine/MyGazineWidget;)V

    iput-object v0, p0, Lcom/asus/mygazine/MyGazineWidget;->mCmdThread:Ljava/lang/Thread;

    .line 94
    iget-object v0, p0, Lcom/asus/mygazine/MyGazineWidget;->mCmdThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 96
    :cond_1
    return-void

    .line 89
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
    .line 123
    iget-object v1, p0, Lcom/asus/mygazine/MyGazineWidget;->mCmdlock:[I

    monitor-enter v1

    .line 126
    :try_start_0
    iget-object v2, p0, Lcom/asus/mygazine/MyGazineWidget;->mCmds:Ljava/util/Queue;

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

    .line 129
    :goto_0
    return v1

    .line 128
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 129
    .local v0, e:Ljava/util/NoSuchElementException;
    const/4 v2, -0x1

    monitor-exit v1

    move v1, v2

    goto :goto_0

    .line 131
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

    .line 168
    sget-boolean v0, Lcom/asus/mygazine/MyGazineWidget;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "MyGazineWidget"

    const-string v1, "onChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_0
    const/4 v2, 0x0

    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/asus/mygazine/MyGazineWidget;->performUpdate(Landroid/content/Context;Landroid/content/Intent;IIZ)V

    .line 170
    return-void
.end method

.method public onDeleted(Landroid/content/Context;[I)V
    .locals 3
    .parameter "context"
    .parameter "appWidgetIds"

    .prologue
    .line 266
    sget-boolean v0, Lcom/asus/mygazine/MyGazineWidget;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "MyGazineWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeleted - sSendToMusic="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/asus/mygazine/MyGazineWidget;->sSendToMusic:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_0
    invoke-static {p1}, Lcom/asus/mygazine/WidgetSizeDBHelper;->getInstance(Landroid/content/Context;)Lcom/asus/mygazine/WidgetSizeDBHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/asus/mygazine/WidgetSizeDBHelper;->deleteWidget([I)V

    .line 268
    const/4 v0, 0x0

    sput-boolean v0, Lcom/asus/mygazine/MyGazineWidget;->sSendToMusic:Z

    .line 269
    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 234
    sget-boolean v0, Lcom/asus/mygazine/MyGazineWidget;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "MyGazineWidget"

    const-string v1, "onDisabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_0
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    .line 236
    invoke-static {p1}, Lcom/asus/mygazine/PhotoMonitor;->getInstance(Landroid/content/Context;)Lcom/asus/mygazine/PhotoMonitor;

    move-result-object v0

    sget-object v1, Lcom/asus/mygazine/MyGazineWidget;->sInstance:Lcom/asus/mygazine/MyGazineWidget;

    invoke-virtual {v0, v1}, Lcom/asus/mygazine/PhotoMonitor;->disable(Lcom/asus/mygazine/PhotoMonitor$PhotoChangeListener;)V

    .line 243
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/asus/mygazine/CalendarUtils;->stopAlarm(Landroid/content/Context;I)V

    .line 244
    invoke-static {p1, v4}, Lcom/asus/mygazine/CalendarUtils;->stopAlarm(Landroid/content/Context;I)V

    .line 245
    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/asus/mygazine/MyGazineWidget;->performUpdate(Landroid/content/Context;Landroid/content/Intent;IIZ)V

    .line 246
    sput-object v2, Lcom/asus/mygazine/MyGazineWidget;->sInstance:Lcom/asus/mygazine/MyGazineWidget;

    .line 247
    sput-object v2, Lcom/asus/mygazine/MyGazineWidget;->mCtx:Landroid/content/Context;

    .line 248
    invoke-static {p1}, Lcom/asus/mygazine/WidgetSizeDBHelper;->getInstance(Landroid/content/Context;)Lcom/asus/mygazine/WidgetSizeDBHelper;

    move-result-object v6

    .line 249
    .local v6, dbHelper:Lcom/asus/mygazine/WidgetSizeDBHelper;
    invoke-virtual {v6, v5}, Lcom/asus/mygazine/WidgetSizeDBHelper;->disableWidget(I)V

    .line 250
    invoke-static {p1}, Lcom/asus/mygazine/PhotoMonitor;->getInstance(Landroid/content/Context;)Lcom/asus/mygazine/PhotoMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/mygazine/PhotoMonitor;->getListenerCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 252
    invoke-static {p1}, Lcom/asus/mygazine/PhotoMonitor;->getInstance(Landroid/content/Context;)Lcom/asus/mygazine/PhotoMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/mygazine/PhotoMonitor;->closeDB()V

    .line 253
    const-string v0, "MyGazineWidget"

    const-string v1, "stop service by MyZine1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 256
    .local v7, intent:Landroid/content/Intent;
    const-string v0, "com.asus.mygazine"

    const-string v1, "com.asus.mygazine.WidgetService"

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    invoke-virtual {p1, v7}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 258
    invoke-virtual {v6}, Lcom/asus/mygazine/WidgetSizeDBHelper;->close()V

    .line 260
    .end local v7           #intent:Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 227
    sget-boolean v0, Lcom/asus/mygazine/MyGazineWidget;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "MyGazineWidget"

    const-string v1, "onEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 182
    sget-boolean v0, Lcom/asus/mygazine/MyGazineWidget;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "MyGazineWidget"

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

    .line 183
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 184
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 185
    const-string v1, "com.asus.mygazine.APPWIDGET_UPDATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android.appwidget.action.APPWIDGET_ENABLED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 186
    :cond_1
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/asus/mygazine/MyGazineWidget;

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 187
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    .line 188
    sget-boolean v2, Lcom/asus/mygazine/MyGazineWidget;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "MyGazineWidget"

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

    .line 189
    :cond_2
    array-length v1, v1

    if-lez v1, :cond_4

    sget-object v1, Lcom/asus/mygazine/MyGazineWidget;->mCtx:Landroid/content/Context;

    if-nez v1, :cond_4

    .line 192
    sput-object p1, Lcom/asus/mygazine/MyGazineWidget;->mCtx:Landroid/content/Context;

    .line 194
    invoke-static {p1}, Lcom/asus/mygazine/PhotoMonitor;->getInstance(Landroid/content/Context;)Lcom/asus/mygazine/PhotoMonitor;

    move-result-object v1

    sget-object v2, Lcom/asus/mygazine/MyGazineWidget;->sInstance:Lcom/asus/mygazine/MyGazineWidget;

    invoke-virtual {v1, v2}, Lcom/asus/mygazine/PhotoMonitor;->enable(Lcom/asus/mygazine/PhotoMonitor$PhotoChangeListener;)V

    .line 197
    invoke-static {}, Lcom/asus/mygazine/BrowserUtils;->getInstance()Lcom/asus/mygazine/BrowserUtils;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/asus/mygazine/BrowserUtils;->registerCallback(Landroid/content/ContentResolver;)V

    .line 198
    invoke-static {}, Lcom/asus/mygazine/MusicUtils;->getInstance()Lcom/asus/mygazine/MusicUtils;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/asus/mygazine/MusicUtils;->registerCallback(Landroid/content/ContentResolver;)V

    .line 200
    const-string v1, "android.appwidget.action.APPWIDGET_ENABLED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 201
    const-string v1, "MyGazineWidget"

    const-string v2, "onReceive: enable widget"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_3
    const-string v1, "com.asus.mygazine.APPWIDGET_UPDATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 205
    const-string v0, "MyGazineWidget"

    const-string v1, "onReceive: restart widget"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/4 v2, 0x0

    const/4 v3, 0x5

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/asus/mygazine/MyGazineWidget;->performUpdate(Landroid/content/Context;Landroid/content/Intent;IIZ)V

    .line 221
    :cond_4
    :goto_0
    return-void

    .line 210
    :cond_5
    const-string v1, "com.asus.appwidget.action.RESIZE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 211
    const-string v0, "appWidget_id"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 212
    const-string v1, "newSize"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    .line 213
    sget-boolean v2, Lcom/asus/mygazine/MyGazineWidget;->DBG:Z

    if-eqz v2, :cond_6

    const-string v2, "MyGazineWidget"

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

    aget v6, v1, v4

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " newSize[1]="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v5, v1, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_6
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.asus.myzine.resize"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 215
    const-string v3, "com.asus.mygazine"

    const-string v5, "com.asus.mygazine.WidgetService"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    const-string v3, "widget_id"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 217
    const-string v0, "size"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 218
    const-string v0, "widget_type"

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 219
    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 6
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    const/4 v4, 0x0

    .line 60
    sget-boolean v0, Lcom/asus/mygazine/MyGazineWidget;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "MyGazineWidget"

    const-string v1, "onUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_0
    invoke-static {p1}, Lcom/asus/mygazine/WidgetSizeDBHelper;->getInstance(Landroid/content/Context;)Lcom/asus/mygazine/WidgetSizeDBHelper;

    move-result-object v0

    invoke-virtual {v0, v4, p3}, Lcom/asus/mygazine/WidgetSizeDBHelper;->updateWidget(I[I)V

    .line 62
    const/4 v2, 0x0

    const/4 v3, 0x5

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/asus/mygazine/MyGazineWidget;->performUpdate(Landroid/content/Context;Landroid/content/Intent;IIZ)V

    .line 63
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
    .line 68
    sget-boolean v1, Lcom/asus/mygazine/MyGazineWidget;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "MyGazineWidget"

    const-string v2, "performUpdate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_0
    const/4 v0, 0x0

    .line 71
    .local v0, sendIntent:Landroid/content/Intent;
    if-eqz p2, :cond_1

    move-object v0, p2

    .line 72
    :goto_0
    const-string v1, "com.asus.mygazine"

    const-string v2, "com.asus.mygazine.WidgetService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const-string v1, "update_type"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 74
    const-string v1, "operation"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 75
    const-string v1, "updating"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 76
    const-string v1, "widget_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 77
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 78
    return-void

    .line 71
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
    .line 176
    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/asus/mygazine/MyGazineWidget;->performUpdate(Landroid/content/Context;Landroid/content/Intent;IIZ)V

    .line 177
    return-void
.end method
