.class Lcom/android/vending/util/Sha1Util$DigestResult;
.super Ljava/lang/Object;
.source "Sha1Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/util/Sha1Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DigestResult"
.end annotation


# instance fields
.field public final byteCount:J

.field public final sha1HashBase64:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;J)V
    .locals 0
    .parameter "hash"
    .parameter "bytes"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-wide p2, p0, Lcom/android/vending/util/Sha1Util$DigestResult;->byteCount:J

    .line 24
    iput-object p1, p0, Lcom/android/vending/util/Sha1Util$DigestResult;->sha1HashBase64:Ljava/lang/String;

    .line 25
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;JLcom/android/vending/util/Sha1Util$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/android/vending/util/Sha1Util$DigestResult;-><init>(Ljava/lang/String;J)V

    return-void
.end method
