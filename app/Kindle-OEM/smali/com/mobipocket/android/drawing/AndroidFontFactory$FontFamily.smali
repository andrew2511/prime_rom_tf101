.class final enum Lcom/mobipocket/android/drawing/AndroidFontFactory$FontFamily;
.super Ljava/lang/Enum;
.source "AndroidFontFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobipocket/android/drawing/AndroidFontFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "FontFamily"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mobipocket/android/drawing/AndroidFontFactory$FontFamily;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mobipocket/android/drawing/AndroidFontFactory$FontFamily;

.field public static final enum MONOSPACE:Lcom/mobipocket/android/drawing/AndroidFontFactory$FontFamily;

.field public static final enum SANS_SERIF:Lcom/mobipocket/android/drawing/AndroidFontFactory$FontFamily;

.field public static final enum SERIF:Lcom/mobipocket/android/drawing/AndroidFontFactory$FontFamily;


# instance fields
.field private final familyName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 29
    new-instance v0, Lcom/mobipocket/android/drawing/AndroidFontFactory$FontFamily;

    const-string v1, "MONOSPACE"

    const-string v2, "monospace"

    invoke-direct {v0, v1, v3, v2}, Lcom/mobipocket/android/drawing/AndroidFontFactory$FontFamily;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mobipocket/android/drawing/AndroidFontFactory$FontFamily;->MONOSPACE:Lcom/mobipocket/android/drawing/AndroidFontFactory$FontFamily;

    .line 30
    new-instance v0, Lcom/mobipocket/android/drawing/AndroidFontFactory$FontFamily;

    const-string v1, "SANS_SERIF"

    const-string v2, "sans"

    invoke-direct {v0, v1, v4, v2}, Lcom/mobipocket/android/drawing/AndroidFontFactory$FontFamily;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mobipocket/android/drawing/AndroidFontFactory$FontFamily;->SANS_SERIF:Lcom/mobipocket/android/drawing/AndroidFontFactory$FontFamily;

    .line 31
    new-instance v0, Lcom/mobipocket/android/drawing/AndroidFontFactory$FontFamily;

    const-string v1, "SERIF"

    const-string v2, "serif"

    invoke-direct {v0, v1, v5, v2}, Lcom/mobipocket/android/drawing/AndroidFontFactory$FontFamily;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mobipocket/android/drawing/AndroidFontFactory$FontFamily;->SERIF:Lcom/mobipocket/android/drawing/AndroidFontFactory$FontFamily;

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/mobipocket/android/drawing/AndroidFontFactory$FontFamily;

    sget-object v1, Lcom/mobipocket/android/drawing/AndroidFontFactory$FontFamily;->MONOSPACE:Lcom/mobipocket/android/drawing/AndroidFontFactory$FontFamily;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mobipocket/android/drawing/AndroidFontFactory$FontFamily;->SANS_SERIF:Lcom/mobipocket/android/drawing/AndroidFontFactory$FontFamily;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mobipocket/android/drawing/AndroidFontFactory$FontFamily;->SERIF:Lcom/mobipocket/android/drawing/AndroidFontFactory$FontFamily;

    aput-object v1, v0, v5

    sput-object v0, Lcom/mobipocket/android/drawing/AndroidFontFactory$FontFamily;->$VALUES:[Lcom/mobipocket/android/drawing/AndroidFontFactory$FontFamily;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "fn"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput-object p3, p0, Lcom/mobipocket/android/drawing/AndroidFontFactory$FontFamily;->familyName:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mobipocket/android/drawing/AndroidFontFactory$FontFamily;
    .locals 1
    .parameter

    .prologue
    .line 26
    const-class v0, Lcom/mobipocket/android/drawing/AndroidFontFactory$FontFamily;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mobipocket/android/drawing/AndroidFontFactory$FontFamily;

    return-object p0
.end method

.method public static values()[Lcom/mobipocket/android/drawing/AndroidFontFactory$FontFamily;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/mobipocket/android/drawing/AndroidFontFactory$FontFamily;->$VALUES:[Lcom/mobipocket/android/drawing/AndroidFontFactory$FontFamily;

    invoke-virtual {v0}, [Lcom/mobipocket/android/drawing/AndroidFontFactory$FontFamily;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mobipocket/android/drawing/AndroidFontFactory$FontFamily;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mobipocket/android/drawing/AndroidFontFactory$FontFamily;->familyName:Ljava/lang/String;

    return-object v0
.end method
