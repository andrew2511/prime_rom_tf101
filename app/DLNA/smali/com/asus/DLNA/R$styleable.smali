.class public final Lcom/asus/DLNA/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/DLNA/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final EvenlySpacedLayout:[I = null

.field public static final EvenlySpacedLayout_keepEndSpace:I = 0x1

.field public static final EvenlySpacedLayout_orientation:I = 0x0

.field public static final IconIndicator:[I = null

.field public static final IconIndicator_icons:I = 0x0

.field public static final IconIndicator_modes:I = 0x1

.field public static final IconListPreference:[I

.field public static final IconListPreference_icons:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x2

    .line 1088
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/asus/DLNA/R$styleable;->EvenlySpacedLayout:[I

    .line 1136
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/asus/DLNA/R$styleable;->IconIndicator:[I

    .line 1169
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/high16 v2, 0x7f01

    aput v2, v0, v1

    sput-object v0, Lcom/asus/DLNA/R$styleable;->IconListPreference:[I

    return-void

    .line 1088
    :array_0
    .array-data 0x4
        0x2t 0x0t 0x1t 0x7ft
        0x3t 0x0t 0x1t 0x7ft
    .end array-data

    .line 1136
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x1t 0x7ft
        0x1t 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1075
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
