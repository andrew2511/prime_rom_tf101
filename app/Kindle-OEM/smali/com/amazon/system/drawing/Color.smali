.class public Lcom/amazon/system/drawing/Color;
.super Ljava/lang/Object;
.source "Color.java"


# static fields
.field public static final BLACK:Lcom/amazon/system/drawing/Color;

.field public static final BLUE:Lcom/amazon/system/drawing/Color;

.field public static final CYAN:Lcom/amazon/system/drawing/Color;

.field public static final GREEN:Lcom/amazon/system/drawing/Color;

.field public static final MAGENTA:Lcom/amazon/system/drawing/Color;

.field public static final RED:Lcom/amazon/system/drawing/Color;

.field public static final WHITE:Lcom/amazon/system/drawing/Color;

.field public static final YELLOW:Lcom/amazon/system/drawing/Color;

.field public static final black:Lcom/amazon/system/drawing/Color;

.field public static final blue:Lcom/amazon/system/drawing/Color;

.field public static final cyan:Lcom/amazon/system/drawing/Color;

.field public static final green:Lcom/amazon/system/drawing/Color;

.field public static final magenta:Lcom/amazon/system/drawing/Color;

.field public static final red:Lcom/amazon/system/drawing/Color;

.field public static final white:Lcom/amazon/system/drawing/Color;

.field public static final yellow:Lcom/amazon/system/drawing/Color;


# instance fields
.field public color:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 7
    new-instance v0, Lcom/amazon/system/drawing/Color;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/amazon/system/drawing/Color;-><init>(I)V

    sput-object v0, Lcom/amazon/system/drawing/Color;->WHITE:Lcom/amazon/system/drawing/Color;

    .line 9
    sget-object v0, Lcom/amazon/system/drawing/Color;->WHITE:Lcom/amazon/system/drawing/Color;

    sput-object v0, Lcom/amazon/system/drawing/Color;->white:Lcom/amazon/system/drawing/Color;

    .line 11
    new-instance v0, Lcom/amazon/system/drawing/Color;

    const/high16 v1, -0x100

    invoke-direct {v0, v1}, Lcom/amazon/system/drawing/Color;-><init>(I)V

    sput-object v0, Lcom/amazon/system/drawing/Color;->BLACK:Lcom/amazon/system/drawing/Color;

    .line 13
    sget-object v0, Lcom/amazon/system/drawing/Color;->BLACK:Lcom/amazon/system/drawing/Color;

    sput-object v0, Lcom/amazon/system/drawing/Color;->black:Lcom/amazon/system/drawing/Color;

    .line 15
    new-instance v0, Lcom/amazon/system/drawing/Color;

    const/high16 v1, -0x1

    invoke-direct {v0, v1}, Lcom/amazon/system/drawing/Color;-><init>(I)V

    sput-object v0, Lcom/amazon/system/drawing/Color;->RED:Lcom/amazon/system/drawing/Color;

    .line 17
    sget-object v0, Lcom/amazon/system/drawing/Color;->RED:Lcom/amazon/system/drawing/Color;

    sput-object v0, Lcom/amazon/system/drawing/Color;->red:Lcom/amazon/system/drawing/Color;

    .line 19
    new-instance v0, Lcom/amazon/system/drawing/Color;

    const v1, -0xff0100

    invoke-direct {v0, v1}, Lcom/amazon/system/drawing/Color;-><init>(I)V

    sput-object v0, Lcom/amazon/system/drawing/Color;->GREEN:Lcom/amazon/system/drawing/Color;

    .line 21
    sget-object v0, Lcom/amazon/system/drawing/Color;->GREEN:Lcom/amazon/system/drawing/Color;

    sput-object v0, Lcom/amazon/system/drawing/Color;->green:Lcom/amazon/system/drawing/Color;

    .line 23
    new-instance v0, Lcom/amazon/system/drawing/Color;

    const v1, -0xffff01

    invoke-direct {v0, v1}, Lcom/amazon/system/drawing/Color;-><init>(I)V

    sput-object v0, Lcom/amazon/system/drawing/Color;->BLUE:Lcom/amazon/system/drawing/Color;

    .line 25
    sget-object v0, Lcom/amazon/system/drawing/Color;->BLUE:Lcom/amazon/system/drawing/Color;

    sput-object v0, Lcom/amazon/system/drawing/Color;->blue:Lcom/amazon/system/drawing/Color;

    .line 27
    new-instance v0, Lcom/amazon/system/drawing/Color;

    const/16 v1, -0x100

    invoke-direct {v0, v1}, Lcom/amazon/system/drawing/Color;-><init>(I)V

    sput-object v0, Lcom/amazon/system/drawing/Color;->YELLOW:Lcom/amazon/system/drawing/Color;

    .line 29
    sget-object v0, Lcom/amazon/system/drawing/Color;->YELLOW:Lcom/amazon/system/drawing/Color;

    sput-object v0, Lcom/amazon/system/drawing/Color;->yellow:Lcom/amazon/system/drawing/Color;

    .line 31
    new-instance v0, Lcom/amazon/system/drawing/Color;

    const v1, -0xff0001

    invoke-direct {v0, v1}, Lcom/amazon/system/drawing/Color;-><init>(I)V

    sput-object v0, Lcom/amazon/system/drawing/Color;->CYAN:Lcom/amazon/system/drawing/Color;

    .line 33
    sget-object v0, Lcom/amazon/system/drawing/Color;->CYAN:Lcom/amazon/system/drawing/Color;

    sput-object v0, Lcom/amazon/system/drawing/Color;->cyan:Lcom/amazon/system/drawing/Color;

    .line 35
    new-instance v0, Lcom/amazon/system/drawing/Color;

    const v1, -0xff01

    invoke-direct {v0, v1}, Lcom/amazon/system/drawing/Color;-><init>(I)V

    sput-object v0, Lcom/amazon/system/drawing/Color;->MAGENTA:Lcom/amazon/system/drawing/Color;

    .line 37
    sget-object v0, Lcom/amazon/system/drawing/Color;->MAGENTA:Lcom/amazon/system/drawing/Color;

    sput-object v0, Lcom/amazon/system/drawing/Color;->magenta:Lcom/amazon/system/drawing/Color;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget-object v0, Lcom/amazon/system/drawing/Color;->WHITE:Lcom/amazon/system/drawing/Color;

    invoke-virtual {v0}, Lcom/amazon/system/drawing/Color;->getRGB()I

    move-result v0

    iput v0, p0, Lcom/amazon/system/drawing/Color;->color:I

    .line 42
    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 6
    .parameter "red"
    .parameter "green"
    .parameter "blue"

    .prologue
    const-wide v4, 0x406fe00000000000L

    .line 67
    float-to-double v0, p1

    mul-double/2addr v0, v4

    double-to-int v0, v0

    float-to-double v1, p2

    mul-double/2addr v1, v4

    double-to-int v1, v1

    float-to-double v2, p3

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/system/drawing/Color;-><init>(III)V

    .line 68
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 7
    .parameter "red"
    .parameter "green"
    .parameter "blue"
    .parameter "alpha"

    .prologue
    const-wide v5, 0x406fe00000000000L

    .line 72
    float-to-double v0, p1

    mul-double/2addr v0, v5

    double-to-int v0, v0

    float-to-double v1, p2

    mul-double/2addr v1, v5

    double-to-int v1, v1

    float-to-double v2, p3

    mul-double/2addr v2, v5

    double-to-int v2, v2

    float-to-double v3, p4

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/amazon/system/drawing/Color;-><init>(IIII)V

    .line 74
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lcom/amazon/system/drawing/Color;->color:I

    .line 47
    return-void
.end method

.method public constructor <init>(III)V
    .locals 2
    .parameter "red"
    .parameter "green"
    .parameter "blue"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/high16 v0, -0x100

    and-int/lit16 v1, p1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, p2, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, p3, 0xff

    or-int/2addr v0, v1

    iput v0, p0, Lcom/amazon/system/drawing/Color;->color:I

    .line 55
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 2
    .parameter "red"
    .parameter "green"
    .parameter "blue"
    .parameter "alpha"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    and-int/lit16 v0, p4, 0xff

    shl-int/lit8 v0, v0, 0x18

    and-int/lit16 v1, p1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, p2, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, p3, 0xff

    or-int/2addr v0, v1

    iput v0, p0, Lcom/amazon/system/drawing/Color;->color:I

    .line 63
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "obj"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 111
    if-ne p0, p1, :cond_0

    move v2, v5

    .line 120
    :goto_0
    return v2

    .line 113
    :cond_0
    if-nez p1, :cond_1

    move v2, v4

    .line 114
    goto :goto_0

    .line 115
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    move v2, v4

    .line 116
    goto :goto_0

    .line 117
    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/amazon/system/drawing/Color;

    move-object v1, v0

    .line 118
    .local v1, other:Lcom/amazon/system/drawing/Color;
    iget v2, p0, Lcom/amazon/system/drawing/Color;->color:I

    iget v3, v1, Lcom/amazon/system/drawing/Color;->color:I

    if-eq v2, v3, :cond_3

    move v2, v4

    .line 119
    goto :goto_0

    :cond_3
    move v2, v5

    .line 120
    goto :goto_0
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/amazon/system/drawing/Color;->color:I

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getBlue()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/amazon/system/drawing/Color;->color:I

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getGreen()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/amazon/system/drawing/Color;->color:I

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getRGB()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/amazon/system/drawing/Color;->color:I

    return v0
.end method

.method public getRed()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/amazon/system/drawing/Color;->color:I

    shr-int/lit8 v0, v0, 0x10

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x1

    .line 105
    mul-int/lit8 v0, v0, 0x1f

    iget v0, p0, Lcom/amazon/system/drawing/Color;->color:I

    add-int/lit8 v0, v0, 0x1f

    .line 106
    return v0
.end method
