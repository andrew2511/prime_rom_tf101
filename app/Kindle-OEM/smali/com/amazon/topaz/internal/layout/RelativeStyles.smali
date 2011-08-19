.class final Lcom/amazon/topaz/internal/layout/RelativeStyles;
.super Ljava/lang/Object;
.source "RelativeStyles.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/topaz/internal/layout/RelativeStyles$FloatSide;,
        Lcom/amazon/topaz/internal/layout/RelativeStyles$Pack;
    }
.end annotation


# instance fields
.field public final floatside:I

.field final pack:I

.field public final zoomable:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput v0, p0, Lcom/amazon/topaz/internal/layout/RelativeStyles;->pack:I

    .line 24
    iput v0, p0, Lcom/amazon/topaz/internal/layout/RelativeStyles;->floatside:I

    .line 25
    iput-boolean v0, p0, Lcom/amazon/topaz/internal/layout/RelativeStyles;->zoomable:Z

    .line 26
    return-void
.end method

.method constructor <init>(Lcom/amazon/topaz/styles/Style;Lcom/amazon/topaz/internal/layout/RelativeStyles;Z)V
    .locals 4
    .parameter "style"
    .parameter "parent"
    .parameter "parentIsRelative"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    sget-object v0, Lcom/amazon/topaz/internal/TopazStrings;->STYLEATTRIB_PACK:Ljava/lang/String;

    sget-object v1, Lcom/amazon/topaz/internal/TopazStrings;->STYLE_PACK_SHRINK:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/amazon/topaz/styles/Style;->hasAttribute(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_2

    iget v0, p2, Lcom/amazon/topaz/internal/layout/RelativeStyles;->pack:I

    if-ne v0, v2, :cond_2

    .line 47
    :cond_0
    iput v3, p0, Lcom/amazon/topaz/internal/layout/RelativeStyles;->pack:I

    .line 55
    :goto_0
    sget-object v0, Lcom/amazon/topaz/internal/TopazStrings;->STYLEATTRIB_ZOOMABLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/topaz/styles/Style;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-boolean v1, p2, Lcom/amazon/topaz/internal/layout/RelativeStyles;->zoomable:Z

    invoke-static {v0, v1}, Lcom/amazon/topaz/internal/layout/StyleHelpers;->stringToBool(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/topaz/internal/layout/RelativeStyles;->zoomable:Z

    .line 57
    sget-object v0, Lcom/amazon/topaz/internal/TopazStrings;->STYLEATTRIB_FLOAT:Ljava/lang/String;

    sget-object v1, Lcom/amazon/topaz/internal/TopazStrings;->STYLE_FLOAT_NONE:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/amazon/topaz/styles/Style;->hasAttribute(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_4

    .line 59
    :cond_1
    iput v3, p0, Lcom/amazon/topaz/internal/layout/RelativeStyles;->floatside:I

    .line 69
    :goto_1
    return-void

    .line 49
    :cond_2
    sget-object v0, Lcom/amazon/topaz/internal/TopazStrings;->STYLEATTRIB_PACK:Ljava/lang/String;

    sget-object v1, Lcom/amazon/topaz/internal/TopazStrings;->STYLE_PACK_CONDENSE:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/amazon/topaz/styles/Style;->hasAttribute(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 50
    iput v2, p0, Lcom/amazon/topaz/internal/layout/RelativeStyles;->pack:I

    goto :goto_0

    .line 52
    :cond_3
    iget v0, p2, Lcom/amazon/topaz/internal/layout/RelativeStyles;->pack:I

    iput v0, p0, Lcom/amazon/topaz/internal/layout/RelativeStyles;->pack:I

    goto :goto_0

    .line 60
    :cond_4
    sget-object v0, Lcom/amazon/topaz/internal/TopazStrings;->STYLEATTRIB_FLOAT:Ljava/lang/String;

    sget-object v1, Lcom/amazon/topaz/internal/TopazStrings;->STYLE_FLOAT_LEFT:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/amazon/topaz/styles/Style;->hasAttribute(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 61
    iput v2, p0, Lcom/amazon/topaz/internal/layout/RelativeStyles;->floatside:I

    goto :goto_1

    .line 62
    :cond_5
    sget-object v0, Lcom/amazon/topaz/internal/TopazStrings;->STYLEATTRIB_FLOAT:Ljava/lang/String;

    sget-object v1, Lcom/amazon/topaz/internal/TopazStrings;->STYLE_FLOAT_RIGHT:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/amazon/topaz/styles/Style;->hasAttribute(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 63
    const/4 v0, 0x2

    iput v0, p0, Lcom/amazon/topaz/internal/layout/RelativeStyles;->floatside:I

    goto :goto_1

    .line 65
    :cond_6
    iget v0, p2, Lcom/amazon/topaz/internal/layout/RelativeStyles;->floatside:I

    iput v0, p0, Lcom/amazon/topaz/internal/layout/RelativeStyles;->floatside:I

    goto :goto_1
.end method


# virtual methods
.method public isCompatible(Lcom/amazon/topaz/internal/layout/RelativeStyles;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 73
    iget v0, p0, Lcom/amazon/topaz/internal/layout/RelativeStyles;->pack:I

    iget v1, p1, Lcom/amazon/topaz/internal/layout/RelativeStyles;->pack:I

    if-eq v0, v1, :cond_0

    move v0, v2

    .line 91
    :goto_0
    return v0

    .line 79
    :cond_0
    iget v0, p0, Lcom/amazon/topaz/internal/layout/RelativeStyles;->floatside:I

    iget v1, p1, Lcom/amazon/topaz/internal/layout/RelativeStyles;->floatside:I

    if-eq v0, v1, :cond_1

    move v0, v2

    .line 81
    goto :goto_0

    .line 85
    :cond_1
    iget-boolean v0, p0, Lcom/amazon/topaz/internal/layout/RelativeStyles;->zoomable:Z

    iget-boolean v1, p1, Lcom/amazon/topaz/internal/layout/RelativeStyles;->zoomable:Z

    if-eq v0, v1, :cond_2

    move v0, v2

    .line 87
    goto :goto_0

    .line 91
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
