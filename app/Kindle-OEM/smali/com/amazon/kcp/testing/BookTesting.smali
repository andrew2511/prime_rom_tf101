.class public final Lcom/amazon/kcp/testing/BookTesting;
.super Ljava/lang/Object;
.source "BookTesting.java"


# static fields
.field public static final LPR_OVERRIDE_GO_TO_BEGINNING:I = 0x1

.field public static final LPR_OVERRIDE_GO_TO_MIDDLE:I = 0x2

.field public static final LPR_OVERRIDE_OFF:I

.field private static lprOverride:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput v0, Lcom/amazon/kcp/testing/BookTesting;->lprOverride:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static getLPROverride()I
    .locals 1

    .prologue
    .line 43
    sget v0, Lcom/amazon/kcp/testing/BookTesting;->lprOverride:I

    return v0
.end method

.method public static setLPROverride(I)V
    .locals 0
    .parameter "lprOverride"

    .prologue
    .line 34
    sput p0, Lcom/amazon/kcp/testing/BookTesting;->lprOverride:I

    .line 35
    return-void
.end method
