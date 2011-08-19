.class public Lcom/amazon/kcp/reader/ui/color/AndroidColorModeFactory;
.super Ljava/lang/Object;
.source "AndroidColorModeFactory.java"


# static fields
.field public static final BLACK:I = 0x1

.field public static final CHRISTMAS:I = 0xa

.field public static final HALLOWEEN:I = 0x9

.field public static final ILLINOIS:I = 0xb

.field public static final NEBRASKA:I = 0x5

.field public static final PURPLE_AND_GOLD:I = 0x3

.field public static final SEPIA:I = 0x2

.field public static final TERMINAL:I = 0x4

.field public static final USA:I = 0x6

.field public static final VALENTINES:I = 0x7

.field public static final WHITE:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getColorMode(ILandroid/content/res/Resources;)Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 85
    packed-switch p0, :pswitch_data_0

    .line 121
    :pswitch_0
    new-instance v0, Lcom/amazon/kcp/reader/ui/color/WhiteColorMode;

    invoke-direct {v0, p1}, Lcom/amazon/kcp/reader/ui/color/WhiteColorMode;-><init>(Landroid/content/res/Resources;)V

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AndroidColorModeFactory#getColorMode: invalid colorModeId of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".  Defaulting to \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->getMetricsName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    :goto_0
    return-object v0

    .line 90
    :pswitch_1
    new-instance v0, Lcom/amazon/kcp/reader/ui/color/WhiteColorMode;

    invoke-direct {v0, p1}, Lcom/amazon/kcp/reader/ui/color/WhiteColorMode;-><init>(Landroid/content/res/Resources;)V

    goto :goto_0

    .line 93
    :pswitch_2
    new-instance v0, Lcom/amazon/kcp/reader/ui/color/BlackColorMode;

    invoke-direct {v0, p1}, Lcom/amazon/kcp/reader/ui/color/BlackColorMode;-><init>(Landroid/content/res/Resources;)V

    goto :goto_0

    .line 96
    :pswitch_3
    new-instance v0, Lcom/amazon/kcp/reader/ui/color/SepiaColorMode;

    invoke-direct {v0, p1}, Lcom/amazon/kcp/reader/ui/color/SepiaColorMode;-><init>(Landroid/content/res/Resources;)V

    goto :goto_0

    .line 99
    :pswitch_4
    new-instance v0, Lcom/amazon/kcp/reader/ui/color/PurpleAndGoldColorMode;

    invoke-direct {v0, p1}, Lcom/amazon/kcp/reader/ui/color/PurpleAndGoldColorMode;-><init>(Landroid/content/res/Resources;)V

    goto :goto_0

    .line 102
    :pswitch_5
    new-instance v0, Lcom/amazon/kcp/reader/ui/color/TerminalColorMode;

    invoke-direct {v0, p1}, Lcom/amazon/kcp/reader/ui/color/TerminalColorMode;-><init>(Landroid/content/res/Resources;)V

    goto :goto_0

    .line 106
    :pswitch_6
    new-instance v0, Lcom/amazon/kcp/reader/ui/color/NebraskaColorMode;

    invoke-direct {v0, p1}, Lcom/amazon/kcp/reader/ui/color/NebraskaColorMode;-><init>(Landroid/content/res/Resources;)V

    goto :goto_0

    .line 109
    :pswitch_7
    new-instance v0, Lcom/amazon/kcp/reader/ui/color/ValentinesColorMode;

    invoke-direct {v0, p1}, Lcom/amazon/kcp/reader/ui/color/ValentinesColorMode;-><init>(Landroid/content/res/Resources;)V

    goto :goto_0

    .line 112
    :pswitch_8
    new-instance v0, Lcom/amazon/kcp/reader/ui/color/HalloweenColorMode;

    invoke-direct {v0, p1}, Lcom/amazon/kcp/reader/ui/color/HalloweenColorMode;-><init>(Landroid/content/res/Resources;)V

    goto :goto_0

    .line 115
    :pswitch_9
    new-instance v0, Lcom/amazon/kcp/reader/ui/color/ChristmasColorMode;

    invoke-direct {v0, p1}, Lcom/amazon/kcp/reader/ui/color/ChristmasColorMode;-><init>(Landroid/content/res/Resources;)V

    goto :goto_0

    .line 118
    :pswitch_a
    new-instance v0, Lcom/amazon/kcp/reader/ui/color/IllinoisColorMode;

    invoke-direct {v0, p1}, Lcom/amazon/kcp/reader/ui/color/IllinoisColorMode;-><init>(Landroid/content/res/Resources;)V

    goto :goto_0

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public static getTextColorFilterFromColorMode(Lcom/amazon/kcp/reader/models/ColorMode;)Landroid/graphics/ColorFilter;
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v3, 0x437f

    const/4 v6, 0x0

    .line 138
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/models/ColorMode;->getTextColor()I

    move-result v0

    .line 141
    shr-int/lit8 v1, v0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    div-float/2addr v1, v3

    .line 142
    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v3

    .line 143
    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    div-float/2addr v0, v3

    .line 145
    const-string v3, "RGB:: %f %f %f"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 146
    const/16 v3, 0x14

    new-array v3, v3, [F

    aput v1, v3, v7

    aput v6, v3, v8

    aput v6, v3, v9

    const/4 v1, 0x3

    aput v6, v3, v1

    const/4 v1, 0x4

    aput v6, v3, v1

    const/4 v1, 0x5

    aput v6, v3, v1

    const/4 v1, 0x6

    aput v2, v3, v1

    const/4 v1, 0x7

    aput v6, v3, v1

    const/16 v1, 0x8

    aput v6, v3, v1

    const/16 v1, 0x9

    aput v6, v3, v1

    const/16 v1, 0xa

    aput v6, v3, v1

    const/16 v1, 0xb

    aput v6, v3, v1

    const/16 v1, 0xc

    aput v0, v3, v1

    const/16 v0, 0xd

    aput v6, v3, v0

    const/16 v0, 0xe

    aput v6, v3, v0

    const/16 v0, 0xf

    aput v6, v3, v0

    const/16 v0, 0x10

    aput v6, v3, v0

    const/16 v0, 0x11

    aput v6, v3, v0

    const/16 v0, 0x12

    const/high16 v1, 0x3f80

    aput v1, v3, v0

    const/16 v0, 0x13

    aput v6, v3, v0

    .line 153
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v0, v3}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    .line 155
    return-object v0
.end method
