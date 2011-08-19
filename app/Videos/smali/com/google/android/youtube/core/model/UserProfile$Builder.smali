.class public final Lcom/google/android/youtube/core/model/UserProfile$Builder;
.super Ljava/lang/Object;
.source "UserProfile.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/google/android/youtube/core/model/ModelBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/model/UserProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Lcom/google/android/youtube/core/model/ModelBuilder",
        "<",
        "Lcom/google/android/youtube/core/model/UserProfile;",
        ">;"
    }
.end annotation


# instance fields
.field private age:I

.field private favoritesCount:I

.field private subscribersCount:I

.field private subscriptionsCount:I

.field private thumbnailUri:Landroid/net/Uri;

.field private uploadViewsCount:J

.field private uploadedCount:I

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 157
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->username:Ljava/lang/String;

    .line 158
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->age:I

    .line 159
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->thumbnailUri:Landroid/net/Uri;

    .line 160
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->uploadedCount:I

    .line 161
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->favoritesCount:I

    .line 162
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->subscriptionsCount:I

    .line 163
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->uploadViewsCount:J

    .line 164
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->subscribersCount:I

    .line 165
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->build()Lcom/google/android/youtube/core/model/UserProfile;

    move-result-object v0

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 147
    iget v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->age:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 148
    iget-object v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->thumbnailUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->asString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 149
    iget v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->uploadedCount:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 150
    iget v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->favoritesCount:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 151
    iget v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->subscriptionsCount:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 152
    iget-wide v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->uploadViewsCount:J

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 153
    iget v0, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->subscribersCount:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 154
    return-void
.end method


# virtual methods
.method public age(I)Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .locals 0
    .parameter "age"

    .prologue
    .line 102
    iput p1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->age:I

    .line 103
    return-object p0
.end method

.method public build()Lcom/google/android/youtube/core/model/UserProfile;
    .locals 10

    .prologue
    .line 137
    new-instance v0, Lcom/google/android/youtube/core/model/UserProfile;

    iget-object v1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->username:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->age:I

    iget-object v3, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->thumbnailUri:Landroid/net/Uri;

    iget v4, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->uploadedCount:I

    iget v5, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->favoritesCount:I

    iget v6, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->subscriptionsCount:I

    iget-wide v7, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->uploadViewsCount:J

    iget v9, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->subscribersCount:I

    invoke-direct/range {v0 .. v9}, Lcom/google/android/youtube/core/model/UserProfile;-><init>(Ljava/lang/String;ILandroid/net/Uri;IIIJI)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/UserProfile$Builder;->build()Lcom/google/android/youtube/core/model/UserProfile;

    move-result-object v0

    return-object v0
.end method

.method public favoritesCount(I)Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .locals 0
    .parameter "favoritesCount"

    .prologue
    .line 117
    iput p1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->favoritesCount:I

    .line 118
    return-object p0
.end method

.method public subscribersCount(I)Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .locals 0
    .parameter "subscribersCount"

    .prologue
    .line 132
    iput p1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->subscribersCount:I

    .line 133
    return-object p0
.end method

.method public subscriptionsCount(I)Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .locals 0
    .parameter "subscriptionsCount"

    .prologue
    .line 122
    iput p1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->subscriptionsCount:I

    .line 123
    return-object p0
.end method

.method public thumbnailUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .locals 0
    .parameter "thumbnailUri"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->thumbnailUri:Landroid/net/Uri;

    .line 108
    return-object p0
.end method

.method public uploadViewsCount(J)Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .locals 0
    .parameter "uploadViewsCount"

    .prologue
    .line 127
    iput-wide p1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->uploadViewsCount:J

    .line 128
    return-object p0
.end method

.method public uploadedCount(I)Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .locals 0
    .parameter "uploadedCount"

    .prologue
    .line 112
    iput p1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->uploadedCount:I

    .line 113
    return-object p0
.end method

.method public username(Ljava/lang/String;)Lcom/google/android/youtube/core/model/UserProfile$Builder;
    .locals 0
    .parameter "username"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/google/android/youtube/core/model/UserProfile$Builder;->username:Ljava/lang/String;

    .line 98
    return-object p0
.end method
