.class Lcom/google/android/talk/videochat/CallManager$StatsUpdate;
.super Ljava/lang/Object;
.source "CallManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/videochat/CallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatsUpdate"
.end annotation


# instance fields
.field public final mLogString:Ljava/lang/String;

.field public final mSecondsSinceCallStart:J

.field public final mTime:J

.field final synthetic this$0:Lcom/google/android/talk/videochat/CallManager;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/videochat/CallManager;JJLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter "time"
    .parameter "secondsSinceCallStart"
    .parameter "logString"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/google/android/talk/videochat/CallManager$StatsUpdate;->this$0:Lcom/google/android/talk/videochat/CallManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-wide p2, p0, Lcom/google/android/talk/videochat/CallManager$StatsUpdate;->mTime:J

    .line 106
    iput-wide p4, p0, Lcom/google/android/talk/videochat/CallManager$StatsUpdate;->mSecondsSinceCallStart:J

    .line 107
    iput-object p6, p0, Lcom/google/android/talk/videochat/CallManager$StatsUpdate;->mLogString:Ljava/lang/String;

    .line 108
    return-void
.end method
