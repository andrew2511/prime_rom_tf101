.class public final Lorg/apache/http/HttpVersion;
.super Lorg/apache/http/ProtocolVersion;
.source "HttpVersion.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final HTTP:Ljava/lang/String; = "HTTP"

.field public static final HTTP_0_9:Lorg/apache/http/HttpVersion; = null

.field public static final HTTP_1_0:Lorg/apache/http/HttpVersion; = null

.field public static final HTTP_1_1:Lorg/apache/http/HttpVersion; = null

.field private static final serialVersionUID:J = -0x514703574c384bf0L


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 61
    new-instance v0, Lorg/apache/http/HttpVersion;

    const/16 v1, 0x9

    invoke-direct {v0, v3, v1}, Lorg/apache/http/HttpVersion;-><init>(II)V

    sput-object v0, Lorg/apache/http/HttpVersion;->HTTP_0_9:Lorg/apache/http/HttpVersion;

    .line 64
    new-instance v0, Lorg/apache/http/HttpVersion;

    invoke-direct {v0, v2, v3}, Lorg/apache/http/HttpVersion;-><init>(II)V

    sput-object v0, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    .line 67
    new-instance v0, Lorg/apache/http/HttpVersion;

    invoke-direct {v0, v2, v2}, Lorg/apache/http/HttpVersion;-><init>(II)V

    sput-object v0, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "major"
    .parameter "minor"

    .prologue
    .line 79
    const-string v0, "HTTP"

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/http/ProtocolVersion;-><init>(Ljava/lang/String;II)V

    .line 80
    return-void
.end method


# virtual methods
.method public forVersion(II)Lorg/apache/http/ProtocolVersion;
    .locals 2
    .parameter "major"
    .parameter "minor"

    .prologue
    const/4 v1, 0x1

    .line 93
    iget v0, p0, Lorg/apache/http/HttpVersion;->major:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lorg/apache/http/HttpVersion;->minor:I

    if-ne p2, v0, :cond_0

    move-object v0, p0

    .line 110
    :goto_0
    return-object v0

    .line 97
    :cond_0
    if-ne p1, v1, :cond_2

    .line 98
    if-nez p2, :cond_1

    .line 99
    sget-object v0, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    goto :goto_0

    .line 101
    :cond_1
    if-ne p2, v1, :cond_2

    .line 102
    sget-object v0, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    goto :goto_0

    .line 105
    :cond_2
    if-nez p1, :cond_3

    const/16 v0, 0x9

    if-ne p2, v0, :cond_3

    .line 106
    sget-object v0, Lorg/apache/http/HttpVersion;->HTTP_0_9:Lorg/apache/http/HttpVersion;

    goto :goto_0

    .line 110
    :cond_3
    new-instance v0, Lorg/apache/http/HttpVersion;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/HttpVersion;-><init>(II)V

    goto :goto_0
.end method
