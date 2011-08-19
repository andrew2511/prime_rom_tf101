.class public interface abstract Lorg/apache/harmony/security/provider/crypto/SHA1_Data;
.super Ljava/lang/Object;
.source "SHA1_Data.java"


# static fields
.field public static final BYTES_OFFSET:I = 0x51

.field public static final DEVICE_NAMES:[Ljava/lang/String; = null

.field public static final DIGEST_LENGTH:I = 0x14

.field public static final H0:I = 0x67452301

.field public static final H1:I = -0x10325477

.field public static final H2:I = -0x67452302

.field public static final H3:I = 0x10325476

.field public static final H4:I = -0x3c2d1e10

.field public static final HASH_OFFSET:I = 0x52


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 97
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/dev/urandom"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/harmony/security/provider/crypto/SHA1_Data;->DEVICE_NAMES:[Ljava/lang/String;

    return-void
.end method
