.class public Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;
.super Lcom/google/android/voicesearch/actioneditor/ArrowPopup;
.source "CorrectionPopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/actioneditor/CorrectionPopup$Listener;
    }
.end annotation


# static fields
.field private static final MAX_ALTERNATES:I = 0x3


# instance fields
.field private mButtons:Landroid/widget/LinearLayout;

.field private mDeleteButton:Landroid/widget/ImageButton;

.field private mEditButton:Landroid/widget/ImageButton;

.field private mList:Lcom/google/android/voicesearch/actioneditor/ColumnListView;

.field private mListener:Lcom/google/android/voicesearch/actioneditor/CorrectionPopup$Listener;

.field private mMicButton:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 92
    const v1, 0x7f030006

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 93
    const v0, 0x7f0d0008

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/actioneditor/ColumnListView;

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->mList:Lcom/google/android/voicesearch/actioneditor/ColumnListView;

    .line 94
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->mList:Lcom/google/android/voicesearch/actioneditor/ColumnListView;

    new-instance v1, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup$1;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup$1;-><init>(Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;)V

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/actioneditor/ColumnListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 103
    const v0, 0x7f0d0009

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->mButtons:Landroid/widget/LinearLayout;

    .line 105
    const v0, 0x7f0d000a

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->mEditButton:Landroid/widget/ImageButton;

    .line 106
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->mEditButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup$2;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup$2;-><init>(Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    const v0, 0x7f0d000b

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->mDeleteButton:Landroid/widget/ImageButton;

    .line 115
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->mDeleteButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup$3;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup$3;-><init>(Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    const v0, 0x7f0d000c

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->mMicButton:Landroid/widget/ImageButton;

    .line 124
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->mMicButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup$4;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup$4;-><init>(Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->isHardKeyboardAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->disableKeyboard()V

    .line 137
    :cond_0
    invoke-virtual {p0, v2}, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->setFilterDpad(Z)V

    .line 138
    invoke-virtual {p0, v2}, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->setTypingCancels(Z)V

    .line 139
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;)Lcom/google/android/voicesearch/actioneditor/CorrectionPopup$Listener;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->mListener:Lcom/google/android/voicesearch/actioneditor/CorrectionPopup$Listener;

    return-object v0
.end method

.method public static createAlternatesPopup(Landroid/content/Context;[Ljava/lang/CharSequence;ZI)Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v4, 0x7f0d0006

    .line 242
    new-instance v0, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;

    invoke-direct {v0, p0}, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;-><init>(Landroid/content/Context;)V

    .line 243
    invoke-static {p1, p3}, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->trimAlternates([Ljava/lang/CharSequence;I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 245
    array-length v2, v1

    if-nez v2, :cond_0

    .line 246
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 259
    :goto_0
    return-object v0

    .line 249
    :cond_0
    if-eqz p2, :cond_1

    .line 250
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x7f030004

    invoke-direct {v2, p0, v3, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    move-object v1, v2

    .line 256
    :goto_1
    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 253
    :cond_1
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x7f030005

    invoke-direct {v2, p0, v3, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    move-object v1, v2

    goto :goto_1
.end method

.method private isHardKeyboardAvailable()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 142
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static trimAlternates([Ljava/lang/CharSequence;I)[Ljava/lang/CharSequence;
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 226
    if-gez p1, :cond_0

    .line 227
    const/4 v0, 0x3

    .line 229
    :goto_0
    array-length v1, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 231
    new-array v1, v0, [Ljava/lang/CharSequence;

    .line 232
    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 234
    return-object v1

    :cond_0
    move v0, p1

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 148
    invoke-super {p0}, Lcom/google/android/voicesearch/actioneditor/ArrowPopup;->cancel()V

    .line 149
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->mListener:Lcom/google/android/voicesearch/actioneditor/CorrectionPopup$Listener;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->mListener:Lcom/google/android/voicesearch/actioneditor/CorrectionPopup$Listener;

    invoke-interface {v0, p0}, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup$Listener;->onCancel(Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;)V

    .line 152
    :cond_0
    return-void
.end method

.method public disableDelete()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->mDeleteButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 186
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->updateMinimumWidth()V

    .line 187
    return-void
.end method

.method public disableKeyboard()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->mEditButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 194
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->updateMinimumWidth()V

    .line 195
    return-void
.end method

.method public disableList()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->mButtons:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 202
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->mList:Lcom/google/android/voicesearch/actioneditor/ColumnListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/actioneditor/ColumnListView;->setVisibility(I)V

    .line 204
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->mEditButton:Landroid/widget/ImageButton;

    const v1, 0x7f020038

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 205
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->mMicButton:Landroid/widget/ImageButton;

    const v1, 0x7f02003f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 206
    return-void
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->mList:Lcom/google/android/voicesearch/actioneditor/ColumnListView;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/ColumnListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .parameter

    .prologue
    .line 213
    if-nez p1, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->disableList()V

    .line 219
    :goto_0
    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->mList:Lcom/google/android/voicesearch/actioneditor/ColumnListView;

    invoke-virtual {v0, p1}, Lcom/google/android/voicesearch/actioneditor/ColumnListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public setListener(Lcom/google/android/voicesearch/actioneditor/CorrectionPopup$Listener;)V
    .locals 0
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->mListener:Lcom/google/android/voicesearch/actioneditor/CorrectionPopup$Listener;

    .line 223
    return-void
.end method

.method public updateMinimumWidth()V
    .locals 3

    .prologue
    .line 155
    const/4 v0, 0x0

    .line 156
    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->mDeleteButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 157
    add-int/lit8 v0, v0, 0x1

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->mEditButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 160
    add-int/lit8 v0, v0, 0x1

    .line 162
    :cond_1
    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->mMicButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    .line 163
    add-int/lit8 v0, v0, 0x1

    move v1, v0

    .line 166
    :goto_0
    const v0, 0x7f0d0007

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 168
    const/4 v2, 0x1

    if-gt v1, v2, :cond_2

    .line 169
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    .line 179
    :goto_1
    return-void

    .line 172
    :cond_2
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 173
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    goto :goto_1

    .line 176
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/CorrectionPopup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    goto :goto_1

    :cond_4
    move v1, v0

    goto :goto_0
.end method
