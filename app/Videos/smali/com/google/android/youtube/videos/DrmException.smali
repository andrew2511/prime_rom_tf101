.class public Lcom/google/android/youtube/videos/DrmException;
.super Ljava/lang/Exception;
.source "DrmException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/videos/DrmException$DrmError;
    }
.end annotation


# instance fields
.field public final drmError:Lcom/google/android/youtube/videos/DrmException$DrmError;

.field public final errorCode:I


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/videos/DrmException$DrmError;I)V
    .locals 2
    .parameter "drmError"
    .parameter "errorCode"

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid license status "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Lcom/google/android/youtube/videos/DrmException;->drmError:Lcom/google/android/youtube/videos/DrmException$DrmError;

    .line 28
    iput p2, p0, Lcom/google/android/youtube/videos/DrmException;->errorCode:I

    .line 29
    return-void
.end method
