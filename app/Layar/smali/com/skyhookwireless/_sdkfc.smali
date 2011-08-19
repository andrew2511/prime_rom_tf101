.class public abstract Lcom/skyhookwireless/_sdkfc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/skyhookwireless/_sdkad;


# static fields
.field public static _sdkb:Z


# instance fields
.field private _sdka:Lcom/skyhookwireless/_sdkzc;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected declared-synchronized _sdka()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/skyhookwireless/_sdkfc;->_sdka:Lcom/skyhookwireless/_sdkzc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/skyhookwireless/_sdkfc;->_sdka:Lcom/skyhookwireless/_sdkzc;

    invoke-interface {v0, p0}, Lcom/skyhookwireless/_sdkzc;->_sdka(Lcom/skyhookwireless/_sdkad;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setEventSink(Lcom/skyhookwireless/_sdkzc;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/skyhookwireless/_sdkfc;->_sdka:Lcom/skyhookwireless/_sdkzc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
