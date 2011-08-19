.class Lcom/google/android/maps/MapView$Repainter$1;
.super Ljava/lang/Thread;
.source "MapView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/maps/MapView$Repainter;->repaint()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/maps/MapView$Repainter;


# direct methods
.method constructor <init>(Lcom/google/android/maps/MapView$Repainter;)V
    .registers 2
    .parameter

    .prologue
    .line 422
    iput-object p1, p0, Lcom/google/android/maps/MapView$Repainter$1;->this$1:Lcom/google/android/maps/MapView$Repainter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 425
    const-wide/16 v0, 0x1f4

    :try_start_2
    invoke-static {v0, v1}, Lcom/google/android/maps/MapView$Repainter$1;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_d

    .line 429
    :goto_5
    iget-object v0, p0, Lcom/google/android/maps/MapView$Repainter$1;->this$1:Lcom/google/android/maps/MapView$Repainter;

    iget-object v0, v0, Lcom/google/android/maps/MapView$Repainter;->this$0:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->postInvalidate()V

    .line 430
    return-void

    .line 426
    :catch_d
    move-exception v0

    goto :goto_5
.end method
