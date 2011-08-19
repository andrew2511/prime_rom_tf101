.class public Lcom/infraware/evengine/EV;
.super Ljava/lang/Object;
.source "EV.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/evengine/EV$BOOKMARK_LABEL;,
        Lcom/infraware/evengine/EV$BOOK_CLIP;,
        Lcom/infraware/evengine/EV$BULLET_TYPE;,
        Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;,
        Lcom/infraware/evengine/EV$BWP_OP_INFO;,
        Lcom/infraware/evengine/EV$BWP_SPLITCELL_MAXNUM;,
        Lcom/infraware/evengine/EV$CARET_INFO;,
        Lcom/infraware/evengine/EV$CARET_POS;,
        Lcom/infraware/evengine/EV$CELL_PROPERTY;,
        Lcom/infraware/evengine/EV$CONFIG_INFO;,
        Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;,
        Lcom/infraware/evengine/EV$FONT_INFO;,
        Lcom/infraware/evengine/EV$GUI_BORDER_EVENT;,
        Lcom/infraware/evengine/EV$GUI_SHEET_CHART_EVENT;,
        Lcom/infraware/evengine/EV$HYPERLINK_INFO;,
        Lcom/infraware/evengine/EV$INVALID_DRAW_INFO;,
        Lcom/infraware/evengine/EV$PROPERTIES;,
        Lcom/infraware/evengine/EV$RANGE;,
        Lcom/infraware/evengine/EV$SCREEN_INFO;,
        Lcom/infraware/evengine/EV$SCROLLINFO_EDITOR;,
        Lcom/infraware/evengine/EV$SET_PARAATT_INFO;,
        Lcom/infraware/evengine/EV$SHEET_CELL_INFO;,
        Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;,
        Lcom/infraware/evengine/EV$SHEET_INFO;,
        Lcom/infraware/evengine/EV$UNDOREDOINFO;
    }
.end annotation


# instance fields
.field bookClip:Lcom/infraware/evengine/EV$BOOK_CLIP;

.field bookmarkLabel:Lcom/infraware/evengine/EV$BOOKMARK_LABEL;

.field bulletType:Lcom/infraware/evengine/EV$BULLET_TYPE;

.field bwpGrapAttrInfo:Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;

.field bwpOpInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

.field bwpSplitCellMaxNum:Lcom/infraware/evengine/EV$BWP_SPLITCELL_MAXNUM;

.field caretInfoEvent:Lcom/infraware/evengine/EV$CARET_INFO;

.field caretPos:Lcom/infraware/evengine/EV$CARET_POS;

.field cellProperty:Lcom/infraware/evengine/EV$CELL_PROPERTY;

.field configInfo:Lcom/infraware/evengine/EV$CONFIG_INFO;

.field protected editorObjectPointArray:Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;

.field guiBorderEvent:Lcom/infraware/evengine/EV$GUI_BORDER_EVENT;

.field guiFontEvent:Lcom/infraware/evengine/EV$FONT_INFO;

.field guiSetParaAttEvent:Lcom/infraware/evengine/EV$SET_PARAATT_INFO;

.field guiSheetChartEvent:Lcom/infraware/evengine/EV$GUI_SHEET_CHART_EVENT;

.field hyperInfo:Lcom/infraware/evengine/EV$HYPERLINK_INFO;

.field invalidDrawInfo:Lcom/infraware/evengine/EV$INVALID_DRAW_INFO;

.field properties:Lcom/infraware/evengine/EV$PROPERTIES;

.field screenInfo:Lcom/infraware/evengine/EV$SCREEN_INFO;

.field scrollInfoEditor:Lcom/infraware/evengine/EV$SCROLLINFO_EDITOR;

.field sheetCellInfo:Lcom/infraware/evengine/EV$SHEET_CELL_INFO;

.field sheetFormatInfo:Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;

.field sheetInfo:Lcom/infraware/evengine/EV$SHEET_INFO;

.field sheetRange:Lcom/infraware/evengine/EV$RANGE;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/infraware/evengine/EV;->configInfo:Lcom/infraware/evengine/EV$CONFIG_INFO;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/infraware/evengine/EV;->configInfo:Lcom/infraware/evengine/EV$CONFIG_INFO;

    invoke-virtual {v0}, Lcom/infraware/evengine/EV$CONFIG_INFO;->clear()V

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/infraware/evengine/EV;->properties:Lcom/infraware/evengine/EV$PROPERTIES;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/infraware/evengine/EV;->properties:Lcom/infraware/evengine/EV$PROPERTIES;

    invoke-virtual {v0}, Lcom/infraware/evengine/EV$PROPERTIES;->clear()V

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/infraware/evengine/EV;->bookmarkLabel:Lcom/infraware/evengine/EV$BOOKMARK_LABEL;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/infraware/evengine/EV;->bookmarkLabel:Lcom/infraware/evengine/EV$BOOKMARK_LABEL;

    invoke-virtual {v0}, Lcom/infraware/evengine/EV$BOOKMARK_LABEL;->clear()V

    .line 170
    :cond_2
    iget-object v0, p0, Lcom/infraware/evengine/EV;->bookClip:Lcom/infraware/evengine/EV$BOOK_CLIP;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/infraware/evengine/EV;->bookClip:Lcom/infraware/evengine/EV$BOOK_CLIP;

    invoke-virtual {v0}, Lcom/infraware/evengine/EV$BOOK_CLIP;->clear()V

    .line 171
    :cond_3
    iget-object v0, p0, Lcom/infraware/evengine/EV;->screenInfo:Lcom/infraware/evengine/EV$SCREEN_INFO;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/infraware/evengine/EV;->screenInfo:Lcom/infraware/evengine/EV$SCREEN_INFO;

    invoke-virtual {v0}, Lcom/infraware/evengine/EV$SCREEN_INFO;->clear()V

    .line 172
    :cond_4
    iget-object v0, p0, Lcom/infraware/evengine/EV;->guiBorderEvent:Lcom/infraware/evengine/EV$GUI_BORDER_EVENT;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/infraware/evengine/EV;->guiBorderEvent:Lcom/infraware/evengine/EV$GUI_BORDER_EVENT;

    invoke-virtual {v0}, Lcom/infraware/evengine/EV$GUI_BORDER_EVENT;->clear()V

    .line 173
    :cond_5
    iget-object v0, p0, Lcom/infraware/evengine/EV;->caretInfoEvent:Lcom/infraware/evengine/EV$CARET_INFO;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/infraware/evengine/EV;->caretInfoEvent:Lcom/infraware/evengine/EV$CARET_INFO;

    invoke-virtual {v0}, Lcom/infraware/evengine/EV$CARET_INFO;->clear()V

    .line 174
    :cond_6
    iget-object v0, p0, Lcom/infraware/evengine/EV;->caretPos:Lcom/infraware/evengine/EV$CARET_POS;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/infraware/evengine/EV;->caretPos:Lcom/infraware/evengine/EV$CARET_POS;

    invoke-virtual {v0}, Lcom/infraware/evengine/EV$CARET_POS;->clear()V

    .line 175
    :cond_7
    iget-object v0, p0, Lcom/infraware/evengine/EV;->guiFontEvent:Lcom/infraware/evengine/EV$FONT_INFO;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/infraware/evengine/EV;->guiFontEvent:Lcom/infraware/evengine/EV$FONT_INFO;

    invoke-virtual {v0}, Lcom/infraware/evengine/EV$FONT_INFO;->clear()V

    .line 176
    :cond_8
    iget-object v0, p0, Lcom/infraware/evengine/EV;->bwpGrapAttrInfo:Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/infraware/evengine/EV;->bwpGrapAttrInfo:Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;

    invoke-virtual {v0}, Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;->clear()V

    .line 177
    :cond_9
    iget-object v0, p0, Lcom/infraware/evengine/EV;->bwpOpInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/infraware/evengine/EV;->bwpOpInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    invoke-virtual {v0}, Lcom/infraware/evengine/EV$BWP_OP_INFO;->clear()V

    .line 178
    :cond_a
    iget-object v0, p0, Lcom/infraware/evengine/EV;->bwpSplitCellMaxNum:Lcom/infraware/evengine/EV$BWP_SPLITCELL_MAXNUM;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/infraware/evengine/EV;->bwpSplitCellMaxNum:Lcom/infraware/evengine/EV$BWP_SPLITCELL_MAXNUM;

    invoke-virtual {v0}, Lcom/infraware/evengine/EV$BWP_SPLITCELL_MAXNUM;->clear()V

    .line 179
    :cond_b
    iget-object v0, p0, Lcom/infraware/evengine/EV;->invalidDrawInfo:Lcom/infraware/evengine/EV$INVALID_DRAW_INFO;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/infraware/evengine/EV;->invalidDrawInfo:Lcom/infraware/evengine/EV$INVALID_DRAW_INFO;

    invoke-virtual {v0}, Lcom/infraware/evengine/EV$INVALID_DRAW_INFO;->clear()V

    .line 180
    :cond_c
    iget-object v0, p0, Lcom/infraware/evengine/EV;->guiSetParaAttEvent:Lcom/infraware/evengine/EV$SET_PARAATT_INFO;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/infraware/evengine/EV;->guiSetParaAttEvent:Lcom/infraware/evengine/EV$SET_PARAATT_INFO;

    invoke-virtual {v0}, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;->clear()V

    .line 181
    :cond_d
    iget-object v0, p0, Lcom/infraware/evengine/EV;->sheetFormatInfo:Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/infraware/evengine/EV;->sheetFormatInfo:Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;

    invoke-virtual {v0}, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;->clear()V

    .line 182
    :cond_e
    iget-object v0, p0, Lcom/infraware/evengine/EV;->sheetRange:Lcom/infraware/evengine/EV$RANGE;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/infraware/evengine/EV;->sheetRange:Lcom/infraware/evengine/EV$RANGE;

    invoke-virtual {v0}, Lcom/infraware/evengine/EV$RANGE;->clear()V

    .line 183
    :cond_f
    iget-object v0, p0, Lcom/infraware/evengine/EV;->sheetCellInfo:Lcom/infraware/evengine/EV$SHEET_CELL_INFO;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/infraware/evengine/EV;->sheetCellInfo:Lcom/infraware/evengine/EV$SHEET_CELL_INFO;

    invoke-virtual {v0}, Lcom/infraware/evengine/EV$SHEET_CELL_INFO;->clear()V

    .line 184
    :cond_10
    iget-object v0, p0, Lcom/infraware/evengine/EV;->sheetInfo:Lcom/infraware/evengine/EV$SHEET_INFO;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/infraware/evengine/EV;->sheetInfo:Lcom/infraware/evengine/EV$SHEET_INFO;

    invoke-virtual {v0}, Lcom/infraware/evengine/EV$SHEET_INFO;->clear()V

    .line 185
    :cond_11
    iget-object v0, p0, Lcom/infraware/evengine/EV;->hyperInfo:Lcom/infraware/evengine/EV$HYPERLINK_INFO;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/infraware/evengine/EV;->hyperInfo:Lcom/infraware/evengine/EV$HYPERLINK_INFO;

    invoke-virtual {v0}, Lcom/infraware/evengine/EV$HYPERLINK_INFO;->clear()V

    .line 186
    :cond_12
    iget-object v0, p0, Lcom/infraware/evengine/EV;->guiSheetChartEvent:Lcom/infraware/evengine/EV$GUI_SHEET_CHART_EVENT;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/infraware/evengine/EV;->guiSheetChartEvent:Lcom/infraware/evengine/EV$GUI_SHEET_CHART_EVENT;

    invoke-virtual {v0}, Lcom/infraware/evengine/EV$GUI_SHEET_CHART_EVENT;->clear()V

    .line 187
    :cond_13
    iget-object v0, p0, Lcom/infraware/evengine/EV;->scrollInfoEditor:Lcom/infraware/evengine/EV$SCROLLINFO_EDITOR;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/infraware/evengine/EV;->scrollInfoEditor:Lcom/infraware/evengine/EV$SCROLLINFO_EDITOR;

    invoke-virtual {v0}, Lcom/infraware/evengine/EV$SCROLLINFO_EDITOR;->clear()V

    .line 188
    :cond_14
    iget-object v0, p0, Lcom/infraware/evengine/EV;->bulletType:Lcom/infraware/evengine/EV$BULLET_TYPE;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/infraware/evengine/EV;->bulletType:Lcom/infraware/evengine/EV$BULLET_TYPE;

    invoke-virtual {v0}, Lcom/infraware/evengine/EV$BULLET_TYPE;->clear()V

    .line 189
    :cond_15
    iget-object v0, p0, Lcom/infraware/evengine/EV;->cellProperty:Lcom/infraware/evengine/EV$CELL_PROPERTY;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/infraware/evengine/EV;->cellProperty:Lcom/infraware/evengine/EV$CELL_PROPERTY;

    invoke-virtual {v0}, Lcom/infraware/evengine/EV$CELL_PROPERTY;->clear()V

    .line 190
    :cond_16
    return-void
.end method

.method public getBookClip()Lcom/infraware/evengine/EV$BOOK_CLIP;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/infraware/evengine/EV;->bookClip:Lcom/infraware/evengine/EV$BOOK_CLIP;

    if-nez v0, :cond_0

    new-instance v0, Lcom/infraware/evengine/EV$BOOK_CLIP;

    invoke-direct {v0, p0}, Lcom/infraware/evengine/EV$BOOK_CLIP;-><init>(Lcom/infraware/evengine/EV;)V

    iput-object v0, p0, Lcom/infraware/evengine/EV;->bookClip:Lcom/infraware/evengine/EV$BOOK_CLIP;

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/infraware/evengine/EV;->bookClip:Lcom/infraware/evengine/EV$BOOK_CLIP;

    return-object v0
.end method

.method public getBookmarkLabel()Lcom/infraware/evengine/EV$BOOKMARK_LABEL;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/infraware/evengine/EV;->bookmarkLabel:Lcom/infraware/evengine/EV$BOOKMARK_LABEL;

    if-nez v0, :cond_0

    new-instance v0, Lcom/infraware/evengine/EV$BOOKMARK_LABEL;

    invoke-direct {v0, p0}, Lcom/infraware/evengine/EV$BOOKMARK_LABEL;-><init>(Lcom/infraware/evengine/EV;)V

    iput-object v0, p0, Lcom/infraware/evengine/EV;->bookmarkLabel:Lcom/infraware/evengine/EV$BOOKMARK_LABEL;

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/infraware/evengine/EV;->bookmarkLabel:Lcom/infraware/evengine/EV$BOOKMARK_LABEL;

    return-object v0
.end method

.method public getBulletType()Lcom/infraware/evengine/EV$BULLET_TYPE;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/infraware/evengine/EV;->bulletType:Lcom/infraware/evengine/EV$BULLET_TYPE;

    if-nez v0, :cond_0

    new-instance v0, Lcom/infraware/evengine/EV$BULLET_TYPE;

    invoke-direct {v0, p0}, Lcom/infraware/evengine/EV$BULLET_TYPE;-><init>(Lcom/infraware/evengine/EV;)V

    iput-object v0, p0, Lcom/infraware/evengine/EV;->bulletType:Lcom/infraware/evengine/EV$BULLET_TYPE;

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/infraware/evengine/EV;->bulletType:Lcom/infraware/evengine/EV$BULLET_TYPE;

    return-object v0
.end method

.method public getBwpGrapAttrInfo()Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/infraware/evengine/EV;->bwpGrapAttrInfo:Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;

    if-nez v0, :cond_0

    new-instance v0, Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;

    invoke-direct {v0, p0}, Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;-><init>(Lcom/infraware/evengine/EV;)V

    iput-object v0, p0, Lcom/infraware/evengine/EV;->bwpGrapAttrInfo:Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/infraware/evengine/EV;->bwpGrapAttrInfo:Lcom/infraware/evengine/EV$BWP_GRAP_ATTR_INFO;

    return-object v0
.end method

.method public getBwpOpInfo()Lcom/infraware/evengine/EV$BWP_OP_INFO;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/infraware/evengine/EV;->bwpOpInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    if-nez v0, :cond_0

    new-instance v0, Lcom/infraware/evengine/EV$BWP_OP_INFO;

    invoke-direct {v0, p0}, Lcom/infraware/evengine/EV$BWP_OP_INFO;-><init>(Lcom/infraware/evengine/EV;)V

    iput-object v0, p0, Lcom/infraware/evengine/EV;->bwpOpInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/infraware/evengine/EV;->bwpOpInfo:Lcom/infraware/evengine/EV$BWP_OP_INFO;

    return-object v0
.end method

.method public getBwpSplitCellMaxNum()Lcom/infraware/evengine/EV$BWP_SPLITCELL_MAXNUM;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/infraware/evengine/EV;->bwpSplitCellMaxNum:Lcom/infraware/evengine/EV$BWP_SPLITCELL_MAXNUM;

    if-nez v0, :cond_0

    new-instance v0, Lcom/infraware/evengine/EV$BWP_SPLITCELL_MAXNUM;

    invoke-direct {v0, p0}, Lcom/infraware/evengine/EV$BWP_SPLITCELL_MAXNUM;-><init>(Lcom/infraware/evengine/EV;)V

    iput-object v0, p0, Lcom/infraware/evengine/EV;->bwpSplitCellMaxNum:Lcom/infraware/evengine/EV$BWP_SPLITCELL_MAXNUM;

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/infraware/evengine/EV;->bwpSplitCellMaxNum:Lcom/infraware/evengine/EV$BWP_SPLITCELL_MAXNUM;

    return-object v0
.end method

.method public getCaretInfoEvent()Lcom/infraware/evengine/EV$CARET_INFO;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/infraware/evengine/EV;->caretInfoEvent:Lcom/infraware/evengine/EV$CARET_INFO;

    if-nez v0, :cond_0

    new-instance v0, Lcom/infraware/evengine/EV$CARET_INFO;

    invoke-direct {v0, p0}, Lcom/infraware/evengine/EV$CARET_INFO;-><init>(Lcom/infraware/evengine/EV;)V

    iput-object v0, p0, Lcom/infraware/evengine/EV;->caretInfoEvent:Lcom/infraware/evengine/EV$CARET_INFO;

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/infraware/evengine/EV;->caretInfoEvent:Lcom/infraware/evengine/EV$CARET_INFO;

    return-object v0
.end method

.method public getCaretPos()Lcom/infraware/evengine/EV$CARET_POS;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/infraware/evengine/EV;->caretPos:Lcom/infraware/evengine/EV$CARET_POS;

    if-nez v0, :cond_0

    new-instance v0, Lcom/infraware/evengine/EV$CARET_POS;

    invoke-direct {v0, p0}, Lcom/infraware/evengine/EV$CARET_POS;-><init>(Lcom/infraware/evengine/EV;)V

    iput-object v0, p0, Lcom/infraware/evengine/EV;->caretPos:Lcom/infraware/evengine/EV$CARET_POS;

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/infraware/evengine/EV;->caretPos:Lcom/infraware/evengine/EV$CARET_POS;

    return-object v0
.end method

.method public getCellProperty()Lcom/infraware/evengine/EV$CELL_PROPERTY;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/infraware/evengine/EV;->cellProperty:Lcom/infraware/evengine/EV$CELL_PROPERTY;

    if-nez v0, :cond_0

    new-instance v0, Lcom/infraware/evengine/EV$CELL_PROPERTY;

    invoke-direct {v0, p0}, Lcom/infraware/evengine/EV$CELL_PROPERTY;-><init>(Lcom/infraware/evengine/EV;)V

    iput-object v0, p0, Lcom/infraware/evengine/EV;->cellProperty:Lcom/infraware/evengine/EV$CELL_PROPERTY;

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/infraware/evengine/EV;->cellProperty:Lcom/infraware/evengine/EV$CELL_PROPERTY;

    return-object v0
.end method

.method public getConfigInfo()Lcom/infraware/evengine/EV$CONFIG_INFO;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/infraware/evengine/EV;->configInfo:Lcom/infraware/evengine/EV$CONFIG_INFO;

    if-nez v0, :cond_0

    new-instance v0, Lcom/infraware/evengine/EV$CONFIG_INFO;

    invoke-direct {v0, p0}, Lcom/infraware/evengine/EV$CONFIG_INFO;-><init>(Lcom/infraware/evengine/EV;)V

    iput-object v0, p0, Lcom/infraware/evengine/EV;->configInfo:Lcom/infraware/evengine/EV$CONFIG_INFO;

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/infraware/evengine/EV;->configInfo:Lcom/infraware/evengine/EV$CONFIG_INFO;

    return-object v0
.end method

.method public getEditorObjectPointArray()Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/infraware/evengine/EV;->editorObjectPointArray:Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;

    if-nez v0, :cond_0

    new-instance v0, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;

    invoke-direct {v0, p0}, Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;-><init>(Lcom/infraware/evengine/EV;)V

    iput-object v0, p0, Lcom/infraware/evengine/EV;->editorObjectPointArray:Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/infraware/evengine/EV;->editorObjectPointArray:Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;

    return-object v0
.end method

.method public getGuiBorderEvent()Lcom/infraware/evengine/EV$GUI_BORDER_EVENT;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/infraware/evengine/EV;->guiBorderEvent:Lcom/infraware/evengine/EV$GUI_BORDER_EVENT;

    if-nez v0, :cond_0

    new-instance v0, Lcom/infraware/evengine/EV$GUI_BORDER_EVENT;

    invoke-direct {v0, p0}, Lcom/infraware/evengine/EV$GUI_BORDER_EVENT;-><init>(Lcom/infraware/evengine/EV;)V

    iput-object v0, p0, Lcom/infraware/evengine/EV;->guiBorderEvent:Lcom/infraware/evengine/EV$GUI_BORDER_EVENT;

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/infraware/evengine/EV;->guiBorderEvent:Lcom/infraware/evengine/EV$GUI_BORDER_EVENT;

    return-object v0
.end method

.method public getGuiFontEvent()Lcom/infraware/evengine/EV$FONT_INFO;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/infraware/evengine/EV;->guiFontEvent:Lcom/infraware/evengine/EV$FONT_INFO;

    if-nez v0, :cond_0

    new-instance v0, Lcom/infraware/evengine/EV$FONT_INFO;

    invoke-direct {v0, p0}, Lcom/infraware/evengine/EV$FONT_INFO;-><init>(Lcom/infraware/evengine/EV;)V

    iput-object v0, p0, Lcom/infraware/evengine/EV;->guiFontEvent:Lcom/infraware/evengine/EV$FONT_INFO;

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/infraware/evengine/EV;->guiFontEvent:Lcom/infraware/evengine/EV$FONT_INFO;

    return-object v0
.end method

.method public getGuiSetParaAttEvent()Lcom/infraware/evengine/EV$SET_PARAATT_INFO;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/infraware/evengine/EV;->guiSetParaAttEvent:Lcom/infraware/evengine/EV$SET_PARAATT_INFO;

    if-nez v0, :cond_0

    new-instance v0, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;

    invoke-direct {v0, p0}, Lcom/infraware/evengine/EV$SET_PARAATT_INFO;-><init>(Lcom/infraware/evengine/EV;)V

    iput-object v0, p0, Lcom/infraware/evengine/EV;->guiSetParaAttEvent:Lcom/infraware/evengine/EV$SET_PARAATT_INFO;

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/infraware/evengine/EV;->guiSetParaAttEvent:Lcom/infraware/evengine/EV$SET_PARAATT_INFO;

    return-object v0
.end method

.method public getGuiSheetChartEvent()Lcom/infraware/evengine/EV$GUI_SHEET_CHART_EVENT;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/infraware/evengine/EV;->guiSheetChartEvent:Lcom/infraware/evengine/EV$GUI_SHEET_CHART_EVENT;

    if-nez v0, :cond_0

    new-instance v0, Lcom/infraware/evengine/EV$GUI_SHEET_CHART_EVENT;

    invoke-direct {v0, p0}, Lcom/infraware/evengine/EV$GUI_SHEET_CHART_EVENT;-><init>(Lcom/infraware/evengine/EV;)V

    iput-object v0, p0, Lcom/infraware/evengine/EV;->guiSheetChartEvent:Lcom/infraware/evengine/EV$GUI_SHEET_CHART_EVENT;

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/infraware/evengine/EV;->guiSheetChartEvent:Lcom/infraware/evengine/EV$GUI_SHEET_CHART_EVENT;

    return-object v0
.end method

.method public getHyperLinkInfo()Lcom/infraware/evengine/EV$HYPERLINK_INFO;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/infraware/evengine/EV;->hyperInfo:Lcom/infraware/evengine/EV$HYPERLINK_INFO;

    if-nez v0, :cond_0

    new-instance v0, Lcom/infraware/evengine/EV$HYPERLINK_INFO;

    invoke-direct {v0, p0}, Lcom/infraware/evengine/EV$HYPERLINK_INFO;-><init>(Lcom/infraware/evengine/EV;)V

    iput-object v0, p0, Lcom/infraware/evengine/EV;->hyperInfo:Lcom/infraware/evengine/EV$HYPERLINK_INFO;

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/infraware/evengine/EV;->hyperInfo:Lcom/infraware/evengine/EV$HYPERLINK_INFO;

    return-object v0
.end method

.method public getInvalidDrawInfo()Lcom/infraware/evengine/EV$INVALID_DRAW_INFO;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/infraware/evengine/EV;->invalidDrawInfo:Lcom/infraware/evengine/EV$INVALID_DRAW_INFO;

    if-nez v0, :cond_0

    new-instance v0, Lcom/infraware/evengine/EV$INVALID_DRAW_INFO;

    invoke-direct {v0, p0}, Lcom/infraware/evengine/EV$INVALID_DRAW_INFO;-><init>(Lcom/infraware/evengine/EV;)V

    iput-object v0, p0, Lcom/infraware/evengine/EV;->invalidDrawInfo:Lcom/infraware/evengine/EV$INVALID_DRAW_INFO;

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/infraware/evengine/EV;->invalidDrawInfo:Lcom/infraware/evengine/EV$INVALID_DRAW_INFO;

    return-object v0
.end method

.method public getProperties()Lcom/infraware/evengine/EV$PROPERTIES;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/infraware/evengine/EV;->properties:Lcom/infraware/evengine/EV$PROPERTIES;

    if-nez v0, :cond_0

    new-instance v0, Lcom/infraware/evengine/EV$PROPERTIES;

    invoke-direct {v0, p0}, Lcom/infraware/evengine/EV$PROPERTIES;-><init>(Lcom/infraware/evengine/EV;)V

    iput-object v0, p0, Lcom/infraware/evengine/EV;->properties:Lcom/infraware/evengine/EV$PROPERTIES;

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/infraware/evengine/EV;->properties:Lcom/infraware/evengine/EV$PROPERTIES;

    return-object v0
.end method

.method public getRange()Lcom/infraware/evengine/EV$RANGE;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/infraware/evengine/EV;->sheetRange:Lcom/infraware/evengine/EV$RANGE;

    if-nez v0, :cond_0

    new-instance v0, Lcom/infraware/evengine/EV$RANGE;

    invoke-direct {v0, p0}, Lcom/infraware/evengine/EV$RANGE;-><init>(Lcom/infraware/evengine/EV;)V

    iput-object v0, p0, Lcom/infraware/evengine/EV;->sheetRange:Lcom/infraware/evengine/EV$RANGE;

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/infraware/evengine/EV;->sheetRange:Lcom/infraware/evengine/EV$RANGE;

    return-object v0
.end method

.method public getScreenInfo()Lcom/infraware/evengine/EV$SCREEN_INFO;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/infraware/evengine/EV;->screenInfo:Lcom/infraware/evengine/EV$SCREEN_INFO;

    if-nez v0, :cond_0

    new-instance v0, Lcom/infraware/evengine/EV$SCREEN_INFO;

    invoke-direct {v0, p0}, Lcom/infraware/evengine/EV$SCREEN_INFO;-><init>(Lcom/infraware/evengine/EV;)V

    iput-object v0, p0, Lcom/infraware/evengine/EV;->screenInfo:Lcom/infraware/evengine/EV$SCREEN_INFO;

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/infraware/evengine/EV;->screenInfo:Lcom/infraware/evengine/EV$SCREEN_INFO;

    return-object v0
.end method

.method public getScrollInfoEditor()Lcom/infraware/evengine/EV$SCROLLINFO_EDITOR;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/infraware/evengine/EV;->scrollInfoEditor:Lcom/infraware/evengine/EV$SCROLLINFO_EDITOR;

    if-nez v0, :cond_0

    new-instance v0, Lcom/infraware/evengine/EV$SCROLLINFO_EDITOR;

    invoke-direct {v0, p0}, Lcom/infraware/evengine/EV$SCROLLINFO_EDITOR;-><init>(Lcom/infraware/evengine/EV;)V

    iput-object v0, p0, Lcom/infraware/evengine/EV;->scrollInfoEditor:Lcom/infraware/evengine/EV$SCROLLINFO_EDITOR;

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/infraware/evengine/EV;->scrollInfoEditor:Lcom/infraware/evengine/EV$SCROLLINFO_EDITOR;

    return-object v0
.end method

.method public getSheetCellInfo()Lcom/infraware/evengine/EV$SHEET_CELL_INFO;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/infraware/evengine/EV;->sheetCellInfo:Lcom/infraware/evengine/EV$SHEET_CELL_INFO;

    if-nez v0, :cond_0

    new-instance v0, Lcom/infraware/evengine/EV$SHEET_CELL_INFO;

    invoke-direct {v0, p0}, Lcom/infraware/evengine/EV$SHEET_CELL_INFO;-><init>(Lcom/infraware/evengine/EV;)V

    iput-object v0, p0, Lcom/infraware/evengine/EV;->sheetCellInfo:Lcom/infraware/evengine/EV$SHEET_CELL_INFO;

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/infraware/evengine/EV;->sheetCellInfo:Lcom/infraware/evengine/EV$SHEET_CELL_INFO;

    return-object v0
.end method

.method public getSheetFormatInfo()Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/infraware/evengine/EV;->sheetFormatInfo:Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;

    if-nez v0, :cond_0

    new-instance v0, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;

    invoke-direct {v0, p0}, Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;-><init>(Lcom/infraware/evengine/EV;)V

    iput-object v0, p0, Lcom/infraware/evengine/EV;->sheetFormatInfo:Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/infraware/evengine/EV;->sheetFormatInfo:Lcom/infraware/evengine/EV$SHEET_FORMAT_INFO;

    return-object v0
.end method

.method public getSheetInfo()Lcom/infraware/evengine/EV$SHEET_INFO;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/infraware/evengine/EV;->sheetInfo:Lcom/infraware/evengine/EV$SHEET_INFO;

    if-nez v0, :cond_0

    new-instance v0, Lcom/infraware/evengine/EV$SHEET_INFO;

    invoke-direct {v0, p0}, Lcom/infraware/evengine/EV$SHEET_INFO;-><init>(Lcom/infraware/evengine/EV;)V

    iput-object v0, p0, Lcom/infraware/evengine/EV;->sheetInfo:Lcom/infraware/evengine/EV$SHEET_INFO;

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/infraware/evengine/EV;->sheetInfo:Lcom/infraware/evengine/EV$SHEET_INFO;

    return-object v0
.end method
