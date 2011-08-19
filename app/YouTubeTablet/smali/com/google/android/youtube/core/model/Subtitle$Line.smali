.class final Lcom/google/android/youtube/core/model/Subtitle$Line;
.super Ljava/lang/Object;
.source "Subtitle.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/model/Subtitle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Line"
.end annotation


# instance fields
.field public final endTime:I

.field public final startTime:I

.field public final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter "text"
    .parameter "startTime"
    .parameter "endTime"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Subtitle$Line;->text:Ljava/lang/String;

    .line 51
    iput p2, p0, Lcom/google/android/youtube/core/model/Subtitle$Line;->startTime:I

    .line 52
    iput p3, p0, Lcom/google/android/youtube/core/model/Subtitle$Line;->endTime:I

    .line 53
    return-void
.end method
