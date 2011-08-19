.class Lcom/google/android/music/dl/KeepOnDeviceScheduler$1;
.super Ljava/lang/Object;
.source "KeepOnDeviceScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/dl/KeepOnDeviceScheduler;->refreshEnabledStateAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/dl/KeepOnDeviceScheduler;


# direct methods
.method constructor <init>(Lcom/google/android/music/dl/KeepOnDeviceScheduler;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler$1;->this$0:Lcom/google/android/music/dl/KeepOnDeviceScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler$1;->this$0:Lcom/google/android/music/dl/KeepOnDeviceScheduler;

    invoke-static {v0}, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->access$000(Lcom/google/android/music/dl/KeepOnDeviceScheduler;)V

    .line 87
    return-void
.end method
