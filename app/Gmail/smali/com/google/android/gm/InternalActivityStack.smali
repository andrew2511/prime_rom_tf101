.class public Lcom/google/android/gm/InternalActivityStack;
.super Ljava/lang/Object;
.source "InternalActivityStack.java"


# static fields
.field private static sActivityStack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/android/gm/InternalActivityStack;->sActivityStack:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static finishAllOtherActivities(Landroid/app/Activity;)V
    .locals 5
    .parameter "a"

    .prologue
    .line 24
    sget-object v2, Lcom/google/android/gm/InternalActivityStack;->sActivityStack:Ljava/util/List;

    monitor-enter v2

    .line 25
    :try_start_0
    sget-object v3, Lcom/google/android/gm/InternalActivityStack;->sActivityStack:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int v0, v3, v4

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 26
    sget-object v3, Lcom/google/android/gm/InternalActivityStack;->sActivityStack:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 27
    .local v1, stackActivity:Landroid/app/Activity;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    if-eq v1, p0, :cond_0

    .line 28
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 29
    sget-object v3, Lcom/google/android/gm/InternalActivityStack;->sActivityStack:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 25
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 32
    .end local v1           #stackActivity:Landroid/app/Activity;
    :cond_1
    monitor-exit v2

    .line 33
    return-void

    .line 32
    .end local v0           #i:I
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static pushActivity(Landroid/app/Activity;)V
    .locals 1
    .parameter "a"

    .prologue
    .line 16
    sget-object v0, Lcom/google/android/gm/InternalActivityStack;->sActivityStack:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    return-void
.end method

.method public static removeActivity(Landroid/app/Activity;)V
    .locals 1
    .parameter "a"

    .prologue
    .line 20
    sget-object v0, Lcom/google/android/gm/InternalActivityStack;->sActivityStack:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 21
    return-void
.end method
