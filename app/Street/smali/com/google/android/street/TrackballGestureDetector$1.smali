.class Lcom/google/android/street/TrackballGestureDetector$1;
.super Ljava/lang/Object;
.source "TrackballGestureDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/street/TrackballGestureDetector;-><init>(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/street/TrackballGestureDetector;


# direct methods
.method constructor <init>(Lcom/google/android/street/TrackballGestureDetector;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/google/android/street/TrackballGestureDetector$1;->this$0:Lcom/google/android/street/TrackballGestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/street/TrackballGestureDetector$1;->this$0:Lcom/google/android/street/TrackballGestureDetector;

    invoke-static {v0}, Lcom/google/android/street/TrackballGestureDetector;->access$000(Lcom/google/android/street/TrackballGestureDetector;)V

    .line 53
    return-void
.end method
