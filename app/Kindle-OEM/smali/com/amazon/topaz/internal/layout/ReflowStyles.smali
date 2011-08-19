.class final Lcom/amazon/topaz/internal/layout/ReflowStyles;
.super Ljava/lang/Object;
.source "ReflowStyles.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/topaz/internal/layout/ReflowStyles$Alignment;
    }
.end annotation


# instance fields
.field private final align:I

.field public final blExpand:I

.field public final blSpace:I

.field public final cascade:Z

.field private final hang:I

.field private final indent:I

.field public final isMultiLineLink:Z

.field public final preserveLineBreaks:Z

.field public final preserveWhitespace:Z

.field public final spaceAfter:I

.field private final trackingPct:I


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v1, p0, Lcom/amazon/topaz/internal/layout/ReflowStyles;->align:I

    .line 25
    iput v1, p0, Lcom/amazon/topaz/internal/layout/ReflowStyles;->indent:I

    .line 26
    iput v1, p0, Lcom/amazon/topaz/internal/layout/ReflowStyles;->hang:I

    .line 27
    iput v1, p0, Lcom/amazon/topaz/internal/layout/ReflowStyles;->blSpace:I

    .line 28
    iput v1, p0, Lcom/amazon/topaz/internal/layout/ReflowStyles;->blExpand:I

    .line 29
    iput-boolean v2, p0, Lcom/amazon/topaz/internal/layout/ReflowStyles;->cascade:Z

    .line 30
    const/16 v0, 0x32

    iput v0, p0, Lcom/amazon/topaz/internal/layout/ReflowStyles;->trackingPct:I

    .line 31
    iput-boolean v1, p0, Lcom/amazon/topaz/internal/layout/ReflowStyles;->preserveWhitespace:Z

    .line 32
    iput-boolean v1, p0, Lcom/amazon/topaz/internal/layout/ReflowStyles;->preserveLineBreaks:Z

    .line 33
    iput v2, p0, Lcom/amazon/topaz/internal/layout/ReflowStyles;->spaceAfter:I

    .line 34
    iput-boolean v1, p0, Lcom/amazon/topaz/internal/layout/ReflowStyles;->isMultiLineLink:Z

    .line 35
    return-void
.end method

.method constructor <init>(Lcom/amazon/topaz/internal/book/Container;Lcom/amazon/topaz/styles/Style;Lcom/amazon/topaz/internal/layout/CommonStyles;Lcom/amazon/topaz/internal/layout/ReflowStyles;)V
    .locals 4
    .parameter "what"
    .parameter "style"
    .parameter "common"
    .parameter "parent"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iget-boolean v0, p4, Lcom/amazon/topaz/internal/layout/ReflowStyles;->isMultiLineLink:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazon/topaz/internal/book/Container;->isUnderlined()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/amazon/topaz/internal/layout/ReflowStyles;->isMultiLineLink:Z

    .line 50
    sget-object v0, Lcom/amazon/topaz/internal/TopazStrings;->STYLEATTRIB_CONTINUE:Ljava/lang/String;

    sget-object v1, Lcom/amazon/topaz/internal/TopazStrings;->STYLE_CONTINUE_CASCADE:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lcom/amazon/topaz/styles/Style;->hasAttribute(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51
    iput-boolean v3, p0, Lcom/amazon/topaz/internal/layout/ReflowStyles;->cascade:Z

    .line 59
    :goto_1
    sget-object v0, Lcom/amazon/topaz/internal/TopazStrings;->STYLEATTRIB_LINESPACE:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/amazon/topaz/styles/Style;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 60
    sget-object v0, Lcom/amazon/topaz/internal/TopazStrings;->STYLEATTRIB_LINESPACE:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/amazon/topaz/styles/Style;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v1, p4, Lcom/amazon/topaz/internal/layout/ReflowStyles;->blSpace:I

    invoke-static {v0, v1}, Lcom/amazon/topaz/internal/layout/StyleHelpers;->parseMetric(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/amazon/topaz/internal/layout/ReflowStyles;->blSpace:I

    .line 64
    :goto_2
    sget-object v0, Lcom/amazon/topaz/internal/TopazStrings;->STYLEATTRIB_LINEEXPAND:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/amazon/topaz/styles/Style;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 65
    sget-object v0, Lcom/amazon/topaz/internal/TopazStrings;->STYLEATTRIB_LINEEXPAND:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/amazon/topaz/styles/Style;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p3, v0}, Lcom/amazon/topaz/internal/layout/CommonStyles;->parseMetric(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/amazon/topaz/internal/layout/ReflowStyles;->blExpand:I

    .line 70
    :goto_3
    sget-object v0, Lcom/amazon/topaz/internal/TopazStrings;->STYLEATTRIB_TRACKING:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/amazon/topaz/styles/Style;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 71
    sget-object v0, Lcom/amazon/topaz/internal/TopazStrings;->STYLEATTRIB_TRACKING:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/amazon/topaz/styles/Style;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p3, v0}, Lcom/amazon/topaz/internal/layout/CommonStyles;->parseMetric(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/amazon/topaz/internal/layout/ReflowStyles;->trackingPct:I

    .line 77
    :goto_4
    sget-object v0, Lcom/amazon/topaz/internal/TopazStrings;->STYLEATTRIB_INDENT:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/amazon/topaz/styles/Style;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 78
    sget-object v0, Lcom/amazon/topaz/internal/TopazStrings;->STYLEATTRIB_INDENT:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/amazon/topaz/styles/Style;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p3, v0}, Lcom/amazon/topaz/internal/layout/CommonStyles;->parseMetric(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/amazon/topaz/internal/layout/ReflowStyles;->indent:I

    .line 82
    :goto_5
    sget-object v0, Lcom/amazon/topaz/internal/TopazStrings;->STYLEATTRIB_HANG:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/amazon/topaz/styles/Style;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 83
    sget-object v0, Lcom/amazon/topaz/internal/TopazStrings;->STYLEATTRIB_HANG:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/amazon/topaz/styles/Style;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p3, v0}, Lcom/amazon/topaz/internal/layout/CommonStyles;->parseMetric(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/amazon/topaz/internal/layout/ReflowStyles;->hang:I

    .line 88
    :goto_6
    sget-object v0, Lcom/amazon/topaz/internal/TopazStrings;->STYLEATTRIB_ALIGN:Ljava/lang/String;

    sget-object v1, Lcom/amazon/topaz/internal/TopazStrings;->STYLE_ALIGN_LEFT:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lcom/amazon/topaz/styles/Style;->hasAttribute(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 89
    iput v2, p0, Lcom/amazon/topaz/internal/layout/ReflowStyles;->align:I

    .line 101
    :goto_7
    sget-object v0, Lcom/amazon/topaz/internal/TopazStrings;->STYLEATTRIB_PRESERVEWHITESPACE:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/amazon/topaz/styles/Style;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-boolean v1, p4, Lcom/amazon/topaz/internal/layout/ReflowStyles;->preserveWhitespace:Z

    invoke-static {v0, v1}, Lcom/amazon/topaz/internal/layout/StyleHelpers;->stringToBool(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/topaz/internal/layout/ReflowStyles;->preserveWhitespace:Z

    .line 104
    sget-object v0, Lcom/amazon/topaz/internal/TopazStrings;->STYLEATTRIB_PRESERVELINEBREAKS:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/amazon/topaz/styles/Style;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-boolean v1, p4, Lcom/amazon/topaz/internal/layout/ReflowStyles;->preserveLineBreaks:Z

    invoke-static {v0, v1}, Lcom/amazon/topaz/internal/layout/StyleHelpers;->stringToBool(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/topaz/internal/layout/ReflowStyles;->preserveLineBreaks:Z

    .line 107
    sget-object v0, Lcom/amazon/topaz/internal/TopazStrings;->STYLEATTRIB_SPACEAFTER:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/amazon/topaz/styles/Style;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 108
    sget-object v0, Lcom/amazon/topaz/internal/TopazStrings;->STYLEATTRIB_SPACEAFTER:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/amazon/topaz/styles/Style;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p3, v0}, Lcom/amazon/topaz/internal/layout/CommonStyles;->parseMetric(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/amazon/topaz/internal/layout/ReflowStyles;->spaceAfter:I

    .line 112
    :goto_8
    return-void

    :cond_1
    move v0, v2

    .line 48
    goto/16 :goto_0

    .line 52
    :cond_2
    sget-object v0, Lcom/amazon/topaz/internal/TopazStrings;->STYLEATTRIB_CONTINUE:Ljava/lang/String;

    sget-object v1, Lcom/amazon/topaz/internal/TopazStrings;->STYLE_CONTINUE_IGNORE:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lcom/amazon/topaz/styles/Style;->hasAttribute(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 53
    iput-boolean v2, p0, Lcom/amazon/topaz/internal/layout/ReflowStyles;->cascade:Z

    goto/16 :goto_1

    .line 55
    :cond_3
    iget-boolean v0, p4, Lcom/amazon/topaz/internal/layout/ReflowStyles;->cascade:Z

    iput-boolean v0, p0, Lcom/amazon/topaz/internal/layout/ReflowStyles;->cascade:Z

    goto/16 :goto_1

    .line 62
    :cond_4
    iget v0, p4, Lcom/amazon/topaz/internal/layout/ReflowStyles;->blSpace:I

    iput v0, p0, Lcom/amazon/topaz/internal/layout/ReflowStyles;->blSpace:I

    goto/16 :goto_2

    .line 67
    :cond_5
    iget v0, p4, Lcom/amazon/topaz/internal/layout/ReflowStyles;->blExpand:I

    iput v0, p0, Lcom/amazon/topaz/internal/layout/ReflowStyles;->blExpand:I

    goto/16 :goto_3

    .line 73
    :cond_6
    iget v0, p4, Lcom/amazon/topaz/internal/layout/ReflowStyles;->trackingPct:I

    iput v0, p0, Lcom/amazon/topaz/internal/layout/ReflowStyles;->trackingPct:I

    goto/16 :goto_4

    .line 80
    :cond_7
    iget v0, p4, Lcom/amazon/topaz/internal/layout/ReflowStyles;->indent:I

    iput v0, p0, Lcom/amazon/topaz/internal/layout/ReflowStyles;->indent:I

    goto/16 :goto_5

    .line 85
    :cond_8
    iget v0, p4, Lcom/amazon/topaz/internal/layout/ReflowStyles;->hang:I

    iput v0, p0, Lcom/amazon/topaz/internal/layout/ReflowStyles;->hang:I

    goto :goto_6

    .line 90
    :cond_9
    sget-object v0, Lcom/amazon/topaz/internal/TopazStrings;->STYLEATTRIB_ALIGN:Ljava/lang/String;

    sget-object v1, Lcom/amazon/topaz/internal/TopazStrings;->STYLE_ALIGN_RIGHT:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lcom/amazon/topaz/styles/Style;->hasAttribute(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 91
    iput v3, p0, Lcom/amazon/topaz/internal/layout/ReflowStyles;->align:I

    goto :goto_7

    .line 92
    :cond_a
    sget-object v0, Lcom/amazon/topaz/internal/TopazStrings;->STYLEATTRIB_ALIGN:Ljava/lang/String;

    sget-object v1, Lcom/amazon/topaz/internal/TopazStrings;->STYLE_ALIGN_CENTER:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lcom/amazon/topaz/styles/Style;->hasAttribute(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 93
    const/4 v0, 0x2

    iput v0, p0, Lcom/amazon/topaz/internal/layout/ReflowStyles;->align:I

    goto/16 :goto_7

    .line 94
    :cond_b
    sget-object v0, Lcom/amazon/topaz/internal/TopazStrings;->STYLEATTRIB_ALIGN:Ljava/lang/String;

    sget-object v1, Lcom/amazon/topaz/internal/TopazStrings;->STYLE_ALIGN_JUSTIFY:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lcom/amazon/topaz/styles/Style;->hasAttribute(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 95
    const/4 v0, 0x3

    iput v0, p0, Lcom/amazon/topaz/internal/layout/ReflowStyles;->align:I

    goto/16 :goto_7

    .line 97
    :cond_c
    iget v0, p4, Lcom/amazon/topaz/internal/layout/ReflowStyles;->align:I

    iput v0, p0, Lcom/amazon/topaz/internal/layout/ReflowStyles;->align:I

    goto/16 :goto_7

    .line 110
    :cond_d
    iget v0, p4, Lcom/amazon/topaz/internal/layout/ReflowStyles;->spaceAfter:I

    iput v0, p0, Lcom/amazon/topaz/internal/layout/ReflowStyles;->spaceAfter:I

    goto :goto_8
.end method


# virtual methods
.method getAlignment(Z)I
    .locals 2
    .parameter "allowJustify"

    .prologue
    .line 121
    if-nez p1, :cond_0

    iget v0, p0, Lcom/amazon/topaz/internal/layout/ReflowStyles;->align:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 123
    const/4 v0, 0x0

    .line 126
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/amazon/topaz/internal/layout/ReflowStyles;->align:I

    goto :goto_0
.end method

.method getHang(I)I
    .locals 2
    .parameter "widthAvailable"

    .prologue
    .line 146
    iget v0, p0, Lcom/amazon/topaz/internal/layout/ReflowStyles;->hang:I

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method getIndent(I)I
    .locals 2
    .parameter "widthAvailable"

    .prologue
    .line 136
    iget v0, p0, Lcom/amazon/topaz/internal/layout/ReflowStyles;->indent:I

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public isCompatible(Lcom/amazon/topaz/internal/layout/ReflowStyles;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 160
    iget v0, p0, Lcom/amazon/topaz/internal/layout/ReflowStyles;->align:I

    iget v1, p1, Lcom/amazon/topaz/internal/layout/ReflowStyles;->align:I

    if-eq v0, v1, :cond_0

    move v0, v2

    .line 226
    :goto_0
    return v0

    .line 166
    :cond_0
    iget v0, p0, Lcom/amazon/topaz/internal/layout/ReflowStyles;->indent:I

    iget v1, p1, Lcom/amazon/topaz/internal/layout/ReflowStyles;->indent:I

    if-eq v0, v1, :cond_1

    move v0, v2

    .line 168
    goto :goto_0

    .line 172
    :cond_1
    iget v0, p0, Lcom/amazon/topaz/internal/layout/ReflowStyles;->hang:I

    iget v1, p1, Lcom/amazon/topaz/internal/layout/ReflowStyles;->hang:I

    if-eq v0, v1, :cond_2

    move v0, v2

    .line 174
    goto :goto_0

    .line 178
    :cond_2
    iget v0, p0, Lcom/amazon/topaz/internal/layout/ReflowStyles;->blSpace:I

    iget v1, p1, Lcom/amazon/topaz/internal/layout/ReflowStyles;->blSpace:I

    if-eq v0, v1, :cond_3

    move v0, v2

    .line 180
    goto :goto_0

    .line 184
    :cond_3
    iget v0, p0, Lcom/amazon/topaz/internal/layout/ReflowStyles;->blExpand:I

    iget v1, p1, Lcom/amazon/topaz/internal/layout/ReflowStyles;->blExpand:I

    if-eq v0, v1, :cond_4

    move v0, v2

    .line 186
    goto :goto_0

    .line 190
    :cond_4
    iget-boolean v0, p0, Lcom/amazon/topaz/internal/layout/ReflowStyles;->cascade:Z

    iget-boolean v1, p1, Lcom/amazon/topaz/internal/layout/ReflowStyles;->cascade:Z

    if-eq v0, v1, :cond_5

    move v0, v2

    .line 192
    goto :goto_0

    .line 196
    :cond_5
    iget v0, p0, Lcom/amazon/topaz/internal/layout/ReflowStyles;->trackingPct:I

    iget v1, p1, Lcom/amazon/topaz/internal/layout/ReflowStyles;->trackingPct:I

    if-eq v0, v1, :cond_6

    move v0, v2

    .line 198
    goto :goto_0

    .line 202
    :cond_6
    iget-boolean v0, p0, Lcom/amazon/topaz/internal/layout/ReflowStyles;->preserveWhitespace:Z

    iget-boolean v1, p1, Lcom/amazon/topaz/internal/layout/ReflowStyles;->preserveWhitespace:Z

    if-eq v0, v1, :cond_7

    move v0, v2

    .line 204
    goto :goto_0

    .line 208
    :cond_7
    iget-boolean v0, p0, Lcom/amazon/topaz/internal/layout/ReflowStyles;->preserveLineBreaks:Z

    iget-boolean v1, p1, Lcom/amazon/topaz/internal/layout/ReflowStyles;->preserveLineBreaks:Z

    if-eq v0, v1, :cond_8

    move v0, v2

    .line 210
    goto :goto_0

    .line 214
    :cond_8
    iget v0, p0, Lcom/amazon/topaz/internal/layout/ReflowStyles;->spaceAfter:I

    iget v1, p1, Lcom/amazon/topaz/internal/layout/ReflowStyles;->spaceAfter:I

    if-eq v0, v1, :cond_9

    move v0, v2

    .line 216
    goto :goto_0

    .line 220
    :cond_9
    iget-boolean v0, p0, Lcom/amazon/topaz/internal/layout/ReflowStyles;->isMultiLineLink:Z

    iget-boolean v1, p1, Lcom/amazon/topaz/internal/layout/ReflowStyles;->isMultiLineLink:Z

    if-eq v0, v1, :cond_a

    move v0, v2

    .line 222
    goto :goto_0

    .line 226
    :cond_a
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public tracking()I
    .locals 2

    .prologue
    .line 155
    iget v0, p0, Lcom/amazon/topaz/internal/layout/ReflowStyles;->blSpace:I

    iget v1, p0, Lcom/amazon/topaz/internal/layout/ReflowStyles;->trackingPct:I

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x64

    return v0
.end method
