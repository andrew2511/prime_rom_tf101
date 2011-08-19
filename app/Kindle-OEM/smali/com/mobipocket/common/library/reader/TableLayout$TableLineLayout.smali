.class Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;
.super Ljava/lang/Object;
.source "TableLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobipocket/common/library/reader/TableLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TableLineLayout"
.end annotation


# instance fields
.field private cellList:Ljava/util/Vector;

.field private height:I

.field private lineBeginningTagPosition:I

.field private lineClosingTagPosition:I

.field private lineRendered:Z

.field private lineY:I

.field private maxHeight:I

.field private pBgColor:I

.field private tableLayout:Lcom/mobipocket/common/library/reader/TableLayout;

.field final synthetic this$0:Lcom/mobipocket/common/library/reader/TableLayout;


# direct methods
.method public constructor <init>(Lcom/mobipocket/common/library/reader/TableLayout;Lcom/mobipocket/common/library/reader/TableLayout;II)V
    .locals 2
    .parameter
    .parameter "tableLayout"
    .parameter "bgColor"
    .parameter "lineBeginningTagPosition"

    .prologue
    const/4 v1, 0x0

    .line 777
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->this$0:Lcom/mobipocket/common/library/reader/TableLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 764
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->tableLayout:Lcom/mobipocket/common/library/reader/TableLayout;

    .line 765
    iput-boolean v1, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->lineRendered:Z

    .line 766
    iput v1, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->lineY:I

    .line 767
    iput v1, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->lineClosingTagPosition:I

    .line 768
    iput v1, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->lineBeginningTagPosition:I

    .line 778
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->cellList:Ljava/util/Vector;

    .line 779
    iput p3, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->pBgColor:I

    .line 780
    iput v1, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->height:I

    .line 781
    iput-object p2, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->tableLayout:Lcom/mobipocket/common/library/reader/TableLayout;

    .line 782
    iget v0, p2, Lcom/mobipocket/common/library/reader/TableLayout;->pBorderWidth:I

    iput v0, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->lineY:I

    .line 783
    iput p4, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->lineBeginningTagPosition:I

    .line 784
    return-void
.end method

.method static synthetic access$1500(Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 759
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->getLineY()I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;IIII)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 759
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->isLineInTheScreen(IIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 759
    invoke-direct {p0, p1}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->isLineBiggerThanScreen(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 759
    iget-boolean v0, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->lineRendered:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;IIII)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 759
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->displayTheLineOnTheScreen(IIII)Z

    move-result v0

    return v0
.end method

.method private displayTheLineOnTheScreen(IIII)Z
    .locals 2
    .parameter "localDrawOffsetY"
    .parameter "tableY"
    .parameter "screenMinY"
    .parameter "screenMaxY"

    .prologue
    .line 1169
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->isLineInTheScreen(IIII)Z

    move-result v0

    .line 1171
    .local v0, ret:Z
    sub-int v1, p4, p3

    invoke-direct {p0, v1}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->isLineBiggerThanScreen(I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1173
    return v0
.end method

.method private getLineY()I
    .locals 1

    .prologue
    .line 998
    iget-boolean v0, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->lineRendered:Z

    if-nez v0, :cond_0

    .line 1000
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->render()V

    .line 1002
    :cond_0
    iget v0, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->lineY:I

    return v0
.end method

.method private getRowSpanHeight(I)I
    .locals 4
    .parameter "cellNum"

    .prologue
    .line 1013
    iget v2, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->height:I

    .line 1014
    .local v2, ret:I
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->cellList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v1

    .line 1015
    .local v1, cellNumber:I
    if-ge p1, v1, :cond_1

    .line 1017
    iget-boolean v3, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->lineRendered:Z

    if-nez v3, :cond_0

    .line 1019
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->render()V

    .line 1021
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->elementAt(I)Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;

    move-result-object v0

    .line 1022
    .local v0, cell:Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;
    iget v2, v0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellHeight:I

    .line 1024
    .end local v0           #cell:Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;
    :cond_1
    return v2
.end method

.method private isLineBiggerThanScreen(I)Z
    .locals 3
    .parameter "screenHeight"

    .prologue
    .line 1204
    const/4 v0, 0x0

    .line 1205
    .local v0, ret:Z
    iget v1, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->height:I

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->this$0:Lcom/mobipocket/common/library/reader/TableLayout;

    iget v2, v2, Lcom/mobipocket/common/library/reader/TableLayout;->pBorderWidth:I

    add-int/2addr v1, v2

    if-lt v1, p1, :cond_0

    .line 1207
    const/4 v0, 0x1

    .line 1210
    :cond_0
    iget v1, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->maxHeight:I

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->this$0:Lcom/mobipocket/common/library/reader/TableLayout;

    iget v2, v2, Lcom/mobipocket/common/library/reader/TableLayout;->pBorderWidth:I

    add-int/2addr v1, v2

    if-lt v1, p1, :cond_1

    .line 1212
    const/4 v0, 0x1

    .line 1214
    :cond_1
    return v0
.end method

.method private isLineInTheScreen(IIII)Z
    .locals 3
    .parameter "localDrawOffsetY"
    .parameter "tableY"
    .parameter "screenMinY"
    .parameter "screenMaxY"

    .prologue
    .line 1185
    const/4 v0, 0x1

    .line 1187
    .local v0, ret:Z
    add-int v1, p2, p1

    iget v2, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->lineY:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->height:I

    add-int/2addr v1, v2

    if-lt v1, p4, :cond_1

    .line 1189
    const/4 v0, 0x0

    .line 1195
    :cond_0
    :goto_0
    return v0

    .line 1191
    :cond_1
    add-int v1, p2, p1

    iget v2, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->lineY:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->maxHeight:I

    add-int/2addr v1, v2

    if-lt v1, p4, :cond_0

    .line 1193
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateHeight(I)V
    .locals 4
    .parameter "localHeight"

    .prologue
    .line 1036
    iget v3, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->height:I

    if-le p1, v3, :cond_2

    .line 1038
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->cellList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v1

    .line 1039
    .local v1, cellNumber:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1041
    invoke-virtual {p0, v2}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->elementAt(I)Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;

    move-result-object v0

    .line 1042
    .local v0, cell:Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;
    iget v3, v0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellHeight:I

    if-le p1, v3, :cond_0

    .line 1044
    iput p1, v0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellHeight:I

    .line 1045
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->isDummy()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->isRendered()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1047
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->applyHeight()V

    .line 1039
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1051
    .end local v0           #cell:Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;
    :cond_1
    iput p1, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->height:I

    .line 1053
    .end local v1           #cellNumber:I
    .end local v2           #i:I
    :cond_2
    return-void
.end method

.method private updateLineY(I)V
    .locals 4
    .parameter "localLineY"

    .prologue
    .line 1110
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->cellList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v1

    .line 1111
    .local v1, cellNumber:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1113
    invoke-virtual {p0, v2}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->elementAt(I)Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;

    move-result-object v0

    .line 1114
    .local v0, cell:Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;
    iput p1, v0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellY:I

    .line 1111
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1116
    .end local v0           #cell:Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;
    :cond_0
    iput p1, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->lineY:I

    .line 1117
    return-void
.end method

.method private updateMaxHeight()V
    .locals 5

    .prologue
    .line 1065
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->cellList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v1

    .line 1066
    .local v1, cellNumber:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1068
    invoke-virtual {p0, v2}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->elementAt(I)Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;

    move-result-object v0

    .line 1069
    .local v0, cell:Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;
    iget v3, v0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellHeight:I

    iget v4, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->maxHeight:I

    if-le v3, v4, :cond_0

    .line 1071
    iget v3, v0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellHeight:I

    iput v3, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->maxHeight:I

    .line 1066
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1074
    .end local v0           #cell:Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;
    :cond_1
    return-void
.end method

.method private updateRowSpanCellHeight(II)V
    .locals 4
    .parameter "rowSpan"
    .parameter "height"

    .prologue
    .line 1084
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->cellList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v1

    .line 1085
    .local v1, cellNumber:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1087
    invoke-virtual {p0, v2}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->elementAt(I)Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;

    move-result-object v0

    .line 1089
    .local v0, cell:Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;
    iget v3, v0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->rowspan:I

    if-ne v3, p1, :cond_0

    .line 1091
    iget v3, v0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellHeight:I

    if-le p2, v3, :cond_0

    .line 1093
    iput p2, v0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellHeight:I

    .line 1094
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->isDummy()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->isRendered()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1096
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->applyHeight()V

    .line 1085
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1102
    .end local v0           #cell:Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;
    :cond_1
    return-void
.end method


# virtual methods
.method public addCell(Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;)V
    .locals 1
    .parameter "cell"

    .prologue
    .line 792
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->cellList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 793
    return-void
.end method

.method public closeLine(I)V
    .locals 0
    .parameter "closingTagPosition"

    .prologue
    .line 1404
    iput p1, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->lineClosingTagPosition:I

    .line 1405
    return-void
.end method

.method public drawLine(Lcom/amazon/system/drawing/Graphics;IIIIIIIII)Z
    .locals 20
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1134
    const/4 v5, 0x0

    .line 1135
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->lineRendered:Z

    move v6, v0

    if-eqz v6, :cond_2

    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p6

    move/from16 v3, p8

    move/from16 v4, p10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->displayTheLineOnTheScreen(IIII)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->cellList:Ljava/util/Vector;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v18

    .line 1138
    const/4 v5, 0x0

    move/from16 v19, v5

    :goto_0
    move/from16 v0, v19

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    .line 1141
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->elementAt(I)Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;

    move-result-object v5

    .line 1142
    invoke-virtual {v5}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->isDummy()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->isRendered()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->this$0:Lcom/mobipocket/common/library/reader/TableLayout;

    move-object v6, v0

    iget v15, v6, Lcom/mobipocket/common/library/reader/TableLayout;->pBorderWidth:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->this$0:Lcom/mobipocket/common/library/reader/TableLayout;

    move-object v6, v0

    invoke-static {v6}, Lcom/mobipocket/common/library/reader/TableLayout;->access$1300(Lcom/mobipocket/common/library/reader/TableLayout;)I

    move-result v17

    move-object/from16 v6, p1

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    move/from16 v16, p2

    invoke-virtual/range {v5 .. v17}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->draw(Lcom/amazon/system/drawing/Graphics;IIIIIIIIIII)Z

    .line 1138
    :cond_0
    add-int/lit8 v5, v19, 0x1

    move/from16 v19, v5

    goto :goto_0

    .line 1147
    :cond_1
    const/4 v5, 0x1

    .line 1149
    :cond_2
    return v5
.end method

.method public elementAt(I)Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;
    .locals 1
    .parameter "index"

    .prologue
    .line 827
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->cellList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;

    return-object p0
.end method

.method public getActiveAreaList(IIIIIIII)Ljava/util/Vector;
    .locals 18
    .parameter "localDrawOffsetX"
    .parameter "localDrawOffsetY"
    .parameter "tableX"
    .parameter "tableY"
    .parameter "screenMinX"
    .parameter "screenMinY"
    .parameter "screenMaxX"
    .parameter "screenMaxY"

    .prologue
    .line 1333
    new-instance v17, Ljava/util/Vector;

    invoke-direct/range {v17 .. v17}, Ljava/util/Vector;-><init>()V

    .line 1334
    .local v17, lineSelectableObject:Ljava/util/Vector;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->lineRendered:Z

    move v6, v0

    if-eqz v6, :cond_1

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p4

    move/from16 v3, p6

    move/from16 v4, p8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->displayTheLineOnTheScreen(IIII)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->cellList:Ljava/util/Vector;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v14

    .line 1337
    .local v14, cellNumber:I
    const/16 v16, 0x0

    .local v16, k:I
    :goto_0
    move/from16 v0, v16

    move v1, v14

    if-ge v0, v1, :cond_1

    .line 1338
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->elementAt(I)Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;

    move-result-object v5

    .line 1339
    .local v5, cell:Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;
    invoke-virtual {v5}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->isDummy()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->isRendered()Z

    move-result v6

    if-eqz v6, :cond_0

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    invoke-virtual/range {v5 .. v13}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->isVisible(IIIIIIII)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1341
    iget v6, v5, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellX:I

    add-int v6, v6, p1

    add-int v6, v6, p3

    iget v7, v5, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellY:I

    add-int v7, v7, p2

    add-int v7, v7, p4

    invoke-virtual {v5, v6, v7}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->updateDisplayableOffset(II)V

    .line 1342
    invoke-virtual {v5}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->getActiveAreaList()Ljava/util/Vector;

    move-result-object v15

    .line 1343
    .local v15, cellSelectableObjects:Ljava/util/Vector;
    move-object/from16 v0, v17

    move-object v1, v15

    invoke-static {v0, v1}, Lcom/mobipocket/common/util/VectorUtils;->addAll(Ljava/util/Vector;Ljava/util/Vector;)V

    .line 1337
    .end local v15           #cellSelectableObjects:Ljava/util/Vector;
    :cond_0
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 1347
    .end local v5           #cell:Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;
    .end local v14           #cellNumber:I
    .end local v16           #k:I
    :cond_1
    return-object v17
.end method

.method public getBgColor()I
    .locals 1

    .prologue
    .line 836
    iget v0, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->pBgColor:I

    return v0
.end method

.method public getFirstVisibleElementPosition()I
    .locals 7

    .prologue
    .line 972
    iget-object v6, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->cellList:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v5

    .line 974
    .local v5, objectCount:I
    const/4 v3, 0x0

    .local v3, index:I
    :goto_0
    if-ge v3, v5, :cond_2

    .line 976
    iget-object v6, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->cellList:Ljava/util/Vector;

    invoke-virtual {v6, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;

    .line 977
    .local v0, cell:Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;
    invoke-static {v0}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->access$1200(Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;)Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v2

    .line 979
    .local v2, elementCount:I
    const/4 v4, 0x0

    .local v4, indexElement:I
    :goto_1
    if-ge v4, v2, :cond_1

    .line 981
    invoke-static {v0}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->access$1200(Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;)Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/FlowElement;

    .line 982
    .local v1, element:Lcom/mobipocket/common/library/reader/FlowElement;
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/FlowElement;->isSelectable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 984
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/FlowElement;->getFirstSubElementBookPosition()I

    move-result v6

    .line 989
    .end local v0           #cell:Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;
    .end local v1           #element:Lcom/mobipocket/common/library/reader/FlowElement;
    .end local v2           #elementCount:I
    .end local v4           #indexElement:I
    :goto_2
    return v6

    .line 979
    .restart local v0       #cell:Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;
    .restart local v1       #element:Lcom/mobipocket/common/library/reader/FlowElement;
    .restart local v2       #elementCount:I
    .restart local v4       #indexElement:I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 974
    .end local v1           #element:Lcom/mobipocket/common/library/reader/FlowElement;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 989
    .end local v0           #cell:Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;
    .end local v2           #elementCount:I
    .end local v4           #indexElement:I
    :cond_2
    const/4 v6, -0x1

    goto :goto_2
.end method

.method public getLineBeginningTagPosition()I
    .locals 1

    .prologue
    .line 1423
    iget v0, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->lineBeginningTagPosition:I

    return v0
.end method

.method public getLineClosingTagPosition()I
    .locals 1

    .prologue
    .line 1413
    iget v0, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->lineClosingTagPosition:I

    return v0
.end method

.method public getLineFirstElementPosition()I
    .locals 8

    .prologue
    .line 1356
    const/4 v0, -0x1

    .line 1357
    .local v0, beginPosition:I
    const/4 v5, 0x0

    .line 1358
    .local v5, found:Z
    iget-object v7, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->cellList:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v2

    .line 1359
    .local v2, cellNumber:I
    const/4 v6, 0x0

    .local v6, k:I
    :goto_0
    if-ge v6, v2, :cond_1

    if-nez v5, :cond_1

    .line 1360
    invoke-virtual {p0, v6}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->elementAt(I)Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;

    move-result-object v1

    .line 1361
    .local v1, cell:Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->isDummy()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1363
    invoke-static {v1}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->access$1200(Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;)Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v4

    .line 1364
    .local v4, elementListSize:I
    const/4 v3, 0x0

    .local v3, e:I
    :goto_1
    if-ge v3, v4, :cond_0

    if-nez v5, :cond_0

    .line 1366
    invoke-static {v1}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->access$1200(Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;)Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mobipocket/common/library/reader/FlowElement;

    invoke-virtual {v7}, Lcom/mobipocket/common/library/reader/FlowElement;->getFirstSubElementBookPosition()I

    move-result v0

    .line 1367
    const/4 v5, 0x1

    .line 1364
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1359
    .end local v3           #e:I
    .end local v4           #elementListSize:I
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1371
    .end local v1           #cell:Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;
    :cond_1
    return v0
.end method

.method public getLineHeight()I
    .locals 1

    .prologue
    .line 944
    iget-boolean v0, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->lineRendered:Z

    if-nez v0, :cond_0

    .line 946
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->render()V

    .line 948
    :cond_0
    iget v0, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->height:I

    return v0
.end method

.method public getLineLastElementPosition()I
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 1380
    const/4 v4, -0x1

    .line 1381
    .local v4, endPosition:I
    const/4 v5, 0x0

    .line 1382
    .local v5, found:Z
    iget-object v7, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->cellList:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v1

    .line 1383
    .local v1, cellNumber:I
    sub-int v6, v1, v8

    .local v6, k:I
    :goto_0
    if-ltz v6, :cond_1

    if-nez v5, :cond_1

    .line 1384
    invoke-virtual {p0, v6}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->elementAt(I)Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;

    move-result-object v0

    .line 1385
    .local v0, cell:Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->isDummy()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1387
    invoke-static {v0}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->access$1200(Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;)Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v3

    .line 1388
    .local v3, elementListSize:I
    sub-int v2, v3, v8

    .local v2, e:I
    :goto_1
    if-ltz v2, :cond_0

    if-nez v5, :cond_0

    .line 1390
    invoke-static {v0}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->access$1200(Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;)Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mobipocket/common/library/reader/FlowElement;

    invoke-virtual {v7}, Lcom/mobipocket/common/library/reader/FlowElement;->getLastSubElementBookPosition()I

    move-result v4

    .line 1391
    const/4 v5, 0x1

    .line 1388
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1383
    .end local v2           #e:I
    .end local v3           #elementListSize:I
    :cond_0
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 1395
    .end local v0           #cell:Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;
    :cond_1
    return v4
.end method

.method public getLineMaxHeight()I
    .locals 1

    .prologue
    .line 959
    iget-boolean v0, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->lineRendered:Z

    if-nez v0, :cond_0

    .line 961
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->render()V

    .line 963
    :cond_0
    iget v0, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->maxHeight:I

    return v0
.end method

.method public getLineOffsetList(IIIIIIII)Ljava/util/Vector;
    .locals 18
    .parameter "localDrawOffsetX"
    .parameter "localDrawOffsetY"
    .parameter "tableX"
    .parameter "tableY"
    .parameter "screenMinX"
    .parameter "screenMinY"
    .parameter "screenMaxX"
    .parameter "screenMaxY"

    .prologue
    .line 1304
    new-instance v17, Ljava/util/Vector;

    invoke-direct/range {v17 .. v17}, Ljava/util/Vector;-><init>()V

    .line 1305
    .local v17, lineSelectableObject:Ljava/util/Vector;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->lineRendered:Z

    move v6, v0

    if-eqz v6, :cond_1

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p4

    move/from16 v3, p6

    move/from16 v4, p8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->displayTheLineOnTheScreen(IIII)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->cellList:Ljava/util/Vector;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v14

    .line 1308
    .local v14, cellNumber:I
    const/16 v16, 0x0

    .local v16, k:I
    :goto_0
    move/from16 v0, v16

    move v1, v14

    if-ge v0, v1, :cond_1

    .line 1309
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->elementAt(I)Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;

    move-result-object v5

    .line 1310
    .local v5, cell:Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;
    invoke-virtual {v5}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->isDummy()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->isRendered()Z

    move-result v6

    if-eqz v6, :cond_0

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    invoke-virtual/range {v5 .. v13}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->isVisible(IIIIIIII)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1311
    invoke-virtual {v5}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->getLineOffsetList()Ljava/util/Vector;

    move-result-object v15

    .line 1312
    .local v15, cellSelectableObjects:Ljava/util/Vector;
    move-object/from16 v0, v17

    move-object v1, v15

    invoke-static {v0, v1}, Lcom/mobipocket/common/util/VectorUtils;->addAll(Ljava/util/Vector;Ljava/util/Vector;)V

    .line 1308
    .end local v15           #cellSelectableObjects:Ljava/util/Vector;
    :cond_0
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 1316
    .end local v5           #cell:Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;
    .end local v14           #cellNumber:I
    .end local v16           #k:I
    :cond_1
    return-object v17
.end method

.method public getSelectableObjects(IIIIIIII)Ljava/util/Vector;
    .locals 18
    .parameter "localDrawOffsetX"
    .parameter "localDrawOffsetY"
    .parameter "tableX"
    .parameter "tableY"
    .parameter "screenMinX"
    .parameter "screenMinY"
    .parameter "screenMaxX"
    .parameter "screenMaxY"

    .prologue
    .line 1275
    new-instance v17, Ljava/util/Vector;

    invoke-direct/range {v17 .. v17}, Ljava/util/Vector;-><init>()V

    .line 1276
    .local v17, lineSelectableObject:Ljava/util/Vector;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->lineRendered:Z

    move v6, v0

    if-eqz v6, :cond_1

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p4

    move/from16 v3, p6

    move/from16 v4, p8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->displayTheLineOnTheScreen(IIII)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->cellList:Ljava/util/Vector;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v14

    .line 1279
    .local v14, cellNumber:I
    const/16 v16, 0x0

    .local v16, k:I
    :goto_0
    move/from16 v0, v16

    move v1, v14

    if-ge v0, v1, :cond_1

    .line 1280
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->elementAt(I)Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;

    move-result-object v5

    .line 1281
    .local v5, cell:Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;
    invoke-virtual {v5}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->isDummy()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->isRendered()Z

    move-result v6

    if-eqz v6, :cond_0

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    invoke-virtual/range {v5 .. v13}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->isVisible(IIIIIIII)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1282
    invoke-virtual {v5}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->getSelectableObjects()Ljava/util/Vector;

    move-result-object v15

    .line 1283
    .local v15, cellSelectableObjects:Ljava/util/Vector;
    move-object/from16 v0, v17

    move-object v1, v15

    invoke-static {v0, v1}, Lcom/mobipocket/common/util/VectorUtils;->addAll(Ljava/util/Vector;Ljava/util/Vector;)V

    .line 1279
    .end local v15           #cellSelectableObjects:Ljava/util/Vector;
    :cond_0
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 1287
    .end local v5           #cell:Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;
    .end local v14           #cellNumber:I
    .end local v16           #k:I
    :cond_1
    return-object v17
.end method

.method public render()V
    .locals 22

    .prologue
    .line 846
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->cellList:Ljava/util/Vector;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->size()I

    move-result v5

    .line 847
    .local v5, cellNumber:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v5, :cond_7

    .line 851
    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->elementAt(I)Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;

    move-result-object v4

    .line 852
    .local v4, cell:Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;
    invoke-virtual {v4}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->isDummy()Z

    move-result v18

    if-nez v18, :cond_0

    invoke-virtual {v4}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->isRendered()Z

    move-result v18

    if-nez v18, :cond_0

    .line 855
    new-instance v6, Lcom/mobipocket/common/library/reader/FrameConstructor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->this$0:Lcom/mobipocket/common/library/reader/TableLayout;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/mobipocket/common/library/reader/TableLayout;->access$200(Lcom/mobipocket/common/library/reader/TableLayout;)Lcom/mobipocket/common/library/reader/BookViewManager$TableLimiter;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->this$0:Lcom/mobipocket/common/library/reader/TableLayout;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/mobipocket/common/library/reader/TableLayout;->access$100(Lcom/mobipocket/common/library/reader/TableLayout;)Lcom/mobipocket/common/library/reader/DecorationGenerator;

    move-result-object v19

    move-object v0, v6

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/mobipocket/common/library/reader/FrameConstructor;-><init>(Lcom/mobipocket/common/library/reader/BookViewManager$TableLimiter;Lcom/mobipocket/common/library/reader/DecorationGenerator;)V

    .line 856
    .local v6, constructor:Lcom/mobipocket/common/library/reader/FrameConstructor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->tableLayout:Lcom/mobipocket/common/library/reader/TableLayout;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/mobipocket/common/library/reader/TableLayout;->access$300(Lcom/mobipocket/common/library/reader/TableLayout;)Lcom/mobipocket/common/parser/HyphenationHelper;

    move-result-object v18

    move-object v0, v6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/FrameConstructor;->setExpressionSearcher(Lcom/mobipocket/common/parser/HyphenationHelper;)V

    .line 857
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->tableLayout:Lcom/mobipocket/common/library/reader/TableLayout;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/mobipocket/common/library/reader/TableLayout;->access$400(Lcom/mobipocket/common/library/reader/TableLayout;)Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v18

    move-object v0, v6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/FrameConstructor;->setDefaultStyle(Lcom/mobipocket/common/parser/styles/StyleDescriptor;)V

    .line 858
    move-object v0, v6

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layout:Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->tableLayout:Lcom/mobipocket/common/library/reader/TableLayout;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/mobipocket/common/library/reader/TableLayout;->access$500(Lcom/mobipocket/common/library/reader/TableLayout;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;->setParagraphSpacing(I)V

    .line 859
    move-object v0, v6

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layout:Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->tableLayout:Lcom/mobipocket/common/library/reader/TableLayout;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/mobipocket/common/library/reader/TableLayout;->access$600(Lcom/mobipocket/common/library/reader/TableLayout;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;->setParagraphDefaultIndentation(I)V

    .line 860
    move-object v0, v6

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layout:Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->tableLayout:Lcom/mobipocket/common/library/reader/TableLayout;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/mobipocket/common/library/reader/TableLayout;->access$700(Lcom/mobipocket/common/library/reader/TableLayout;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;->setLineSpacing(I)V

    .line 861
    move-object v0, v6

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layout:Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->tableLayout:Lcom/mobipocket/common/library/reader/TableLayout;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/mobipocket/common/library/reader/TableLayout;->access$800(Lcom/mobipocket/common/library/reader/TableLayout;)Lcom/mobipocket/common/library/reader/hyphenation/HyphenationManager;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;->setHyphenationManager(Lcom/mobipocket/common/library/reader/hyphenation/HyphenationManager;)V

    .line 863
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->tableLayout:Lcom/mobipocket/common/library/reader/TableLayout;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/mobipocket/common/library/reader/TableLayout;->access$900(Lcom/mobipocket/common/library/reader/TableLayout;)Lcom/amazon/system/drawing/ImageFactory;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->tableLayout:Lcom/mobipocket/common/library/reader/TableLayout;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/mobipocket/common/library/reader/TableLayout;->access$400(Lcom/mobipocket/common/library/reader/TableLayout;)Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v19

    move-object v0, v4

    move-object v1, v6

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->render(Lcom/mobipocket/common/library/reader/FrameConstructor;Lcom/amazon/system/drawing/ImageFactory;Lcom/mobipocket/common/parser/styles/StyleDescriptor;)V

    .line 864
    move-object v0, v4

    iget v0, v0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->rowspan:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 865
    move-object v0, v4

    iget v0, v0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellHeight:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->height:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_1

    .line 867
    move-object v0, v4

    iget v0, v0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellHeight:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->updateHeight(I)V

    .line 847
    .end local v6           #constructor:Lcom/mobipocket/common/library/reader/FrameConstructor;
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 871
    .restart local v6       #constructor:Lcom/mobipocket/common/library/reader/FrameConstructor;
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->height:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object v1, v4

    iput v0, v1, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellHeight:I

    goto :goto_1

    .line 876
    :cond_2
    const/16 v16, 0x0

    .line 881
    .local v16, spanningHeight:I
    move-object/from16 v10, p0

    .line 882
    .local v10, nextLine:Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;
    const/16 v17, 0x1

    .local v17, z:I
    :goto_2
    move-object v0, v4

    iget v0, v0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->rowspan:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    .line 884
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->tableLayout:Lcom/mobipocket/common/library/reader/TableLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v10

    invoke-static {v0, v1}, Lcom/mobipocket/common/library/reader/TableLayout;->access$1000(Lcom/mobipocket/common/library/reader/TableLayout;Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;)Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;

    move-result-object v10

    .line 885
    invoke-virtual {v10}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->render()V

    .line 886
    invoke-direct {v10, v8}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->getRowSpanHeight(I)I

    move-result v11

    .line 887
    .local v11, nextRowSpanHeight:I
    add-int v16, v16, v11

    .line 882
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 891
    .end local v11           #nextRowSpanHeight:I
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->height:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->tableLayout:Lcom/mobipocket/common/library/reader/TableLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/mobipocket/common/library/reader/TableLayout;->pBorderWidth:I

    move/from16 v19, v0

    move-object v0, v4

    iget v0, v0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->rowspan:I

    move/from16 v20, v0

    const/16 v21, 0x1

    sub-int v20, v20, v21

    mul-int v19, v19, v20

    add-int v18, v18, v19

    add-int v16, v16, v18

    .line 894
    move-object v0, v4

    iget v0, v0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellHeight:I

    move/from16 v18, v0

    move/from16 v0, v16

    move/from16 v1, v18

    if-le v0, v1, :cond_4

    .line 895
    move/from16 v0, v16

    move-object v1, v4

    iput v0, v1, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellHeight:I

    goto :goto_1

    .line 899
    :cond_4
    move-object/from16 v10, p0

    .line 900
    iget v12, v4, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->cellHeight:I

    .line 901
    .local v12, origCellHeight:I
    const/4 v7, 0x0

    .line 902
    .local v7, distributedHeight:I
    const/4 v13, 0x0

    .local v13, p:I
    :goto_3
    move-object v0, v4

    iget v0, v0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->rowspan:I

    move/from16 v18, v0

    move v0, v13

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    if-eqz v10, :cond_0

    .line 903
    invoke-virtual {v10}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->getLineHeight()I

    move-result v9

    .line 904
    .local v9, lineHeight:I
    mul-int v18, v9, v12

    div-int v9, v18, v16

    .line 909
    move-object v0, v4

    iget v0, v0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->rowspan:I

    move/from16 v18, v0

    const/16 v19, 0x1

    sub-int v18, v18, v19

    move v0, v13

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 911
    sub-int v9, v12, v7

    .line 914
    :cond_5
    if-eqz v13, :cond_6

    .line 915
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->tableLayout:Lcom/mobipocket/common/library/reader/TableLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/mobipocket/common/library/reader/TableLayout;->pBorderWidth:I

    move/from16 v18, v0

    sub-int v9, v9, v18

    .line 917
    :cond_6
    invoke-direct {v10, v9}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->updateHeight(I)V

    .line 918
    move-object v0, v4

    iget v0, v0, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->rowspan:I

    move/from16 v18, v0

    move-object v0, v10

    move/from16 v1, v18

    move v2, v12

    invoke-direct {v0, v1, v2}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->updateRowSpanCellHeight(II)V

    .line 919
    add-int/2addr v7, v9

    .line 920
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->tableLayout:Lcom/mobipocket/common/library/reader/TableLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v10

    invoke-static {v0, v1}, Lcom/mobipocket/common/library/reader/TableLayout;->access$1000(Lcom/mobipocket/common/library/reader/TableLayout;Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;)Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;

    move-result-object v10

    .line 902
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 927
    .end local v4           #cell:Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;
    .end local v6           #constructor:Lcom/mobipocket/common/library/reader/FrameConstructor;
    .end local v7           #distributedHeight:I
    .end local v9           #lineHeight:I
    .end local v10           #nextLine:Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;
    .end local v12           #origCellHeight:I
    .end local v13           #p:I
    .end local v16           #spanningHeight:I
    .end local v17           #z:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->tableLayout:Lcom/mobipocket/common/library/reader/TableLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/mobipocket/common/library/reader/TableLayout;->access$1100(Lcom/mobipocket/common/library/reader/TableLayout;Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;)Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;

    move-result-object v14

    .line 928
    .local v14, previousLine:Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;
    const/4 v15, 0x0

    .line 929
    .local v15, previousY:I
    if-eqz v14, :cond_8

    .line 930
    invoke-direct {v14}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->getLineY()I

    move-result v18

    invoke-virtual {v14}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->getLineHeight()I

    move-result v19

    add-int v15, v18, v19

    .line 931
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->tableLayout:Lcom/mobipocket/common/library/reader/TableLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/mobipocket/common/library/reader/TableLayout;->pBorderWidth:I

    move/from16 v18, v0

    add-int v18, v18, v15

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->updateLineY(I)V

    .line 932
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->lineRendered:Z

    .line 933
    invoke-direct/range {p0 .. p0}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->updateMaxHeight()V

    .line 934
    return-void
.end method

.method public resetRendered()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 809
    iput-boolean v3, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->lineRendered:Z

    .line 810
    iput v3, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->height:I

    .line 811
    iput v3, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->maxHeight:I

    .line 812
    iput v3, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->lineY:I

    .line 813
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->cellList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v1

    .line 814
    .local v1, cellNumber:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 816
    invoke-virtual {p0, v2}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->elementAt(I)Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;

    move-result-object v0

    .line 817
    .local v0, cell:Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->resetRendered()V

    .line 814
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 819
    .end local v0           #cell:Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;
    :cond_0
    return-void
.end method

.method public setDecorationList(Ljava/util/Vector;IIIIIIII)V
    .locals 10
    .parameter "list"
    .parameter "localDrawOffsetX"
    .parameter "localDrawOffsetY"
    .parameter "tableX"
    .parameter "tableY"
    .parameter "screenMinX"
    .parameter "screenMinY"
    .parameter "screenMaxX"
    .parameter "screenMaxY"

    .prologue
    .line 1231
    const/4 v9, 0x0

    .local v9, k:I
    :goto_0
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->this$0:Lcom/mobipocket/common/library/reader/TableLayout;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/TableLayout;->getMaxNBCellHorizontal()I

    move-result v1

    if-ge v9, v1, :cond_1

    .line 1232
    invoke-virtual {p0, v9}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->elementAt(I)Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;

    move-result-object v0

    .line 1233
    .local v0, cell:Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->isDummy()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->isRendered()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-virtual/range {v0 .. v8}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->isVisible(IIIIIIII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1234
    invoke-virtual {v0, p1}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->setDecorationList(Ljava/util/Vector;)V

    .line 1231
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1237
    .end local v0           #cell:Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;
    :cond_1
    return-void
.end method

.method public setTemporaryDecorationList(Lcom/mobipocket/common/library/reader/Range;IIIIIIII)V
    .locals 10
    .parameter "deco"
    .parameter "localDrawOffsetX"
    .parameter "localDrawOffsetY"
    .parameter "tableX"
    .parameter "tableY"
    .parameter "screenMinX"
    .parameter "screenMinY"
    .parameter "screenMaxX"
    .parameter "screenMaxY"

    .prologue
    .line 1253
    const/4 v9, 0x0

    .local v9, k:I
    :goto_0
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->this$0:Lcom/mobipocket/common/library/reader/TableLayout;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/TableLayout;->getMaxNBCellHorizontal()I

    move-result v1

    if-ge v9, v1, :cond_1

    .line 1254
    invoke-virtual {p0, v9}, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->elementAt(I)Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;

    move-result-object v0

    .line 1255
    .local v0, cell:Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->isDummy()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->isRendered()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-virtual/range {v0 .. v8}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->isVisible(IIIIIIII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1256
    invoke-virtual {v0, p1}, Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;->setTemporaryDecorationList(Lcom/mobipocket/common/library/reader/Range;)V

    .line 1253
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1259
    .end local v0           #cell:Lcom/mobipocket/common/library/reader/TableLayout$TableCellLayout;
    :cond_1
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 801
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/TableLayout$TableLineLayout;->cellList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method
