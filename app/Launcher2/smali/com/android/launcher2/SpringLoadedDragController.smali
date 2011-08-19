.class public Lcom/android/launcher2/SpringLoadedDragController;
.super Ljava/lang/Object;
.source "SpringLoadedDragController.java"

# interfaces
.implements Lcom/android/launcher2/OnAlarmListener;


# instance fields
.field final ENTER_SPRING_LOAD_HOVER_TIME:J

.field final EXIT_SPRING_LOAD_HOVER_TIME:J

.field mAlarm:Lcom/android/launcher2/Alarm;

.field mFinishedAnimation:Z

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private mScreen:Lcom/android/launcher2/CellLayout;

.field mWaitingToReenter:Z


# direct methods
.method public constructor <init>(Lcom/android/launcher2/Launcher;)V
    .locals 3
    .parameter "launcher"

    .prologue
    const/4 v2, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/android/launcher2/SpringLoadedDragController;->ENTER_SPRING_LOAD_HOVER_TIME:J

    .line 22
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/android/launcher2/SpringLoadedDragController;->EXIT_SPRING_LOAD_HOVER_TIME:J

    .line 29
    iput-boolean v2, p0, Lcom/android/launcher2/SpringLoadedDragController;->mFinishedAnimation:Z

    .line 30
    iput-boolean v2, p0, Lcom/android/launcher2/SpringLoadedDragController;->mWaitingToReenter:Z

    .line 33
    iput-object p1, p0, Lcom/android/launcher2/SpringLoadedDragController;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 34
    new-instance v0, Lcom/android/launcher2/Alarm;

    invoke-direct {v0}, Lcom/android/launcher2/Alarm;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/SpringLoadedDragController;->mAlarm:Lcom/android/launcher2/Alarm;

    .line 35
    iget-object v0, p0, Lcom/android/launcher2/SpringLoadedDragController;->mAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/Alarm;->setOnAlarmListener(Lcom/android/launcher2/OnAlarmListener;)V

    .line 36
    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/android/launcher2/Alarm;)V
    .locals 2
    .parameter "alarm"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/launcher2/SpringLoadedDragController;->mScreen:Lcom/android/launcher2/CellLayout;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/launcher2/SpringLoadedDragController;->mLauncher:Lcom/android/launcher2/Launcher;

    iget-object v1, p0, Lcom/android/launcher2/SpringLoadedDragController;->mScreen:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->enterSpringLoadedDragMode(Lcom/android/launcher2/CellLayout;)V

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/SpringLoadedDragController;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->exitSpringLoadedDragMode()V

    goto :goto_0
.end method

.method public onDragEnter(Lcom/android/launcher2/CellLayout;Z)V
    .locals 3
    .parameter "cl"
    .parameter "isSpringLoaded"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/launcher2/SpringLoadedDragController;->mScreen:Lcom/android/launcher2/CellLayout;

    .line 40
    iget-object v0, p0, Lcom/android/launcher2/SpringLoadedDragController;->mAlarm:Lcom/android/launcher2/Alarm;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Alarm;->setAlarm(J)V

    .line 41
    iput-boolean p2, p0, Lcom/android/launcher2/SpringLoadedDragController;->mFinishedAnimation:Z

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/SpringLoadedDragController;->mWaitingToReenter:Z

    .line 43
    return-void
.end method

.method public onDragExit()V
    .locals 3

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/launcher2/SpringLoadedDragController;->mScreen:Lcom/android/launcher2/CellLayout;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/android/launcher2/SpringLoadedDragController;->mScreen:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->onDragExit()V

    .line 54
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/SpringLoadedDragController;->mScreen:Lcom/android/launcher2/CellLayout;

    .line 55
    iget-boolean v0, p0, Lcom/android/launcher2/SpringLoadedDragController;->mFinishedAnimation:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher2/SpringLoadedDragController;->mWaitingToReenter:Z

    if-nez v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/android/launcher2/SpringLoadedDragController;->mAlarm:Lcom/android/launcher2/Alarm;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Alarm;->setAlarm(J)V

    .line 58
    :cond_1
    return-void
.end method

.method public onEnterSpringLoadedMode(Z)V
    .locals 1
    .parameter "waitToReenter"

    .prologue
    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/SpringLoadedDragController;->mFinishedAnimation:Z

    .line 47
    iput-boolean p1, p0, Lcom/android/launcher2/SpringLoadedDragController;->mWaitingToReenter:Z

    .line 48
    return-void
.end method
