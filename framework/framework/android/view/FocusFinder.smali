.class public Landroid/view/FocusFinder;
.super Ljava/lang/Object;
.source "FocusFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/FocusFinder$SequentialFocusComparator;
    }
.end annotation


# static fields
.field private static tlFocusFinder:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/view/FocusFinder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mBestCandidateRect:Landroid/graphics/Rect;

.field mFocusedRect:Landroid/graphics/Rect;

.field mOtherRect:Landroid/graphics/Rect;

.field mSequentialFocusComparator:Landroid/view/FocusFinder$SequentialFocusComparator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    new-instance v0, Landroid/view/FocusFinder$1;

    invoke-direct {v0}, Landroid/view/FocusFinder$1;-><init>()V

    sput-object v0, Landroid/view/FocusFinder;->tlFocusFinder:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/FocusFinder;->mFocusedRect:Landroid/graphics/Rect;

    .line 47
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    .line 48
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    .line 49
    new-instance v0, Landroid/view/FocusFinder$SequentialFocusComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/FocusFinder$SequentialFocusComparator;-><init>(Landroid/view/FocusFinder$1;)V

    iput-object v0, p0, Landroid/view/FocusFinder;->mSequentialFocusComparator:Landroid/view/FocusFinder$SequentialFocusComparator;

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/FocusFinder$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/view/FocusFinder;-><init>()V

    return-void
.end method

.method private findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;
    .registers 16
    .parameter "root"
    .parameter "focused"
    .parameter "focusedRect"
    .parameter "direction"

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 114
    invoke-virtual {p1, p4}, Landroid/view/ViewGroup;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 115
    .local v3, focusables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_f

    move-object v7, v10

    .line 193
    .end local p0
    :goto_e
    return-object v7

    .line 120
    .restart local p0
    :cond_f
    const/4 v7, 0x2

    if-eq p4, v7, :cond_14

    if-ne p4, v8, :cond_78

    .line 121
    :cond_14
    if-eqz p2, :cond_1f

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1f

    .line 124
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_1f
    :try_start_1f
    iget-object v7, p0, Landroid/view/FocusFinder;->mSequentialFocusComparator:Landroid/view/FocusFinder$SequentialFocusComparator;

    invoke-virtual {v7, p1}, Landroid/view/FocusFinder$SequentialFocusComparator;->setRoot(Landroid/view/ViewGroup;)V

    .line 130
    iget-object v7, p0, Landroid/view/FocusFinder;->mSequentialFocusComparator:Landroid/view/FocusFinder$SequentialFocusComparator;

    invoke-static {v3, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_37

    .line 132
    iget-object v7, p0, Landroid/view/FocusFinder;->mSequentialFocusComparator:Landroid/view/FocusFinder$SequentialFocusComparator;

    invoke-virtual {v7}, Landroid/view/FocusFinder$SequentialFocusComparator;->recycle()V

    .line 135
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 136
    .local v1, count:I
    packed-switch p4, :pswitch_data_e8

    move-object v7, v10

    .line 155
    goto :goto_e

    .line 132
    .end local v1           #count:I
    :catchall_37
    move-exception v7

    iget-object v8, p0, Landroid/view/FocusFinder;->mSequentialFocusComparator:Landroid/view/FocusFinder$SequentialFocusComparator;

    invoke-virtual {v8}, Landroid/view/FocusFinder$SequentialFocusComparator;->recycle()V

    throw v7

    .line 138
    .restart local v1       #count:I
    :pswitch_3e
    if-eqz p2, :cond_54

    .line 139
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v6

    .line 140
    .local v6, position:I
    if-ltz v6, :cond_54

    add-int/lit8 v7, v6, 0x1

    if-ge v7, v1, :cond_54

    .line 141
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/View;

    move-object v7, p0

    goto :goto_e

    .line 144
    .end local v6           #position:I
    .restart local p0
    :cond_54
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/View;

    move-object v7, p0

    goto :goto_e

    .line 147
    .restart local p0
    :pswitch_5c
    if-eqz p2, :cond_6e

    .line 148
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 149
    .restart local v6       #position:I
    if-lez v6, :cond_6e

    .line 150
    sub-int v7, v6, v8

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/View;

    move-object v7, p0

    goto :goto_e

    .line 153
    .end local v6           #position:I
    .restart local p0
    :cond_6e
    sub-int v7, v1, v8

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/View;

    move-object v7, p0

    goto :goto_e

    .line 160
    .end local v1           #count:I
    .restart local p0
    :cond_78
    iget-object v7, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    invoke-virtual {v7, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 161
    sparse-switch p4, :sswitch_data_f0

    .line 175
    :goto_80
    const/4 v0, 0x0

    .line 177
    .local v0, closest:Landroid/view/View;
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 178
    .local v5, numFocusables:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_86
    if-ge v4, v5, :cond_e4

    .line 179
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 182
    .local v2, focusable:Landroid/view/View;
    if-eq v2, p2, :cond_92

    if-ne v2, p1, :cond_c7

    .line 178
    :cond_92
    :goto_92
    add-int/lit8 v4, v4, 0x1

    goto :goto_86

    .line 163
    .end local v0           #closest:Landroid/view/View;
    .end local v2           #focusable:Landroid/view/View;
    .end local v4           #i:I
    .end local v5           #numFocusables:I
    :sswitch_95
    iget-object v7, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_80

    .line 166
    :sswitch_a1
    iget-object v7, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    neg-int v8, v8

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_80

    .line 169
    :sswitch_ae
    iget-object v7, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v9, v8}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_80

    .line 172
    :sswitch_ba
    iget-object v7, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    neg-int v8, v8

    invoke-virtual {v7, v9, v8}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_80

    .line 185
    .restart local v0       #closest:Landroid/view/View;
    .restart local v2       #focusable:Landroid/view/View;
    .restart local v4       #i:I
    .restart local v5       #numFocusables:I
    :cond_c7
    iget-object v7, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v7}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 186
    iget-object v7, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2, v7}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 188
    iget-object v7, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    iget-object v8, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p4, p3, v7, v8}, Landroid/view/FocusFinder;->isBetterCandidate(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_92

    .line 189
    iget-object v7, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    iget-object v8, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 190
    move-object v0, v2

    goto :goto_92

    .end local v2           #focusable:Landroid/view/View;
    :cond_e4
    move-object v7, v0

    .line 193
    goto/16 :goto_e

    .line 136
    nop

    :pswitch_data_e8
    .packed-switch 0x1
        :pswitch_5c
        :pswitch_3e
    .end packed-switch

    .line 161
    :sswitch_data_f0
    .sparse-switch
        0x11 -> :sswitch_95
        0x21 -> :sswitch_ae
        0x42 -> :sswitch_a1
        0x82 -> :sswitch_ba
    .end sparse-switch
.end method

.method public static getInstance()Landroid/view/FocusFinder;
    .registers 1

    .prologue
    .line 43
    sget-object v0, Landroid/view/FocusFinder;->tlFocusFinder:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/FocusFinder;

    return-object v0
.end method

.method private isTouchCandidate(IILandroid/graphics/Rect;I)Z
    .registers 8
    .parameter "x"
    .parameter "y"
    .parameter "destRect"
    .parameter "direction"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 514
    sparse-switch p4, :sswitch_data_4e

    .line 524
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 516
    :sswitch_d
    iget v0, p3, Landroid/graphics/Rect;->left:I

    if-gt v0, p1, :cond_1b

    iget v0, p3, Landroid/graphics/Rect;->top:I

    if-gt v0, p2, :cond_1b

    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    if-gt p2, v0, :cond_1b

    move v0, v2

    .line 522
    :goto_1a
    return v0

    :cond_1b
    move v0, v1

    .line 516
    goto :goto_1a

    .line 518
    :sswitch_1d
    iget v0, p3, Landroid/graphics/Rect;->left:I

    if-lt v0, p1, :cond_2b

    iget v0, p3, Landroid/graphics/Rect;->top:I

    if-gt v0, p2, :cond_2b

    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    if-gt p2, v0, :cond_2b

    move v0, v2

    goto :goto_1a

    :cond_2b
    move v0, v1

    goto :goto_1a

    .line 520
    :sswitch_2d
    iget v0, p3, Landroid/graphics/Rect;->top:I

    if-gt v0, p2, :cond_3b

    iget v0, p3, Landroid/graphics/Rect;->left:I

    if-gt v0, p1, :cond_3b

    iget v0, p3, Landroid/graphics/Rect;->right:I

    if-gt p1, v0, :cond_3b

    move v0, v2

    goto :goto_1a

    :cond_3b
    move v0, v1

    goto :goto_1a

    .line 522
    :sswitch_3d
    iget v0, p3, Landroid/graphics/Rect;->top:I

    if-lt v0, p2, :cond_4b

    iget v0, p3, Landroid/graphics/Rect;->left:I

    if-gt v0, p1, :cond_4b

    iget v0, p3, Landroid/graphics/Rect;->right:I

    if-gt p1, v0, :cond_4b

    move v0, v2

    goto :goto_1a

    :cond_4b
    move v0, v1

    goto :goto_1a

    .line 514
    nop

    :sswitch_data_4e
    .sparse-switch
        0x11 -> :sswitch_d
        0x21 -> :sswitch_2d
        0x42 -> :sswitch_1d
        0x82 -> :sswitch_3d
    .end sparse-switch
.end method

.method static majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 5
    .parameter "direction"
    .parameter "source"
    .parameter "dest"

    .prologue
    .line 359
    const/4 v0, 0x0

    invoke-static {p0, p1, p2}, Landroid/view/FocusFinder;->majorAxisDistanceRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method static majorAxisDistanceRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 5
    .parameter "direction"
    .parameter "source"
    .parameter "dest"

    .prologue
    .line 363
    sparse-switch p0, :sswitch_data_24

    .line 373
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 365
    :sswitch_b
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    .line 371
    :goto_10
    return v0

    .line 367
    :sswitch_11
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    goto :goto_10

    .line 369
    :sswitch_17
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    goto :goto_10

    .line 371
    :sswitch_1d
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    goto :goto_10

    .line 363
    nop

    :sswitch_data_24
    .sparse-switch
        0x11 -> :sswitch_b
        0x21 -> :sswitch_17
        0x42 -> :sswitch_11
        0x82 -> :sswitch_1d
    .end sparse-switch
.end method

.method static majorAxisDistanceToFarEdge(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 5
    .parameter "direction"
    .parameter "source"
    .parameter "dest"

    .prologue
    .line 384
    const/4 v0, 0x1

    invoke-static {p0, p1, p2}, Landroid/view/FocusFinder;->majorAxisDistanceToFarEdgeRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method static majorAxisDistanceToFarEdgeRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 5
    .parameter "direction"
    .parameter "source"
    .parameter "dest"

    .prologue
    .line 388
    sparse-switch p0, :sswitch_data_24

    .line 398
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 390
    :sswitch_b
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    .line 396
    :goto_10
    return v0

    .line 392
    :sswitch_11
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    goto :goto_10

    .line 394
    :sswitch_17
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    goto :goto_10

    .line 396
    :sswitch_1d
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    goto :goto_10

    .line 388
    nop

    :sswitch_data_24
    .sparse-switch
        0x11 -> :sswitch_b
        0x21 -> :sswitch_17
        0x42 -> :sswitch_11
        0x82 -> :sswitch_1d
    .end sparse-switch
.end method

.method static minorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 6
    .parameter "direction"
    .parameter "source"
    .parameter "dest"

    .prologue
    .line 411
    sparse-switch p0, :sswitch_data_3c

    .line 425
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 415
    :sswitch_b
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 421
    :goto_22
    return v0

    :sswitch_23
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    goto :goto_22

    .line 411
    nop

    :sswitch_data_3c
    .sparse-switch
        0x11 -> :sswitch_b
        0x21 -> :sswitch_23
        0x42 -> :sswitch_b
        0x82 -> :sswitch_23
    .end sparse-switch
.end method


# virtual methods
.method beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 11
    .parameter "direction"
    .parameter "source"
    .parameter "rect1"
    .parameter "rect2"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 246
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/FocusFinder;->beamsOverlap(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    .line 247
    .local v0, rect1InSrcBeam:Z
    invoke-virtual {p0, p1, p2, p4}, Landroid/view/FocusFinder;->beamsOverlap(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    .line 250
    .local v1, rect2InSrcBeam:Z
    if-nez v1, :cond_e

    if-nez v0, :cond_10

    :cond_e
    move v2, v5

    .line 273
    :goto_f
    return v2

    .line 260
    :cond_10
    invoke-virtual {p0, p1, p2, p4}, Landroid/view/FocusFinder;->isToDirectionOf(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_18

    move v2, v4

    .line 261
    goto :goto_f

    .line 265
    :cond_18
    const/16 v2, 0x11

    if-eq p1, v2, :cond_20

    const/16 v2, 0x42

    if-ne p1, v2, :cond_22

    :cond_20
    move v2, v4

    .line 266
    goto :goto_f

    .line 273
    :cond_22
    invoke-static {p1, p2, p3}, Landroid/view/FocusFinder;->majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v2

    invoke-static {p1, p2, p4}, Landroid/view/FocusFinder;->majorAxisDistanceToFarEdge(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v3

    if-ge v2, v3, :cond_2e

    move v2, v4

    goto :goto_f

    :cond_2e
    move v2, v5

    goto :goto_f
.end method

.method beamsOverlap(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 8
    .parameter "direction"
    .parameter "rect1"
    .parameter "rect2"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 323
    sparse-switch p1, :sswitch_data_2e

    .line 331
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :sswitch_d
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    if-lt v0, v1, :cond_1b

    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    if-gt v0, v1, :cond_1b

    move v0, v3

    .line 329
    :goto_1a
    return v0

    :cond_1b
    move v0, v2

    .line 326
    goto :goto_1a

    .line 329
    :sswitch_1d
    iget v0, p3, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    if-lt v0, v1, :cond_2b

    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    if-gt v0, v1, :cond_2b

    move v0, v3

    goto :goto_1a

    :cond_2b
    move v0, v2

    goto :goto_1a

    .line 323
    nop

    :sswitch_data_2e
    .sparse-switch
        0x11 -> :sswitch_d
        0x21 -> :sswitch_1d
        0x42 -> :sswitch_d
        0x82 -> :sswitch_1d
    .end sparse-switch
.end method

.method public findNearestTouchable(Landroid/view/ViewGroup;III[I)Landroid/view/View;
    .registers 23
    .parameter "root"
    .parameter "x"
    .parameter "y"
    .parameter "direction"
    .parameter "deltas"

    .prologue
    .line 441
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getTouchables()Ljava/util/ArrayList;

    move-result-object v14

    .line 442
    .local v14, touchables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const v10, 0x7fffffff

    .line 443
    .local v10, minDistance:I
    const/4 v5, 0x0

    .line 445
    .local v5, closest:Landroid/view/View;
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 447
    .local v11, numTouchables:I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    move-object v15, v0

    invoke-static {v15}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/ViewConfiguration;->getScaledEdgeSlop()I

    move-result v8

    .line 449
    .local v8, edgeSlop:I
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 450
    .local v6, closestBounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    move-object v13, v0

    .line 452
    .local v13, touchableBounds:Landroid/graphics/Rect;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_24
    if-ge v9, v11, :cond_9b

    .line 453
    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    .line 456
    .local v12, touchable:Landroid/view/View;
    invoke-virtual {v12, v13}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 458
    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object/from16 v0, p1

    move-object v1, v12

    move-object v2, v13

    move v3, v15

    move/from16 v4, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V

    .line 460
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object v3, v13

    move/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/FocusFinder;->isTouchCandidate(IILandroid/graphics/Rect;I)Z

    move-result v15

    if-nez v15, :cond_4e

    .line 452
    :cond_4b
    :goto_4b
    add-int/lit8 v9, v9, 0x1

    goto :goto_24

    .line 464
    :cond_4e
    const v7, 0x7fffffff

    .line 466
    .local v7, distance:I
    sparse-switch p4, :sswitch_data_9c

    .line 481
    :goto_54
    if-ge v7, v8, :cond_4b

    .line 483
    if-eqz v5, :cond_66

    invoke-virtual {v6, v13}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v15

    if-nez v15, :cond_66

    invoke-virtual {v13, v6}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v15

    if-nez v15, :cond_4b

    if-ge v7, v10, :cond_4b

    .line 486
    :cond_66
    move v10, v7

    .line 487
    move-object v5, v12

    .line 488
    invoke-virtual {v6, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 489
    sparse-switch p4, :sswitch_data_ae

    goto :goto_4b

    .line 491
    :sswitch_6f
    const/4 v15, 0x0

    move v0, v7

    neg-int v0, v0

    move/from16 v16, v0

    aput v16, p5, v15

    goto :goto_4b

    .line 468
    :sswitch_77
    iget v15, v13, Landroid/graphics/Rect;->right:I

    sub-int v15, p2, v15

    add-int/lit8 v7, v15, 0x1

    .line 469
    goto :goto_54

    .line 471
    :sswitch_7e
    iget v7, v13, Landroid/graphics/Rect;->left:I

    .line 472
    goto :goto_54

    .line 474
    :sswitch_81
    iget v15, v13, Landroid/graphics/Rect;->bottom:I

    sub-int v15, p3, v15

    add-int/lit8 v7, v15, 0x1

    .line 475
    goto :goto_54

    .line 477
    :sswitch_88
    iget v7, v13, Landroid/graphics/Rect;->top:I

    goto :goto_54

    .line 494
    :sswitch_8b
    const/4 v15, 0x0

    aput v7, p5, v15

    goto :goto_4b

    .line 497
    :sswitch_8f
    const/4 v15, 0x1

    move v0, v7

    neg-int v0, v0

    move/from16 v16, v0

    aput v16, p5, v15

    goto :goto_4b

    .line 500
    :sswitch_97
    const/4 v15, 0x1

    aput v7, p5, v15

    goto :goto_4b

    .line 506
    .end local v7           #distance:I
    .end local v12           #touchable:Landroid/view/View;
    :cond_9b
    return-object v5

    .line 466
    :sswitch_data_9c
    .sparse-switch
        0x11 -> :sswitch_77
        0x21 -> :sswitch_81
        0x42 -> :sswitch_7e
        0x82 -> :sswitch_88
    .end sparse-switch

    .line 489
    :sswitch_data_ae
    .sparse-switch
        0x11 -> :sswitch_6f
        0x21 -> :sswitch_8f
        0x42 -> :sswitch_8b
        0x82 -> :sswitch_97
    .end sparse-switch
.end method

.method public final findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    .registers 11
    .parameter "root"
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 64
    if-eqz p2, :cond_2d

    .line 66
    invoke-virtual {p2, p1, p3}, Landroid/view/View;->findUserSetNextFocus(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 67
    .local v4, userSetNextFocus:Landroid/view/View;
    if-eqz v4, :cond_1c

    invoke-virtual {v4}, Landroid/view/View;->isFocusable()Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-virtual {v4}, Landroid/view/View;->isInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-virtual {v4}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_1c

    :cond_1a
    move-object v5, v4

    .line 98
    .end local v4           #userSetNextFocus:Landroid/view/View;
    :goto_1b
    return-object v5

    .line 75
    .restart local v4       #userSetNextFocus:Landroid/view/View;
    :cond_1c
    iget-object v5, p0, Landroid/view/FocusFinder;->mFocusedRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v5}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 76
    iget-object v5, p0, Landroid/view/FocusFinder;->mFocusedRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, v5}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 98
    .end local v4           #userSetNextFocus:Landroid/view/View;
    :goto_26
    iget-object v5, p0, Landroid/view/FocusFinder;->mFocusedRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2, v5, p3}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v5

    goto :goto_1b

    .line 79
    :cond_2d
    sparse-switch p3, :sswitch_data_5a

    goto :goto_26

    .line 91
    :sswitch_31
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    add-int v0, v5, v6

    .line 92
    .local v0, rootBottom:I
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    add-int v2, v5, v6

    .line 93
    .local v2, rootRight:I
    iget-object v5, p0, Landroid/view/FocusFinder;->mFocusedRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v2, v0, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_26

    .line 83
    .end local v0           #rootBottom:I
    .end local v2           #rootRight:I
    :sswitch_4b
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v3

    .line 84
    .local v3, rootTop:I
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    .line 85
    .local v1, rootLeft:I
    iget-object v5, p0, Landroid/view/FocusFinder;->mFocusedRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v1, v3, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_26

    .line 79
    nop

    :sswitch_data_5a
    .sparse-switch
        0x1 -> :sswitch_31
        0x2 -> :sswitch_4b
        0x11 -> :sswitch_31
        0x21 -> :sswitch_31
        0x42 -> :sswitch_4b
        0x82 -> :sswitch_4b
    .end sparse-switch
.end method

.method public findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;
    .registers 5
    .parameter "root"
    .parameter "focusedRect"
    .parameter "direction"

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getWeightedDistanceFor(II)I
    .registers 5
    .parameter "majorAxisDistance"
    .parameter "minorAxisDistance"

    .prologue
    .line 283
    mul-int/lit8 v0, p1, 0xd

    mul-int/2addr v0, p1

    mul-int v1, p2, p2

    add-int/2addr v0, v1

    return v0
.end method

.method isBetterCandidate(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 10
    .parameter "direction"
    .parameter "source"
    .parameter "rect1"
    .parameter "rect2"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 210
    invoke-virtual {p0, p2, p3, p1}, Landroid/view/FocusFinder;->isCandidate(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v3

    .line 231
    :goto_9
    return v0

    .line 216
    :cond_a
    invoke-virtual {p0, p2, p4, p1}, Landroid/view/FocusFinder;->isCandidate(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    move-result v0

    if-nez v0, :cond_12

    move v0, v4

    .line 217
    goto :goto_9

    .line 221
    :cond_12
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/FocusFinder;->beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_1a

    move v0, v4

    .line 222
    goto :goto_9

    .line 226
    :cond_1a
    invoke-virtual {p0, p1, p2, p4, p3}, Landroid/view/FocusFinder;->beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_22

    move v0, v3

    .line 227
    goto :goto_9

    .line 231
    :cond_22
    invoke-static {p1, p2, p3}, Landroid/view/FocusFinder;->majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    invoke-static {p1, p2, p3}, Landroid/view/FocusFinder;->minorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/FocusFinder;->getWeightedDistanceFor(II)I

    move-result v0

    invoke-static {p1, p2, p4}, Landroid/view/FocusFinder;->majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v1

    invoke-static {p1, p2, p4}, Landroid/view/FocusFinder;->minorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/view/FocusFinder;->getWeightedDistanceFor(II)I

    move-result v1

    if-ge v0, v1, :cond_3e

    move v0, v4

    goto :goto_9

    :cond_3e
    move v0, v3

    goto :goto_9
.end method

.method isCandidate(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z
    .registers 8
    .parameter "srcRect"
    .parameter "destRect"
    .parameter "direction"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 296
    sparse-switch p3, :sswitch_data_66

    .line 310
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 298
    :sswitch_d
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    if-gt v0, v1, :cond_19

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    if-lt v0, v1, :cond_21

    :cond_19
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    if-le v0, v1, :cond_21

    move v0, v3

    .line 307
    :goto_20
    return v0

    :cond_21
    move v0, v2

    .line 298
    goto :goto_20

    .line 301
    :sswitch_23
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    if-lt v0, v1, :cond_2f

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    if-gt v0, v1, :cond_37

    :cond_2f
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_37

    move v0, v3

    goto :goto_20

    :cond_37
    move v0, v2

    goto :goto_20

    .line 304
    :sswitch_39
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    if-gt v0, v1, :cond_45

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    if-lt v0, v1, :cond_4d

    :cond_45
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    if-le v0, v1, :cond_4d

    move v0, v3

    goto :goto_20

    :cond_4d
    move v0, v2

    goto :goto_20

    .line 307
    :sswitch_4f
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    if-lt v0, v1, :cond_5b

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    if-gt v0, v1, :cond_63

    :cond_5b
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v1, :cond_63

    move v0, v3

    goto :goto_20

    :cond_63
    move v0, v2

    goto :goto_20

    .line 296
    nop

    :sswitch_data_66
    .sparse-switch
        0x11 -> :sswitch_d
        0x21 -> :sswitch_39
        0x42 -> :sswitch_23
        0x82 -> :sswitch_4f
    .end sparse-switch
.end method

.method isToDirectionOf(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 8
    .parameter "direction"
    .parameter "src"
    .parameter "dest"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 339
    sparse-switch p1, :sswitch_data_36

    .line 349
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 341
    :sswitch_d
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p3, Landroid/graphics/Rect;->right:I

    if-lt v0, v1, :cond_15

    move v0, v3

    .line 347
    :goto_14
    return v0

    :cond_15
    move v0, v2

    .line 341
    goto :goto_14

    .line 343
    :sswitch_17
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p3, Landroid/graphics/Rect;->left:I

    if-gt v0, v1, :cond_1f

    move v0, v3

    goto :goto_14

    :cond_1f
    move v0, v2

    goto :goto_14

    .line 345
    :sswitch_21
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    if-lt v0, v1, :cond_29

    move v0, v3

    goto :goto_14

    :cond_29
    move v0, v2

    goto :goto_14

    .line 347
    :sswitch_2b
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, p3, Landroid/graphics/Rect;->top:I

    if-gt v0, v1, :cond_33

    move v0, v3

    goto :goto_14

    :cond_33
    move v0, v2

    goto :goto_14

    .line 339
    nop

    :sswitch_data_36
    .sparse-switch
        0x11 -> :sswitch_d
        0x21 -> :sswitch_21
        0x42 -> :sswitch_17
        0x82 -> :sswitch_2b
    .end sparse-switch
.end method
