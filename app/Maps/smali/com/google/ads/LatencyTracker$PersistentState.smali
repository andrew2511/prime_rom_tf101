.class Lcom/google/ads/LatencyTracker$PersistentState;
.super Ljava/lang/Object;
.source "LatencyTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/LatencyTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PersistentState"
.end annotation


# static fields
.field private static final CLICK_LATENCY:Ljava/lang/String; = "click_latency"

.field private static final CLICK_STRING:Ljava/lang/String; = "click_string"

.field private static final FETCH_LATENCY:Ljava/lang/String; = "fetch_latency"

.field private static final LATENCY_PREFERENCES:Ljava/lang/String; = "google_ads.xml"


# instance fields
.field private mAdClickLatency:I

.field private mAdFetchLatency:I

.field private mClickString:Ljava/lang/String;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field final synthetic this$0:Lcom/google/ads/LatencyTracker;


# direct methods
.method private constructor <init>(Lcom/google/ads/LatencyTracker;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    const/4 v0, -0x1

    .line 76
    iput-object p1, p0, Lcom/google/ads/LatencyTracker$PersistentState;->this$0:Lcom/google/ads/LatencyTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput v0, p0, Lcom/google/ads/LatencyTracker$PersistentState;->mAdFetchLatency:I

    .line 63
    iput v0, p0, Lcom/google/ads/LatencyTracker$PersistentState;->mAdClickLatency:I

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/LatencyTracker$PersistentState;->mClickString:Ljava/lang/String;

    .line 77
    const-string v0, "google_ads.xml"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/LatencyTracker$PersistentState;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 79
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/ads/LatencyTracker;Landroid/content/Context;Lcom/google/ads/LatencyTracker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/google/ads/LatencyTracker$PersistentState;-><init>(Lcom/google/ads/LatencyTracker;Landroid/content/Context;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/ads/LatencyTracker;Landroid/content/SharedPreferences;)V
    .locals 1
    .parameter
    .parameter "sharedPreferences"

    .prologue
    const/4 v0, -0x1

    .line 82
    iput-object p1, p0, Lcom/google/ads/LatencyTracker$PersistentState;->this$0:Lcom/google/ads/LatencyTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput v0, p0, Lcom/google/ads/LatencyTracker$PersistentState;->mAdFetchLatency:I

    .line 63
    iput v0, p0, Lcom/google/ads/LatencyTracker$PersistentState;->mAdClickLatency:I

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/LatencyTracker$PersistentState;->mClickString:Ljava/lang/String;

    .line 83
    iput-object p2, p0, Lcom/google/ads/LatencyTracker$PersistentState;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 84
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/ads/LatencyTracker;Landroid/content/SharedPreferences;Lcom/google/ads/LatencyTracker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/google/ads/LatencyTracker$PersistentState;-><init>(Lcom/google/ads/LatencyTracker;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/ads/LatencyTracker$PersistentState;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/google/ads/LatencyTracker$PersistentState;->mAdClickLatency:I

    return v0
.end method

.method static synthetic access$1002(Lcom/google/ads/LatencyTracker$PersistentState;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Lcom/google/ads/LatencyTracker$PersistentState;->mAdClickLatency:I

    return p1
.end method

.method static synthetic access$1100(Lcom/google/ads/LatencyTracker$PersistentState;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/ads/LatencyTracker$PersistentState;->mClickString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/google/ads/LatencyTracker$PersistentState;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/google/ads/LatencyTracker$PersistentState;->mClickString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/google/ads/LatencyTracker$PersistentState;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/google/ads/LatencyTracker$PersistentState;->clear()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/ads/LatencyTracker$PersistentState;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/google/ads/LatencyTracker$PersistentState;->restore()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/ads/LatencyTracker$PersistentState;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/google/ads/LatencyTracker$PersistentState;->mAdFetchLatency:I

    return v0
.end method

.method static synthetic access$602(Lcom/google/ads/LatencyTracker$PersistentState;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Lcom/google/ads/LatencyTracker$PersistentState;->mAdFetchLatency:I

    return p1
.end method

.method static synthetic access$700(Lcom/google/ads/LatencyTracker$PersistentState;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/google/ads/LatencyTracker$PersistentState;->save()V

    return-void
.end method

.method private clear()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 107
    iput v0, p0, Lcom/google/ads/LatencyTracker$PersistentState;->mAdFetchLatency:I

    .line 108
    iput v0, p0, Lcom/google/ads/LatencyTracker$PersistentState;->mAdClickLatency:I

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/LatencyTracker$PersistentState;->mClickString:Ljava/lang/String;

    .line 110
    invoke-direct {p0}, Lcom/google/ads/LatencyTracker$PersistentState;->save()V

    .line 111
    return-void
.end method

.method private restore()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 98
    iget-object v0, p0, Lcom/google/ads/LatencyTracker$PersistentState;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 104
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/google/ads/LatencyTracker$PersistentState;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "fetch_latency"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/ads/LatencyTracker$PersistentState;->mAdFetchLatency:I

    .line 102
    iget-object v0, p0, Lcom/google/ads/LatencyTracker$PersistentState;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "click_latency"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/ads/LatencyTracker$PersistentState;->mAdClickLatency:I

    .line 103
    iget-object v0, p0, Lcom/google/ads/LatencyTracker$PersistentState;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "click_string"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/LatencyTracker$PersistentState;->mClickString:Ljava/lang/String;

    goto :goto_0
.end method

.method private save()V
    .locals 3

    .prologue
    .line 87
    iget-object v1, p0, Lcom/google/ads/LatencyTracker$PersistentState;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 95
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/google/ads/LatencyTracker$PersistentState;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 91
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "fetch_latency"

    iget v2, p0, Lcom/google/ads/LatencyTracker$PersistentState;->mAdFetchLatency:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 92
    const-string v1, "click_latency"

    iget v2, p0, Lcom/google/ads/LatencyTracker$PersistentState;->mAdClickLatency:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 93
    const-string v1, "click_string"

    iget-object v2, p0, Lcom/google/ads/LatencyTracker$PersistentState;->mClickString:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 94
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
