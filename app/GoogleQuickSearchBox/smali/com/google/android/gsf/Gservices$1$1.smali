.class Lcom/google/android/gsf/Gservices$1$1;
.super Landroid/database/ContentObserver;
.source "Gservices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/Gservices$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/Gservices$1;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/Gservices$1;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/android/gsf/Gservices$1$1;->this$0:Lcom/google/android/gsf/Gservices$1;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter

    .prologue
    .line 73
    const-class v0, Lcom/google/android/gsf/Gservices;

    monitor-enter v0

    .line 74
    :try_start_0
    invoke-static {}, Lcom/google/android/gsf/Gservices;->access$000()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 75
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-static {v1}, Lcom/google/android/gsf/Gservices;->access$102(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    monitor-exit v0

    .line 77
    return-void

    .line 76
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
