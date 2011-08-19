.class public Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;
.super Lcom/amazon/kcp/reader/models/ColorMode;
.source "AndroidColorMode.java"


# instance fields
.field private final articleListThemeId:I

.field private final bookmarkId:I

.field private final bookmarkOverlayId:I

.field private final bookmarkRibbonId:I

.field private final bookmarkRibbonOffsetId:I

.field private final definitionContainerBackgroundId:I

.field private final dialogInfoIconId:I

.field private final metricsName:Ljava/lang/String;

.field private final readerThemeId:I

.field private final rotationLockedId:I

.field private final rotationUnlockedId:I


# direct methods
.method public constructor <init>(IIIIIIIIZLjava/lang/String;IIIIIIIIII)V
    .locals 2
    .parameter "textColor"
    .parameter "secondaryTextColor"
    .parameter "backgroundColor"
    .parameter "highlightColor"
    .parameter "linkColor"
    .parameter "noteColor"
    .parameter "iconColor"
    .parameter "selectedIconColor"
    .parameter "isDark"
    .parameter "metricsName"
    .parameter "bookmarkId"
    .parameter "bookmarkRibbonId"
    .parameter "bookmarkRibbonOffsetId"
    .parameter "bookmarkOverlayId"
    .parameter "rotationLockedId"
    .parameter "rotationUnlockedId"
    .parameter "definitionContainerBackgroundId"
    .parameter "dialogInfoIconId"
    .parameter "readerThemeId"
    .parameter "articleListThemeId"

    .prologue
    .line 65
    invoke-direct/range {p0 .. p9}, Lcom/amazon/kcp/reader/models/ColorMode;-><init>(IIIIIIIIZ)V

    .line 74
    iput-object p10, p0, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->metricsName:Ljava/lang/String;

    .line 75
    iput p11, p0, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->bookmarkId:I

    .line 76
    iput p12, p0, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->bookmarkRibbonId:I

    .line 77
    iput p13, p0, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->bookmarkRibbonOffsetId:I

    .line 78
    move/from16 v0, p14

    move-object v1, p0

    iput v0, v1, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->bookmarkOverlayId:I

    .line 79
    move/from16 v0, p15

    move-object v1, p0

    iput v0, v1, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->rotationLockedId:I

    .line 80
    move/from16 v0, p16

    move-object v1, p0

    iput v0, v1, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->rotationUnlockedId:I

    .line 81
    move/from16 v0, p17

    move-object v1, p0

    iput v0, v1, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->definitionContainerBackgroundId:I

    .line 82
    move/from16 v0, p18

    move-object v1, p0

    iput v0, v1, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->dialogInfoIconId:I

    .line 83
    move/from16 v0, p19

    move-object v1, p0

    iput v0, v1, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->readerThemeId:I

    .line 84
    move/from16 v0, p20

    move-object v1, p0

    iput v0, v1, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->articleListThemeId:I

    .line 85
    return-void
.end method


# virtual methods
.method public getArticleListThemeResId()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->articleListThemeId:I

    return v0
.end method

.method public getBookmarkOverlayResId()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->bookmarkOverlayId:I

    return v0
.end method

.method public getBookmarkResId()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->bookmarkId:I

    return v0
.end method

.method public getBookmarkRibbonOffsetResId()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->bookmarkRibbonOffsetId:I

    return v0
.end method

.method public getBookmarkRibbonResId()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->bookmarkRibbonId:I

    return v0
.end method

.method public getDefinitionContainerBackgroundResId()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->definitionContainerBackgroundId:I

    return v0
.end method

.method public getDialogInfoIconResId()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->dialogInfoIconId:I

    return v0
.end method

.method public getMetricsName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->metricsName:Ljava/lang/String;

    return-object v0
.end method

.method public getReaderThemeResId()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->readerThemeId:I

    return v0
.end method

.method public getRotationLockedResId()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->rotationLockedId:I

    return v0
.end method

.method public getRotationUnlockedResId()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->rotationUnlockedId:I

    return v0
.end method

.method public isEqual(Lcom/amazon/kcp/reader/models/ColorMode;)Z
    .locals 3
    .parameter "other"

    .prologue
    .line 188
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/models/ColorMode;->isEqual(Lcom/amazon/kcp/reader/models/ColorMode;)Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, p1, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;

    move-object v1, v0

    iget-object v1, v1, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->metricsName:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->metricsName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;

    move-object v1, v0

    iget v1, v1, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->bookmarkId:I

    iget v2, p0, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->bookmarkId:I

    if-ne v1, v2, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;

    move-object v1, v0

    iget v1, v1, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->bookmarkOverlayId:I

    iget v2, p0, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->bookmarkOverlayId:I

    if-ne v1, v2, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;

    move-object v1, v0

    iget v1, v1, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->bookmarkRibbonId:I

    iget v2, p0, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->bookmarkRibbonId:I

    if-ne v1, v2, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;

    move-object v1, v0

    iget v1, v1, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->bookmarkRibbonOffsetId:I

    iget v2, p0, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->bookmarkRibbonOffsetId:I

    if-ne v1, v2, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;

    move-object v1, v0

    iget v1, v1, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->rotationLockedId:I

    iget v2, p0, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->rotationLockedId:I

    if-ne v1, v2, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;

    move-object v1, v0

    iget v1, v1, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->rotationUnlockedId:I

    iget v2, p0, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->rotationUnlockedId:I

    if-ne v1, v2, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;

    move-object v1, v0

    iget v1, v1, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->definitionContainerBackgroundId:I

    iget v2, p0, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->definitionContainerBackgroundId:I

    if-ne v1, v2, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;

    move-object v1, v0

    iget v1, v1, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->dialogInfoIconId:I

    iget v2, p0, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->dialogInfoIconId:I

    if-ne v1, v2, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;

    move-object v1, v0

    iget v1, v1, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->readerThemeId:I

    iget v2, p0, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->readerThemeId:I

    if-ne v1, v2, :cond_0

    check-cast p1, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;

    .end local p1
    iget v1, p1, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->articleListThemeId:I

    iget v2, p0, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->articleListThemeId:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
