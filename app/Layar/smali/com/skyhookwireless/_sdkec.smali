.class Lcom/skyhookwireless/_sdkec;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final _sdka:Lcom/skyhookwireless/_sdkdc;


# direct methods
.method constructor <init>(Lcom/skyhookwireless/_sdkdc;)V
    .locals 0

    iput-object p1, p0, Lcom/skyhookwireless/_sdkec;->_sdka:Lcom/skyhookwireless/_sdkdc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/skyhookwireless/_sdkec;->_sdka:Lcom/skyhookwireless/_sdkdc;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/skyhookwireless/_sdkec;->_sdka:Lcom/skyhookwireless/_sdkdc;

    invoke-static {v1}, Lcom/skyhookwireless/_sdkdc;->_sdka(Lcom/skyhookwireless/_sdkdc;)I

    iget-object v1, p0, Lcom/skyhookwireless/_sdkec;->_sdka:Lcom/skyhookwireless/_sdkdc;

    invoke-static {v1}, Lcom/skyhookwireless/_sdkdc;->_sdkb(Lcom/skyhookwireless/_sdkdc;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
