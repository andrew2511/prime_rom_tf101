.class public Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;
.super Ljava/lang/Object;
.source "BookViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobipocket/common/library/reader/BookViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ObjectSelection"
.end annotation


# static fields
.field public static final ANNOTATION:I = 0xc

.field public static final BACK_LINK:I = 0x8

.field public static final BOOK_LINK:I = 0x2

.field public static final BUY_LINK:I = 0xb

.field public static final DEFAULT_INDEX_LINK:I = 0x4

.field public static final DETAILS_LINK:I = 0xd

.field public static final EXTERNAL_LINK:I = 0x1

.field public static final IMAGE:I = 0x5

.field public static final IMAGE_LINK:I = 0x3

.field public static final LINK:I = 0x0

.field public static final NAVIGATION_LEFT:I = 0x9

.field public static final NAVIGATION_RIGHT:I = 0xa

.field public static final PHONE_NUMBER:I = 0x7

.field private static final PRESELECT_FIRST:I = -0x66

.field private static final PRESELECT_LAST:I = -0x68

.field private static final SELECT_LEFT_ARROW:I = -0x65

.field private static final SELECT_RIGHT_ARROW:I = -0x67

.field public static final TITLE:I = 0x6

.field public static final UNKNOW:I = -0x1


# instance fields
.field private pSelectedObjectIndex:I

.field final synthetic this$0:Lcom/mobipocket/common/library/reader/BookViewManager;


# direct methods
.method private constructor <init>(Lcom/mobipocket/common/library/reader/BookViewManager;)V
    .locals 1
    .parameter

    .prologue
    .line 3716
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3714
    const/16 v0, -0x66

    iput v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->pSelectedObjectIndex:I

    .line 3716
    return-void
.end method

.method synthetic constructor <init>(Lcom/mobipocket/common/library/reader/BookViewManager;Lcom/mobipocket/common/library/reader/BookViewManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3602
    invoke-direct {p0, p1}, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;-><init>(Lcom/mobipocket/common/library/reader/BookViewManager;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 3602
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->preselectFirstObject()V

    return-void
.end method

.method static synthetic access$5500(Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 3602
    iget v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->pSelectedObjectIndex:I

    return v0
.end method

.method static synthetic access$6000(Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 3602
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->applySelection()V

    return-void
.end method

.method static synthetic access$6300(Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 3602
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->preselectLastObject()V

    return-void
.end method

.method private applySelection()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3768
    iget v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->pSelectedObjectIndex:I

    packed-switch v0, :pswitch_data_0

    .line 3785
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->wordSelection:Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;->stop()V

    .line 3786
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->activeAreaSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;

    iget v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->pSelectedObjectIndex:I

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->selectActiveObjectIndex(I)Z

    .line 3787
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->activeAreaSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->isSelectionEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3788
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->activeAreaSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->setSelectionEnabled(Z)V

    .line 3792
    :cond_0
    :goto_0
    return-void

    .line 3771
    :pswitch_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->activeAreaSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->isSelectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3772
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->activeAreaSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->setSelectionEnabled(Z)V

    goto :goto_0

    .line 3778
    :pswitch_1
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->wordSelection:Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;->stop()V

    .line 3779
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->activeAreaSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->isSelectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3780
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->activeAreaSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->setSelectionEnabled(Z)V

    goto :goto_0

    .line 3768
    :pswitch_data_0
    .packed-switch -0x68
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private doSelection()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/16 v4, -0x65

    const/16 v3, -0x67

    const/4 v2, 0x0

    .line 3730
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/DisplayableFrame;->activeAreaSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->getActiveObjectCount()I

    move-result v0

    .line 3732
    .local v0, count:I
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->objectSelection:Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;

    iget v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->pSelectedObjectIndex:I

    packed-switch v1, :pswitch_data_0

    .line 3763
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 3734
    :pswitch_1
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->tableNavigation:Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;

    invoke-virtual {v1, v2}, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->canMove(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3735
    iput v3, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->pSelectedObjectIndex:I

    .line 3736
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->objectSelection:Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;

    invoke-direct {v1}, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->applySelection()V

    goto :goto_0

    .line 3738
    :cond_1
    if-lez v0, :cond_2

    .line 3739
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->objectSelection:Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;

    const/4 v2, 0x1

    sub-int v2, v0, v2

    iput v2, v1, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->pSelectedObjectIndex:I

    .line 3740
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->objectSelection:Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;

    invoke-direct {v1}, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->applySelection()V

    goto :goto_0

    .line 3742
    :cond_2
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->tableNavigation:Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;

    invoke-virtual {v1, v5}, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->canMove(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3743
    iput v4, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->pSelectedObjectIndex:I

    .line 3744
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->objectSelection:Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;

    invoke-direct {v1}, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->applySelection()V

    goto :goto_0

    .line 3749
    :pswitch_2
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->tableNavigation:Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;

    invoke-virtual {v1, v5}, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->canMove(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3750
    iput v4, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->pSelectedObjectIndex:I

    .line 3751
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->objectSelection:Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;

    invoke-direct {v1}, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->applySelection()V

    goto :goto_0

    .line 3753
    :cond_3
    if-lez v0, :cond_4

    .line 3754
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->objectSelection:Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;

    iput v2, v1, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->pSelectedObjectIndex:I

    .line 3755
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->objectSelection:Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;

    invoke-direct {v1}, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->applySelection()V

    goto :goto_0

    .line 3757
    :cond_4
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->tableNavigation:Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;

    invoke-virtual {v1, v2}, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->canMove(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3758
    iput v3, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->pSelectedObjectIndex:I

    .line 3759
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->objectSelection:Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;

    invoke-direct {v1}, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->applySelection()V

    goto :goto_0

    .line 3732
    nop

    :pswitch_data_0
    .packed-switch -0x68
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private internalHasSelection()Z
    .locals 1

    .prologue
    .line 4351
    iget v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->pSelectedObjectIndex:I

    packed-switch v0, :pswitch_data_0

    .line 4357
    :pswitch_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 4354
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 4351
    nop

    :pswitch_data_0
    .packed-switch -0x68
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private preselectFirstObject()V
    .locals 1

    .prologue
    .line 4307
    const/16 v0, -0x66

    iput v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->pSelectedObjectIndex:I

    .line 4308
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->applySelection()V

    .line 4309
    return-void
.end method

.method private preselectLastObject()V
    .locals 1

    .prologue
    .line 4301
    const/16 v0, -0x68

    iput v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->pSelectedObjectIndex:I

    .line 4302
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->applySelection()V

    .line 4303
    return-void
.end method


# virtual methods
.method public getPositions()[Lcom/amazon/system/drawing/LineMetrics;
    .locals 1

    .prologue
    .line 4272
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->activeAreaSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->getSelectableObjetPositions()[Lcom/amazon/system/drawing/LineMetrics;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4260
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->activeAreaSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->getCorrespondingWords()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 3

    .prologue
    .line 4059
    iget v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->pSelectedObjectIndex:I

    if-gez v2, :cond_0

    .line 4060
    iget v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->pSelectedObjectIndex:I

    packed-switch v2, :pswitch_data_0

    .line 4068
    :pswitch_0
    const/4 v2, -0x1

    .line 4075
    :goto_0
    return v2

    .line 4062
    :pswitch_1
    const/16 v2, 0xa

    goto :goto_0

    .line 4065
    :pswitch_2
    const/16 v2, 0x9

    goto :goto_0

    .line 4071
    :cond_0
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/DisplayableFrame;->activeAreaSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->getSelectedActiveArea()Lcom/mobipocket/common/library/reader/ActiveArea;

    move-result-object v0

    .line 4072
    .local v0, aa:Lcom/mobipocket/common/library/reader/ActiveArea;
    const/4 v1, -0x1

    .line 4073
    .local v1, selectedType:I
    if-eqz v0, :cond_1

    .line 4074
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/ActiveArea;->getType()I

    move-result v1

    :cond_1
    move v2, v1

    .line 4075
    goto :goto_0

    .line 4060
    :pswitch_data_0
    .packed-switch -0x67
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public isTableNavigationSelected(I)Z
    .locals 4
    .parameter "direction"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4321
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 4322
    iget v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->pSelectedObjectIndex:I

    const/16 v1, -0x65

    if-ne v0, v1, :cond_0

    move v0, v3

    .line 4328
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 4322
    goto :goto_0

    .line 4324
    :cond_1
    if-nez p1, :cond_3

    .line 4325
    iget v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->pSelectedObjectIndex:I

    const/16 v1, -0x67

    if-ne v0, v1, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v2

    .line 4328
    goto :goto_0
.end method

.method public pageHasObjectSelection()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 4398
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/DisplayableFrame;->activeAreaSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->getActiveObjectCount()I

    move-result v0

    .line 4400
    .local v0, count:I
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->tableNavigation:Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;

    invoke-virtual {v1, v4}, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->canMove(I)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    .line 4410
    :goto_0
    return v1

    .line 4403
    :cond_0
    if-lez v0, :cond_1

    move v1, v3

    .line 4404
    goto :goto_0

    .line 4406
    :cond_1
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->tableNavigation:Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->canMove(I)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v3

    .line 4407
    goto :goto_0

    :cond_2
    move v1, v4

    .line 4410
    goto :goto_0
.end method

.method public performAction()Z
    .locals 13

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v12, 0x1

    .line 4087
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$4000(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/ApplicationCommands;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v2

    .line 4251
    :goto_0
    return v0

    .line 4093
    :cond_0
    iget v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->pSelectedObjectIndex:I

    if-gez v0, :cond_1

    .line 4094
    iget v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->pSelectedObjectIndex:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v2

    .line 4100
    goto :goto_0

    .line 4104
    :cond_1
    :pswitch_1
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->activeAreaSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->getSelectedActiveArea()Lcom/mobipocket/common/library/reader/ActiveArea;

    move-result-object v10

    .line 4106
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 4248
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "performAction: case not handled, report this issue to Mobipocket wit code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v0, v2

    .line 4249
    goto :goto_0

    .line 4109
    :pswitch_3
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->tableNavigation:Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;

    invoke-virtual {v0, v2}, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->move(I)V

    .line 4110
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$4000(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/ApplicationCommands;

    move-result-object v0

    invoke-interface {v0}, Lcom/mobipocket/common/library/reader/ApplicationCommands;->refreshBookScreen()V

    move v0, v12

    .line 4111
    goto :goto_0

    .line 4114
    :pswitch_4
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->tableNavigation:Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;

    invoke-virtual {v0, v3}, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->move(I)V

    .line 4115
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$4000(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/ApplicationCommands;

    move-result-object v0

    invoke-interface {v0}, Lcom/mobipocket/common/library/reader/ApplicationCommands;->refreshBookScreen()V

    move v0, v12

    .line 4116
    goto :goto_0

    .line 4119
    :pswitch_5
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->navigator:Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->cancelPrelayouting()V

    .line 4121
    if-eqz v10, :cond_d

    .line 4123
    invoke-virtual {v10}, Lcom/mobipocket/common/library/reader/ActiveArea;->getPosition()I

    move-result v0

    .line 4125
    :goto_1
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->internalNavigator:Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;

    invoke-virtual {v1, v0, v2, v12}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->gotoPosition(IZZ)V

    .line 4126
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->navigator:Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->access$5100(Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;)V

    .line 4127
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$4000(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/ApplicationCommands;

    move-result-object v0

    invoke-interface {v0}, Lcom/mobipocket/common/library/reader/ApplicationCommands;->refreshBookScreen()V

    move v0, v12

    .line 4128
    goto :goto_0

    .line 4131
    :pswitch_6
    if-eqz v10, :cond_c

    .line 4133
    invoke-virtual {v10}, Lcom/mobipocket/common/library/reader/ActiveArea;->getExtLink()Ljava/lang/String;

    move-result-object v0

    .line 4135
    :goto_2
    if-eqz v0, :cond_5

    .line 4137
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$4000(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/ApplicationCommands;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mobipocket/common/library/reader/ApplicationCommands;->openExternalLink(Ljava/lang/String;)V

    move v0, v12

    .line 4138
    goto/16 :goto_0

    .line 4143
    :pswitch_7
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->activeAreaSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->getImageRecordIndex()I

    move-result v0

    .line 4144
    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    .line 4146
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    invoke-virtual {v1, v0}, Lcom/mobipocket/common/library/reader/bookreader/EBook;->getImageBytes(I)[B

    move v0, v12

    .line 4147
    goto/16 :goto_0

    .line 4152
    :pswitch_8
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentBookItem:Lcom/mobipocket/common/library/reader/BookItem;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    if-eqz v0, :cond_2

    if-nez v10, :cond_3

    :cond_2
    move v0, v2

    .line 4154
    goto/16 :goto_0

    .line 4161
    :cond_3
    invoke-virtual {v10}, Lcom/mobipocket/common/library/reader/ActiveArea;->getKeyIndexName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v10}, Lcom/mobipocket/common/library/reader/ActiveArea;->getKeyIndexName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 4167
    invoke-virtual {v10}, Lcom/mobipocket/common/library/reader/ActiveArea;->getKeyName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v10}, Lcom/mobipocket/common/library/reader/ActiveArea;->getKeyName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move v11, v12

    .line 4177
    :goto_3
    new-instance v0, Lcom/mobipocket/common/library/reader/IndexDescriptor;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->currentBookItem:Lcom/mobipocket/common/library/reader/BookItem;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/BookItem;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/BookViewManager;->currentBookItem:Lcom/mobipocket/common/library/reader/BookItem;

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/BookItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v3, v3, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    iget-object v3, v3, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    iget v3, v3, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->idx_dic:I

    iget-object v4, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v4, v4, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    iget-object v4, v4, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    iget v4, v4, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->dic_lang_in:I

    iget-object v5, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v5, v5, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    iget-object v5, v5, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    iget v5, v5, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->dic_lang_ou:I

    invoke-virtual {v10}, Lcom/mobipocket/common/library/reader/ActiveArea;->getIndexName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10}, Lcom/mobipocket/common/library/reader/ActiveArea;->getKeyIndexName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10}, Lcom/mobipocket/common/library/reader/ActiveArea;->getKeyName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10}, Lcom/mobipocket/common/library/reader/ActiveArea;->getCaption1()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10}, Lcom/mobipocket/common/library/reader/ActiveArea;->getCaption2()Ljava/lang/String;

    move-result-object v10

    invoke-direct/range {v0 .. v11}, Lcom/mobipocket/common/library/reader/IndexDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move v0, v12

    .line 4189
    goto/16 :goto_0

    :cond_4
    move v11, v3

    .line 4173
    goto :goto_3

    .line 4194
    :pswitch_9
    if-eqz v10, :cond_a

    .line 4196
    invoke-virtual {v10}, Lcom/mobipocket/common/library/reader/ActiveArea;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 4198
    :goto_4
    if-eqz v0, :cond_5

    move v0, v12

    .line 4200
    goto/16 :goto_0

    .line 4206
    :pswitch_a
    if-eqz v10, :cond_9

    .line 4208
    invoke-virtual {v10}, Lcom/mobipocket/common/library/reader/ActiveArea;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    .line 4210
    :goto_5
    if-eqz v0, :cond_5

    move v0, v12

    .line 4212
    goto/16 :goto_0

    .line 4217
    :pswitch_b
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->navigator:Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->back()Z

    move v0, v12

    .line 4218
    goto/16 :goto_0

    .line 4221
    :pswitch_c
    if-eqz v10, :cond_8

    .line 4223
    invoke-virtual {v10}, Lcom/mobipocket/common/library/reader/ActiveArea;->getExtLink()Ljava/lang/String;

    move-result-object v0

    .line 4225
    :goto_6
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$4000(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/ApplicationCommands;

    move-result-object v1

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/BookViewManager;->currentBookItem:Lcom/mobipocket/common/library/reader/BookItem;

    invoke-interface {v1, v2, v0}, Lcom/mobipocket/common/library/reader/ApplicationCommands;->buyBook(Lcom/mobipocket/common/library/reader/BookItem;Ljava/lang/String;)V

    move v0, v12

    .line 4226
    goto/16 :goto_0

    .line 4229
    :pswitch_d
    if-eqz v10, :cond_7

    .line 4231
    invoke-virtual {v10}, Lcom/mobipocket/common/library/reader/ActiveArea;->getExtLink()Ljava/lang/String;

    move-result-object v0

    .line 4233
    :goto_7
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$4000(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/ApplicationCommands;

    move-result-object v1

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/BookViewManager;->currentBookItem:Lcom/mobipocket/common/library/reader/BookItem;

    invoke-interface {v1, v2, v0}, Lcom/mobipocket/common/library/reader/ApplicationCommands;->showMarketingBookDetails(Lcom/mobipocket/common/library/reader/BookItem;Ljava/lang/String;)V

    move v0, v12

    .line 4234
    goto/16 :goto_0

    .line 4237
    :pswitch_e
    if-eqz v10, :cond_6

    .line 4239
    invoke-virtual {v10}, Lcom/mobipocket/common/library/reader/ActiveArea;->getAnnotationCallback()Lcom/mobipocket/common/library/reader/AnnotationItem;

    move-result-object v0

    .line 4241
    :goto_8
    if-eqz v0, :cond_5

    .line 4243
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$4000(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/ApplicationCommands;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mobipocket/common/library/reader/ApplicationCommands;->openAnnotation(Lcom/mobipocket/common/library/reader/AnnotationItem;)V

    move v0, v12

    .line 4244
    goto/16 :goto_0

    :cond_5
    move v0, v2

    .line 4251
    goto/16 :goto_0

    :cond_6
    move-object v0, v1

    goto :goto_8

    :cond_7
    move-object v0, v1

    goto :goto_7

    :cond_8
    move-object v0, v1

    goto :goto_6

    :cond_9
    move-object v0, v1

    goto :goto_5

    :cond_a
    move-object v0, v1

    goto :goto_4

    :cond_b
    move v11, v2

    goto/16 :goto_3

    :cond_c
    move-object v0, v1

    goto/16 :goto_2

    :cond_d
    move v0, v2

    goto/16 :goto_1

    .line 4094
    nop

    :pswitch_data_0
    .packed-switch -0x67
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 4106
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_4
        :pswitch_3
        :pswitch_c
        :pswitch_e
        :pswitch_d
    .end packed-switch
.end method

.method public selectAt(IIIZ)I
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/16 v2, -0x65

    const/16 v1, -0x67

    .line 4008
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->tableNavigation:Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;

    invoke-virtual {v0, v4}, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->canMove(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4009
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$4000(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/ApplicationCommands;

    move-result-object v0

    if-nez v0, :cond_3

    .line 4025
    :cond_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->tableNavigation:Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;

    invoke-virtual {v0, v3}, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->canMove(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4027
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$4000(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/ApplicationCommands;

    move-result-object v0

    if-nez v0, :cond_5

    .line 4043
    :cond_1
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->activeAreaSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->getActiveObjectIndexAt(III)I

    move-result v0

    .line 4044
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    if-eqz p4, :cond_2

    .line 4045
    iput v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->pSelectedObjectIndex:I

    .line 4046
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->applySelection()V

    .line 4048
    :cond_2
    :goto_0
    return v0

    .line 4013
    :cond_3
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$4000(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/ApplicationCommands;

    move-result-object v0

    invoke-interface {v0, p1, p2, v4}, Lcom/mobipocket/common/library/reader/ApplicationCommands;->onTableNavigation(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4014
    if-eqz p4, :cond_4

    .line 4015
    iput v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->pSelectedObjectIndex:I

    .line 4016
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->applySelection()V

    .line 4017
    iget v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->pSelectedObjectIndex:I

    goto :goto_0

    :cond_4
    move v0, v2

    .line 4020
    goto :goto_0

    .line 4031
    :cond_5
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$4000(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/ApplicationCommands;

    move-result-object v0

    invoke-interface {v0, p1, p2, v3}, Lcom/mobipocket/common/library/reader/ApplicationCommands;->onTableNavigation(III)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4032
    if-eqz p4, :cond_6

    .line 4033
    iput v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->pSelectedObjectIndex:I

    .line 4034
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->applySelection()V

    .line 4035
    iget v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->pSelectedObjectIndex:I

    goto :goto_0

    :cond_6
    move v0, v1

    .line 4038
    goto :goto_0
.end method

.method public selectFirstObject()Z
    .locals 1

    .prologue
    .line 4368
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->objectSelection:Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;

    invoke-direct {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->preselectFirstObject()V

    .line 4369
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->objectSelection:Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;

    invoke-direct {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->doSelection()V

    .line 4371
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->internalHasSelection()Z

    move-result v0

    return v0
.end method

.method public selectLastObject()Z
    .locals 1

    .prologue
    .line 4382
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->objectSelection:Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;

    invoke-direct {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->preselectLastObject()V

    .line 4383
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->objectSelection:Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;

    invoke-direct {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->doSelection()V

    .line 4385
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->internalHasSelection()Z

    move-result v0

    return v0
.end method

.method public selectNext()Z
    .locals 6

    .prologue
    const/16 v5, -0x67

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3869
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/DisplayableFrame;->activeAreaSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->getActiveObjectCount()I

    move-result v0

    .line 3871
    .local v0, count:I
    iget v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->pSelectedObjectIndex:I

    packed-switch v1, :pswitch_data_0

    .line 3908
    iget v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->pSelectedObjectIndex:I

    sub-int v2, v0, v4

    if-lt v1, v2, :cond_6

    .line 3909
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->tableNavigation:Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;

    invoke-virtual {v1, v3}, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->canMove(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3910
    iput v5, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->pSelectedObjectIndex:I

    .line 3919
    :goto_0
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->applySelection()V

    move v1, v4

    .line 3920
    :goto_1
    return v1

    .line 3874
    :pswitch_0
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->tableNavigation:Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->canMove(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3875
    const/16 v1, -0x65

    iput v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->pSelectedObjectIndex:I

    .line 3876
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->applySelection()V

    move v1, v4

    .line 3877
    goto :goto_1

    .line 3879
    :cond_0
    if-lez v0, :cond_1

    .line 3880
    iput v3, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->pSelectedObjectIndex:I

    .line 3881
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->applySelection()V

    move v1, v4

    .line 3882
    goto :goto_1

    .line 3884
    :cond_1
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->tableNavigation:Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;

    invoke-virtual {v1, v3}, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->canMove(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3885
    iput v5, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->pSelectedObjectIndex:I

    .line 3886
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->applySelection()V

    move v1, v4

    .line 3887
    goto :goto_1

    :cond_2
    move v1, v3

    .line 3889
    goto :goto_1

    :pswitch_1
    move v1, v3

    .line 3892
    goto :goto_1

    .line 3895
    :pswitch_2
    if-lez v0, :cond_3

    .line 3896
    iput v3, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->pSelectedObjectIndex:I

    .line 3904
    :goto_2
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->applySelection()V

    move v1, v4

    .line 3905
    goto :goto_1

    .line 3898
    :cond_3
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->tableNavigation:Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;

    invoke-virtual {v1, v3}, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->canMove(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3899
    iput v5, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->pSelectedObjectIndex:I

    goto :goto_2

    :cond_4
    move v1, v3

    .line 3902
    goto :goto_1

    :cond_5
    move v1, v3

    .line 3913
    goto :goto_1

    .line 3917
    :cond_6
    iget v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->pSelectedObjectIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->pSelectedObjectIndex:I

    goto :goto_0

    .line 3871
    nop

    :pswitch_data_0
    .packed-switch -0x68
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public selectObject(I)Z
    .locals 2
    .parameter "number"

    .prologue
    const/4 v1, 0x0

    .line 4288
    if-gez p1, :cond_0

    move v0, v1

    .line 4296
    :goto_0
    return v0

    .line 4290
    :cond_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->activeAreaSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->getActiveObjectCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    move v0, v1

    .line 4291
    goto :goto_0

    .line 4293
    :cond_1
    iput p1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->pSelectedObjectIndex:I

    .line 4294
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->applySelection()V

    .line 4296
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public selectPrevious()Z
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/16 v4, -0x65

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3937
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/DisplayableFrame;->activeAreaSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->getActiveObjectCount()I

    move-result v0

    .line 3939
    .local v0, count:I
    iget v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->pSelectedObjectIndex:I

    packed-switch v1, :pswitch_data_0

    .line 3980
    iget v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->pSelectedObjectIndex:I

    if-nez v1, :cond_6

    .line 3981
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->tableNavigation:Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;

    invoke-virtual {v1, v5}, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->canMove(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3982
    iput v4, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->pSelectedObjectIndex:I

    .line 3991
    :goto_0
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->applySelection()V

    move v1, v2

    .line 3992
    :goto_1
    return v1

    .line 3943
    :pswitch_0
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->tableNavigation:Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;

    invoke-virtual {v1, v3}, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->canMove(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3945
    const/16 v1, -0x67

    iput v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->pSelectedObjectIndex:I

    .line 3946
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->applySelection()V

    move v1, v2

    .line 3947
    goto :goto_1

    .line 3949
    :cond_0
    if-lez v0, :cond_1

    .line 3951
    sub-int v1, v0, v2

    iput v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->pSelectedObjectIndex:I

    .line 3952
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->applySelection()V

    move v1, v2

    .line 3953
    goto :goto_1

    .line 3955
    :cond_1
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->tableNavigation:Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;

    invoke-virtual {v1, v5}, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->canMove(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3957
    iput v4, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->pSelectedObjectIndex:I

    .line 3958
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->applySelection()V

    move v1, v2

    .line 3959
    goto :goto_1

    :cond_2
    move v1, v3

    .line 3961
    goto :goto_1

    .line 3964
    :pswitch_1
    if-lez v0, :cond_3

    .line 3965
    sub-int v1, v0, v2

    iput v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->pSelectedObjectIndex:I

    .line 3973
    :goto_2
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->applySelection()V

    move v1, v2

    .line 3974
    goto :goto_1

    .line 3967
    :cond_3
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->tableNavigation:Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;

    invoke-virtual {v1, v5}, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->canMove(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3968
    iput v4, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->pSelectedObjectIndex:I

    goto :goto_2

    :cond_4
    move v1, v3

    .line 3971
    goto :goto_1

    :pswitch_2
    move v1, v3

    .line 3977
    goto :goto_1

    :cond_5
    move v1, v3

    .line 3985
    goto :goto_1

    .line 3989
    :cond_6
    iget v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->pSelectedObjectIndex:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->pSelectedObjectIndex:I

    goto :goto_0

    .line 3939
    :pswitch_data_0
    .packed-switch -0x68
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public selectTableNavigation(I)V
    .locals 1
    .parameter "direction"

    .prologue
    .line 4340
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 4341
    const/16 v0, -0x65

    iput v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->pSelectedObjectIndex:I

    .line 4346
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->applySelection()V

    .line 4347
    return-void

    .line 4343
    :cond_1
    if-nez p1, :cond_0

    .line 4344
    const/16 v0, -0x67

    iput v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->pSelectedObjectIndex:I

    goto :goto_0
.end method

.method public start()Z
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/16 v5, -0x65

    const/16 v4, -0x67

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3807
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/DisplayableFrame;->activeAreaSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->getActiveObjectCount()I

    move-result v0

    .line 3808
    .local v0, count:I
    iget v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->pSelectedObjectIndex:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    move v1, v3

    .line 3844
    :goto_0
    return v1

    .line 3810
    :pswitch_1
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->tableNavigation:Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;

    invoke-virtual {v1, v2}, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->canMove(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3811
    iput v4, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->pSelectedObjectIndex:I

    .line 3822
    :goto_1
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->applySelection()V

    move v1, v3

    .line 3824
    goto :goto_0

    .line 3813
    :cond_0
    if-lez v0, :cond_1

    .line 3814
    sub-int v1, v0, v3

    iput v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->pSelectedObjectIndex:I

    goto :goto_1

    .line 3816
    :cond_1
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->tableNavigation:Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;

    invoke-virtual {v1, v6}, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->canMove(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3817
    iput v5, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->pSelectedObjectIndex:I

    goto :goto_1

    :cond_2
    move v1, v2

    .line 3820
    goto :goto_0

    .line 3827
    :pswitch_2
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->tableNavigation:Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;

    invoke-virtual {v1, v6}, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->canMove(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3828
    iput v5, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->pSelectedObjectIndex:I

    .line 3838
    :goto_2
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->applySelection()V

    move v1, v3

    .line 3840
    goto :goto_0

    .line 3829
    :cond_3
    if-lez v0, :cond_4

    .line 3830
    iput v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->pSelectedObjectIndex:I

    goto :goto_2

    .line 3832
    :cond_4
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->tableNavigation:Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;

    invoke-virtual {v1, v2}, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->canMove(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3833
    iput v4, p0, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->pSelectedObjectIndex:I

    goto :goto_2

    :cond_5
    move v1, v2

    .line 3836
    goto :goto_0

    .line 3808
    :pswitch_data_0
    .packed-switch -0x68
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 3853
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->preselectFirstObject()V

    .line 3854
    return-void
.end method
