.class Lcom/android/vending/CheckinUpdater$2;
.super Ljava/lang/Object;
.source "CheckinUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/CheckinUpdater;->update(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/CheckinUpdater;


# direct methods
.method constructor <init>(Lcom/android/vending/CheckinUpdater;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/vending/CheckinUpdater$2;->this$0:Lcom/android/vending/CheckinUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/vending/CheckinUpdater$2;->this$0:Lcom/android/vending/CheckinUpdater;

    monitor-enter v0

    .line 123
    :try_start_0
    iget-object v1, p0, Lcom/android/vending/CheckinUpdater$2;->this$0:Lcom/android/vending/CheckinUpdater;

    invoke-static {v1}, Lcom/android/vending/CheckinUpdater;->access$100(Lcom/android/vending/CheckinUpdater;)V

    .line 124
    monitor-exit v0

    .line 125
    return-void

    .line 124
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
