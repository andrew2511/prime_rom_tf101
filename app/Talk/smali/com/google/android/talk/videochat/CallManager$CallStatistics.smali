.class Lcom/google/android/talk/videochat/CallManager$CallStatistics;
.super Ljava/lang/Object;
.source "CallManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/videochat/CallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallStatistics"
.end annotation


# instance fields
.field mCallAccepted:Z

.field public mCallElapsedRealtimeAtStart:J

.field public mCallStartTime:J

.field public mSessionId:Ljava/lang/String;

.field mStatsUpdates:Lcom/google/android/talk/util/CircularArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/talk/util/CircularArray",
            "<",
            "Lcom/google/android/talk/videochat/CallManager$StatsUpdate;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/talk/videochat/CallManager;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/videochat/CallManager;)V
    .locals 2
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/google/android/talk/videochat/CallManager$CallStatistics;->this$0:Lcom/google/android/talk/videochat/CallManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Lcom/google/android/talk/util/CircularArray;

    const/16 v1, 0x4b0

    invoke-direct {v0, v1}, Lcom/google/android/talk/util/CircularArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/talk/videochat/CallManager$CallStatistics;->mStatsUpdates:Lcom/google/android/talk/util/CircularArray;

    .line 123
    return-void
.end method
