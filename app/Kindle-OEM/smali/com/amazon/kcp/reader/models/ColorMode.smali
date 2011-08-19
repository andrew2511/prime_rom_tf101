.class public Lcom/amazon/kcp/reader/models/ColorMode;
.super Ljava/lang/Object;
.source "ColorMode.java"


# static fields
.field public static final EMPTY_COLOR_MODE:Lcom/amazon/kcp/reader/models/ColorMode;


# instance fields
.field private final backgroundColor:I

.field private final highlightColor:I

.field private final iconColor:I

.field private final isDark:Z

.field private final linkColor:I

.field private final noteColor:I

.field private final secondaryTextColor:I

.field private final selectedIconColor:I

.field private final textColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v1, -0x1

    .line 16
    new-instance v0, Lcom/amazon/kcp/reader/models/ColorMode;

    const/4 v9, 0x0

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v7, v1

    move v8, v1

    invoke-direct/range {v0 .. v9}, Lcom/amazon/kcp/reader/models/ColorMode;-><init>(IIIIIIIIZ)V

    sput-object v0, Lcom/amazon/kcp/reader/models/ColorMode;->EMPTY_COLOR_MODE:Lcom/amazon/kcp/reader/models/ColorMode;

    return-void
.end method

.method public constructor <init>(IIIIIIIIZ)V
    .locals 0
    .parameter "textColor"
    .parameter "secondaryTextColor"
    .parameter "backgroundColor"
    .parameter "highlightColor"
    .parameter "linkColor"
    .parameter "noteColor"
    .parameter "iconColor"
    .parameter "selectedIconColor"
    .parameter "isDark"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Lcom/amazon/kcp/reader/models/ColorMode;->textColor:I

    .line 52
    iput p2, p0, Lcom/amazon/kcp/reader/models/ColorMode;->secondaryTextColor:I

    .line 53
    iput p3, p0, Lcom/amazon/kcp/reader/models/ColorMode;->backgroundColor:I

    .line 54
    iput p4, p0, Lcom/amazon/kcp/reader/models/ColorMode;->highlightColor:I

    .line 55
    iput p5, p0, Lcom/amazon/kcp/reader/models/ColorMode;->linkColor:I

    .line 56
    iput p6, p0, Lcom/amazon/kcp/reader/models/ColorMode;->noteColor:I

    .line 57
    iput p7, p0, Lcom/amazon/kcp/reader/models/ColorMode;->iconColor:I

    .line 58
    iput p8, p0, Lcom/amazon/kcp/reader/models/ColorMode;->selectedIconColor:I

    .line 59
    iput-boolean p9, p0, Lcom/amazon/kcp/reader/models/ColorMode;->isDark:Z

    .line 60
    return-void
.end method


# virtual methods
.method public getBackgroundColor()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/amazon/kcp/reader/models/ColorMode;->backgroundColor:I

    return v0
.end method

.method public getHighlightColor()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/amazon/kcp/reader/models/ColorMode;->highlightColor:I

    return v0
.end method

.method public getIconColor()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/amazon/kcp/reader/models/ColorMode;->iconColor:I

    return v0
.end method

.method public getLinkColor()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/amazon/kcp/reader/models/ColorMode;->linkColor:I

    return v0
.end method

.method public getNoteColor()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/amazon/kcp/reader/models/ColorMode;->noteColor:I

    return v0
.end method

.method public getSecondaryTextColor()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/amazon/kcp/reader/models/ColorMode;->secondaryTextColor:I

    return v0
.end method

.method public getSelectedIconColor()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/amazon/kcp/reader/models/ColorMode;->selectedIconColor:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/amazon/kcp/reader/models/ColorMode;->textColor:I

    return v0
.end method

.method public hasDarkBackground()Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/models/ColorMode;->isDark:Z

    return v0
.end method

.method public isEqual(Lcom/amazon/kcp/reader/models/ColorMode;)Z
    .locals 3
    .parameter "other"

    .prologue
    const/4 v2, 0x0

    .line 146
    if-nez p1, :cond_0

    move v0, v2

    .line 151
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/amazon/kcp/reader/models/ColorMode;->textColor:I

    iget v1, p1, Lcom/amazon/kcp/reader/models/ColorMode;->textColor:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/amazon/kcp/reader/models/ColorMode;->secondaryTextColor:I

    iget v1, p1, Lcom/amazon/kcp/reader/models/ColorMode;->secondaryTextColor:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/amazon/kcp/reader/models/ColorMode;->backgroundColor:I

    iget v1, p1, Lcom/amazon/kcp/reader/models/ColorMode;->backgroundColor:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/amazon/kcp/reader/models/ColorMode;->highlightColor:I

    iget v1, p1, Lcom/amazon/kcp/reader/models/ColorMode;->highlightColor:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/amazon/kcp/reader/models/ColorMode;->linkColor:I

    iget v1, p1, Lcom/amazon/kcp/reader/models/ColorMode;->linkColor:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/amazon/kcp/reader/models/ColorMode;->noteColor:I

    iget v1, p1, Lcom/amazon/kcp/reader/models/ColorMode;->noteColor:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/amazon/kcp/reader/models/ColorMode;->iconColor:I

    iget v1, p1, Lcom/amazon/kcp/reader/models/ColorMode;->iconColor:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/amazon/kcp/reader/models/ColorMode;->selectedIconColor:I

    iget v1, p1, Lcom/amazon/kcp/reader/models/ColorMode;->selectedIconColor:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method
