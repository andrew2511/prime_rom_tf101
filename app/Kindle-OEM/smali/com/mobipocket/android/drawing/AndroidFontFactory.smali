.class public Lcom/mobipocket/android/drawing/AndroidFontFactory;
.super Ljava/lang/Object;
.source "AndroidFontFactory.java"

# interfaces
.implements Lcom/amazon/system/drawing/FontFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobipocket/android/drawing/AndroidFontFactory$FontFamily;
    }
.end annotation


# static fields
.field public static availableSizes:[I

.field public static defaultFontIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mobipocket/android/drawing/AndroidFontFactory;->availableSizes:[I

    .line 24
    const/4 v0, 0x2

    sput v0, Lcom/mobipocket/android/drawing/AndroidFontFactory;->defaultFontIndex:I

    return-void

    .line 19
    nop

    :array_0
    .array-data 0x4
        0xft 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method


# virtual methods
.method public getAvailableFamilyNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 59
    invoke-static {}, Lcom/mobipocket/android/drawing/AndroidFontFactory$FontFamily;->values()[Lcom/mobipocket/android/drawing/AndroidFontFactory$FontFamily;

    move-result-object v2

    array-length v2, v2

    new-array v1, v2, [Ljava/lang/String;

    .line 61
    .local v1, recognizedFonts:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-static {}, Lcom/mobipocket/android/drawing/AndroidFontFactory$FontFamily;->values()[Lcom/mobipocket/android/drawing/AndroidFontFactory$FontFamily;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 63
    invoke-static {}, Lcom/mobipocket/android/drawing/AndroidFontFactory$FontFamily;->values()[Lcom/mobipocket/android/drawing/AndroidFontFactory$FontFamily;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/mobipocket/android/drawing/AndroidFontFactory$FontFamily;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    :cond_0
    return-object v1
.end method

.method public getDefaultFamilyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/mobipocket/android/drawing/AndroidFontFactory$FontFamily;->SERIF:Lcom/mobipocket/android/drawing/AndroidFontFactory$FontFamily;

    invoke-virtual {v0}, Lcom/mobipocket/android/drawing/AndroidFontFactory$FontFamily;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultFontSize()I
    .locals 2

    .prologue
    .line 77
    sget-object v0, Lcom/mobipocket/android/drawing/AndroidFontFactory;->availableSizes:[I

    sget v1, Lcom/mobipocket/android/drawing/AndroidFontFactory;->defaultFontIndex:I

    aget v0, v0, v1

    return v0
.end method

.method public getFont(Ljava/lang/String;IZZZ)Lcom/amazon/system/drawing/Font;
    .locals 3
    .parameter "familyName"
    .parameter "size"
    .parameter "bold"
    .parameter "italic"
    .parameter "underlined"

    .prologue
    .line 95
    const/4 v0, 0x0

    .line 96
    .local v0, style:I
    if-eqz p3, :cond_0

    .line 98
    or-int/lit8 v0, v0, 0x1

    .line 101
    :cond_0
    if-eqz p4, :cond_1

    .line 103
    or-int/lit8 v0, v0, 0x2

    .line 105
    :cond_1
    new-instance v1, Lcom/mobipocket/android/drawing/AndroidFont;

    int-to-float v2, p2

    invoke-direct {v1, p1, v2, v0, p5}, Lcom/mobipocket/android/drawing/AndroidFont;-><init>(Ljava/lang/String;FIZ)V

    return-object v1
.end method

.method public getMonospacedFontFamilyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/mobipocket/android/drawing/AndroidFontFactory$FontFamily;->MONOSPACE:Lcom/mobipocket/android/drawing/AndroidFontFactory$FontFamily;

    invoke-virtual {v0}, Lcom/mobipocket/android/drawing/AndroidFontFactory$FontFamily;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
