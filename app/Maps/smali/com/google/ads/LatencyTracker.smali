.class Lcom/google/ads/LatencyTracker;
.super Ljava/lang/Object;
.source "LatencyTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/LatencyTracker$1;,
        Lcom/google/ads/LatencyTracker$RealClock;,
        Lcom/google/ads/LatencyTracker$Clock;,
        Lcom/google/ads/LatencyTracker$PersistentState;,
        Lcom/google/ads/LatencyTracker$TransientState;
    }
.end annotation


# static fields
.field private static final CLICK_LATENCY:Ljava/lang/String; = "click_latency"

.field private static final CLICK_START:Ljava/lang/String; = "click_start"

.field private static final CLICK_STRING:Ljava/lang/String; = "click_string"

.field private static final CURRENT_CLICK_STRING:Ljava/lang/String; = "current_click_string"

.field private static final FETCH_LATENCY:Ljava/lang/String; = "fetch_latency"

.field private static final FETCH_START:Ljava/lang/String; = "fetch_start"

.field private static final LATENCY_PREFERENCES:Ljava/lang/String; = "latency_preferences"


# instance fields
.field private mClock:Lcom/google/ads/LatencyTracker$Clock;

.field private mPersistent:Lcom/google/ads/LatencyTracker$PersistentState;

.field private mTransient:Lcom/google/ads/LatencyTracker$TransientState;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Lcom/google/ads/LatencyTracker$RealClock;

    invoke-direct {v0, p0, v1}, Lcom/google/ads/LatencyTracker$RealClock;-><init>(Lcom/google/ads/LatencyTracker;Lcom/google/ads/LatencyTracker$1;)V

    iput-object v0, p0, Lcom/google/ads/LatencyTracker;->mClock:Lcom/google/ads/LatencyTracker$Clock;

    .line 131
    new-instance v0, Lcom/google/ads/LatencyTracker$TransientState;

    invoke-direct {v0, p0, v1}, Lcom/google/ads/LatencyTracker$TransientState;-><init>(Lcom/google/ads/LatencyTracker;Lcom/google/ads/LatencyTracker$1;)V

    iput-object v0, p0, Lcom/google/ads/LatencyTracker;->mTransient:Lcom/google/ads/LatencyTracker$TransientState;

    .line 132
    new-instance v0, Lcom/google/ads/LatencyTracker$PersistentState;

    invoke-direct {v0, p0, p1, v1}, Lcom/google/ads/LatencyTracker$PersistentState;-><init>(Lcom/google/ads/LatencyTracker;Landroid/content/Context;Lcom/google/ads/LatencyTracker$1;)V

    iput-object v0, p0, Lcom/google/ads/LatencyTracker;->mPersistent:Lcom/google/ads/LatencyTracker$PersistentState;

    .line 133
    iget-object v0, p0, Lcom/google/ads/LatencyTracker;->mPersistent:Lcom/google/ads/LatencyTracker$PersistentState;

    invoke-static {v0}, Lcom/google/ads/LatencyTracker$PersistentState;->access$300(Lcom/google/ads/LatencyTracker$PersistentState;)V

    .line 134
    return-void
.end method

.method constructor <init>(Lcom/google/ads/LatencyTracker$Clock;Landroid/content/SharedPreferences;)V
    .locals 2
    .parameter "clock"
    .parameter "sharedPreferences"

    .prologue
    const/4 v1, 0x0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p1, p0, Lcom/google/ads/LatencyTracker;->mClock:Lcom/google/ads/LatencyTracker$Clock;

    .line 140
    new-instance v0, Lcom/google/ads/LatencyTracker$TransientState;

    invoke-direct {v0, p0, v1}, Lcom/google/ads/LatencyTracker$TransientState;-><init>(Lcom/google/ads/LatencyTracker;Lcom/google/ads/LatencyTracker$1;)V

    iput-object v0, p0, Lcom/google/ads/LatencyTracker;->mTransient:Lcom/google/ads/LatencyTracker$TransientState;

    .line 141
    new-instance v0, Lcom/google/ads/LatencyTracker$PersistentState;

    invoke-direct {v0, p0, p2, v1}, Lcom/google/ads/LatencyTracker$PersistentState;-><init>(Lcom/google/ads/LatencyTracker;Landroid/content/SharedPreferences;Lcom/google/ads/LatencyTracker$1;)V

    iput-object v0, p0, Lcom/google/ads/LatencyTracker;->mPersistent:Lcom/google/ads/LatencyTracker$PersistentState;

    .line 142
    iget-object v0, p0, Lcom/google/ads/LatencyTracker;->mPersistent:Lcom/google/ads/LatencyTracker$PersistentState;

    invoke-static {v0}, Lcom/google/ads/LatencyTracker$PersistentState;->access$300(Lcom/google/ads/LatencyTracker$PersistentState;)V

    .line 143
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/ads/LatencyTracker;->mPersistent:Lcom/google/ads/LatencyTracker$PersistentState;

    invoke-static {v0}, Lcom/google/ads/LatencyTracker$PersistentState;->access$1200(Lcom/google/ads/LatencyTracker$PersistentState;)V

    .line 202
    return-void
.end method

.method public getAdClickLatency()I
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/ads/LatencyTracker;->mPersistent:Lcom/google/ads/LatencyTracker$PersistentState;

    invoke-static {v0}, Lcom/google/ads/LatencyTracker$PersistentState;->access$1000(Lcom/google/ads/LatencyTracker$PersistentState;)I

    move-result v0

    return v0
.end method

.method public getAdFetchLatency()I
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/ads/LatencyTracker;->mPersistent:Lcom/google/ads/LatencyTracker$PersistentState;

    invoke-static {v0}, Lcom/google/ads/LatencyTracker$PersistentState;->access$600(Lcom/google/ads/LatencyTracker$PersistentState;)I

    move-result v0

    return v0
.end method

.method public getClickString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/ads/LatencyTracker;->mPersistent:Lcom/google/ads/LatencyTracker$PersistentState;

    invoke-static {v0}, Lcom/google/ads/LatencyTracker$PersistentState;->access$1100(Lcom/google/ads/LatencyTracker$PersistentState;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasAdClickLatency()Z
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/ads/LatencyTracker;->mPersistent:Lcom/google/ads/LatencyTracker$PersistentState;

    invoke-static {v0}, Lcom/google/ads/LatencyTracker$PersistentState;->access$1000(Lcom/google/ads/LatencyTracker$PersistentState;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAdFetchLatency()Z
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/ads/LatencyTracker;->mPersistent:Lcom/google/ads/LatencyTracker$PersistentState;

    invoke-static {v0}, Lcom/google/ads/LatencyTracker$PersistentState;->access$600(Lcom/google/ads/LatencyTracker$PersistentState;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasClickString()Z
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/ads/LatencyTracker;->mPersistent:Lcom/google/ads/LatencyTracker$PersistentState;

    invoke-static {v0}, Lcom/google/ads/LatencyTracker$PersistentState;->access$1100(Lcom/google/ads/LatencyTracker$PersistentState;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/LatencyTracker;->mPersistent:Lcom/google/ads/LatencyTracker$PersistentState;

    invoke-static {v0}, Lcom/google/ads/LatencyTracker$PersistentState;->access$1100(Lcom/google/ads/LatencyTracker$PersistentState;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAdClickStart(Ljava/lang/String;)V
    .locals 3
    .parameter "clickString"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/ads/LatencyTracker;->mTransient:Lcom/google/ads/LatencyTracker$TransientState;

    iget-object v1, p0, Lcom/google/ads/LatencyTracker;->mClock:Lcom/google/ads/LatencyTracker$Clock;

    invoke-interface {v1}, Lcom/google/ads/LatencyTracker$Clock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/ads/LatencyTracker$TransientState;->access$802(Lcom/google/ads/LatencyTracker$TransientState;J)J

    .line 161
    iget-object v0, p0, Lcom/google/ads/LatencyTracker;->mTransient:Lcom/google/ads/LatencyTracker$TransientState;

    invoke-static {v0, p1}, Lcom/google/ads/LatencyTracker$TransientState;->access$902(Lcom/google/ads/LatencyTracker$TransientState;Ljava/lang/String;)Ljava/lang/String;

    .line 162
    return-void
.end method

.method public onAdFetchFinished()V
    .locals 7

    .prologue
    const-wide/16 v5, -0x1

    .line 150
    iget-object v0, p0, Lcom/google/ads/LatencyTracker;->mTransient:Lcom/google/ads/LatencyTracker$TransientState;

    invoke-static {v0}, Lcom/google/ads/LatencyTracker$TransientState;->access$500(Lcom/google/ads/LatencyTracker$TransientState;)J

    move-result-wide v0

    cmp-long v0, v0, v5

    if-nez v0, :cond_0

    .line 157
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/google/ads/LatencyTracker;->mPersistent:Lcom/google/ads/LatencyTracker$PersistentState;

    iget-object v1, p0, Lcom/google/ads/LatencyTracker;->mClock:Lcom/google/ads/LatencyTracker$Clock;

    invoke-interface {v1}, Lcom/google/ads/LatencyTracker$Clock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/ads/LatencyTracker;->mTransient:Lcom/google/ads/LatencyTracker$TransientState;

    invoke-static {v3}, Lcom/google/ads/LatencyTracker$TransientState;->access$500(Lcom/google/ads/LatencyTracker$TransientState;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    long-to-int v1, v1

    invoke-static {v0, v1}, Lcom/google/ads/LatencyTracker$PersistentState;->access$602(Lcom/google/ads/LatencyTracker$PersistentState;I)I

    .line 155
    iget-object v0, p0, Lcom/google/ads/LatencyTracker;->mTransient:Lcom/google/ads/LatencyTracker$TransientState;

    invoke-static {v0, v5, v6}, Lcom/google/ads/LatencyTracker$TransientState;->access$502(Lcom/google/ads/LatencyTracker$TransientState;J)J

    .line 156
    iget-object v0, p0, Lcom/google/ads/LatencyTracker;->mPersistent:Lcom/google/ads/LatencyTracker$PersistentState;

    invoke-static {v0}, Lcom/google/ads/LatencyTracker$PersistentState;->access$700(Lcom/google/ads/LatencyTracker$PersistentState;)V

    goto :goto_0
.end method

.method public onAdFetchStart()V
    .locals 3

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/ads/LatencyTracker;->mTransient:Lcom/google/ads/LatencyTracker$TransientState;

    iget-object v1, p0, Lcom/google/ads/LatencyTracker;->mClock:Lcom/google/ads/LatencyTracker$Clock;

    invoke-interface {v1}, Lcom/google/ads/LatencyTracker$Clock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/ads/LatencyTracker$TransientState;->access$502(Lcom/google/ads/LatencyTracker$TransientState;J)J

    .line 147
    return-void
.end method

.method public onWindowGetFocus()V
    .locals 7

    .prologue
    const-wide/16 v5, -0x1

    .line 165
    iget-object v0, p0, Lcom/google/ads/LatencyTracker;->mTransient:Lcom/google/ads/LatencyTracker$TransientState;

    invoke-static {v0}, Lcom/google/ads/LatencyTracker$TransientState;->access$800(Lcom/google/ads/LatencyTracker$TransientState;)J

    move-result-wide v0

    cmp-long v0, v0, v5

    if-nez v0, :cond_0

    .line 173
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/google/ads/LatencyTracker;->mPersistent:Lcom/google/ads/LatencyTracker$PersistentState;

    iget-object v1, p0, Lcom/google/ads/LatencyTracker;->mClock:Lcom/google/ads/LatencyTracker$Clock;

    invoke-interface {v1}, Lcom/google/ads/LatencyTracker$Clock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/ads/LatencyTracker;->mTransient:Lcom/google/ads/LatencyTracker$TransientState;

    invoke-static {v3}, Lcom/google/ads/LatencyTracker$TransientState;->access$800(Lcom/google/ads/LatencyTracker$TransientState;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    long-to-int v1, v1

    invoke-static {v0, v1}, Lcom/google/ads/LatencyTracker$PersistentState;->access$1002(Lcom/google/ads/LatencyTracker$PersistentState;I)I

    .line 170
    iget-object v0, p0, Lcom/google/ads/LatencyTracker;->mPersistent:Lcom/google/ads/LatencyTracker$PersistentState;

    iget-object v1, p0, Lcom/google/ads/LatencyTracker;->mTransient:Lcom/google/ads/LatencyTracker$TransientState;

    invoke-static {v1}, Lcom/google/ads/LatencyTracker$TransientState;->access$900(Lcom/google/ads/LatencyTracker$TransientState;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/ads/LatencyTracker$PersistentState;->access$1102(Lcom/google/ads/LatencyTracker$PersistentState;Ljava/lang/String;)Ljava/lang/String;

    .line 171
    iget-object v0, p0, Lcom/google/ads/LatencyTracker;->mTransient:Lcom/google/ads/LatencyTracker$TransientState;

    invoke-static {v0, v5, v6}, Lcom/google/ads/LatencyTracker$TransientState;->access$802(Lcom/google/ads/LatencyTracker$TransientState;J)J

    .line 172
    iget-object v0, p0, Lcom/google/ads/LatencyTracker;->mPersistent:Lcom/google/ads/LatencyTracker$PersistentState;

    invoke-static {v0}, Lcom/google/ads/LatencyTracker$PersistentState;->access$700(Lcom/google/ads/LatencyTracker$PersistentState;)V

    goto :goto_0
.end method

.method public restoreTransientState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/ads/LatencyTracker;->mTransient:Lcom/google/ads/LatencyTracker$TransientState;

    invoke-static {v0, p1}, Lcom/google/ads/LatencyTracker$TransientState;->access$1400(Lcom/google/ads/LatencyTracker$TransientState;Landroid/os/Bundle;)V

    .line 224
    return-void
.end method

.method public saveTransientState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/ads/LatencyTracker;->mTransient:Lcom/google/ads/LatencyTracker$TransientState;

    invoke-static {v0, p1}, Lcom/google/ads/LatencyTracker$TransientState;->access$1300(Lcom/google/ads/LatencyTracker$TransientState;Landroid/os/Bundle;)V

    .line 213
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Latency[fstart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/LatencyTracker;->mTransient:Lcom/google/ads/LatencyTracker$TransientState;

    invoke-static {v1}, Lcom/google/ads/LatencyTracker$TransientState;->access$500(Lcom/google/ads/LatencyTracker$TransientState;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cstart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/LatencyTracker;->mTransient:Lcom/google/ads/LatencyTracker$TransientState;

    invoke-static {v1}, Lcom/google/ads/LatencyTracker$TransientState;->access$800(Lcom/google/ads/LatencyTracker$TransientState;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ccstr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/LatencyTracker;->mTransient:Lcom/google/ads/LatencyTracker$TransientState;

    invoke-static {v1}, Lcom/google/ads/LatencyTracker$TransientState;->access$900(Lcom/google/ads/LatencyTracker$TransientState;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "flat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/LatencyTracker;->mPersistent:Lcom/google/ads/LatencyTracker$PersistentState;

    invoke-static {v1}, Lcom/google/ads/LatencyTracker$PersistentState;->access$600(Lcom/google/ads/LatencyTracker$PersistentState;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "clat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/LatencyTracker;->mPersistent:Lcom/google/ads/LatencyTracker$PersistentState;

    invoke-static {v1}, Lcom/google/ads/LatencyTracker$PersistentState;->access$1000(Lcom/google/ads/LatencyTracker$PersistentState;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cstr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/LatencyTracker;->mPersistent:Lcom/google/ads/LatencyTracker$PersistentState;

    invoke-static {v1}, Lcom/google/ads/LatencyTracker$PersistentState;->access$1100(Lcom/google/ads/LatencyTracker$PersistentState;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
