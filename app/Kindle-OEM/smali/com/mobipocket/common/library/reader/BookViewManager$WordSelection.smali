.class public Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;
.super Ljava/lang/Object;
.source "BookViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobipocket/common/library/reader/BookViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WordSelection"
.end annotation


# static fields
.field public static final DOWN:I = 0x1

.field public static final LEFT:I = 0x2

.field public static final RIGHT:I = 0x0

.field public static final UP:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/mobipocket/common/library/reader/BookViewManager;


# direct methods
.method private constructor <init>(Lcom/mobipocket/common/library/reader/BookViewManager;)V
    .locals 0
    .parameter

    .prologue
    .line 4811
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mobipocket/common/library/reader/BookViewManager;Lcom/mobipocket/common/library/reader/BookViewManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4792
    invoke-direct {p0, p1}, Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;-><init>(Lcom/mobipocket/common/library/reader/BookViewManager;)V

    return-void
.end method


# virtual methods
.method public addReservedAnnotation(Ljava/lang/String;Ljava/lang/String;I)Lcom/mobipocket/common/library/reader/AnnotationItem;
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x1

    const/4 v9, 0x0

    .line 5163
    const/16 v0, 0x100

    if-eq p3, v0, :cond_0

    move-object v0, v9

    .line 5192
    :goto_0
    return-object v0

    .line 5170
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->annotations:Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->getStackImageOfCurrentPage()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v7, v0

    .line 5176
    :goto_1
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->wordSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->getSelectionBeginPosition()I

    move-result v1

    .line 5177
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->wordSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->getSelectionEndPosition()I

    move-result v2

    .line 5179
    if-le v1, v3, :cond_1

    if-le v2, v3, :cond_1

    .line 5181
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBookParameter:Lcom/mobipocket/common/library/reader/MBPFile;

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v3, v3, Lcom/mobipocket/common/library/reader/BookViewManager;->position:Lcom/mobipocket/common/library/reader/BookViewManager$Position;

    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->getCurrentPageBeginPosition()I

    move-result v3

    iget-object v4, p0, Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v4, v4, Lcom/mobipocket/common/library/reader/BookViewManager;->position:Lcom/mobipocket/common/library/reader/BookViewManager$Position;

    invoke-virtual {v4}, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->getCurrentPageNumber()I

    move-result v4

    move-object v5, p1

    move-object v6, p2

    move v8, p3

    invoke-virtual/range {v0 .. v8}, Lcom/mobipocket/common/library/reader/MBPFile;->addReservedAnnotation(IIIILjava/lang/String;Ljava/lang/String;[BI)Lcom/mobipocket/common/library/reader/AnnotationItem;

    move-result-object v0

    .line 5189
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iput-object v9, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->currentPageAnnotations:[Lcom/mobipocket/common/library/reader/AnnotationItem;

    .line 5190
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->layout:Lcom/mobipocket/common/library/reader/BookViewManager$Layout;

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    invoke-static {v1, v2}, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->access$2200(Lcom/mobipocket/common/library/reader/BookViewManager$Layout;Lcom/mobipocket/common/library/reader/DisplayableFrame;)V

    goto :goto_0

    .line 5173
    :catch_0
    move-exception v0

    move-object v7, v9

    goto :goto_1

    :cond_1
    move-object v0, v9

    goto :goto_0
.end method

.method public annotateSelection(Ljava/lang/String;)Lcom/mobipocket/common/library/reader/AnnotationItem;
    .locals 9
    .parameter

    .prologue
    const/4 v3, -0x1

    const/4 v8, 0x0

    .line 5114
    if-nez p1, :cond_0

    move-object v0, v8

    .line 5149
    :goto_0
    return-object v0

    .line 5121
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->annotations:Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->getStackImageOfCurrentPage()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v7, v0

    .line 5127
    :goto_1
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->wordSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->getSelectedWords()Ljava/lang/String;

    move-result-object v0

    .line 5128
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    .line 5130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "p."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->position:Lcom/mobipocket/common/library/reader/BookViewManager$Position;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->getCurrentPageNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 5133
    :goto_2
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->wordSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->getSelectionBeginPosition()I

    move-result v1

    .line 5134
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->wordSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->getSelectionEndPosition()I

    move-result v2

    .line 5136
    if-le v1, v3, :cond_1

    if-le v2, v3, :cond_1

    .line 5138
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBookParameter:Lcom/mobipocket/common/library/reader/MBPFile;

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v3, v3, Lcom/mobipocket/common/library/reader/BookViewManager;->position:Lcom/mobipocket/common/library/reader/BookViewManager$Position;

    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->getCurrentPageBeginPosition()I

    move-result v3

    iget-object v4, p0, Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v4, v4, Lcom/mobipocket/common/library/reader/BookViewManager;->position:Lcom/mobipocket/common/library/reader/BookViewManager$Position;

    invoke-virtual {v4}, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->getCurrentPageNumber()I

    move-result v4

    move-object v6, p1

    invoke-virtual/range {v0 .. v7}, Lcom/mobipocket/common/library/reader/MBPFile;->addNote(IIIILjava/lang/String;Ljava/lang/String;[B)Lcom/mobipocket/common/library/reader/AnnotationItem;

    move-result-object v0

    .line 5146
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iput-object v8, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->currentPageAnnotations:[Lcom/mobipocket/common/library/reader/AnnotationItem;

    .line 5147
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->layout:Lcom/mobipocket/common/library/reader/BookViewManager$Layout;

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    invoke-static {v1, v2}, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->access$2200(Lcom/mobipocket/common/library/reader/BookViewManager$Layout;Lcom/mobipocket/common/library/reader/DisplayableFrame;)V

    goto :goto_0

    .line 5124
    :catch_0
    move-exception v0

    move-object v7, v8

    goto :goto_1

    :cond_1
    move-object v0, v8

    goto :goto_0

    :cond_2
    move-object v5, v0

    goto :goto_2
.end method

.method public deleteHighlight()V
    .locals 5

    .prologue
    const/4 v2, -0x1

    .line 5063
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->wordSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->getSelectionBeginPosition()I

    move-result v0

    .line 5064
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/DisplayableFrame;->wordSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->getSelectionEndPosition()I

    move-result v1

    .line 5065
    if-le v0, v2, :cond_2

    if-le v1, v2, :cond_2

    .line 5067
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBookParameter:Lcom/mobipocket/common/library/reader/MBPFile;

    invoke-virtual {v2, v0, v1}, Lcom/mobipocket/common/library/reader/MBPFile;->getListOfAnnotationsBetween(II)[Lcom/mobipocket/common/library/reader/AnnotationItem;

    move-result-object v0

    .line 5069
    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 5072
    aget-object v2, v0, v1

    .line 5073
    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getType()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 5074
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v3, v3, Lcom/mobipocket/common/library/reader/BookViewManager;->annotations:Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;

    invoke-virtual {v3, v2}, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->delete(Lcom/mobipocket/common/library/reader/AnnotationItem;)Z

    .line 5069
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5077
    :cond_1
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentPageAnnotations:[Lcom/mobipocket/common/library/reader/AnnotationItem;

    .line 5078
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->layout:Lcom/mobipocket/common/library/reader/BookViewManager$Layout;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    invoke-static {v0, v1}, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->access$2200(Lcom/mobipocket/common/library/reader/BookViewManager$Layout;Lcom/mobipocket/common/library/reader/DisplayableFrame;)V

    .line 5080
    :cond_2
    return-void
.end method

.method public expand(I)Z
    .locals 2
    .parameter "dir"

    .prologue
    .line 4882
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/DisplayableFrame;->wordSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;

    invoke-virtual {v1, p1}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->expandWordSelection(I)Z

    move-result v0

    .line 4885
    .local v0, result:Z
    return v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4894
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->wordSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->getSelectedWords()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentSelectionAnnotations()[Lcom/mobipocket/common/library/reader/AnnotationItem;
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 5091
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/DisplayableFrame;->wordSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->getSelectionBeginPosition()I

    move-result v0

    .line 5092
    .local v0, begin:I
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/DisplayableFrame;->wordSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->getSelectionEndPosition()I

    move-result v1

    .line 5093
    .local v1, end:I
    if-le v0, v3, :cond_0

    if-le v1, v3, :cond_0

    .line 5095
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/BookViewManager;->annotations:Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;

    invoke-virtual {v2, v0, v1}, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->getAnnotationsBetween(II)[Lcom/mobipocket/common/library/reader/AnnotationItem;

    move-result-object v2

    .line 5099
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    new-array v2, v2, [Lcom/mobipocket/common/library/reader/AnnotationItem;

    goto :goto_0
.end method

.method public getLinePositions()[Lcom/amazon/system/drawing/LineMetrics;
    .locals 1

    .prologue
    .line 5203
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->wordSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->getLinePositions()[Lcom/amazon/system/drawing/LineMetrics;

    move-result-object v0

    return-object v0
.end method

.method public highlightSelection(I)Lcom/mobipocket/common/library/reader/AnnotationItem;
    .locals 9
    .parameter

    .prologue
    const/4 v3, -0x1

    const/4 v8, 0x0

    .line 5021
    :try_start_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->annotations:Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->getStackImageOfCurrentPage()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v6, v0

    .line 5030
    :goto_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->wordSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->getSelectedWords()Ljava/lang/String;

    move-result-object v0

    .line 5031
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 5033
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "p."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->position:Lcom/mobipocket/common/library/reader/BookViewManager$Position;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->getCurrentPageNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 5036
    :goto_1
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->wordSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->getSelectionBeginPosition()I

    move-result v1

    .line 5037
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->wordSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->getSelectionEndPosition()I

    move-result v2

    .line 5039
    if-le v1, v3, :cond_0

    if-le v2, v3, :cond_0

    .line 5041
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBookParameter:Lcom/mobipocket/common/library/reader/MBPFile;

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v3, v3, Lcom/mobipocket/common/library/reader/BookViewManager;->position:Lcom/mobipocket/common/library/reader/BookViewManager$Position;

    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->getCurrentPageBeginPosition()I

    move-result v3

    iget-object v4, p0, Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v4, v4, Lcom/mobipocket/common/library/reader/BookViewManager;->position:Lcom/mobipocket/common/library/reader/BookViewManager$Position;

    invoke-virtual {v4}, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->getCurrentPageNumber()I

    move-result v4

    move v7, p1

    invoke-virtual/range {v0 .. v7}, Lcom/mobipocket/common/library/reader/MBPFile;->addHighlight(IIIILjava/lang/String;[BI)Lcom/mobipocket/common/library/reader/AnnotationItem;

    move-result-object v0

    .line 5049
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iput-object v8, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->currentPageAnnotations:[Lcom/mobipocket/common/library/reader/AnnotationItem;

    .line 5050
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->layout:Lcom/mobipocket/common/library/reader/BookViewManager$Layout;

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    invoke-static {v1, v2}, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->access$2200(Lcom/mobipocket/common/library/reader/BookViewManager$Layout;Lcom/mobipocket/common/library/reader/DisplayableFrame;)V

    .line 5052
    :goto_2
    return-object v0

    .line 5027
    :catch_0
    move-exception v0

    move-object v6, v8

    goto :goto_0

    :cond_0
    move-object v0, v8

    goto :goto_2

    :cond_1
    move-object v5, v0

    goto :goto_1
.end method

.method public lookup(Lcom/mobipocket/common/library/reader/BookManager;Ljava/lang/String;)[Lcom/mobipocket/common/library/reader/IndexItem;
    .locals 1
    .parameter "bkm"
    .parameter "word"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mobipocket/common/library/reader/NoDictionaryException;
        }
    .end annotation

    .prologue
    .line 4913
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;->lookup(Lcom/mobipocket/common/library/reader/BookManager;Ljava/lang/String;Lcom/mobipocket/common/library/reader/BookItem;)[Lcom/mobipocket/common/library/reader/IndexItem;

    move-result-object v0

    return-object v0
.end method

.method public lookup(Lcom/mobipocket/common/library/reader/BookManager;Ljava/lang/String;Lcom/mobipocket/common/library/reader/BookItem;)[Lcom/mobipocket/common/library/reader/IndexItem;
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mobipocket/common/library/reader/NoDictionaryException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 4934
    if-nez p2, :cond_a

    .line 4936
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->wordSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->getSelectedWords()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mobipocket/common/parser/UnicodeUtils;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4938
    :goto_0
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    iget v1, v1, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->dic_lang_in:I

    if-le v1, v2, :cond_8

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    iget v1, v1, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->dic_lang_ou:I

    if-le v1, v2, :cond_8

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    iget v1, v1, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->dic_lang_in:I

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    iget v2, v2, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->dic_lang_ou:I

    if-eq v1, v2, :cond_8

    .line 4943
    if-eqz p3, :cond_2

    .line 4948
    :try_start_0
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    iget v1, v1, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->dic_lang_in:I

    invoke-virtual {p1, v0, v1, p3}, Lcom/mobipocket/common/library/reader/BookManager;->lookup(Ljava/lang/String;ILcom/mobipocket/common/library/reader/BookItem;)[Lcom/mobipocket/common/library/reader/IndexItem;
    :try_end_0
    .catch Lcom/mobipocket/common/library/reader/NoDictionaryException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4959
    :goto_1
    if-eqz p3, :cond_3

    .line 4961
    :try_start_1
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    iget v2, v2, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->dic_lang_ou:I

    invoke-virtual {p1, v0, v2, p3}, Lcom/mobipocket/common/library/reader/BookManager;->lookup(Ljava/lang/String;ILcom/mobipocket/common/library/reader/BookItem;)[Lcom/mobipocket/common/library/reader/IndexItem;
    :try_end_1
    .catch Lcom/mobipocket/common/library/reader/NoDictionaryException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_2
    move-object v2, v3

    .line 4972
    :goto_3
    if-eqz v1, :cond_0

    if-nez v0, :cond_5

    .line 4974
    :cond_0
    if-eqz v1, :cond_4

    move-object v0, v1

    .line 5007
    :cond_1
    :goto_4
    return-object v0

    .line 4952
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    iget v1, v1, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->dic_lang_in:I

    invoke-virtual {p1, v0, v1}, Lcom/mobipocket/common/library/reader/BookManager;->lookup(Ljava/lang/String;I)[Lcom/mobipocket/common/library/reader/IndexItem;
    :try_end_2
    .catch Lcom/mobipocket/common/library/reader/NoDictionaryException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    goto :goto_1

    .line 4956
    :catch_0
    move-exception v1

    move-object v1, v3

    goto :goto_1

    .line 4965
    :cond_3
    :try_start_3
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    iget v2, v2, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->dic_lang_ou:I

    invoke-virtual {p1, v0, v2}, Lcom/mobipocket/common/library/reader/BookManager;->lookup(Ljava/lang/String;I)[Lcom/mobipocket/common/library/reader/IndexItem;
    :try_end_3
    .catch Lcom/mobipocket/common/library/reader/NoDictionaryException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    goto :goto_2

    .line 4967
    :catch_1
    move-exception v0

    move-object v2, v0

    move-object v0, v3

    .line 4970
    goto :goto_3

    .line 4978
    :cond_4
    if-nez v0, :cond_1

    .line 4982
    throw v2

    .line 4986
    :cond_5
    array-length v2, v1

    .line 4987
    array-length v3, v0

    add-int/2addr v3, v2

    new-array v3, v3, [Lcom/mobipocket/common/library/reader/IndexItem;

    move v4, v6

    .line 4988
    :goto_5
    if-ge v4, v2, :cond_6

    .line 4990
    aget-object v5, v1, v4

    aput-object v5, v3, v4

    .line 4988
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_6
    move v1, v6

    .line 4992
    :goto_6
    array-length v4, v0

    if-ge v1, v4, :cond_7

    .line 4994
    add-int v4, v2, v1

    aget-object v5, v0, v1

    aput-object v5, v3, v4

    .line 4992
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_7
    move-object v0, v3

    .line 4996
    goto :goto_4

    .line 5001
    :cond_8
    if-eqz p3, :cond_9

    .line 5003
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    iget v1, v1, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->base_language:I

    invoke-virtual {p1, v0, v1, p3}, Lcom/mobipocket/common/library/reader/BookManager;->lookup(Ljava/lang/String;ILcom/mobipocket/common/library/reader/BookItem;)[Lcom/mobipocket/common/library/reader/IndexItem;

    move-result-object v0

    goto :goto_4

    .line 5007
    :cond_9
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    iget v1, v1, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->base_language:I

    invoke-virtual {p1, v0, v1}, Lcom/mobipocket/common/library/reader/BookManager;->lookup(Ljava/lang/String;I)[Lcom/mobipocket/common/library/reader/IndexItem;

    move-result-object v0

    goto :goto_4

    :cond_a
    move-object v0, p2

    goto/16 :goto_0
.end method

.method public selectLine(I)Z
    .locals 1
    .parameter "number"

    .prologue
    .line 5215
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->objectSelection:Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->access$4800(Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;)V

    .line 5216
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->wordSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;

    invoke-virtual {v0, p1}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->selectLine(I)Z

    move-result v0

    return v0
.end method

.method public selectNext(I)Z
    .locals 2
    .parameter "dir"

    .prologue
    .line 4865
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/DisplayableFrame;->wordSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;

    invoke-virtual {v1, p1}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->selectWord(I)Z

    move-result v0

    .line 4868
    .local v0, result:Z
    return v0
.end method

.method public selectTextBetween(IIII)Z
    .locals 1
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"

    .prologue
    .line 5230
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->objectSelection:Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->access$4800(Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;)V

    .line 5231
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->wordSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->selectTextBetween(IIII)Z

    move-result v0

    return v0
.end method

.method public setSelectionColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 4850
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->wordSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;

    invoke-virtual {v0, p1}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->setSelectionColor(I)V

    .line 4851
    return-void
.end method

.method public start()Z
    .locals 1

    .prologue
    .line 4826
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->objectSelection:Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->access$4800(Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;)V

    .line 4827
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->objectSelection:Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->access$6000(Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;)V

    .line 4828
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->wordSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->enterWordSelectionMode()Z

    move-result v0

    return v0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 4836
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->wordSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->isSelectionEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4842
    :goto_0
    return-void

    .line 4840
    :cond_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->wordSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->setSelectionEnabled(Z)V

    .line 4841
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->objectSelection:Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->access$4800(Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;)V

    goto :goto_0
.end method
