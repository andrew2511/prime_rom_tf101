.class public Lcom/asus/reader/ui/twoButtons;
.super Landroid/widget/RelativeLayout;
.source "twoButtons.java"


# instance fields
.field private mButtonSpace:I

.field private mContext:Landroid/content/Context;

.field private mNegativeButton:Landroid/widget/Button;

.field private mNeutralButton:Landroid/widget/Button;

.field private mPositiveButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 16
    iput-object v0, p0, Lcom/asus/reader/ui/twoButtons;->mPositiveButton:Landroid/widget/Button;

    .line 17
    iput-object v0, p0, Lcom/asus/reader/ui/twoButtons;->mNegativeButton:Landroid/widget/Button;

    .line 18
    iput-object v0, p0, Lcom/asus/reader/ui/twoButtons;->mNeutralButton:Landroid/widget/Button;

    .line 19
    const/16 v0, 0x11

    iput v0, p0, Lcom/asus/reader/ui/twoButtons;->mButtonSpace:I

    .line 23
    iput-object p1, p0, Lcom/asus/reader/ui/twoButtons;->mContext:Landroid/content/Context;

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    iput-object v0, p0, Lcom/asus/reader/ui/twoButtons;->mPositiveButton:Landroid/widget/Button;

    .line 17
    iput-object v0, p0, Lcom/asus/reader/ui/twoButtons;->mNegativeButton:Landroid/widget/Button;

    .line 18
    iput-object v0, p0, Lcom/asus/reader/ui/twoButtons;->mNeutralButton:Landroid/widget/Button;

    .line 19
    const/16 v0, 0x11

    iput v0, p0, Lcom/asus/reader/ui/twoButtons;->mButtonSpace:I

    .line 28
    iput-object p1, p0, Lcom/asus/reader/ui/twoButtons;->mContext:Landroid/content/Context;

    .line 29
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 9
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 53
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, buttonwidth:I
    const/4 v1, 0x0

    .line 58
    .local v1, count:I
    iget-object v4, p0, Lcom/asus/reader/ui/twoButtons;->mPositiveButton:Landroid/widget/Button;

    if-eqz v4, :cond_0

    .line 59
    iget-object v4, p0, Lcom/asus/reader/ui/twoButtons;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->getWidth()I

    move-result v0

    .line 60
    add-int/lit8 v1, v1, 0x1

    .line 63
    :cond_0
    iget-object v4, p0, Lcom/asus/reader/ui/twoButtons;->mNegativeButton:Landroid/widget/Button;

    if-eqz v4, :cond_2

    .line 64
    iget-object v4, p0, Lcom/asus/reader/ui/twoButtons;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->getWidth()I

    move-result v4

    if-le v4, v0, :cond_1

    .line 65
    iget-object v4, p0, Lcom/asus/reader/ui/twoButtons;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->getWidth()I

    move-result v0

    .line 66
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 69
    :cond_2
    iget-object v4, p0, Lcom/asus/reader/ui/twoButtons;->mNeutralButton:Landroid/widget/Button;

    if-eqz v4, :cond_4

    .line 70
    iget-object v4, p0, Lcom/asus/reader/ui/twoButtons;->mNeutralButton:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->getWidth()I

    move-result v4

    if-le v4, v0, :cond_3

    .line 71
    iget-object v4, p0, Lcom/asus/reader/ui/twoButtons;->mNeutralButton:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->getWidth()I

    move-result v0

    .line 72
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 75
    :cond_4
    invoke-virtual {p0}, Lcom/asus/reader/ui/twoButtons;->getWidth()I

    move-result v4

    mul-int v5, v1, v0

    sub-int/2addr v4, v5

    const/4 v5, 0x1

    sub-int v5, v1, v5

    iget v6, p0, Lcom/asus/reader/ui/twoButtons;->mButtonSpace:I

    mul-int/2addr v5, v6

    sub-int/2addr v4, v5

    div-int/lit8 v2, v4, 0x2

    .line 77
    .local v2, margin:I
    iget-object v4, p0, Lcom/asus/reader/ui/twoButtons;->mPositiveButton:Landroid/widget/Button;

    if-eqz v4, :cond_8

    .line 78
    iget-object v4, p0, Lcom/asus/reader/ui/twoButtons;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->getWidth()I

    move-result v4

    sub-int v4, v0, v4

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v3, v4, 0x2d

    .line 79
    .local v3, padding:I
    const/16 v4, 0x2d

    if-eq v3, v4, :cond_5

    .line 80
    iget-object v4, p0, Lcom/asus/reader/ui/twoButtons;->mPositiveButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/asus/reader/ui/twoButtons;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->getPaddingTop()I

    move-result v5

    iget-object v6, p0, Lcom/asus/reader/ui/twoButtons;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v4, v3, v5, v3, v6}, Landroid/widget/Button;->setPadding(IIII)V

    .line 81
    :cond_5
    iget-object v4, p0, Lcom/asus/reader/ui/twoButtons;->mPositiveButton:Landroid/widget/Button;

    const/16 v5, 0xd

    add-int v6, v2, v0

    const/16 v7, 0x41

    invoke-virtual {v4, v2, v5, v6, v7}, Landroid/widget/Button;->layout(IIII)V

    .line 82
    iget-object v4, p0, Lcom/asus/reader/ui/twoButtons;->mPositiveButton:Landroid/widget/Button;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 87
    .end local v3           #padding:I
    :goto_0
    iget-object v4, p0, Lcom/asus/reader/ui/twoButtons;->mNegativeButton:Landroid/widget/Button;

    if-eqz v4, :cond_9

    .line 88
    iget-object v4, p0, Lcom/asus/reader/ui/twoButtons;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->getWidth()I

    move-result v4

    sub-int v4, v0, v4

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v3, v4, 0x2d

    .line 89
    .restart local v3       #padding:I
    const/16 v4, 0x2d

    if-eq v3, v4, :cond_6

    .line 90
    iget-object v4, p0, Lcom/asus/reader/ui/twoButtons;->mNegativeButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/asus/reader/ui/twoButtons;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->getPaddingTop()I

    move-result v5

    iget-object v6, p0, Lcom/asus/reader/ui/twoButtons;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v4, v3, v5, v3, v6}, Landroid/widget/Button;->setPadding(IIII)V

    .line 91
    :cond_6
    iget-object v4, p0, Lcom/asus/reader/ui/twoButtons;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/asus/reader/ui/twoButtons;->getWidth()I

    move-result v5

    sub-int/2addr v5, v2

    sub-int/2addr v5, v0

    const/16 v6, 0xd

    invoke-virtual {p0}, Lcom/asus/reader/ui/twoButtons;->getWidth()I

    move-result v7

    sub-int/2addr v7, v2

    const/16 v8, 0x41

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/Button;->layout(IIII)V

    .line 92
    iget-object v4, p0, Lcom/asus/reader/ui/twoButtons;->mNegativeButton:Landroid/widget/Button;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 97
    .end local v3           #padding:I
    :goto_1
    iget-object v4, p0, Lcom/asus/reader/ui/twoButtons;->mNeutralButton:Landroid/widget/Button;

    if-eqz v4, :cond_a

    .line 98
    iget-object v4, p0, Lcom/asus/reader/ui/twoButtons;->mNeutralButton:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->getWidth()I

    move-result v4

    sub-int v4, v0, v4

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v3, v4, 0x2d

    .line 99
    .restart local v3       #padding:I
    const/16 v4, 0x2d

    if-eq v3, v4, :cond_7

    .line 100
    iget-object v4, p0, Lcom/asus/reader/ui/twoButtons;->mNeutralButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/asus/reader/ui/twoButtons;->mNeutralButton:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->getPaddingTop()I

    move-result v5

    iget-object v6, p0, Lcom/asus/reader/ui/twoButtons;->mNeutralButton:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v4, v3, v5, v3, v6}, Landroid/widget/Button;->setPadding(IIII)V

    .line 101
    :cond_7
    iget-object v4, p0, Lcom/asus/reader/ui/twoButtons;->mNeutralButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/asus/reader/ui/twoButtons;->getWidth()I

    move-result v5

    sub-int/2addr v5, v0

    div-int/lit8 v5, v5, 0x2

    const/16 v6, 0xd

    invoke-virtual {p0}, Lcom/asus/reader/ui/twoButtons;->getWidth()I

    move-result v7

    add-int/2addr v7, v0

    div-int/lit8 v7, v7, 0x2

    const/16 v8, 0x41

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/Button;->layout(IIII)V

    .line 102
    iget-object v4, p0, Lcom/asus/reader/ui/twoButtons;->mNeutralButton:Landroid/widget/Button;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 153
    .end local v3           #padding:I
    :goto_2
    return-void

    .line 84
    :cond_8
    const v4, 0x7f0b00ae

    invoke-virtual {p0, v4}, Lcom/asus/reader/ui/twoButtons;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 94
    :cond_9
    const v4, 0x7f0b00af

    invoke-virtual {p0, v4}, Lcom/asus/reader/ui/twoButtons;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 104
    :cond_a
    const v4, 0x7f0b00b0

    invoke-virtual {p0, v4}, Lcom/asus/reader/ui/twoButtons;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method
