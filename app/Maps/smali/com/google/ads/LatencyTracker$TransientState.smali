.class Lcom/google/ads/LatencyTracker$TransientState;
.super Ljava/lang/Object;
.source "LatencyTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/LatencyTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TransientState"
.end annotation


# static fields
.field private static final CLICK_START:Ljava/lang/String; = "click_start"

.field private static final CURRENT_CLICK_STRING:Ljava/lang/String; = "current_click_string"

.field private static final FETCH_START:Ljava/lang/String; = "fetch_start"


# instance fields
.field private mAdClickStartTimestamp:J

.field private mAdFetchStartTimestamp:J

.field private mCurrentClickString:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/ads/LatencyTracker;


# direct methods
.method private constructor <init>(Lcom/google/ads/LatencyTracker;)V
    .locals 2
    .parameter

    .prologue
    const-wide/16 v0, -0x1

    .line 28
    iput-object p1, p0, Lcom/google/ads/LatencyTracker$TransientState;->this$0:Lcom/google/ads/LatencyTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-wide v0, p0, Lcom/google/ads/LatencyTracker$TransientState;->mAdFetchStartTimestamp:J

    .line 32
    iput-wide v0, p0, Lcom/google/ads/LatencyTracker$TransientState;->mAdClickStartTimestamp:J

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/LatencyTracker$TransientState;->mCurrentClickString:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/ads/LatencyTracker;Lcom/google/ads/LatencyTracker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/google/ads/LatencyTracker$TransientState;-><init>(Lcom/google/ads/LatencyTracker;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/ads/LatencyTracker$TransientState;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/google/ads/LatencyTracker$TransientState;->save(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/ads/LatencyTracker$TransientState;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/google/ads/LatencyTracker$TransientState;->restore(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/ads/LatencyTracker$TransientState;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/google/ads/LatencyTracker$TransientState;->mAdFetchStartTimestamp:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/google/ads/LatencyTracker$TransientState;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-wide p1, p0, Lcom/google/ads/LatencyTracker$TransientState;->mAdFetchStartTimestamp:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/google/ads/LatencyTracker$TransientState;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/google/ads/LatencyTracker$TransientState;->mAdClickStartTimestamp:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/google/ads/LatencyTracker$TransientState;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-wide p1, p0, Lcom/google/ads/LatencyTracker$TransientState;->mAdClickStartTimestamp:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/google/ads/LatencyTracker$TransientState;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/ads/LatencyTracker$TransientState;->mCurrentClickString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/ads/LatencyTracker$TransientState;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/google/ads/LatencyTracker$TransientState;->mCurrentClickString:Ljava/lang/String;

    return-object p1
.end method

.method private restore(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 49
    const-string v0, "fetch_start"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/ads/LatencyTracker$TransientState;->mAdFetchStartTimestamp:J

    .line 50
    const-string v0, "click_start"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/ads/LatencyTracker$TransientState;->mAdClickStartTimestamp:J

    .line 51
    const-string v0, "current_click_string"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/LatencyTracker$TransientState;->mCurrentClickString:Ljava/lang/String;

    .line 52
    return-void
.end method

.method private save(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 43
    const-string v0, "fetch_start"

    iget-wide v1, p0, Lcom/google/ads/LatencyTracker$TransientState;->mAdFetchStartTimestamp:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 44
    const-string v0, "click_start"

    iget-wide v1, p0, Lcom/google/ads/LatencyTracker$TransientState;->mAdClickStartTimestamp:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 45
    const-string v0, "current_click_string"

    iget-object v1, p0, Lcom/google/ads/LatencyTracker$TransientState;->mCurrentClickString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method
