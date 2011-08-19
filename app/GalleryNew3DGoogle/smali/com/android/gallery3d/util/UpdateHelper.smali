.class public Lcom/android/gallery3d/util/UpdateHelper;
.super Ljava/lang/Object;
.source "UpdateHelper.java"


# instance fields
.field private mUpdated:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/util/UpdateHelper;->mUpdated:Z

    return-void
.end method


# virtual methods
.method public isUpdated()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/gallery3d/util/UpdateHelper;->mUpdated:Z

    return v0
.end method

.method public update(DD)D
    .locals 1
    .parameter "original"
    .parameter "update"

    .prologue
    .line 39
    cmpl-double v0, p1, p3

    if-eqz v0, :cond_0

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/util/UpdateHelper;->mUpdated:Z

    .line 41
    move-wide p1, p3

    .line 43
    :cond_0
    return-wide p1
.end method

.method public update(II)I
    .locals 1
    .parameter "original"
    .parameter "update"

    .prologue
    .line 23
    if-eq p1, p2, :cond_0

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/util/UpdateHelper;->mUpdated:Z

    .line 25
    move p1, p2

    .line 27
    :cond_0
    return p1
.end method

.method public update(JJ)J
    .locals 1
    .parameter "original"
    .parameter "update"

    .prologue
    .line 31
    cmp-long v0, p1, p3

    if-eqz v0, :cond_0

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/util/UpdateHelper;->mUpdated:Z

    .line 33
    move-wide p1, p3

    .line 35
    :cond_0
    return-wide p1
.end method

.method public update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, original:Ljava/lang/Object;,"TT;"
    .local p2, update:Ljava/lang/Object;,"TT;"
    invoke-static {p1, p2}, Lcom/android/gallery3d/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/util/UpdateHelper;->mUpdated:Z

    .line 57
    move-object p1, p2

    .line 59
    :cond_0
    return-object p1
.end method
