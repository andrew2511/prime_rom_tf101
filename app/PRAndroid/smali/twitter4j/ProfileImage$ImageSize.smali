.class public Ltwitter4j/ProfileImage$ImageSize;
.super Ljava/lang/Object;
.source "ProfileImage.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltwitter4j/ProfileImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageSize"
.end annotation


# static fields
.field private static final instances:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ltwitter4j/ProfileImage$ImageSize;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x2eabdece0fdb075bL


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ltwitter4j/ProfileImage$ImageSize;->instances:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Ltwitter4j/ProfileImage$ImageSize;->name:Ljava/lang/String;

    .line 57
    sget-object v0, Ltwitter4j/ProfileImage$ImageSize;->instances:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ltwitter4j/ProfileImage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Ltwitter4j/ProfileImage$ImageSize;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private static getInstance(Ljava/lang/String;)Ltwitter4j/ProfileImage$ImageSize;
    .locals 1
    .parameter "name"

    .prologue
    .line 87
    sget-object v0, Ltwitter4j/ProfileImage$ImageSize;->instances:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ltwitter4j/ProfileImage$ImageSize;

    return-object p0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Ltwitter4j/ProfileImage$ImageSize;->name:Ljava/lang/String;

    invoke-static {v0}, Ltwitter4j/ProfileImage$ImageSize;->getInstance(Ljava/lang/String;)Ltwitter4j/ProfileImage$ImageSize;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 66
    if-ne p0, p1, :cond_0

    move v2, v5

    .line 73
    :goto_0
    return v2

    .line 67
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    :cond_1
    move v2, v4

    goto :goto_0

    .line 69
    :cond_2
    move-object v0, p1

    check-cast v0, Ltwitter4j/ProfileImage$ImageSize;

    move-object v1, v0

    .line 71
    .local v1, imageSize:Ltwitter4j/ProfileImage$ImageSize;
    iget-object v2, p0, Ltwitter4j/ProfileImage$ImageSize;->name:Ljava/lang/String;

    iget-object v3, v1, Ltwitter4j/ProfileImage$ImageSize;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v4

    goto :goto_0

    :cond_3
    move v2, v5

    .line 73
    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Ltwitter4j/ProfileImage$ImageSize;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Ltwitter4j/ProfileImage$ImageSize;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Ltwitter4j/ProfileImage$ImageSize;->name:Ljava/lang/String;

    return-object v0
.end method
