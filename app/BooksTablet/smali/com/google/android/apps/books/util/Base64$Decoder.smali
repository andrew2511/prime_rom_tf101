.class Lcom/google/android/apps/books/util/Base64$Decoder;
.super Lcom/google/android/apps/books/util/Base64$Coder;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/util/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Decoder"
.end annotation


# static fields
.field private static final DECODE:[I = null

.field private static final DECODE_WEBSAFE:[I = null

.field private static final EQUALS:I = -0x2

.field private static final SKIP:I = -0x1


# instance fields
.field private final alphabet:[I

.field private state:I

.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x100

    .line 187
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/apps/books/util/Base64$Decoder;->DECODE:[I

    .line 210
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/apps/books/util/Base64$Decoder;->DECODE_WEBSAFE:[I

    return-void

    .line 187
    nop

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x3et 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x3ft 0x0t 0x0t 0x0t
        0x34t 0x0t 0x0t 0x0t
        0x35t 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
        0x37t 0x0t 0x0t 0x0t
        0x38t 0x0t 0x0t 0x0t
        0x39t 0x0t 0x0t 0x0t
        0x3at 0x0t 0x0t 0x0t
        0x3bt 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x3dt 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfet 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x1at 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
        0x26t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x29t 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
        0x2bt 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x2et 0x0t 0x0t 0x0t
        0x2ft 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x33t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 210
    :array_1
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x3et 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x34t 0x0t 0x0t 0x0t
        0x35t 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
        0x37t 0x0t 0x0t 0x0t
        0x38t 0x0t 0x0t 0x0t
        0x39t 0x0t 0x0t 0x0t
        0x3at 0x0t 0x0t 0x0t
        0x3bt 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x3dt 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfet 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x3ft 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x1at 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
        0x26t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x29t 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
        0x2bt 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x2et 0x0t 0x0t 0x0t
        0x2ft 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x33t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public constructor <init>(I[B)V
    .locals 2
    .parameter "flags"
    .parameter "output"

    .prologue
    const/4 v1, 0x0

    .line 247
    invoke-direct {p0}, Lcom/google/android/apps/books/util/Base64$Coder;-><init>()V

    .line 248
    iput-object p2, p0, Lcom/google/android/apps/books/util/Base64$Decoder;->output:[B

    .line 250
    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/apps/books/util/Base64$Decoder;->DECODE:[I

    :goto_0
    iput-object v0, p0, Lcom/google/android/apps/books/util/Base64$Decoder;->alphabet:[I

    .line 251
    iput v1, p0, Lcom/google/android/apps/books/util/Base64$Decoder;->state:I

    .line 252
    iput v1, p0, Lcom/google/android/apps/books/util/Base64$Decoder;->value:I

    .line 253
    return-void

    .line 250
    :cond_0
    sget-object v0, Lcom/google/android/apps/books/util/Base64$Decoder;->DECODE_WEBSAFE:[I

    goto :goto_0
.end method


# virtual methods
.method public maxOutputSize(I)I
    .locals 1
    .parameter "len"

    .prologue
    .line 260
    mul-int/lit8 v0, p1, 0x3

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public process([BIIZ)Z
    .locals 11
    .parameter "input"
    .parameter "offset"
    .parameter "len"
    .parameter "finish"

    .prologue
    .line 270
    iget v9, p0, Lcom/google/android/apps/books/util/Base64$Decoder;->state:I

    const/4 v10, 0x6

    if-ne v9, v10, :cond_0

    const/4 v9, 0x0

    .line 443
    :goto_0
    return v9

    .line 272
    :cond_0
    move v5, p2

    .line 273
    .local v5, p:I
    add-int/2addr p3, p2

    .line 280
    iget v7, p0, Lcom/google/android/apps/books/util/Base64$Decoder;->state:I

    .line 281
    .local v7, state:I
    iget v8, p0, Lcom/google/android/apps/books/util/Base64$Decoder;->value:I

    .line 282
    .local v8, value:I
    const/4 v2, 0x0

    .line 283
    .local v2, op:I
    iget-object v4, p0, Lcom/google/android/apps/books/util/Base64$Decoder;->output:[B

    .line 284
    .local v4, output:[B
    iget-object v0, p0, Lcom/google/android/apps/books/util/Base64$Decoder;->alphabet:[I

    .line 286
    .local v0, alphabet:[I
    :goto_1
    if-ge v5, p3, :cond_c

    .line 301
    if-nez v7, :cond_2

    .line 306
    :goto_2
    add-int/lit8 v9, v5, 0x4

    if-gt v9, p3, :cond_1

    aget-byte v9, p1, v5

    and-int/lit16 v9, v9, 0xff

    aget v9, v0, v9

    shl-int/lit8 v9, v9, 0x12

    add-int/lit8 v10, v5, 0x1

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    aget v10, v0, v10

    shl-int/lit8 v10, v10, 0xc

    or-int/2addr v9, v10

    add-int/lit8 v10, v5, 0x2

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    aget v10, v0, v10

    shl-int/lit8 v10, v10, 0x6

    or-int/2addr v9, v10

    add-int/lit8 v10, v5, 0x3

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    aget v10, v0, v10

    or-int v8, v9, v10

    if-ltz v8, :cond_1

    .line 307
    add-int/lit8 v9, v2, 0x2

    int-to-byte v10, v8

    aput-byte v10, v4, v9

    .line 308
    add-int/lit8 v9, v2, 0x1

    shr-int/lit8 v10, v8, 0x8

    int-to-byte v10, v10

    aput-byte v10, v4, v9

    .line 309
    shr-int/lit8 v9, v8, 0x10

    int-to-byte v9, v9

    aput-byte v9, v4, v2

    .line 310
    add-int/lit8 v2, v2, 0x3

    .line 311
    add-int/lit8 v5, v5, 0x4

    goto :goto_2

    .line 313
    :cond_1
    if-lt v5, p3, :cond_2

    move v3, v2

    .line 399
    .end local v2           #op:I
    .local v3, op:I
    :goto_3
    if-nez p4, :cond_b

    .line 402
    iput v7, p0, Lcom/google/android/apps/books/util/Base64$Decoder;->state:I

    .line 403
    iput v8, p0, Lcom/google/android/apps/books/util/Base64$Decoder;->value:I

    .line 404
    iput v3, p0, Lcom/google/android/apps/books/util/Base64$Decoder;->op:I

    .line 405
    const/4 v9, 0x1

    goto :goto_0

    .line 321
    .end local v3           #op:I
    .restart local v2       #op:I
    :cond_2
    add-int/lit8 v6, v5, 0x1

    .end local v5           #p:I
    .local v6, p:I
    aget-byte v9, p1, v5

    and-int/lit16 v9, v9, 0xff

    aget v1, v0, v9

    .line 323
    .local v1, d:I
    packed-switch v7, :pswitch_data_0

    :cond_3
    :goto_4
    move v5, v6

    .line 397
    .end local v6           #p:I
    .restart local v5       #p:I
    goto :goto_1

    .line 325
    .end local v5           #p:I
    .restart local v6       #p:I
    :pswitch_0
    if-ltz v1, :cond_4

    .line 326
    move v8, v1

    .line 327
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 328
    :cond_4
    const/4 v9, -0x1

    if-eq v1, v9, :cond_3

    .line 329
    const/4 v9, 0x6

    iput v9, p0, Lcom/google/android/apps/books/util/Base64$Decoder;->state:I

    .line 330
    const/4 v9, 0x0

    goto :goto_0

    .line 335
    :pswitch_1
    if-ltz v1, :cond_5

    .line 336
    shl-int/lit8 v9, v8, 0x6

    or-int v8, v9, v1

    .line 337
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 338
    :cond_5
    const/4 v9, -0x1

    if-eq v1, v9, :cond_3

    .line 339
    const/4 v9, 0x6

    iput v9, p0, Lcom/google/android/apps/books/util/Base64$Decoder;->state:I

    .line 340
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 345
    :pswitch_2
    if-ltz v1, :cond_6

    .line 346
    shl-int/lit8 v9, v8, 0x6

    or-int v8, v9, v1

    .line 347
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 348
    :cond_6
    const/4 v9, -0x2

    if-ne v1, v9, :cond_7

    .line 351
    add-int/lit8 v3, v2, 0x1

    .end local v2           #op:I
    .restart local v3       #op:I
    shr-int/lit8 v9, v8, 0x4

    int-to-byte v9, v9

    aput-byte v9, v4, v2

    .line 352
    const/4 v7, 0x4

    move v2, v3

    .end local v3           #op:I
    .restart local v2       #op:I
    goto :goto_4

    .line 353
    :cond_7
    const/4 v9, -0x1

    if-eq v1, v9, :cond_3

    .line 354
    const/4 v9, 0x6

    iput v9, p0, Lcom/google/android/apps/books/util/Base64$Decoder;->state:I

    .line 355
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 360
    :pswitch_3
    if-ltz v1, :cond_8

    .line 362
    shl-int/lit8 v9, v8, 0x6

    or-int v8, v9, v1

    .line 363
    add-int/lit8 v9, v2, 0x2

    int-to-byte v10, v8

    aput-byte v10, v4, v9

    .line 364
    add-int/lit8 v9, v2, 0x1

    shr-int/lit8 v10, v8, 0x8

    int-to-byte v10, v10

    aput-byte v10, v4, v9

    .line 365
    shr-int/lit8 v9, v8, 0x10

    int-to-byte v9, v9

    aput-byte v9, v4, v2

    .line 366
    add-int/lit8 v2, v2, 0x3

    .line 367
    const/4 v7, 0x0

    goto :goto_4

    .line 368
    :cond_8
    const/4 v9, -0x2

    if-ne v1, v9, :cond_9

    .line 371
    add-int/lit8 v9, v2, 0x1

    shr-int/lit8 v10, v8, 0x2

    int-to-byte v10, v10

    aput-byte v10, v4, v9

    .line 372
    shr-int/lit8 v9, v8, 0xa

    int-to-byte v9, v9

    aput-byte v9, v4, v2

    .line 373
    add-int/lit8 v2, v2, 0x2

    .line 374
    const/4 v7, 0x5

    goto :goto_4

    .line 375
    :cond_9
    const/4 v9, -0x1

    if-eq v1, v9, :cond_3

    .line 376
    const/4 v9, 0x6

    iput v9, p0, Lcom/google/android/apps/books/util/Base64$Decoder;->state:I

    .line 377
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 382
    :pswitch_4
    const/4 v9, -0x2

    if-ne v1, v9, :cond_a

    .line 383
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 384
    :cond_a
    const/4 v9, -0x1

    if-eq v1, v9, :cond_3

    .line 385
    const/4 v9, 0x6

    iput v9, p0, Lcom/google/android/apps/books/util/Base64$Decoder;->state:I

    .line 386
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 391
    :pswitch_5
    const/4 v9, -0x1

    if-eq v1, v9, :cond_3

    .line 392
    const/4 v9, 0x6

    iput v9, p0, Lcom/google/android/apps/books/util/Base64$Decoder;->state:I

    .line 393
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 411
    .end local v1           #d:I
    .end local v2           #op:I
    .end local v6           #p:I
    .restart local v3       #op:I
    .restart local v5       #p:I
    :cond_b
    packed-switch v7, :pswitch_data_1

    move v2, v3

    .line 441
    .end local v3           #op:I
    .restart local v2       #op:I
    :goto_5
    iput v7, p0, Lcom/google/android/apps/books/util/Base64$Decoder;->state:I

    .line 442
    iput v2, p0, Lcom/google/android/apps/books/util/Base64$Decoder;->op:I

    .line 443
    const/4 v9, 0x1

    goto/16 :goto_0

    .end local v2           #op:I
    .restart local v3       #op:I
    :pswitch_6
    move v2, v3

    .line 414
    .end local v3           #op:I
    .restart local v2       #op:I
    goto :goto_5

    .line 418
    .end local v2           #op:I
    .restart local v3       #op:I
    :pswitch_7
    const/4 v9, 0x6

    iput v9, p0, Lcom/google/android/apps/books/util/Base64$Decoder;->state:I

    .line 419
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 423
    :pswitch_8
    add-int/lit8 v2, v3, 0x1

    .end local v3           #op:I
    .restart local v2       #op:I
    shr-int/lit8 v9, v8, 0x4

    int-to-byte v9, v9

    aput-byte v9, v4, v3

    goto :goto_5

    .line 428
    .end local v2           #op:I
    .restart local v3       #op:I
    :pswitch_9
    add-int/lit8 v2, v3, 0x1

    .end local v3           #op:I
    .restart local v2       #op:I
    shr-int/lit8 v9, v8, 0xa

    int-to-byte v9, v9

    aput-byte v9, v4, v3

    .line 429
    add-int/lit8 v3, v2, 0x1

    .end local v2           #op:I
    .restart local v3       #op:I
    shr-int/lit8 v9, v8, 0x2

    int-to-byte v9, v9

    aput-byte v9, v4, v2

    move v2, v3

    .line 430
    .end local v3           #op:I
    .restart local v2       #op:I
    goto :goto_5

    .line 433
    .end local v2           #op:I
    .restart local v3       #op:I
    :pswitch_a
    const/4 v9, 0x6

    iput v9, p0, Lcom/google/android/apps/books/util/Base64$Decoder;->state:I

    .line 434
    const/4 v9, 0x0

    goto/16 :goto_0

    .end local v3           #op:I
    .restart local v2       #op:I
    :cond_c
    move v3, v2

    .end local v2           #op:I
    .restart local v3       #op:I
    goto/16 :goto_3

    .line 323
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 411
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
