.class public Lcom/google/android/apps/books/model/ExceptionVolumeMetadata;
.super Lcom/google/android/apps/books/model/VolumeMetadata;
.source "ExceptionVolumeMetadata.java"


# instance fields
.field private mException:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 1
    .parameter "exception"

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/google/android/apps/books/model/VolumeMetadata;-><init>()V

    .line 11
    const-string v0, "missing exception"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    iput-object v0, p0, Lcom/google/android/apps/books/model/ExceptionVolumeMetadata;->mException:Ljava/lang/Exception;

    .line 12
    return-void
.end method


# virtual methods
.method public getException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/google/android/apps/books/model/ExceptionVolumeMetadata;->mException:Ljava/lang/Exception;

    return-object v0
.end method
