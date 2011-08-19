.class public Lorg/apache/commons/compress/archivers/zip/UnicodeCommentExtraField;
.super Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;
.source "UnicodeCommentExtraField.java"


# static fields
.field public static final UCOM_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    const/16 v1, 0x6375

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/UnicodeCommentExtraField;->UCOM_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0
    .parameter "comment"
    .parameter "bytes"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;-><init>(Ljava/lang/String;[B)V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BII)V
    .locals 0
    .parameter "text"
    .parameter "bytes"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;-><init>(Ljava/lang/String;[BII)V

    .line 58
    return-void
.end method


# virtual methods
.method public getHeaderId()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/UnicodeCommentExtraField;->UCOM_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    return-object v0
.end method
