.class public Lcom/google/android/youtube/videos/DrmResponse;
.super Ljava/lang/Object;
.source "DrmResponse.java"


# instance fields
.field public final allowsOffline:Z

.field public final allowsStreaming:Z

.field public final ids:Lcom/google/android/youtube/videos/DrmManager$Identifiers;

.field public final remainingSeconds:I

.field public final secondsSinceActivation:I


# direct methods
.method public constructor <init>(ZZIILcom/google/android/youtube/videos/DrmManager$Identifiers;)V
    .locals 0
    .parameter "allowsStreaming"
    .parameter "allowsOffline"
    .parameter "remainingSeconds"
    .parameter "secondsSinceActivation"
    .parameter "ids"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean p1, p0, Lcom/google/android/youtube/videos/DrmResponse;->allowsStreaming:Z

    .line 21
    iput-boolean p2, p0, Lcom/google/android/youtube/videos/DrmResponse;->allowsOffline:Z

    .line 22
    iput p3, p0, Lcom/google/android/youtube/videos/DrmResponse;->remainingSeconds:I

    .line 23
    iput p4, p0, Lcom/google/android/youtube/videos/DrmResponse;->secondsSinceActivation:I

    .line 24
    iput-object p5, p0, Lcom/google/android/youtube/videos/DrmResponse;->ids:Lcom/google/android/youtube/videos/DrmManager$Identifiers;

    .line 25
    return-void
.end method
