.class public final enum Lorg/codehaus/jackson/JsonEncoding;
.super Ljava/lang/Enum;
.source "JsonEncoding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/codehaus/jackson/JsonEncoding;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/codehaus/jackson/JsonEncoding;

.field public static final enum UTF16_BE:Lorg/codehaus/jackson/JsonEncoding;

.field public static final enum UTF16_LE:Lorg/codehaus/jackson/JsonEncoding;

.field public static final enum UTF32_BE:Lorg/codehaus/jackson/JsonEncoding;

.field public static final enum UTF32_LE:Lorg/codehaus/jackson/JsonEncoding;

.field public static final enum UTF8:Lorg/codehaus/jackson/JsonEncoding;


# instance fields
.field final mBigEndian:Z

.field final mJavaName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 15
    new-instance v0, Lorg/codehaus/jackson/JsonEncoding;

    const-string v1, "UTF8"

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v3, v2, v3}, Lorg/codehaus/jackson/JsonEncoding;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lorg/codehaus/jackson/JsonEncoding;->UTF8:Lorg/codehaus/jackson/JsonEncoding;

    .line 16
    new-instance v0, Lorg/codehaus/jackson/JsonEncoding;

    const-string v1, "UTF16_BE"

    const-string v2, "UTF-16BE"

    invoke-direct {v0, v1, v4, v2, v4}, Lorg/codehaus/jackson/JsonEncoding;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lorg/codehaus/jackson/JsonEncoding;->UTF16_BE:Lorg/codehaus/jackson/JsonEncoding;

    .line 17
    new-instance v0, Lorg/codehaus/jackson/JsonEncoding;

    const-string v1, "UTF16_LE"

    const-string v2, "UTF-16LE"

    invoke-direct {v0, v1, v5, v2, v3}, Lorg/codehaus/jackson/JsonEncoding;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lorg/codehaus/jackson/JsonEncoding;->UTF16_LE:Lorg/codehaus/jackson/JsonEncoding;

    .line 18
    new-instance v0, Lorg/codehaus/jackson/JsonEncoding;

    const-string v1, "UTF32_BE"

    const-string v2, "UTF-32BE"

    invoke-direct {v0, v1, v6, v2, v4}, Lorg/codehaus/jackson/JsonEncoding;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lorg/codehaus/jackson/JsonEncoding;->UTF32_BE:Lorg/codehaus/jackson/JsonEncoding;

    .line 19
    new-instance v0, Lorg/codehaus/jackson/JsonEncoding;

    const-string v1, "UTF32_LE"

    const-string v2, "UTF-32LE"

    invoke-direct {v0, v1, v7, v2, v3}, Lorg/codehaus/jackson/JsonEncoding;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lorg/codehaus/jackson/JsonEncoding;->UTF32_LE:Lorg/codehaus/jackson/JsonEncoding;

    .line 14
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/codehaus/jackson/JsonEncoding;

    sget-object v1, Lorg/codehaus/jackson/JsonEncoding;->UTF8:Lorg/codehaus/jackson/JsonEncoding;

    aput-object v1, v0, v3

    sget-object v1, Lorg/codehaus/jackson/JsonEncoding;->UTF16_BE:Lorg/codehaus/jackson/JsonEncoding;

    aput-object v1, v0, v4

    sget-object v1, Lorg/codehaus/jackson/JsonEncoding;->UTF16_LE:Lorg/codehaus/jackson/JsonEncoding;

    aput-object v1, v0, v5

    sget-object v1, Lorg/codehaus/jackson/JsonEncoding;->UTF32_BE:Lorg/codehaus/jackson/JsonEncoding;

    aput-object v1, v0, v6

    sget-object v1, Lorg/codehaus/jackson/JsonEncoding;->UTF32_LE:Lorg/codehaus/jackson/JsonEncoding;

    aput-object v1, v0, v7

    sput-object v0, Lorg/codehaus/jackson/JsonEncoding;->$VALUES:[Lorg/codehaus/jackson/JsonEncoding;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter "javaName"
    .parameter "bigEndian"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput-object p3, p0, Lorg/codehaus/jackson/JsonEncoding;->mJavaName:Ljava/lang/String;

    .line 29
    iput-boolean p4, p0, Lorg/codehaus/jackson/JsonEncoding;->mBigEndian:Z

    .line 30
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/codehaus/jackson/JsonEncoding;
    .locals 1
    .parameter "name"

    .prologue
    .line 14
    const-class v0, Lorg/codehaus/jackson/JsonEncoding;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/codehaus/jackson/JsonEncoding;

    return-object p0
.end method

.method public static values()[Lorg/codehaus/jackson/JsonEncoding;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lorg/codehaus/jackson/JsonEncoding;->$VALUES:[Lorg/codehaus/jackson/JsonEncoding;

    invoke-virtual {v0}, [Lorg/codehaus/jackson/JsonEncoding;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/codehaus/jackson/JsonEncoding;

    return-object v0
.end method


# virtual methods
.method public getJavaName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lorg/codehaus/jackson/JsonEncoding;->mJavaName:Ljava/lang/String;

    return-object v0
.end method

.method public isBigEndian()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lorg/codehaus/jackson/JsonEncoding;->mBigEndian:Z

    return v0
.end method
