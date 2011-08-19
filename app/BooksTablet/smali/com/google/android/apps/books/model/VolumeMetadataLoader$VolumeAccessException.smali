.class public Lcom/google/android/apps/books/model/VolumeMetadataLoader$VolumeAccessException;
.super Ljava/lang/RuntimeException;
.source "VolumeMetadataLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/model/VolumeMetadataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VolumeAccessException"
.end annotation


# instance fields
.field private mAccess:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;Ljava/lang/String;)V
    .locals 1
    .parameter "access"
    .parameter "detailMessage"

    .prologue
    .line 65
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 66
    const-string v0, "missing access"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    iput-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadataLoader$VolumeAccessException;->mAccess:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    .line 67
    return-void
.end method


# virtual methods
.method public getAccess()Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/apps/books/model/VolumeMetadataLoader$VolumeAccessException;->mAccess:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    return-object v0
.end method
