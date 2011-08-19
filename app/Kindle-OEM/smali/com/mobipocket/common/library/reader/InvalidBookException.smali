.class public Lcom/mobipocket/common/library/reader/InvalidBookException;
.super Ljava/lang/Exception;
.source "InvalidBookException.java"


# static fields
.field public static BAD_FORMAT:Ljava/lang/String;

.field public static BOOK_NOT_SUPPORTED:Ljava/lang/String;

.field public static CORRUPTED:Ljava/lang/String;

.field public static EXPIRED:Ljava/lang/String;

.field public static INVALID_PID:Ljava/lang/String;

.field public static MULTIPART:Ljava/lang/String;

.field public static NOT_YET_ACTIVE:Ljava/lang/String;

.field public static PALMDOC_WRONG_FORMAT:Ljava/lang/String;

.field public static SECURITY_NOT_HANDLED:Ljava/lang/String;

.field public static UNKNOWN_ERROR:Ljava/lang/String;

.field public static WRONG_PASSWORD:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "Expired"

    sput-object v0, Lcom/mobipocket/common/library/reader/InvalidBookException;->EXPIRED:Ljava/lang/String;

    .line 23
    const-string v0, "BadFormat"

    sput-object v0, Lcom/mobipocket/common/library/reader/InvalidBookException;->BAD_FORMAT:Ljava/lang/String;

    .line 28
    const-string v0, "Corrupted"

    sput-object v0, Lcom/mobipocket/common/library/reader/InvalidBookException;->CORRUPTED:Ljava/lang/String;

    .line 33
    const-string v0, "UNKNOWN"

    sput-object v0, Lcom/mobipocket/common/library/reader/InvalidBookException;->UNKNOWN_ERROR:Ljava/lang/String;

    .line 38
    const-string v0, "PID"

    sput-object v0, Lcom/mobipocket/common/library/reader/InvalidBookException;->INVALID_PID:Ljava/lang/String;

    .line 43
    const-string v0, "Password"

    sput-object v0, Lcom/mobipocket/common/library/reader/InvalidBookException;->WRONG_PASSWORD:Ljava/lang/String;

    .line 48
    const-string v0, "SecurityNotHandled"

    sput-object v0, Lcom/mobipocket/common/library/reader/InvalidBookException;->SECURITY_NOT_HANDLED:Ljava/lang/String;

    .line 58
    const-string v0, "NotYetActive"

    sput-object v0, Lcom/mobipocket/common/library/reader/InvalidBookException;->NOT_YET_ACTIVE:Ljava/lang/String;

    .line 73
    const-string v0, "Multipart"

    sput-object v0, Lcom/mobipocket/common/library/reader/InvalidBookException;->MULTIPART:Ljava/lang/String;

    .line 78
    const-string v0, "BookNotSupported"

    sput-object v0, Lcom/mobipocket/common/library/reader/InvalidBookException;->BOOK_NOT_SUPPORTED:Ljava/lang/String;

    .line 83
    const-string v0, "PalmDocWrongFormat"

    sput-object v0, Lcom/mobipocket/common/library/reader/InvalidBookException;->PALMDOC_WRONG_FORMAT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "reason"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 92
    return-void
.end method
