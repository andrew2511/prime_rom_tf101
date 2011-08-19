.class public Lcom/google/android/location/CollectedLocation;
.super Landroid/location/Location;
.source "CollectedLocation.java"


# instance fields
.field private mPluggedIn:Z

.field private mTimeStamp:J


# direct methods
.method public constructor <init>(Landroid/location/Location;JZ)V
    .locals 2
    .parameter "l"
    .parameter "ts"
    .parameter "pluggedIn"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 23
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/location/CollectedLocation;->mTimeStamp:J

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/CollectedLocation;->mPluggedIn:Z

    .line 28
    iput-wide p2, p0, Lcom/google/android/location/CollectedLocation;->mTimeStamp:J

    .line 29
    iput-boolean p4, p0, Lcom/google/android/location/CollectedLocation;->mPluggedIn:Z

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/google/android/location/CollectedLocation;)V
    .locals 2
    .parameter "cl"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 23
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/location/CollectedLocation;->mTimeStamp:J

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/CollectedLocation;->mPluggedIn:Z

    .line 34
    iget-wide v0, p1, Lcom/google/android/location/CollectedLocation;->mTimeStamp:J

    iput-wide v0, p0, Lcom/google/android/location/CollectedLocation;->mTimeStamp:J

    .line 35
    iget-boolean v0, p1, Lcom/google/android/location/CollectedLocation;->mPluggedIn:Z

    iput-boolean v0, p0, Lcom/google/android/location/CollectedLocation;->mPluggedIn:Z

    .line 36
    return-void
.end method


# virtual methods
.method public getPluggedIn()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/google/android/location/CollectedLocation;->mPluggedIn:Z

    return v0
.end method

.method public getTimeStamp()J
    .locals 2

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/google/android/location/CollectedLocation;->mTimeStamp:J

    return-wide v0
.end method

.method public set(Landroid/location/Location;JZ)V
    .locals 0
    .parameter "l"
    .parameter "ts"
    .parameter "pluggedIn"

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 44
    iput-wide p2, p0, Lcom/google/android/location/CollectedLocation;->mTimeStamp:J

    .line 45
    iput-boolean p4, p0, Lcom/google/android/location/CollectedLocation;->mPluggedIn:Z

    .line 46
    return-void
.end method

.method public set(Lcom/google/android/location/CollectedLocation;)V
    .locals 3
    .parameter "cl"

    .prologue
    .line 39
    iget-wide v0, p1, Lcom/google/android/location/CollectedLocation;->mTimeStamp:J

    iget-boolean v2, p1, Lcom/google/android/location/CollectedLocation;->mPluggedIn:Z

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/android/location/CollectedLocation;->set(Landroid/location/Location;JZ)V

    .line 40
    return-void
.end method

.method public setTimeStamp(J)V
    .locals 0
    .parameter "ts"

    .prologue
    .line 53
    iput-wide p1, p0, Lcom/google/android/location/CollectedLocation;->mTimeStamp:J

    .line 54
    return-void
.end method
