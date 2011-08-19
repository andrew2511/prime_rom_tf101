.class public Lcom/asus/reader/ui/CheckableLinearLayout;
.super Landroid/widget/LinearLayout;
.source "CheckableLinearLayout.java"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field private final mCheckDrawable:Landroid/graphics/drawable/Drawable;

.field private mCheckedTextView:Landroid/widget/CheckedTextView;

.field private mIsChecked:Z

.field private final mRadioDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/4 v0, 0x0

    .line 34
    .local v0, typedArray:Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/asus/reader/ui/CheckableLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    new-array v2, v5, [I

    const v3, 0x101021a

    aput v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 36
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 37
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/reader/ui/CheckableLinearLayout;->mCheckDrawable:Landroid/graphics/drawable/Drawable;

    .line 46
    :goto_0
    invoke-virtual {p0}, Lcom/asus/reader/ui/CheckableLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    new-array v2, v5, [I

    const v3, 0x1010219

    aput v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 49
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/reader/ui/CheckableLinearLayout;->mRadioDrawable:Landroid/graphics/drawable/Drawable;

    .line 58
    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 60
    iput-boolean v4, p0, Lcom/asus/reader/ui/CheckableLinearLayout;->mIsChecked:Z

    .line 61
    return-void

    .line 42
    :cond_0
    iput-object v6, p0, Lcom/asus/reader/ui/CheckableLinearLayout;->mCheckDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 54
    :cond_1
    iput-object v6, p0, Lcom/asus/reader/ui/CheckableLinearLayout;->mRadioDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/asus/reader/ui/CheckableLinearLayout;->mIsChecked:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 79
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 82
    iget-object v2, p0, Lcom/asus/reader/ui/CheckableLinearLayout;->mCheckedTextView:Landroid/widget/CheckedTextView;

    if-eqz v2, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/asus/reader/ui/CheckableLinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 86
    .local v1, p:Landroid/view/ViewParent;
    instance-of v2, v1, Landroid/widget/ListView;

    if-eqz v2, :cond_0

    .line 87
    check-cast v1, Landroid/widget/ListView;

    .end local v1           #p:Landroid/view/ViewParent;
    invoke-virtual {v1}, Landroid/widget/ListView;->getChoiceMode()I

    move-result v0

    .line 90
    .local v0, choiceMode:I
    packed-switch v0, :pswitch_data_0

    .line 100
    iget-object v2, p0, Lcom/asus/reader/ui/CheckableLinearLayout;->mCheckedTextView:Landroid/widget/CheckedTextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    .end local v0           #choiceMode:I
    :cond_0
    :goto_0
    return-void

    .line 92
    .restart local v0       #choiceMode:I
    :pswitch_0
    iget-object v2, p0, Lcom/asus/reader/ui/CheckableLinearLayout;->mCheckedTextView:Landroid/widget/CheckedTextView;

    iget-object v3, p0, Lcom/asus/reader/ui/CheckableLinearLayout;->mCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 96
    :pswitch_1
    iget-object v2, p0, Lcom/asus/reader/ui/CheckableLinearLayout;->mCheckedTextView:Landroid/widget/CheckedTextView;

    iget-object v3, p0, Lcom/asus/reader/ui/CheckableLinearLayout;->mRadioDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 114
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 115
    const v0, 0x7f0b007f

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/CheckableLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/asus/reader/ui/CheckableLinearLayout;->mCheckedTextView:Landroid/widget/CheckedTextView;

    .line 116
    return-void
.end method

.method public setChecked(Z)V
    .locals 2
    .parameter "checked"

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/asus/reader/ui/CheckableLinearLayout;->mIsChecked:Z

    .line 126
    iget-object v0, p0, Lcom/asus/reader/ui/CheckableLinearLayout;->mCheckedTextView:Landroid/widget/CheckedTextView;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/asus/reader/ui/CheckableLinearLayout;->mCheckedTextView:Landroid/widget/CheckedTextView;

    iget-boolean v1, p0, Lcom/asus/reader/ui/CheckableLinearLayout;->mIsChecked:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 129
    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/asus/reader/ui/CheckableLinearLayout;->mIsChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/CheckableLinearLayout;->setChecked(Z)V

    .line 138
    return-void

    .line 137
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
