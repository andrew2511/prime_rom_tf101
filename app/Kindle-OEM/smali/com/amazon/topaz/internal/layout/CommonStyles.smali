.class final Lcom/amazon/topaz/internal/layout/CommonStyles;
.super Ljava/lang/Object;
.source "CommonStyles.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/topaz/internal/layout/CommonStyles$Display;
    }
.end annotation


# static fields
.field private static final TRANSPARENT:Lcom/amazon/system/drawing/Color;


# instance fields
.field public final bgColor:Lcom/amazon/system/drawing/Color;

.field private final display:I

.field public final iconImage:Ljava/lang/String;

.field public final iconified:Z

.field public final invertColor:Lcom/amazon/system/drawing/Color;

.field private final mSize:I

.field private final margin:Lcom/amazon/system/drawing/Rectangle;

.field private final maxMarginPct:I

.field public final newPage:Z

.field private final pos:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 352
    new-instance v0, Lcom/amazon/system/drawing/Color;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/amazon/system/drawing/Color;-><init>(IIII)V

    sput-object v0, Lcom/amazon/topaz/internal/layout/CommonStyles;->TRANSPARENT:Lcom/amazon/system/drawing/Color;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/amazon/system/drawing/Rectangle;

    invoke-direct {v0}, Lcom/amazon/system/drawing/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/amazon/topaz/internal/layout/CommonStyles;->margin:Lcom/amazon/system/drawing/Rectangle;

    .line 27
    sget-object v0, Lcom/amazon/topaz/internal/layout/CommonStyles;->TRANSPARENT:Lcom/amazon/system/drawing/Color;

    iput-object v0, p0, Lcom/amazon/topaz/internal/layout/CommonStyles;->bgColor:Lcom/amazon/system/drawing/Color;

    .line 28
    sget-object v0, Lcom/amazon/topaz/internal/layout/CommonStyles;->TRANSPARENT:Lcom/amazon/system/drawing/Color;

    iput-object v0, p0, Lcom/amazon/topaz/internal/layout/CommonStyles;->invertColor:Lcom/amazon/system/drawing/Color;

    .line 29
    iput v1, p0, Lcom/amazon/topaz/internal/layout/CommonStyles;->display:I

    .line 30
    const/16 v0, 0x32

    iput v0, p0, Lcom/amazon/topaz/internal/layout/CommonStyles;->pos:I

    .line 31
    const/16 v0, 0x64

    iput v0, p0, Lcom/amazon/topaz/internal/layout/CommonStyles;->maxMarginPct:I

    .line 32
    iput-boolean v1, p0, Lcom/amazon/topaz/internal/layout/CommonStyles;->newPage:Z

    .line 33
    iput-boolean v1, p0, Lcom/amazon/topaz/internal/layout/CommonStyles;->iconified:Z

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/topaz/internal/layout/CommonStyles;->iconImage:Ljava/lang/String;

    .line 35
    iput v1, p0, Lcom/amazon/topaz/internal/layout/CommonStyles;->mSize:I

    .line 36
    return-void
.end method

.method protected constructor <init>(Lcom/amazon/topaz/styles/Style;Lcom/amazon/topaz/internal/layout/CommonStyles;)V
    .locals 10
    .parameter "style"
    .parameter "parent"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    sget-object v4, Lcom/amazon/topaz/internal/TopazStrings;->STYLEATTRIB_DISPLAY:Ljava/lang/String;

    sget-object v5, Lcom/amazon/topaz/internal/TopazStrings;->STYLE_DISPLAY_NONE:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/amazon/topaz/styles/Style;->hasAttribute(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, p2, Lcom/amazon/topaz/internal/layout/CommonStyles;->display:I

    if-ne v4, v8, :cond_7

    .line 47
    :cond_0
    iput v8, p0, Lcom/amazon/topaz/internal/layout/CommonStyles;->display:I

    .line 63
    :goto_0
    sget-object v4, Lcom/amazon/topaz/internal/TopazStrings;->STYLEATTRIB_LINESPACE:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/amazon/topaz/styles/Style;->hasAttribute(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 64
    sget-object v4, Lcom/amazon/topaz/internal/TopazStrings;->STYLEATTRIB_LINESPACE:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/amazon/topaz/styles/Style;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget v5, p2, Lcom/amazon/topaz/internal/layout/CommonStyles;->mSize:I

    invoke-static {v4, v5}, Lcom/amazon/topaz/internal/layout/StyleHelpers;->parseMetric(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/amazon/topaz/internal/layout/CommonStyles;->mSize:I

    .line 70
    :goto_1
    sget-object v4, Lcom/amazon/topaz/internal/TopazStrings;->STYLEATTRIB_MARGIN:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/amazon/topaz/styles/Style;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/amazon/topaz/internal/layout/CommonStyles;->parseMetric(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/amazon/topaz/internal/drawing/RectangleUtils;->newMargin(I)Lcom/amazon/system/drawing/Rectangle;

    move-result-object v4

    iput-object v4, p0, Lcom/amazon/topaz/internal/layout/CommonStyles;->margin:Lcom/amazon/system/drawing/Rectangle;

    .line 72
    sget-object v4, Lcom/amazon/topaz/internal/TopazStrings;->STYLEATTRIB_MARGINTOP:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/amazon/topaz/styles/Style;->hasAttribute(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 73
    sget-object v4, Lcom/amazon/topaz/internal/TopazStrings;->STYLEATTRIB_MARGINTOP:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/amazon/topaz/styles/Style;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/amazon/topaz/internal/layout/CommonStyles;->parseMetric(Ljava/lang/String;)I

    move-result v3

    .line 74
    .local v3, top:I
    iget-object v4, p0, Lcom/amazon/topaz/internal/layout/CommonStyles;->margin:Lcom/amazon/system/drawing/Rectangle;

    invoke-static {v4, v3}, Lcom/amazon/topaz/internal/drawing/RectangleUtils;->setTop(Lcom/amazon/system/drawing/Rectangle;I)V

    .line 76
    .end local v3           #top:I
    :cond_1
    sget-object v4, Lcom/amazon/topaz/internal/TopazStrings;->STYLEATTRIB_MARGINRIGHT:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/amazon/topaz/styles/Style;->hasAttribute(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 77
    sget-object v4, Lcom/amazon/topaz/internal/TopazStrings;->STYLEATTRIB_MARGINRIGHT:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/amazon/topaz/styles/Style;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/amazon/topaz/internal/layout/CommonStyles;->parseMetric(Ljava/lang/String;)I

    move-result v2

    .line 78
    .local v2, tempRight:I
    iget-object v4, p0, Lcom/amazon/topaz/internal/layout/CommonStyles;->margin:Lcom/amazon/system/drawing/Rectangle;

    invoke-static {v4, v2}, Lcom/amazon/topaz/internal/drawing/RectangleUtils;->setRight(Lcom/amazon/system/drawing/Rectangle;I)V

    .line 80
    .end local v2           #tempRight:I
    :cond_2
    sget-object v4, Lcom/amazon/topaz/internal/TopazStrings;->STYLEATTRIB_MARGINBOTTOM:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/amazon/topaz/styles/Style;->hasAttribute(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 81
    sget-object v4, Lcom/amazon/topaz/internal/TopazStrings;->STYLEATTRIB_MARGINBOTTOM:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/amazon/topaz/styles/Style;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/amazon/topaz/internal/layout/CommonStyles;->parseMetric(Ljava/lang/String;)I

    move-result v0

    .line 82
    .local v0, bottom:I
    iget-object v4, p0, Lcom/amazon/topaz/internal/layout/CommonStyles;->margin:Lcom/amazon/system/drawing/Rectangle;

    invoke-static {v4, v0}, Lcom/amazon/topaz/internal/drawing/RectangleUtils;->setBottom(Lcom/amazon/system/drawing/Rectangle;I)V

    .line 84
    .end local v0           #bottom:I
    :cond_3
    sget-object v4, Lcom/amazon/topaz/internal/TopazStrings;->STYLEATTRIB_MARGINLEFT:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/amazon/topaz/styles/Style;->hasAttribute(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 85
    sget-object v4, Lcom/amazon/topaz/internal/TopazStrings;->STYLEATTRIB_MARGINLEFT:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/amazon/topaz/styles/Style;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/amazon/topaz/internal/layout/CommonStyles;->parseMetric(Ljava/lang/String;)I

    move-result v1

    .line 86
    .local v1, tempLeft:I
    iget-object v4, p0, Lcom/amazon/topaz/internal/layout/CommonStyles;->margin:Lcom/amazon/system/drawing/Rectangle;

    invoke-static {v4, v1}, Lcom/amazon/topaz/internal/drawing/RectangleUtils;->setLeft(Lcom/amazon/system/drawing/Rectangle;I)V

    .line 89
    .end local v1           #tempLeft:I
    :cond_4
    sget-object v4, Lcom/amazon/topaz/internal/TopazStrings;->STYLEATTRIB_MAXMARGIN:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/amazon/topaz/styles/Style;->hasAttribute(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 90
    sget-object v4, Lcom/amazon/topaz/internal/TopazStrings;->STYLEATTRIB_MAXMARGIN:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/amazon/topaz/styles/Style;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/amazon/topaz/internal/layout/CommonStyles;->parseMetric(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/amazon/topaz/internal/layout/CommonStyles;->maxMarginPct:I

    .line 95
    :goto_2
    sget-object v4, Lcom/amazon/topaz/internal/TopazStrings;->STYLEATTRIB_ICONIMAGE:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/amazon/topaz/styles/Style;->hasAttribute(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 98
    iget-object v4, p2, Lcom/amazon/topaz/internal/layout/CommonStyles;->iconImage:Ljava/lang/String;

    iput-object v4, p0, Lcom/amazon/topaz/internal/layout/CommonStyles;->iconImage:Ljava/lang/String;

    .line 106
    :goto_3
    iget-boolean v4, p2, Lcom/amazon/topaz/internal/layout/CommonStyles;->newPage:Z

    if-nez v4, :cond_10

    sget-object v4, Lcom/amazon/topaz/internal/TopazStrings;->STYLEATTRIB_NEWPAGE:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/amazon/topaz/styles/Style;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/amazon/topaz/internal/layout/StyleHelpers;->stringToBool(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_10

    move v4, v7

    :goto_4
    iput-boolean v4, p0, Lcom/amazon/topaz/internal/layout/CommonStyles;->newPage:Z

    .line 109
    sget-object v4, Lcom/amazon/topaz/internal/TopazStrings;->STYLEATTRIB_BACKGROUND:Ljava/lang/String;

    sget-object v5, Lcom/amazon/topaz/internal/TopazStrings;->STYLE_BACKGROUND_TRANSPARENT:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/amazon/topaz/styles/Style;->hasAttribute(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    sget-object v4, Lcom/amazon/topaz/internal/TopazStrings;->STYLEATTRIB_BACKGROUND:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/amazon/topaz/styles/Style;->hasAttribute(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p2, Lcom/amazon/topaz/internal/layout/CommonStyles;->bgColor:Lcom/amazon/system/drawing/Color;

    invoke-virtual {v4}, Lcom/amazon/system/drawing/Color;->getAlpha()I

    move-result v4

    if-eqz v4, :cond_11

    .line 111
    :cond_5
    sget-object v4, Lcom/amazon/topaz/internal/layout/CommonStyles;->TRANSPARENT:Lcom/amazon/system/drawing/Color;

    iput-object v4, p0, Lcom/amazon/topaz/internal/layout/CommonStyles;->bgColor:Lcom/amazon/system/drawing/Color;

    .line 118
    :goto_5
    sget-object v4, Lcom/amazon/topaz/internal/TopazStrings;->STYLEATTRIB_INVERT:Ljava/lang/String;

    sget-object v5, Lcom/amazon/topaz/internal/TopazStrings;->STYLE_INVERT_NONE:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/amazon/topaz/styles/Style;->hasAttribute(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    sget-object v4, Lcom/amazon/topaz/internal/TopazStrings;->STYLEATTRIB_INVERT:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/amazon/topaz/styles/Style;->hasAttribute(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 119
    :cond_6
    sget-object v4, Lcom/amazon/topaz/internal/layout/CommonStyles;->TRANSPARENT:Lcom/amazon/system/drawing/Color;

    iput-object v4, p0, Lcom/amazon/topaz/internal/layout/CommonStyles;->invertColor:Lcom/amazon/system/drawing/Color;

    .line 126
    :goto_6
    sget-object v4, Lcom/amazon/topaz/internal/TopazStrings;->STYLEATTRIB_POS:Ljava/lang/String;

    sget-object v5, Lcom/amazon/topaz/internal/TopazStrings;->STYLE_POS_LEFT:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/amazon/topaz/styles/Style;->hasAttribute(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 127
    iput v6, p0, Lcom/amazon/topaz/internal/layout/CommonStyles;->pos:I

    .line 140
    :goto_7
    iget v4, p0, Lcom/amazon/topaz/internal/layout/CommonStyles;->display:I

    if-ne v4, v9, :cond_19

    iget-boolean v4, p2, Lcom/amazon/topaz/internal/layout/CommonStyles;->iconified:Z

    if-nez v4, :cond_19

    .line 142
    iput-boolean v7, p0, Lcom/amazon/topaz/internal/layout/CommonStyles;->iconified:Z

    .line 149
    :goto_8
    return-void

    .line 48
    :cond_7
    sget-object v4, Lcom/amazon/topaz/internal/TopazStrings;->STYLEATTRIB_DISPLAY:Ljava/lang/String;

    sget-object v5, Lcom/amazon/topaz/internal/TopazStrings;->STYLE_DISPLAY_BLOCK:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/amazon/topaz/styles/Style;->hasAttribute(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 49
    iput v6, p0, Lcom/amazon/topaz/internal/layout/CommonStyles;->display:I

    goto/16 :goto_0

    .line 50
    :cond_8
    sget-object v4, Lcom/amazon/topaz/internal/TopazStrings;->STYLEATTRIB_DISPLAY:Ljava/lang/String;

    sget-object v5, Lcom/amazon/topaz/internal/TopazStrings;->STYLE_DISPLAY_INLINE:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/amazon/topaz/styles/Style;->hasAttribute(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 51
    iput v7, p0, Lcom/amazon/topaz/internal/layout/CommonStyles;->display:I

    goto/16 :goto_0

    .line 52
    :cond_9
    sget-object v4, Lcom/amazon/topaz/internal/TopazStrings;->STYLEATTRIB_DISPLAY:Ljava/lang/String;

    sget-object v5, Lcom/amazon/topaz/internal/TopazStrings;->STYLE_DISPLAY_IFRELATIVE:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/amazon/topaz/styles/Style;->hasAttribute(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 53
    const/4 v4, 0x2

    iput v4, p0, Lcom/amazon/topaz/internal/layout/CommonStyles;->display:I

    goto/16 :goto_0

    .line 54
    :cond_a
    sget-object v4, Lcom/amazon/topaz/internal/TopazStrings;->STYLEATTRIB_DISPLAY:Ljava/lang/String;

    sget-object v5, Lcom/amazon/topaz/internal/TopazStrings;->STYLE_DISPLAY_ICONIFY:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/amazon/topaz/styles/Style;->hasAttribute(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 55
    iput v9, p0, Lcom/amazon/topaz/internal/layout/CommonStyles;->display:I

    goto/16 :goto_0

    .line 56
    :cond_b
    sget-object v4, Lcom/amazon/topaz/internal/TopazStrings;->STYLEATTRIB_DISPLAY:Ljava/lang/String;

    sget-object v5, Lcom/amazon/topaz/internal/TopazStrings;->STYLE_DISPLAY_POPUP:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/amazon/topaz/styles/Style;->hasAttribute(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 57
    const/4 v4, 0x5

    iput v4, p0, Lcom/amazon/topaz/internal/layout/CommonStyles;->display:I

    goto/16 :goto_0

    .line 59
    :cond_c
    iget v4, p2, Lcom/amazon/topaz/internal/layout/CommonStyles;->display:I

    iput v4, p0, Lcom/amazon/topaz/internal/layout/CommonStyles;->display:I

    goto/16 :goto_0

    .line 66
    :cond_d
    iget v4, p2, Lcom/amazon/topaz/internal/layout/CommonStyles;->mSize:I

    iput v4, p0, Lcom/amazon/topaz/internal/layout/CommonStyles;->mSize:I

    goto/16 :goto_1

    .line 92
    :cond_e
    iget v4, p2, Lcom/amazon/topaz/internal/layout/CommonStyles;->maxMarginPct:I

    iput v4, p0, Lcom/amazon/topaz/internal/layout/CommonStyles;->maxMarginPct:I

    goto/16 :goto_2

    .line 102
    :cond_f
    iget-object v4, p2, Lcom/amazon/topaz/internal/layout/CommonStyles;->iconImage:Ljava/lang/String;

    iput-object v4, p0, Lcom/amazon/topaz/internal/layout/CommonStyles;->iconImage:Ljava/lang/String;

    goto/16 :goto_3

    :cond_10
    move v4, v6

    .line 106
    goto/16 :goto_4

    .line 112
    :cond_11
    sget-object v4, Lcom/amazon/topaz/internal/TopazStrings;->STYLEATTRIB_BACKGROUND:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/amazon/topaz/styles/Style;->hasAttribute(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 113
    sget-object v4, Lcom/amazon/topaz/internal/TopazStrings;->STYLEATTRIB_BACKGROUND:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/amazon/topaz/styles/Style;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/amazon/topaz/internal/layout/StyleHelpers;->parseColor(Ljava/lang/String;)Lcom/amazon/system/drawing/Color;

    move-result-object v4

    iput-object v4, p0, Lcom/amazon/topaz/internal/layout/CommonStyles;->bgColor:Lcom/amazon/system/drawing/Color;

    goto/16 :goto_5

    .line 115
    :cond_12
    sget-object v4, Lcom/amazon/system/drawing/Color;->white:Lcom/amazon/system/drawing/Color;

    iput-object v4, p0, Lcom/amazon/topaz/internal/layout/CommonStyles;->bgColor:Lcom/amazon/system/drawing/Color;

    goto/16 :goto_5

    .line 120
    :cond_13
    sget-object v4, Lcom/amazon/topaz/internal/TopazStrings;->STYLEATTRIB_INVERT:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/amazon/topaz/styles/Style;->hasAttribute(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 121
    sget-object v4, Lcom/amazon/topaz/internal/TopazStrings;->STYLEATTRIB_INVERT:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/amazon/topaz/styles/Style;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/amazon/topaz/internal/layout/StyleHelpers;->parseColor(Ljava/lang/String;)Lcom/amazon/system/drawing/Color;

    move-result-object v4

    iput-object v4, p0, Lcom/amazon/topaz/internal/layout/CommonStyles;->invertColor:Lcom/amazon/system/drawing/Color;

    goto/16 :goto_6

    .line 123
    :cond_14
    sget-object v4, Lcom/amazon/system/drawing/Color;->white:Lcom/amazon/system/drawing/Color;

    iput-object v4, p0, Lcom/amazon/topaz/internal/layout/CommonStyles;->invertColor:Lcom/amazon/system/drawing/Color;

    goto/16 :goto_6

    .line 128
    :cond_15
    sget-object v4, Lcom/amazon/topaz/internal/TopazStrings;->STYLEATTRIB_POS:Ljava/lang/String;

    sget-object v5, Lcom/amazon/topaz/internal/TopazStrings;->STYLE_POS_RIGHT:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/amazon/topaz/styles/Style;->hasAttribute(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 129
    const/16 v4, 0x64

    iput v4, p0, Lcom/amazon/topaz/internal/layout/CommonStyles;->pos:I

    goto/16 :goto_7

    .line 130
    :cond_16
    sget-object v4, Lcom/amazon/topaz/internal/TopazStrings;->STYLEATTRIB_POS:Ljava/lang/String;

    sget-object v5, Lcom/amazon/topaz/internal/TopazStrings;->STYLE_POS_CENTER:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/amazon/topaz/styles/Style;->hasAttribute(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 131
    const/16 v4, 0x32

    iput v4, p0, Lcom/amazon/topaz/internal/layout/CommonStyles;->pos:I

    goto/16 :goto_7

    .line 132
    :cond_17
    sget-object v4, Lcom/amazon/topaz/internal/TopazStrings;->STYLEATTRIB_POS:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/amazon/topaz/styles/Style;->hasAttribute(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 133
    sget-object v4, Lcom/amazon/topaz/internal/TopazStrings;->STYLEATTRIB_POS:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/amazon/topaz/styles/Style;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/amazon/topaz/internal/layout/CommonStyles;->parseMetric(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/amazon/topaz/internal/layout/CommonStyles;->pos:I

    goto/16 :goto_7

    .line 135
    :cond_18
    iget v4, p2, Lcom/amazon/topaz/internal/layout/CommonStyles;->pos:I

    iput v4, p0, Lcom/amazon/topaz/internal/layout/CommonStyles;->pos:I

    goto/16 :goto_7

    .line 146
    :cond_19
    iget-boolean v4, p2, Lcom/amazon/topaz/internal/layout/CommonStyles;->iconified:Z

    iput-boolean v4, p0, Lcom/amazon/topaz/internal/layout/CommonStyles;->iconified:Z

    goto/16 :goto_8
.end method


# virtual methods
.method computeHorizontalPosition(II)I
    .locals 1
    .parameter "leftMargin"
    .parameter "widthAvailable"

    .prologue
    .line 229
    iget v0, p0, Lcom/amazon/topaz/internal/layout/CommonStyles;->pos:I

    mul-int/2addr v0, p2

    div-int/lit8 v0, v0, 0x64

    add-int/2addr v0, p1

    return v0
.end method

.method getDisplay(ZZ)I
    .locals 4
    .parameter "popupMode"
    .parameter "isRelative"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x3

    .line 160
    iget v0, p0, Lcom/amazon/topaz/internal/layout/CommonStyles;->display:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 161
    if-eqz p1, :cond_0

    move v0, v3

    .line 191
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 164
    goto :goto_0

    .line 167
    :cond_1
    iget v0, p0, Lcom/amazon/topaz/internal/layout/CommonStyles;->display:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 169
    if-eqz p1, :cond_2

    .line 171
    iget v0, p0, Lcom/amazon/topaz/internal/layout/CommonStyles;->display:I

    goto :goto_0

    :cond_2
    move v0, v2

    .line 175
    goto :goto_0

    .line 178
    :cond_3
    iget v0, p0, Lcom/amazon/topaz/internal/layout/CommonStyles;->display:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 180
    if-eqz p2, :cond_4

    move v0, v3

    .line 182
    goto :goto_0

    :cond_4
    move v0, v2

    .line 186
    goto :goto_0

    .line 191
    :cond_5
    iget v0, p0, Lcom/amazon/topaz/internal/layout/CommonStyles;->display:I

    goto :goto_0
.end method

.method getMargin(I)Lcom/amazon/system/drawing/Rectangle;
    .locals 7
    .parameter "width"

    .prologue
    .line 203
    new-instance v4, Lcom/amazon/system/drawing/Rectangle;

    iget-object v5, p0, Lcom/amazon/topaz/internal/layout/CommonStyles;->margin:Lcom/amazon/system/drawing/Rectangle;

    invoke-direct {v4, v5}, Lcom/amazon/system/drawing/Rectangle;-><init>(Lcom/amazon/system/drawing/Rectangle;)V

    .line 204
    .local v4, retval:Lcom/amazon/system/drawing/Rectangle;
    iget v5, p0, Lcom/amazon/topaz/internal/layout/CommonStyles;->maxMarginPct:I

    mul-int/2addr v5, p1

    div-int/lit8 v0, v5, 0x64

    .line 206
    .local v0, maxMargin:I
    iget v5, v4, Lcom/amazon/system/drawing/Rectangle;->x:I

    invoke-static {v4}, Lcom/amazon/topaz/internal/drawing/RectangleUtils;->x2(Lcom/amazon/system/drawing/Rectangle;)I

    move-result v6

    add-int/2addr v5, v6

    if-le v5, v0, :cond_1

    .line 207
    iget v1, v4, Lcom/amazon/system/drawing/Rectangle;->x:I

    .line 208
    .local v1, ml:I
    invoke-static {v4}, Lcom/amazon/topaz/internal/drawing/RectangleUtils;->x2(Lcom/amazon/system/drawing/Rectangle;)I

    move-result v2

    .line 209
    .local v2, mr:I
    add-int v3, v1, v2

    .line 211
    .local v3, mt:I
    if-nez v3, :cond_0

    .line 212
    const/4 v3, 0x1

    .line 214
    :cond_0
    mul-int v5, v1, v0

    div-int/2addr v5, v3

    invoke-static {v4, v5}, Lcom/amazon/topaz/internal/drawing/RectangleUtils;->setLeft(Lcom/amazon/system/drawing/Rectangle;I)V

    .line 215
    mul-int v5, v2, v0

    div-int/2addr v5, v3

    invoke-static {v4, v5}, Lcom/amazon/topaz/internal/drawing/RectangleUtils;->setRight(Lcom/amazon/system/drawing/Rectangle;I)V

    .line 218
    .end local v1           #ml:I
    .end local v2           #mr:I
    .end local v3           #mt:I
    :cond_1
    return-object v4
.end method

.method public isCompatible(Lcom/amazon/topaz/internal/layout/CommonStyles;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 243
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/CommonStyles;->bgColor:Lcom/amazon/system/drawing/Color;

    iget-object v1, p1, Lcom/amazon/topaz/internal/layout/CommonStyles;->bgColor:Lcom/amazon/system/drawing/Color;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/CommonStyles;->bgColor:Lcom/amazon/system/drawing/Color;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/amazon/topaz/internal/layout/CommonStyles;->bgColor:Lcom/amazon/system/drawing/Color;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/CommonStyles;->bgColor:Lcom/amazon/system/drawing/Color;

    iget-object v1, p1, Lcom/amazon/topaz/internal/layout/CommonStyles;->bgColor:Lcom/amazon/system/drawing/Color;

    invoke-virtual {v0, v1}, Lcom/amazon/system/drawing/Color;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    .line 301
    :goto_0
    return v0

    .line 250
    :cond_1
    iget v0, p0, Lcom/amazon/topaz/internal/layout/CommonStyles;->maxMarginPct:I

    iget v1, p1, Lcom/amazon/topaz/internal/layout/CommonStyles;->maxMarginPct:I

    if-eq v0, v1, :cond_2

    move v0, v2

    .line 252
    goto :goto_0

    .line 256
    :cond_2
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/CommonStyles;->margin:Lcom/amazon/system/drawing/Rectangle;

    iget-object v1, p1, Lcom/amazon/topaz/internal/layout/CommonStyles;->margin:Lcom/amazon/system/drawing/Rectangle;

    invoke-static {v0, v1}, Lcom/amazon/topaz/internal/drawing/RectangleUtils;->equals(Lcom/amazon/system/drawing/Rectangle;Lcom/amazon/system/drawing/Rectangle;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    .line 258
    goto :goto_0

    .line 262
    :cond_3
    iget v0, p0, Lcom/amazon/topaz/internal/layout/CommonStyles;->display:I

    iget v1, p1, Lcom/amazon/topaz/internal/layout/CommonStyles;->display:I

    if-eq v0, v1, :cond_4

    move v0, v2

    .line 264
    goto :goto_0

    .line 268
    :cond_4
    iget v0, p0, Lcom/amazon/topaz/internal/layout/CommonStyles;->pos:I

    iget v1, p1, Lcom/amazon/topaz/internal/layout/CommonStyles;->pos:I

    if-eq v0, v1, :cond_5

    move v0, v2

    .line 270
    goto :goto_0

    .line 274
    :cond_5
    iget-boolean v0, p0, Lcom/amazon/topaz/internal/layout/CommonStyles;->newPage:Z

    iget-boolean v1, p1, Lcom/amazon/topaz/internal/layout/CommonStyles;->newPage:Z

    if-eq v0, v1, :cond_6

    move v0, v2

    .line 276
    goto :goto_0

    .line 280
    :cond_6
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/CommonStyles;->iconImage:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/topaz/internal/layout/CommonStyles;->iconImage:Ljava/lang/String;

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/CommonStyles;->iconImage:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/amazon/topaz/internal/layout/CommonStyles;->iconImage:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/CommonStyles;->iconImage:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/topaz/internal/layout/CommonStyles;->iconImage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    move v0, v2

    .line 284
    goto :goto_0

    .line 288
    :cond_8
    iget v0, p0, Lcom/amazon/topaz/internal/layout/CommonStyles;->mSize:I

    iget v1, p1, Lcom/amazon/topaz/internal/layout/CommonStyles;->mSize:I

    if-eq v0, v1, :cond_9

    move v0, v2

    .line 290
    goto :goto_0

    .line 294
    :cond_9
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/CommonStyles;->invertColor:Lcom/amazon/system/drawing/Color;

    iget-object v1, p1, Lcom/amazon/topaz/internal/layout/CommonStyles;->invertColor:Lcom/amazon/system/drawing/Color;

    if-eq v0, v1, :cond_b

    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/CommonStyles;->invertColor:Lcom/amazon/system/drawing/Color;

    if-eqz v0, :cond_a

    iget-object v0, p1, Lcom/amazon/topaz/internal/layout/CommonStyles;->invertColor:Lcom/amazon/system/drawing/Color;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/CommonStyles;->invertColor:Lcom/amazon/system/drawing/Color;

    iget-object v1, p1, Lcom/amazon/topaz/internal/layout/CommonStyles;->invertColor:Lcom/amazon/system/drawing/Color;

    invoke-virtual {v0, v1}, Lcom/amazon/system/drawing/Color;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_a
    move v0, v2

    .line 297
    goto :goto_0

    .line 301
    :cond_b
    const/4 v0, 0x1

    goto :goto_0
.end method

.method parseMetric(Ljava/lang/String;)I
    .locals 1
    .parameter "spec"

    .prologue
    .line 238
    iget v0, p0, Lcom/amazon/topaz/internal/layout/CommonStyles;->mSize:I

    invoke-static {p1, v0}, Lcom/amazon/topaz/internal/layout/StyleHelpers;->parseMetric(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
