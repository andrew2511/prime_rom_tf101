.class public final Lcom/skyhookwireless/_sdksc;
.super Lcom/skyhookwireless/_sdkfc;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/skyhookwireless/_sdkfc;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized _sdka()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/skyhookwireless/_sdkfc;->_sdka()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
