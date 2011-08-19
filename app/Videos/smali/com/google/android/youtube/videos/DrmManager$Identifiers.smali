.class public Lcom/google/android/youtube/videos/DrmManager$Identifiers;
.super Ljava/lang/Object;
.source "DrmManager.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/videos/DrmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Identifiers"
.end annotation


# instance fields
.field public final assetId:J

.field public final keyId:J

.field public final systemId:J


# direct methods
.method public constructor <init>(JJJ)V
    .locals 0
    .parameter "keyId"
    .parameter "assetId"
    .parameter "systemId"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-wide p1, p0, Lcom/google/android/youtube/videos/DrmManager$Identifiers;->keyId:J

    .line 39
    iput-wide p3, p0, Lcom/google/android/youtube/videos/DrmManager$Identifiers;->assetId:J

    .line 40
    iput-wide p5, p0, Lcom/google/android/youtube/videos/DrmManager$Identifiers;->systemId:J

    .line 41
    return-void
.end method
