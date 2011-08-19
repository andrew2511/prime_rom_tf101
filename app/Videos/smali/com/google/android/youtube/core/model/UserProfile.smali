.class public final Lcom/google/android/youtube/core/model/UserProfile;
.super Ljava/lang/Object;
.source "UserProfile.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/model/UserProfile$Builder;
    }
.end annotation


# static fields
.field private static final LEGAL_AGE:I = 0x12


# instance fields
.field public final age:I

.field public final favoritesCount:I

.field public final subscribersCount:I

.field public final subscriptionsCount:I

.field public final thumbnailUri:Landroid/net/Uri;

.field public final uploadViewsCount:J

.field public final uploadedCount:I

.field public final username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILandroid/net/Uri;IIIJI)V
    .locals 0
    .parameter "username"
    .parameter "age"
    .parameter "thumbnailUri"
    .parameter "uploadedCount"
    .parameter "favoritesCount"
    .parameter "subscriptionsCount"
    .parameter "uploadViewsCount"
    .parameter "subscribersCount"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/google/android/youtube/core/model/UserProfile;->username:Ljava/lang/String;

    .line 45
    iput p2, p0, Lcom/google/android/youtube/core/model/UserProfile;->age:I

    .line 46
    iput-object p3, p0, Lcom/google/android/youtube/core/model/UserProfile;->thumbnailUri:Landroid/net/Uri;

    .line 47
    iput p4, p0, Lcom/google/android/youtube/core/model/UserProfile;->uploadedCount:I

    .line 48
    iput p5, p0, Lcom/google/android/youtube/core/model/UserProfile;->favoritesCount:I

    .line 49
    iput p6, p0, Lcom/google/android/youtube/core/model/UserProfile;->subscriptionsCount:I

    .line 50
    iput-wide p7, p0, Lcom/google/android/youtube/core/model/UserProfile;->uploadViewsCount:J

    .line 51
    iput p9, p0, Lcom/google/android/youtube/core/model/UserProfile;->subscribersCount:I

    .line 52
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .prologue
    .line 68
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "builder required"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/UserProfile;->buildUpon()Lcom/google/android/youtube/core/model/UserProfile$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public buildUpon()Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .locals 3

    .prologue
    .line 72
    new-instance v0, Lcom/google/android/youtube/core/model/UserProfile$Builder;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/UserProfile$Builder;-><init>()V

    iget-object v1, p0, Lcom/google/android/youtube/core/model/UserProfile;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->username(Ljava/lang/String;)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/youtube/core/model/UserProfile;->age:I

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->age(I)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/UserProfile;->thumbnailUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->thumbnailUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/youtube/core/model/UserProfile;->uploadedCount:I

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->uploadedCount(I)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/youtube/core/model/UserProfile;->favoritesCount:I

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->favoritesCount(I)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/youtube/core/model/UserProfile;->subscriptionsCount:I

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->subscriptionsCount(I)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/youtube/core/model/UserProfile;->uploadViewsCount:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->uploadViewsCount(J)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/youtube/core/model/UserProfile;->subscribersCount:I

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->subscribersCount(I)Lcom/google/android/youtube/core/model/UserProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public hasLegalAge()Z
    .locals 2

    .prologue
    .line 55
    iget v0, p0, Lcom/google/android/youtube/core/model/UserProfile;->age:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile;->username:Ljava/lang/String;

    return-object v0
.end method
