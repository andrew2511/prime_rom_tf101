.class public abstract Ltwitter4j/util/ImageUpload;
.super Ljava/lang/Object;
.source "ImageUpload.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltwitter4j/util/ImageUpload$TwippleUploader;,
        Ltwitter4j/util/ImageUpload$TwitgooOAuthUploader;,
        Ltwitter4j/util/ImageUpload$ImgLyOAuthUploader;,
        Ltwitter4j/util/ImageUpload$TweetPhotoOAuthUploader;,
        Ltwitter4j/util/ImageUpload$TwitpicBasicAuthUploader;,
        Ltwitter4j/util/ImageUpload$TwitpicOAuthUploader;,
        Ltwitter4j/util/ImageUpload$YFrogBasicAuthUploader;,
        Ltwitter4j/util/ImageUpload$YFrogOAuthUploader;
    }
.end annotation


# static fields
.field public static DEFAULT_TWITPIC_API_KEY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    sput-object v0, Ltwitter4j/util/ImageUpload;->DEFAULT_TWITPIC_API_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 782
    return-void
.end method

.method static access$000([Ltwitter4j/internal/http/HttpParameter;[Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-static {p0, p1}, Ltwitter4j/util/ImageUpload;->appendHttpParameters([Ltwitter4j/internal/http/HttpParameter;[Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v0

    return-object v0
.end method

.method private static appendHttpParameters([Ltwitter4j/internal/http/HttpParameter;[Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;
    .locals 6
    .parameter "src"
    .parameter "dst"

    .prologue
    .line 862
    array-length v3, p0

    .line 863
    .local v3, srcLen:I
    array-length v0, p1

    .line 864
    .local v0, dstLen:I
    add-int v4, v3, v0

    new-array v2, v4, [Ltwitter4j/internal/http/HttpParameter;

    .line 865
    .local v2, ret:[Ltwitter4j/internal/http/HttpParameter;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 866
    aget-object v4, p0, v1

    aput-object v4, v2, v1

    .line 865
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 868
    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 869
    add-int v4, v3, v1

    aget-object v5, p1, v1

    aput-object v5, v2, v4

    .line 868
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 871
    :cond_1
    return-object v2
.end method

.method private static ensureBasicEnabled(Ltwitter4j/http/Authorization;)V
    .locals 2
    .parameter "auth"

    .prologue
    .line 159
    instance-of v0, p0, Ltwitter4j/http/BasicAuthorization;

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "user ID/password combination not supplied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_0
    return-void
.end method

.method public static getImgLyUploader(Ltwitter4j/http/OAuthAuthorization;)Ltwitter4j/util/ImageUpload;
    .locals 1
    .parameter "auth"

    .prologue
    .line 139
    new-instance v0, Ltwitter4j/util/ImageUpload$ImgLyOAuthUploader;

    invoke-direct {v0, p0}, Ltwitter4j/util/ImageUpload$ImgLyOAuthUploader;-><init>(Ltwitter4j/http/OAuthAuthorization;)V

    return-object v0
.end method

.method public static getTweetPhotoUploader(Ljava/lang/String;Ltwitter4j/http/OAuthAuthorization;)Ltwitter4j/util/ImageUpload;
    .locals 1
    .parameter "tweetPhotoAPIKey"
    .parameter "auth"

    .prologue
    .line 102
    new-instance v0, Ltwitter4j/util/ImageUpload$TweetPhotoOAuthUploader;

    invoke-direct {v0, p0, p1}, Ltwitter4j/util/ImageUpload$TweetPhotoOAuthUploader;-><init>(Ljava/lang/String;Ltwitter4j/http/OAuthAuthorization;)V

    return-object v0
.end method

.method public static getTwippleUploader(Ltwitter4j/http/OAuthAuthorization;)Ltwitter4j/util/ImageUpload;
    .locals 1
    .parameter "auth"

    .prologue
    .line 155
    new-instance v0, Ltwitter4j/util/ImageUpload$TwippleUploader;

    invoke-direct {v0, p0}, Ltwitter4j/util/ImageUpload$TwippleUploader;-><init>(Ltwitter4j/http/OAuthAuthorization;)V

    return-object v0
.end method

.method public static getTwitgooUploader(Ltwitter4j/http/OAuthAuthorization;)Ltwitter4j/util/ImageUpload;
    .locals 1
    .parameter "auth"

    .prologue
    .line 147
    new-instance v0, Ltwitter4j/util/ImageUpload$TwitgooOAuthUploader;

    invoke-direct {v0, p0}, Ltwitter4j/util/ImageUpload$TwitgooOAuthUploader;-><init>(Ltwitter4j/http/OAuthAuthorization;)V

    return-object v0
.end method

.method public static getTwitpicUploader(Ljava/lang/String;Ltwitter4j/http/OAuthAuthorization;)Ltwitter4j/util/ImageUpload;
    .locals 1
    .parameter "twitpicAPIKey"
    .parameter "auth"

    .prologue
    .line 94
    new-instance v0, Ltwitter4j/util/ImageUpload$TwitpicOAuthUploader;

    invoke-direct {v0, p0, p1}, Ltwitter4j/util/ImageUpload$TwitpicOAuthUploader;-><init>(Ljava/lang/String;Ltwitter4j/http/OAuthAuthorization;)V

    return-object v0
.end method

.method public static getTwitpicUploader(Ltwitter4j/Twitter;)Ltwitter4j/util/ImageUpload;
    .locals 2
    .parameter "twitter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-virtual {p0}, Ltwitter4j/Twitter;->getAuthorization()Ltwitter4j/http/Authorization;

    move-result-object v0

    .line 74
    .local v0, auth:Ltwitter4j/http/Authorization;
    instance-of v1, v0, Ltwitter4j/http/OAuthAuthorization;

    if-eqz v1, :cond_0

    .line 75
    sget-object v1, Ltwitter4j/util/ImageUpload;->DEFAULT_TWITPIC_API_KEY:Ljava/lang/String;

    check-cast v0, Ltwitter4j/http/OAuthAuthorization;

    .end local v0           #auth:Ltwitter4j/http/Authorization;
    invoke-static {v1, v0}, Ltwitter4j/util/ImageUpload;->getTwitpicUploader(Ljava/lang/String;Ltwitter4j/http/OAuthAuthorization;)Ltwitter4j/util/ImageUpload;

    move-result-object v1

    .line 78
    :goto_0
    return-object v1

    .line 77
    .restart local v0       #auth:Ltwitter4j/http/Authorization;
    :cond_0
    invoke-static {v0}, Ltwitter4j/util/ImageUpload;->ensureBasicEnabled(Ltwitter4j/http/Authorization;)V

    .line 78
    check-cast v0, Ltwitter4j/http/BasicAuthorization;

    .end local v0           #auth:Ltwitter4j/http/Authorization;
    invoke-static {v0}, Ltwitter4j/util/ImageUpload;->getTwitpicUploader(Ltwitter4j/http/BasicAuthorization;)Ltwitter4j/util/ImageUpload;

    move-result-object v1

    goto :goto_0
.end method

.method public static getTwitpicUploader(Ltwitter4j/http/BasicAuthorization;)Ltwitter4j/util/ImageUpload;
    .locals 1
    .parameter "auth"

    .prologue
    .line 86
    new-instance v0, Ltwitter4j/util/ImageUpload$TwitpicBasicAuthUploader;

    invoke-direct {v0, p0}, Ltwitter4j/util/ImageUpload$TwitpicBasicAuthUploader;-><init>(Ltwitter4j/http/BasicAuthorization;)V

    return-object v0
.end method

.method public static getYFrogUploader(Ljava/lang/String;Ltwitter4j/http/OAuthAuthorization;)Ltwitter4j/util/ImageUpload;
    .locals 1
    .parameter "userId"
    .parameter "auth"

    .prologue
    .line 131
    new-instance v0, Ltwitter4j/util/ImageUpload$YFrogOAuthUploader;

    invoke-direct {v0, p0, p1}, Ltwitter4j/util/ImageUpload$YFrogOAuthUploader;-><init>(Ljava/lang/String;Ltwitter4j/http/OAuthAuthorization;)V

    return-object v0
.end method

.method public static getYFrogUploader(Ltwitter4j/Twitter;)Ltwitter4j/util/ImageUpload;
    .locals 2
    .parameter "twitter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-virtual {p0}, Ltwitter4j/Twitter;->getAuthorization()Ltwitter4j/http/Authorization;

    move-result-object v0

    .line 111
    .local v0, auth:Ltwitter4j/http/Authorization;
    instance-of v1, v0, Ltwitter4j/http/OAuthAuthorization;

    if-eqz v1, :cond_0

    .line 112
    invoke-virtual {p0}, Ltwitter4j/Twitter;->getScreenName()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Ltwitter4j/http/OAuthAuthorization;

    .end local v0           #auth:Ltwitter4j/http/Authorization;
    invoke-static {v1, v0}, Ltwitter4j/util/ImageUpload;->getYFrogUploader(Ljava/lang/String;Ltwitter4j/http/OAuthAuthorization;)Ltwitter4j/util/ImageUpload;

    move-result-object v1

    .line 115
    :goto_0
    return-object v1

    .line 114
    .restart local v0       #auth:Ltwitter4j/http/Authorization;
    :cond_0
    invoke-static {v0}, Ltwitter4j/util/ImageUpload;->ensureBasicEnabled(Ltwitter4j/http/Authorization;)V

    .line 115
    check-cast v0, Ltwitter4j/http/BasicAuthorization;

    .end local v0           #auth:Ltwitter4j/http/Authorization;
    invoke-static {v0}, Ltwitter4j/util/ImageUpload;->getYFrogUploader(Ltwitter4j/http/BasicAuthorization;)Ltwitter4j/util/ImageUpload;

    move-result-object v1

    goto :goto_0
.end method

.method public static getYFrogUploader(Ltwitter4j/http/BasicAuthorization;)Ltwitter4j/util/ImageUpload;
    .locals 1
    .parameter "auth"

    .prologue
    .line 123
    new-instance v0, Ltwitter4j/util/ImageUpload$YFrogBasicAuthUploader;

    invoke-direct {v0, p0}, Ltwitter4j/util/ImageUpload$YFrogBasicAuthUploader;-><init>(Ltwitter4j/http/BasicAuthorization;)V

    return-object v0
.end method


# virtual methods
.method public abstract upload(Ljava/io/File;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation
.end method

.method public abstract upload(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation
.end method

.method public abstract upload(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation
.end method

.method public abstract upload(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation
.end method
