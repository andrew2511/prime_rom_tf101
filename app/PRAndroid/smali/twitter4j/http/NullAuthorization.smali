.class public Ltwitter4j/http/NullAuthorization;
.super Ljava/lang/Object;
.source "NullAuthorization.java"

# interfaces
.implements Ltwitter4j/http/Authorization;
.implements Ljava/io/Serializable;


# static fields
.field private static SINGLETON:Ltwitter4j/http/NullAuthorization; = null

.field private static final serialVersionUID:J = -0x7967c14d4d386d18L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Ltwitter4j/http/NullAuthorization;

    invoke-direct {v0}, Ltwitter4j/http/NullAuthorization;-><init>()V

    sput-object v0, Ltwitter4j/http/NullAuthorization;->SINGLETON:Ltwitter4j/http/NullAuthorization;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public static getInstance()Ltwitter4j/http/NullAuthorization;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Ltwitter4j/http/NullAuthorization;->SINGLETON:Ltwitter4j/http/NullAuthorization;

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 70
    sget-object v0, Ltwitter4j/http/NullAuthorization;->SINGLETON:Ltwitter4j/http/NullAuthorization;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 61
    sget-object v0, Ltwitter4j/http/NullAuthorization;->SINGLETON:Ltwitter4j/http/NullAuthorization;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAuthorizationHeader(Ltwitter4j/internal/http/HttpRequest;)Ljava/lang/String;
    .locals 1
    .parameter "req"

    .prologue
    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const-string v0, "NullAuthentication{SINGLETON}"

    return-object v0
.end method
