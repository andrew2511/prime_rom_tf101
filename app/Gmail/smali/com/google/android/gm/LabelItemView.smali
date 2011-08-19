.class public Lcom/google/android/gm/LabelItemView;
.super Landroid/widget/RelativeLayout;
.source "LabelItemView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/LabelItemView$DropHandler;
    }
.end annotation


# static fields
.field private static DRAG_STEADY_STATE_BACKGROUND:Landroid/graphics/drawable/Drawable;

.field private static DROPPABLE_HOVER_BACKGROUND:Landroid/graphics/drawable/Drawable;

.field private static NON_DROPPABLE_TARGET_TEXT_COLOR:I

.field private static SHORTCUT_ICON:Landroid/graphics/Bitmap;


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mDropHandler:Lcom/google/android/gm/LabelItemView$DropHandler;

.field private mInitialLabelTextColor:I

.field private mInitialUnreadCountTextColor:I

.field private mLabel:Lcom/google/android/gm/provider/Label;

.field private mLabelTextView:Landroid/widget/TextView;

.field private mUnreadCountTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    return-void
.end method

.method private isDroppableTarget(Landroid/view/DragEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/gm/LabelItemView;->mDropHandler:Lcom/google/android/gm/LabelItemView$DropHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/LabelItemView;->mDropHandler:Lcom/google/android/gm/LabelItemView$DropHandler;

    iget-object v1, p0, Lcom/google/android/gm/LabelItemView;->mLabel:Lcom/google/android/gm/provider/Label;

    invoke-interface {v0, p1, v1}, Lcom/google/android/gm/LabelItemView$DropHandler;->supportsDrag(Landroid/view/DragEvent;Lcom/google/android/gm/provider/Label;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bind(Ljava/lang/String;Lcom/google/android/gm/provider/Label;Lcom/google/android/gm/LabelItemView$DropHandler;)V
    .locals 0
    .parameter "account"
    .parameter "label"
    .parameter "dropHandler"

    .prologue
    .line 92
    iput-object p2, p0, Lcom/google/android/gm/LabelItemView;->mLabel:Lcom/google/android/gm/provider/Label;

    .line 94
    iput-object p3, p0, Lcom/google/android/gm/LabelItemView;->mDropHandler:Lcom/google/android/gm/LabelItemView$DropHandler;

    .line 95
    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 108
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    move v0, v1

    .line 157
    :goto_0
    return v0

    .line 111
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/google/android/gm/LabelItemView;->isDroppableTarget(Landroid/view/DragEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/google/android/gm/LabelItemView;->mLabelTextView:Landroid/widget/TextView;

    sget v1, Lcom/google/android/gm/LabelItemView;->NON_DROPPABLE_TARGET_TEXT_COLOR:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 113
    iget-object v0, p0, Lcom/google/android/gm/LabelItemView;->mUnreadCountTextView:Landroid/widget/TextView;

    sget v1, Lcom/google/android/gm/LabelItemView;->NON_DROPPABLE_TARGET_TEXT_COLOR:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 116
    :cond_1
    sget-object v0, Lcom/google/android/gm/LabelItemView;->DRAG_STEADY_STATE_BACKGROUND:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/google/android/gm/LabelItemView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move v0, v2

    .line 117
    goto :goto_0

    .line 121
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/google/android/gm/LabelItemView;->isDroppableTarget(Landroid/view/DragEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    sget-object v0, Lcom/google/android/gm/LabelItemView;->DROPPABLE_HOVER_BACKGROUND:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/google/android/gm/LabelItemView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move v0, v2

    .line 123
    goto :goto_0

    .line 130
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/google/android/gm/LabelItemView;->isDroppableTarget(Landroid/view/DragEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    sget-object v0, Lcom/google/android/gm/LabelItemView;->DRAG_STEADY_STATE_BACKGROUND:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/google/android/gm/LabelItemView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move v0, v2

    .line 132
    goto :goto_0

    .line 138
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/google/android/gm/LabelItemView;->isDroppableTarget(Landroid/view/DragEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 139
    iget-object v0, p0, Lcom/google/android/gm/LabelItemView;->mLabelTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/google/android/gm/LabelItemView;->mInitialLabelTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 140
    iget-object v0, p0, Lcom/google/android/gm/LabelItemView;->mUnreadCountTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/google/android/gm/LabelItemView;->mInitialUnreadCountTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 143
    :cond_2
    iget-object v0, p0, Lcom/google/android/gm/LabelItemView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/google/android/gm/LabelItemView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move v0, v2

    .line 144
    goto :goto_0

    :pswitch_4
    move v0, v2

    .line 147
    goto :goto_0

    .line 150
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/gm/LabelItemView;->mDropHandler:Lcom/google/android/gm/LabelItemView$DropHandler;

    if-nez v0, :cond_3

    move v0, v1

    .line 151
    goto :goto_0

    .line 154
    :cond_3
    iget-object v0, p0, Lcom/google/android/gm/LabelItemView;->mDropHandler:Lcom/google/android/gm/LabelItemView$DropHandler;

    iget-object v1, p0, Lcom/google/android/gm/LabelItemView;->mLabel:Lcom/google/android/gm/provider/Label;

    invoke-interface {v0, p1, v1}, Lcom/google/android/gm/LabelItemView$DropHandler;->handleDrop(Landroid/view/DragEvent;Lcom/google/android/gm/provider/Label;)V

    move v0, v2

    .line 155
    goto :goto_0

    .line 108
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 72
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 73
    sget-object v1, Lcom/google/android/gm/LabelItemView;->SHORTCUT_ICON:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/google/android/gm/LabelItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 75
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f030001

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/gm/LabelItemView;->SHORTCUT_ICON:Landroid/graphics/Bitmap;

    .line 77
    const v1, 0x7f02006c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/google/android/gm/LabelItemView;->DROPPABLE_HOVER_BACKGROUND:Landroid/graphics/drawable/Drawable;

    .line 79
    const v1, 0x7f02006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/google/android/gm/LabelItemView;->DRAG_STEADY_STATE_BACKGROUND:Landroid/graphics/drawable/Drawable;

    .line 81
    const v1, 0x7f0b0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/google/android/gm/LabelItemView;->NON_DROPPABLE_TARGET_TEXT_COLOR:I

    .line 84
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_0
    const v1, 0x7f0e0010

    invoke-virtual {p0, v1}, Lcom/google/android/gm/LabelItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/gm/LabelItemView;->mLabelTextView:Landroid/widget/TextView;

    .line 85
    const v1, 0x7f0e005d

    invoke-virtual {p0, v1}, Lcom/google/android/gm/LabelItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/gm/LabelItemView;->mUnreadCountTextView:Landroid/widget/TextView;

    .line 86
    invoke-virtual {p0}, Lcom/google/android/gm/LabelItemView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/LabelItemView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 87
    iget-object v1, p0, Lcom/google/android/gm/LabelItemView;->mLabelTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    iput v1, p0, Lcom/google/android/gm/LabelItemView;->mInitialLabelTextColor:I

    .line 88
    iget-object v1, p0, Lcom/google/android/gm/LabelItemView;->mUnreadCountTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    iput v1, p0, Lcom/google/android/gm/LabelItemView;->mInitialUnreadCountTextColor:I

    .line 89
    return-void
.end method
