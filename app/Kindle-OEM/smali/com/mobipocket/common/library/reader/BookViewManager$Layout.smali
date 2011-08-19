.class public Lcom/mobipocket/common/library/reader/BookViewManager$Layout;
.super Ljava/lang/Object;
.source "BookViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobipocket/common/library/reader/BookViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Layout"
.end annotation


# static fields
.field public static final CURRENT_PAGE:I = 0x0

.field public static final NEXT_PAGE:I = 0x1

.field public static final PREVIOUS_PAGE:I = -0x1


# instance fields
.field private enableCoverInBookFlow:Z

.field private pDrawObjectSelection:Z

.field pHyphenationManager:Lcom/mobipocket/common/library/reader/hyphenation/HyphenationManager;

.field final synthetic this$0:Lcom/mobipocket/common/library/reader/BookViewManager;


# direct methods
.method private constructor <init>(Lcom/mobipocket/common/library/reader/BookViewManager;)V
    .locals 1
    .parameter

    .prologue
    .line 2673
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2649
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->pDrawObjectSelection:Z

    .line 2651
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->enableCoverInBookFlow:Z

    .line 2674
    new-instance v0, Lcom/mobipocket/common/library/reader/hyphenation/HyphenationManager;

    invoke-direct {v0}, Lcom/mobipocket/common/library/reader/hyphenation/HyphenationManager;-><init>()V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->pHyphenationManager:Lcom/mobipocket/common/library/reader/hyphenation/HyphenationManager;

    .line 2675
    return-void
.end method

.method synthetic constructor <init>(Lcom/mobipocket/common/library/reader/BookViewManager;Lcom/mobipocket/common/library/reader/BookViewManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2646
    invoke-direct {p0, p1}, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;-><init>(Lcom/mobipocket/common/library/reader/BookViewManager;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/mobipocket/common/library/reader/BookViewManager$Layout;Lcom/mobipocket/common/library/reader/DisplayableFrame;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2646
    invoke-direct {p0, p1}, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->addAnnotationDecoration(Lcom/mobipocket/common/library/reader/DisplayableFrame;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/mobipocket/common/library/reader/BookViewManager$Layout;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2646
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->getHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$6200(Lcom/mobipocket/common/library/reader/BookViewManager$Layout;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2646
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->getWidth()I

    move-result v0

    return v0
.end method

.method static synthetic access$6400(Lcom/mobipocket/common/library/reader/BookViewManager$Layout;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2646
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->updateSettings()V

    return-void
.end method

.method private addAnnotationDecoration(Lcom/mobipocket/common/library/reader/DisplayableFrame;)V
    .locals 14
    .parameter "displayableFrame"

    .prologue
    const/4 v13, 0x2

    .line 2828
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 2829
    .local v6, list:Ljava/util/Vector;
    iget-object v5, p1, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    .line 2830
    .local v5, layoutedFrame:Lcom/mobipocket/common/library/reader/LayoutedFrame;
    iget-object v10, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v10, v10, Lcom/mobipocket/common/library/reader/BookViewManager;->annotations:Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;

    invoke-virtual {v5}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getPageBeginPosition()I

    move-result v11

    invoke-virtual {v5}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getEndPosition()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->getAnnotationsBetween(II)[Lcom/mobipocket/common/library/reader/AnnotationItem;

    move-result-object v8

    .line 2837
    .local v8, pageAnnotations:[Lcom/mobipocket/common/library/reader/AnnotationItem;
    iget-object v10, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v10, v10, Lcom/mobipocket/common/library/reader/BookViewManager;->annotations:Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;

    invoke-virtual {v10}, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->getAll()[Lcom/mobipocket/common/library/reader/AnnotationItem;

    move-result-object v0

    .line 2840
    .local v0, allAnnotations:[Lcom/mobipocket/common/library/reader/AnnotationItem;
    const/4 v1, 0x0

    .line 2843
    .local v1, annotationsIndex:I
    const/4 v7, 0x0

    .line 2845
    .local v7, noteCounter:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v10, v8

    if-ge v4, v10, :cond_5

    .line 2847
    const/4 v9, 0x0

    .line 2848
    .local v9, selectable:Z
    const/4 v3, -0x1

    .line 2849
    .local v3, currentAnnotationNumber:I
    const/4 v2, 0x0

    .line 2851
    .local v2, currentAnnotation:Lcom/mobipocket/common/library/reader/AnnotationItem;
    aget-object v10, v8, v4

    invoke-virtual {v10}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getType()I

    move-result v10

    const/4 v11, 0x4

    if-ne v10, v11, :cond_2

    .line 2853
    aget-object v2, v8, v4

    .line 2892
    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    .line 2893
    new-instance v10, Lcom/mobipocket/common/library/reader/DisplayableAnnotation;

    invoke-direct {v10, v2, v9, v3}, Lcom/mobipocket/common/library/reader/DisplayableAnnotation;-><init>(Lcom/mobipocket/common/library/reader/AnnotationItem;ZI)V

    invoke-virtual {v6, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2845
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2855
    :cond_2
    aget-object v10, v8, v4

    invoke-virtual {v10}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getType()I

    move-result v10

    if-ne v10, v13, :cond_0

    .line 2857
    iget-object v10, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v10}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$5300(Lcom/mobipocket/common/library/reader/BookViewManager;)Z

    move-result v9

    .line 2858
    aget-object v2, v8, v4

    .line 2861
    :goto_2
    array-length v10, v0

    if-ge v1, v10, :cond_0

    .line 2874
    aget-object v10, v0, v1

    invoke-virtual {v10}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getType()I

    move-result v10

    if-ne v10, v13, :cond_3

    .line 2876
    add-int/lit8 v7, v7, 0x1

    .line 2878
    :cond_3
    aget-object v10, v0, v1

    invoke-virtual {v10}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getID()I

    move-result v10

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getID()I

    move-result v11

    if-ne v10, v11, :cond_4

    .line 2881
    move v3, v7

    .line 2885
    add-int/lit8 v1, v1, 0x1

    .line 2886
    goto :goto_1

    .line 2861
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2897
    .end local v2           #currentAnnotation:Lcom/mobipocket/common/library/reader/AnnotationItem;
    .end local v3           #currentAnnotationNumber:I
    .end local v9           #selectable:Z
    :cond_5
    invoke-virtual {v5, v6}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->setDecorationList(Ljava/util/Vector;)V

    .line 2898
    iget-object v10, p1, Lcom/mobipocket/common/library/reader/DisplayableFrame;->wordSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;

    invoke-virtual {v10}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->setObjectPlacementAsDirty()V

    .line 2899
    iget-object v10, p1, Lcom/mobipocket/common/library/reader/DisplayableFrame;->activeAreaSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;

    invoke-virtual {v10}, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->emptyCache()V

    .line 2900
    return-void
.end method

.method private fixSettings()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2790
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "size invalid:width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1300(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1400(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2792
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1300(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 2794
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0, v3}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1302(Lcom/mobipocket/common/library/reader/BookViewManager;I)I

    .line 2796
    :cond_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1400(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v0

    if-gtz v0, :cond_1

    .line 2798
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0, v3}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1402(Lcom/mobipocket/common/library/reader/BookViewManager;I)I

    .line 2800
    :cond_1
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1300(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1500(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    if-gtz v0, :cond_2

    .line 2802
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "size incompatible with margin: width-2*pXMargin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1300(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v1

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v2}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1500(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v2

    shl-int/lit8 v2, v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2803
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1300(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v1

    sub-int/2addr v1, v3

    shr-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1502(Lcom/mobipocket/common/library/reader/BookViewManager;I)I

    .line 2805
    :cond_2
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1400(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1600(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    if-gtz v0, :cond_3

    .line 2807
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "size incompatible with margin: height-2*yMargin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1400(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v1

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v2}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1600(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v2

    shl-int/lit8 v2, v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2808
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1400(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v1

    sub-int/2addr v1, v3

    shr-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1602(Lcom/mobipocket/common/library/reader/BookViewManager;I)I

    .line 2810
    :cond_3
    return-void
.end method

.method private final getHeight()I
    .locals 2

    .prologue
    .line 3196
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1400(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1600(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method

.method private final getWidth()I
    .locals 2

    .prologue
    .line 3186
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1300(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1500(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method

.method private reLayoutCurrentPage()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 2936
    const/4 v0, 0x0

    .line 2937
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1800(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1900(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/parser/EBookParser;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getPageBeginPosition()I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 2939
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->navigator:Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->cancelPrelayouting()V

    .line 2941
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getEndTagAndAttributeStack()Lcom/mobipocket/common/parser/TagAndAttributeStack;

    move-result-object v0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getPageBeginPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/parser/TagAndAttributeStack;->getTagAndAttributeStackAt(I)Lcom/mobipocket/common/parser/TagAndAttributeStack;

    move-result-object v2

    .line 2942
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->internalNavigator:Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2100(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v1

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v3, v3, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getPageBeginPosition()I

    move-result v3

    iget-object v5, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v5, v5, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v5}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getBeginYOffset()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->access$5000(Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;ILcom/mobipocket/common/parser/TagAndAttributeStack;IZI)V

    .line 2943
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->navigator:Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->access$5100(Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;)V

    move v0, v4

    .line 2946
    :cond_0
    return v0
.end method

.method private updateSettings()V
    .locals 11

    .prologue
    const/4 v4, 0x0

    .line 2951
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$5200(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/BookViewSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewSettings;->isDefaultJustified()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    move v9, v0

    .line 2952
    :goto_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$5400(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/amazon/system/drawing/FontFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$5200(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/BookViewSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/BookViewSettings;->getDefaultFontName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v2}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$5200(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/BookViewSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/BookViewSettings;->getDefaultFontSize()I

    move-result v2

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v3}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$5200(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/BookViewSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/BookViewSettings;->isFontAlwaysBold()Z

    move-result v3

    move v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/amazon/system/drawing/FontFactory;->getFont(Ljava/lang/String;IZZZ)Lcom/amazon/system/drawing/Font;

    move-result-object v3

    .line 2953
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    new-instance v1, Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v2}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$5400(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/amazon/system/drawing/FontFactory;

    move-result-object v10

    new-instance v2, Lcom/mobipocket/common/parser/TextProperties;

    iget-object v5, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v5}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$5200(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/BookViewSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mobipocket/common/library/reader/BookViewSettings;->getDefaultTextColor()I

    move-result v5

    const v6, 0xffffff

    iget-object v7, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v7, v7, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    iget-object v7, v7, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    iget v8, v7, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->base_language:I

    move v7, v4

    invoke-direct/range {v2 .. v8}, Lcom/mobipocket/common/parser/TextProperties;-><init>(Lcom/amazon/system/drawing/Font;ZIIII)V

    invoke-direct {v1, v10, v2, v9}, Lcom/mobipocket/common/parser/styles/StyleDescriptor;-><init>(Lcom/amazon/system/drawing/FontFactory;Lcom/mobipocket/common/parser/TextProperties;S)V

    invoke-static {v0, v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1802(Lcom/mobipocket/common/library/reader/BookViewManager;Lcom/mobipocket/common/parser/styles/StyleDescriptor;)Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    .line 2954
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$5200(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/BookViewSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/BookViewSettings;->getDefaultXMargin()I

    move-result v1

    invoke-static {v0, v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1502(Lcom/mobipocket/common/library/reader/BookViewManager;I)I

    .line 2955
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$5200(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/BookViewSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/BookViewSettings;->getDefaultYMargin()I

    move-result v1

    invoke-static {v0, v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1602(Lcom/mobipocket/common/library/reader/BookViewManager;I)I

    .line 2956
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$5200(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/BookViewSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/BookViewSettings;->getDefaultCellPadding()I

    move-result v1

    invoke-static {v0, v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1202(Lcom/mobipocket/common/library/reader/BookViewManager;I)I

    .line 2957
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$5200(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/BookViewSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/BookViewSettings;->getDefaultBGColor()I

    move-result v1

    invoke-static {v0, v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1102(Lcom/mobipocket/common/library/reader/BookViewManager;I)I

    .line 2958
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$5200(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/BookViewSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/BookViewSettings;->getDefaultLineSpacing()I

    move-result v1

    invoke-static {v0, v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1002(Lcom/mobipocket/common/library/reader/BookViewManager;I)I

    .line 2959
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$5200(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/BookViewSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewSettings;->areLinkUnderlined()Z

    move-result v0

    sput-boolean v0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->linkUnderlined:Z

    .line 2960
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$5200(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/BookViewSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewSettings;->getDefaultLinkColor()I

    move-result v0

    sput v0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->linkColor:I

    .line 2961
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->fixSettings()V

    .line 2962
    return-void

    .line 2951
    :cond_0
    const/4 v0, 0x1

    move v9, v0

    goto/16 :goto_0
.end method


# virtual methods
.method public drawPage(Lcom/amazon/system/drawing/Graphics;)Z
    .locals 1
    .parameter "graphics"

    .prologue
    .line 2973
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->drawPage(Lcom/amazon/system/drawing/Graphics;I)Z

    move-result v0

    return v0
.end method

.method public drawPage(Lcom/amazon/system/drawing/Graphics;I)Z
    .locals 10
    .parameter "graphics"
    .parameter "displacement"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 2990
    const/4 v6, 0x0

    .line 2992
    .local v6, success:Z
    packed-switch p2, :pswitch_data_0

    .line 3081
    :cond_0
    :goto_0
    return v6

    .line 2996
    :pswitch_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    if-eqz v0, :cond_1

    .line 2998
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1300(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v2

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1400(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v3

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1100(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v4

    iget-boolean v5, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->pDrawObjectSelection:Z

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/mobipocket/common/library/reader/DisplayableFrame;->drawPage(Lcom/amazon/system/drawing/Graphics;IIIZ)V

    .line 3000
    const/4 v6, 0x1

    .line 3002
    :cond_1
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->tableNavigation:Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;

    invoke-virtual {v0, v8}, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->canMove(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->tableNavigation:Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;

    invoke-virtual {v0, v7}, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->canMove(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3005
    :cond_2
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1100(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/amazon/system/drawing/Graphics;->setColor(I)V

    .line 3006
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1300(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1600(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v1

    invoke-interface {p1, v7, v7, v0, v1}, Lcom/amazon/system/drawing/Graphics;->fillRect(IIII)V

    .line 3007
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1400(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1600(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1300(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v1

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v2}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1600(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v2

    invoke-interface {p1, v7, v0, v1, v2}, Lcom/amazon/system/drawing/Graphics;->fillRect(IIII)V

    .line 3008
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1500(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1400(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v1

    invoke-interface {p1, v7, v7, v0, v1}, Lcom/amazon/system/drawing/Graphics;->fillRect(IIII)V

    .line 3009
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1300(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1500(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1500(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v1

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v2}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1400(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v2

    invoke-interface {p1, v0, v7, v1, v2}, Lcom/amazon/system/drawing/Graphics;->fillRect(IIII)V

    .line 3011
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->tableNavigation:Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;

    invoke-virtual {v0, v8}, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->canMove(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$4000(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/ApplicationCommands;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3013
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->objectSelection:Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->access$5500(Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;)I

    move-result v0

    const/16 v1, -0x65

    if-ne v0, v1, :cond_4

    iget-boolean v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->pDrawObjectSelection:Z

    if-eqz v0, :cond_4

    .line 3016
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$4000(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/ApplicationCommands;

    move-result-object v0

    invoke-interface {v0, p1, v8, v9}, Lcom/mobipocket/common/library/reader/ApplicationCommands;->drawTableNavigation(Lcom/amazon/system/drawing/Graphics;IZ)V

    .line 3026
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->tableNavigation:Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;

    invoke-virtual {v0, v7}, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->canMove(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$4000(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/ApplicationCommands;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3028
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->objectSelection:Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->access$5500(Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;)I

    move-result v0

    const/16 v1, -0x67

    if-ne v0, v1, :cond_5

    iget-boolean v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->pDrawObjectSelection:Z

    if-eqz v0, :cond_5

    .line 3031
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$4000(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/ApplicationCommands;

    move-result-object v0

    invoke-interface {v0, p1, v7, v9}, Lcom/mobipocket/common/library/reader/ApplicationCommands;->drawTableNavigation(Lcom/amazon/system/drawing/Graphics;IZ)V

    goto/16 :goto_0

    .line 3021
    :cond_4
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$4000(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/ApplicationCommands;

    move-result-object v0

    invoke-interface {v0, p1, v8, v7}, Lcom/mobipocket/common/library/reader/ApplicationCommands;->drawTableNavigation(Lcom/amazon/system/drawing/Graphics;IZ)V

    goto :goto_1

    .line 3036
    :cond_5
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$4000(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/ApplicationCommands;

    move-result-object v0

    invoke-interface {v0, p1, v7, v7}, Lcom/mobipocket/common/library/reader/ApplicationCommands;->drawTableNavigation(Lcom/amazon/system/drawing/Graphics;IZ)V

    goto/16 :goto_0

    .line 3046
    :pswitch_1
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$4200(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/util/SingleThreadManager;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$4200(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/util/SingleThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobipocket/common/util/SingleThreadManager;->isTaskLaunched()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3048
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$4200(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/util/SingleThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobipocket/common/util/SingleThreadManager;->waitForLaunchedTaskCompletion()V

    .line 3053
    :cond_6
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2800(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/LayoutedFrame;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3055
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pNextDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1300(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v2

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1400(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v3

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1100(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v4

    iget-boolean v5, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->pDrawObjectSelection:Z

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/mobipocket/common/library/reader/DisplayableFrame;->drawPage(Lcom/amazon/system/drawing/Graphics;IIIZ)V

    .line 3057
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 3063
    :pswitch_2
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$3200(Lcom/mobipocket/common/library/reader/BookViewManager;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 3065
    :try_start_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$3300(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/util/SingleThreadManager;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$3300(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/util/SingleThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobipocket/common/util/SingleThreadManager;->isTaskLaunched()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3067
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$3300(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/util/SingleThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobipocket/common/util/SingleThreadManager;->waitForLaunchedTaskCompletion()V

    .line 3072
    :cond_7
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2900(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/LayoutedFrame;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 3074
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pPreviousDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1300(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v2

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1400(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v3

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1100(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v4

    iget-boolean v5, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->pDrawObjectSelection:Z

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/mobipocket/common/library/reader/DisplayableFrame;->drawPage(Lcom/amazon/system/drawing/Graphics;IIIZ)V

    .line 3076
    const/4 v6, 0x1

    .line 3078
    :cond_8
    monitor-exit v7

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2992
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public enableHighResolutionImages(Z)V
    .locals 1
    .parameter

    .prologue
    .line 3128
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0, p1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1702(Lcom/mobipocket/common/library/reader/BookViewManager;Z)Z

    .line 3129
    return-void
.end method

.method public enablePrelayouting(Lcom/amazon/system/util/Utilities;)V
    .locals 4
    .parameter

    .prologue
    .line 3103
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$3200(Lcom/mobipocket/common/library/reader/BookViewManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3106
    if-eqz p1, :cond_0

    .line 3108
    :try_start_0
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    new-instance v2, Lcom/mobipocket/common/util/SingleThreadManager;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lcom/mobipocket/common/util/SingleThreadManager;-><init>(Lcom/amazon/system/util/Utilities;Ljava/lang/Object;)V

    invoke-static {v1, v2}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$4202(Lcom/mobipocket/common/library/reader/BookViewManager;Lcom/mobipocket/common/util/SingleThreadManager;)Lcom/mobipocket/common/util/SingleThreadManager;

    .line 3109
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    new-instance v2, Lcom/mobipocket/common/util/SingleThreadManager;

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v3}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$3200(Lcom/mobipocket/common/library/reader/BookViewManager;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lcom/mobipocket/common/util/SingleThreadManager;-><init>(Lcom/amazon/system/util/Utilities;Ljava/lang/Object;)V

    invoke-static {v1, v2}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$3302(Lcom/mobipocket/common/library/reader/BookViewManager;Lcom/mobipocket/common/util/SingleThreadManager;)Lcom/mobipocket/common/util/SingleThreadManager;

    .line 3110
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->isPrelayoutEnabled:Z

    .line 3118
    :goto_0
    monitor-exit v0

    .line 3119
    return-void

    .line 3114
    :cond_0
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$4202(Lcom/mobipocket/common/library/reader/BookViewManager;Lcom/mobipocket/common/util/SingleThreadManager;)Lcom/mobipocket/common/util/SingleThreadManager;

    .line 3115
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$3302(Lcom/mobipocket/common/library/reader/BookViewManager;Lcom/mobipocket/common/util/SingleThreadManager;)Lcom/mobipocket/common/util/SingleThreadManager;

    .line 3116
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->isPrelayoutEnabled:Z

    goto :goto_0

    .line 3118
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDefaultFont()Lcom/amazon/system/drawing/Font;
    .locals 1

    .prologue
    .line 3091
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1800(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->getFont()Lcom/amazon/system/drawing/Font;

    move-result-object v0

    return-object v0
.end method

.method public getSettings()Lcom/mobipocket/common/library/reader/BookViewSettings;
    .locals 1

    .prologue
    .line 2818
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$5200(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/BookViewSettings;

    move-result-object v0

    return-object v0
.end method

.method isCoverInBookFlow()Z
    .locals 1

    .prologue
    .line 2693
    iget-boolean v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->enableCoverInBookFlow:Z

    return v0
.end method

.method public removeAllHyphenationEngine()V
    .locals 1

    .prologue
    .line 3176
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->pHyphenationManager:Lcom/mobipocket/common/library/reader/hyphenation/HyphenationManager;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/hyphenation/HyphenationManager;->removeAll()V

    .line 3177
    return-void
.end method

.method public removeHyphenationEngine(I)V
    .locals 1
    .parameter "languageID"

    .prologue
    .line 3167
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->pHyphenationManager:Lcom/mobipocket/common/library/reader/hyphenation/HyphenationManager;

    invoke-virtual {v0, p1}, Lcom/mobipocket/common/library/reader/hyphenation/HyphenationManager;->removeHyphenationEngine(I)V

    .line 3168
    return-void
.end method

.method public setCoverInBookFlow(Z)V
    .locals 0
    .parameter "enableCoverInBookFlow"

    .prologue
    .line 2683
    iput-boolean p1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->enableCoverInBookFlow:Z

    .line 2684
    return-void
.end method

.method public setDefaultParagraphIndentation(I)Z
    .locals 2
    .parameter

    .prologue
    .line 2722
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0, p1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$902(Lcom/mobipocket/common/library/reader/BookViewManager;I)I

    .line 2723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid newParagraphSpacing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2724
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->reLayoutCurrentPage()Z

    move-result v0

    return v0
.end method

.method public setDefaultParagraphSpacing(I)Z
    .locals 2
    .parameter

    .prologue
    .line 2706
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0, p1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$802(Lcom/mobipocket/common/library/reader/BookViewManager;I)I

    .line 2707
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid newParagraphSpacing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2708
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->reLayoutCurrentPage()Z

    move-result v0

    return v0
.end method

.method public setDrawObjectSelectionEnabled(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 3138
    iput-boolean p1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->pDrawObjectSelection:Z

    .line 3139
    return-void
.end method

.method public setHyphenationEngine(ILcom/mobipocket/common/library/reader/hyphenation/HyphenationEngine;)Z
    .locals 1
    .parameter "languageID"
    .parameter "engine"

    .prologue
    .line 3157
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->pHyphenationManager:Lcom/mobipocket/common/library/reader/hyphenation/HyphenationManager;

    invoke-virtual {v0, p1, p2}, Lcom/mobipocket/common/library/reader/hyphenation/HyphenationManager;->setHyphenationEngine(ILcom/mobipocket/common/library/reader/hyphenation/HyphenationEngine;)Z

    move-result v0

    return v0
.end method

.method public setSize(II)Z
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2739
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1300(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1400(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v0

    if-ne v0, p2, :cond_0

    move v0, v4

    .line 2784
    :goto_0
    return v0

    .line 2744
    :cond_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1800(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1900(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/parser/EBookParser;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    if-eqz v0, :cond_7

    move v6, v4

    .line 2746
    :goto_1
    if-eqz v6, :cond_8

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getPageBeginPosition()I

    move-result v0

    move v3, v0

    .line 2747
    :goto_2
    if-eqz v6, :cond_9

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getEndTagAndAttributeStack()Lcom/mobipocket/common/parser/TagAndAttributeStack;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/mobipocket/common/parser/TagAndAttributeStack;->getTagAndAttributeStackAt(I)Lcom/mobipocket/common/parser/TagAndAttributeStack;

    move-result-object v0

    move-object v2, v0

    .line 2748
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setSize] setSize asked... redraw:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2749
    if-eqz v6, :cond_1

    .line 2751
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->navigator:Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->cancelPrelayouting()V

    .line 2753
    :cond_1
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0, p1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1302(Lcom/mobipocket/common/library/reader/BookViewManager;I)I

    .line 2754
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0, p2}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1402(Lcom/mobipocket/common/library/reader/BookViewManager;I)I

    .line 2755
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->fixSettings()V

    .line 2757
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    if-eqz v0, :cond_2

    .line 2759
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getBeginYOffset()I

    move-result v0

    .line 2760
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v5, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v5}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$4900(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/amazon/system/drawing/ImageFactory;

    move-result-object v5

    iget-object v7, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v7}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1300(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v7

    iget-object v8, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v8}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1400(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v8

    invoke-virtual {v1, v5, v7, v8}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->resize(Lcom/amazon/system/drawing/ImageFactory;II)V

    move v5, v0

    .line 2762
    :cond_2
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-boolean v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->isPrelayoutEnabled:Z

    if-eqz v0, :cond_5

    .line 2764
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2800(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/LayoutedFrame;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2766
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2800(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/LayoutedFrame;

    move-result-object v0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$4900(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/amazon/system/drawing/ImageFactory;

    move-result-object v1

    iget-object v7, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v7}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1300(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v7

    iget-object v8, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v8}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1400(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v8

    invoke-virtual {v0, v1, v7, v8}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->resize(Lcom/amazon/system/drawing/ImageFactory;II)V

    .line 2768
    :cond_3
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$3200(Lcom/mobipocket/common/library/reader/BookViewManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2770
    :try_start_0
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2900(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/LayoutedFrame;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 2772
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2900(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/LayoutedFrame;

    move-result-object v1

    iget-object v7, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v7}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$4900(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/amazon/system/drawing/ImageFactory;

    move-result-object v7

    iget-object v8, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v8}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1300(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v8

    iget-object v9, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v9}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1400(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v9

    invoke-virtual {v1, v7, v8, v9}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->resize(Lcom/amazon/system/drawing/ImageFactory;II)V

    .line 2774
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2779
    :cond_5
    if-eqz v6, :cond_6

    .line 2781
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->internalNavigator:Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2100(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v1

    invoke-static/range {v0 .. v5}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->access$5000(Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;ILcom/mobipocket/common/parser/TagAndAttributeStack;IZI)V

    .line 2782
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->navigator:Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->access$5100(Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;)V

    :cond_6
    move v0, v6

    .line 2784
    goto/16 :goto_0

    :cond_7
    move v6, v5

    .line 2744
    goto/16 :goto_1

    :cond_8
    move v3, v5

    .line 2746
    goto/16 :goto_2

    .line 2747
    :cond_9
    const/4 v0, 0x0

    move-object v2, v0

    goto/16 :goto_3

    .line 2774
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public updatePage()V
    .locals 2

    .prologue
    .line 2913
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1800(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1900(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/parser/EBookParser;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getPageBeginPosition()I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_5

    const/4 v0, 0x1

    .line 2915
    :goto_0
    if-eqz v0, :cond_0

    .line 2917
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->navigator:Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->cancelPrelayouting()V

    .line 2919
    :cond_0
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->updateSettings()V

    .line 2920
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pageConstructor:Lcom/mobipocket/common/library/reader/PageConstructor;

    if-eqz v0, :cond_4

    .line 2922
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pageConstructor:Lcom/mobipocket/common/library/reader/PageConstructor;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/PageConstructor;->currentPageSettingsHasChanged()V

    .line 2923
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageTableData:Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;->resetTableData()V

    .line 2924
    :cond_1
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2800(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/LayoutedFrame;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2800(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/LayoutedFrame;

    move-result-object v0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageTableData:Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;->resetTableData()V

    .line 2925
    :cond_2
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2900(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/LayoutedFrame;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2900(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/LayoutedFrame;

    move-result-object v0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageTableData:Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;->resetTableData()V

    .line 2926
    :cond_3
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->reLayoutCurrentPage()Z

    .line 2928
    :cond_4
    return-void

    .line 2913
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method
