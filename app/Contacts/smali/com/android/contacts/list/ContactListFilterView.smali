.class public Lcom/android/contacts/list/ContactListFilterView;
.super Landroid/widget/LinearLayout;
.source "ContactListFilterView.java"


# instance fields
.field private mActivatedBackground:I

.field private mFilter:Lcom/android/contacts/list/ContactListFilter;

.field private mIcon:Landroid/widget/ImageView;

.field private mIndent:Landroid/view/View;

.field private mLabel:Landroid/widget/TextView;

.field private mSingleAccount:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method private bindView(IIZ)V
    .locals 3
    .parameter "iconResource"
    .parameter "textResource"
    .parameter "dropdown"

    .prologue
    const/16 v2, 0x8

    .line 131
    if-eqz p1, :cond_1

    .line 132
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 138
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 140
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mIndent:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mIndent:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 143
    :cond_0
    return-void

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    if-eqz p3, :cond_2

    const/4 v1, 0x4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method public bindView(Z)V
    .locals 4
    .parameter "dropdown"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 62
    if-eqz p1, :cond_1

    .line 63
    iget v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mActivatedBackground:I

    if-nez v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListFilterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/util/ThemeUtils;->getActivatedBackground(Landroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mActivatedBackground:I

    .line 66
    :cond_0
    iget v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mActivatedBackground:I

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListFilterView;->setBackgroundResource(I)V

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mLabel:Landroid/widget/TextView;

    if-nez v0, :cond_2

    .line 70
    const v0, 0x7f07001f

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListFilterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    .line 71
    const v0, 0x7f070029

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListFilterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mLabel:Landroid/widget/TextView;

    .line 72
    const v0, 0x7f070082

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListFilterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mIndent:Landroid/view/View;

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    if-nez v0, :cond_4

    .line 76
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mLabel:Landroid/widget/TextView;

    const v1, 0x7f0c0008

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 128
    :cond_3
    :goto_0
    return-void

    .line 80
    :cond_4
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    iget v0, v0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 102
    :pswitch_1
    const v0, 0x7f0c018d

    invoke-direct {p0, v2, v0, p1}, Lcom/android/contacts/list/ContactListFilterView;->bindView(IIZ)V

    goto :goto_0

    .line 82
    :pswitch_2
    const v0, 0x7f020068

    const v1, 0x7f0c0188

    invoke-direct {p0, v0, v1, p1}, Lcom/android/contacts/list/ContactListFilterView;->bindView(IIZ)V

    goto :goto_0

    .line 87
    :pswitch_3
    const v0, 0x7f020077

    const v1, 0x7f0c0189

    invoke-direct {p0, v0, v1, p1}, Lcom/android/contacts/list/ContactListFilterView;->bindView(IIZ)V

    goto :goto_0

    .line 92
    :pswitch_4
    const v0, 0x7f020074

    if-eqz p1, :cond_5

    const v1, 0x7f0c018b

    :goto_1
    invoke-direct {p0, v0, v1, p1}, Lcom/android/contacts/list/ContactListFilterView;->bindView(IIZ)V

    goto :goto_0

    :cond_5
    const v1, 0x7f0c018a

    goto :goto_1

    .line 98
    :pswitch_5
    const v0, 0x7f0c018c

    invoke-direct {p0, v2, v0, p1}, Lcom/android/contacts/list/ContactListFilterView;->bindView(IIZ)V

    goto :goto_0

    .line 106
    :pswitch_6
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    iget-object v0, v0, Lcom/android/contacts/list/ContactListFilter;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    .line 108
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilterView;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    iget-object v1, v1, Lcom/android/contacts/list/ContactListFilter;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 112
    :goto_2
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilterView;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    iget-object v1, v1, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    if-eqz p1, :cond_3

    .line 114
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mIndent:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 110
    :cond_6
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200b8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 119
    :pswitch_7
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f02006a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 121
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilterView;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    iget-object v1, v1, Lcom/android/contacts/list/ContactListFilter;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    if-eqz p1, :cond_3

    .line 123
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mIndent:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactListFilterView;->mSingleAccount:Z

    if-eqz v1, :cond_7

    move v1, v3

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_7
    move v1, v2

    goto :goto_3

    .line 80
    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public setContactListFilter(Lcom/android/contacts/list/ContactListFilter;)V
    .locals 0
    .parameter "filter"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/contacts/list/ContactListFilterView;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    .line 51
    return-void
.end method

.method public setSingleAccount(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactListFilterView;->mSingleAccount:Z

    .line 59
    return-void
.end method
