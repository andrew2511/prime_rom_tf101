.class final Lar;
.super Ljava/lang/Object;

# interfaces
.implements LZ;


# instance fields
.field private synthetic a:Ljava/lang/Object;


# direct methods
.method constructor <init>(Laq;Ljava/lang/Object;)V
    .locals 0

    iput-object p2, p0, Lar;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lar;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lar;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
