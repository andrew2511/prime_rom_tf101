.class public Lcom/android/inputmethod/latin/CandidateView;
.super Landroid/widget/LinearLayout;
.source "CandidateView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/CandidateView$1;,
        Lcom/android/inputmethod/latin/CandidateView$UiHandler;
    }
.end annotation


# static fields
.field private static final BOLD_SPAN:Landroid/text/style/CharacterStyle;

.field private static final DBG:Z

.field private static final UNDERLINE_SPAN:Landroid/text/style/CharacterStyle;


# instance fields
.field private final mColorNormal:I

.field private final mColorOther:I

.field private final mColorRecommended:I

.field private final mConfigCandidateHighlightFontColorEnabled:Z

.field private final mHandler:Lcom/android/inputmethod/latin/CandidateView$UiHandler;

.field private final mInvertedBackgroundColorSpan:Landroid/text/style/CharacterStyle;

.field private final mInvertedForegroundColorSpan:Landroid/text/style/CharacterStyle;

.field private final mPreviewPopup:Landroid/widget/PopupWindow;

.field private final mPreviewText:Landroid/widget/TextView;

.field private mService:Lcom/android/inputmethod/latin/LatinIME;

.field private mShowingAddToDictionary:Z

.field private mShowingAutoCorrectionInverted:Z

.field private mSuggestions:Lcom/android/inputmethod/latin/SuggestedWords;

.field private final mWords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    sput-object v0, Lcom/android/inputmethod/latin/CandidateView;->BOLD_SPAN:Landroid/text/style/CharacterStyle;

    .line 54
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    sput-object v0, Lcom/android/inputmethod/latin/CandidateView;->UNDERLINE_SPAN:Landroid/text/style/CharacterStyle;

    .line 57
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    sput-boolean v0, Lcom/android/inputmethod/latin/CandidateView;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v10, 0x0

    const/4 v7, -0x2

    const/4 v9, 0x0

    .line 126
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/inputmethod/latin/CandidateView;->mWords:Ljava/util/ArrayList;

    .line 70
    sget-object v6, Lcom/android/inputmethod/latin/SuggestedWords;->EMPTY:Lcom/android/inputmethod/latin/SuggestedWords;

    iput-object v6, p0, Lcom/android/inputmethod/latin/CandidateView;->mSuggestions:Lcom/android/inputmethod/latin/SuggestedWords;

    .line 74
    new-instance v6, Lcom/android/inputmethod/latin/CandidateView$UiHandler;

    invoke-direct {v6, p0, v9}, Lcom/android/inputmethod/latin/CandidateView$UiHandler;-><init>(Lcom/android/inputmethod/latin/CandidateView;Lcom/android/inputmethod/latin/CandidateView$1;)V

    iput-object v6, p0, Lcom/android/inputmethod/latin/CandidateView;->mHandler:Lcom/android/inputmethod/latin/CandidateView$UiHandler;

    .line 128
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 129
    .local v3, res:Landroid/content/res/Resources;
    new-instance v6, Landroid/widget/PopupWindow;

    invoke-direct {v6, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/inputmethod/latin/CandidateView;->mPreviewPopup:Landroid/widget/PopupWindow;

    .line 130
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 131
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f030001

    invoke-virtual {v2, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/inputmethod/latin/CandidateView;->mPreviewText:Landroid/widget/TextView;

    .line 132
    iget-object v6, p0, Lcom/android/inputmethod/latin/CandidateView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v6, v7, v7}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 134
    iget-object v6, p0, Lcom/android/inputmethod/latin/CandidateView;->mPreviewPopup:Landroid/widget/PopupWindow;

    iget-object v7, p0, Lcom/android/inputmethod/latin/CandidateView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 135
    iget-object v6, p0, Lcom/android/inputmethod/latin/CandidateView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v6, v9}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 136
    iget-object v6, p0, Lcom/android/inputmethod/latin/CandidateView;->mPreviewPopup:Landroid/widget/PopupWindow;

    const v7, 0x7f0e0001

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 137
    const v6, 0x7f08000a

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/inputmethod/latin/CandidateView;->mConfigCandidateHighlightFontColorEnabled:Z

    .line 139
    const/high16 v6, 0x7f09

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/android/inputmethod/latin/CandidateView;->mColorNormal:I

    .line 140
    const v6, 0x7f090001

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/android/inputmethod/latin/CandidateView;->mColorRecommended:I

    .line 141
    const v6, 0x7f090002

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/android/inputmethod/latin/CandidateView;->mColorOther:I

    .line 142
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    iget v7, p0, Lcom/android/inputmethod/latin/CandidateView;->mColorNormal:I

    const v8, 0xffffff

    xor-int/2addr v7, v8

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v6, p0, Lcom/android/inputmethod/latin/CandidateView;->mInvertedForegroundColorSpan:Landroid/text/style/CharacterStyle;

    .line 143
    new-instance v6, Landroid/text/style/BackgroundColorSpan;

    iget v7, p0, Lcom/android/inputmethod/latin/CandidateView;->mColorNormal:I

    invoke-direct {v6, v7}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iput-object v6, p0, Lcom/android/inputmethod/latin/CandidateView;->mInvertedBackgroundColorSpan:Landroid/text/style/CharacterStyle;

    .line 145
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v6, 0x10

    if-ge v1, v6, :cond_2

    .line 146
    const/high16 v6, 0x7f03

    invoke-virtual {v2, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 147
    .local v5, v:Landroid/view/View;
    const v6, 0x7f070021

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 148
    .local v4, tv:Landroid/widget/TextView;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 149
    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    if-nez v1, :cond_0

    .line 151
    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 152
    :cond_0
    const v6, 0x7f070020

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 154
    .local v0, divider:Landroid/widget/ImageView;
    if-nez v1, :cond_1

    const/16 v6, 0x8

    :goto_1
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 155
    iget-object v6, p0, Lcom/android/inputmethod/latin/CandidateView;->mWords:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v6, v10

    .line 154
    goto :goto_1

    .line 158
    .end local v0           #divider:Landroid/widget/ImageView;
    .end local v4           #tv:Landroid/widget/TextView;
    .end local v5           #v:Landroid/view/View;
    :cond_2
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CandidateView;->getScrollY()I

    move-result v6

    invoke-virtual {p0, v10, v6}, Lcom/android/inputmethod/latin/CandidateView;->scrollTo(II)V

    .line 159
    return-void
.end method

.method static synthetic access$100(Lcom/android/inputmethod/latin/CandidateView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/inputmethod/latin/CandidateView;->hidePreview()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/inputmethod/latin/CandidateView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/inputmethod/latin/CandidateView;->updateSuggestions()V

    return-void
.end method

.method private addToDictionary(Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "word"

    .prologue
    const/4 v3, 0x0

    .line 328
    iget-object v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/LatinIME;->addWordToDictionary(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CandidateView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c005b

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/android/inputmethod/latin/CandidateView;->showPreview(ILjava/lang/CharSequence;)V

    .line 331
    :cond_0
    return-void
.end method

.method private hidePreview()V
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 301
    return-void
.end method

.method private showPreview(ILjava/lang/CharSequence;)V
    .locals 9
    .parameter "index"
    .parameter "word"

    .prologue
    const/4 v8, 0x0

    .line 304
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 325
    :goto_0
    return-void

    .line 307
    :cond_0
    iget-object v4, p0, Lcom/android/inputmethod/latin/CandidateView;->mPreviewText:Landroid/widget/TextView;

    .line 308
    .local v4, previewText:Landroid/widget/TextView;
    iget v6, p0, Lcom/android/inputmethod/latin/CandidateView;->mColorNormal:I

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 309
    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v4, v6, v7}, Landroid/widget/TextView;->measure(II)V

    .line 312
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/CandidateView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 313
    .local v5, v:Landroid/view/View;
    const/4 v6, 0x2

    new-array v0, v6, [I

    .line 314
    .local v0, offsetInWindow:[I
    invoke-virtual {v5, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 315
    aget v1, v0, v8

    .line 316
    .local v1, posX:I
    const/4 v6, 0x1

    aget v6, v0, v6

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    sub-int v2, v6, v7

    .line 317
    .local v2, posY:I
    iget-object v3, p0, Lcom/android/inputmethod/latin/CandidateView;->mPreviewPopup:Landroid/widget/PopupWindow;

    .line 318
    .local v3, previewPopup:Landroid/widget/PopupWindow;
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 319
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v7

    invoke-virtual {v3, v1, v2, v6, v7}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 323
    :goto_1
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 324
    iget-object v6, p0, Lcom/android/inputmethod/latin/CandidateView;->mHandler:Lcom/android/inputmethod/latin/CandidateView$UiHandler;

    invoke-virtual {v6}, Lcom/android/inputmethod/latin/CandidateView$UiHandler;->postHidePreview()V

    goto :goto_0

    .line 321
    :cond_1
    invoke-virtual {v3, p0, v8, v1, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_1
.end method

.method private updateSuggestions()V
    .locals 23

    .prologue
    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/CandidateView;->mSuggestions:Lcom/android/inputmethod/latin/SuggestedWords;

    move-object v14, v0

    .line 182
    .local v14, suggestions:Lcom/android/inputmethod/latin/SuggestedWords;
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/CandidateView;->clear()V

    .line 183
    invoke-virtual {v14}, Lcom/android/inputmethod/latin/SuggestedWords;->size()I

    move-result v6

    .line 184
    .local v6, count:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v6, :cond_b

    .line 185
    invoke-virtual {v14, v9}, Lcom/android/inputmethod/latin/SuggestedWords;->getWord(I)Ljava/lang/CharSequence;

    move-result-object v17

    .line 186
    .local v17, word:Ljava/lang/CharSequence;
    if-nez v17, :cond_0

    .line 184
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 187
    :cond_0
    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->length()I

    move-result v18

    .line 188
    .local v18, wordLength:I
    iget-object v13, v14, Lcom/android/inputmethod/latin/SuggestedWords;->mSuggestedWordInfoList:Ljava/util/List;

    .line 191
    .local v13, suggestedWordInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/CandidateView;->mWords:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/View;

    .line 192
    .local v16, v:Landroid/view/View;
    const v19, 0x7f070021

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 193
    .local v15, tv:Landroid/widget/TextView;
    const v19, 0x7f070022

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 194
    .local v8, dv:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/CandidateView;->mColorNormal:I

    move/from16 v19, v0

    move-object v0, v15

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 196
    move-object v0, v14

    iget-boolean v0, v0, Lcom/android/inputmethod/latin/SuggestedWords;->mHasMinimalSuggestion:Z

    move/from16 v19, v0

    if-eqz v19, :cond_6

    const/16 v19, 0x1

    move v0, v9

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    move-object v0, v14

    iget-boolean v0, v0, Lcom/android/inputmethod/latin/SuggestedWords;->mTypedWordValid:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    :cond_1
    if-nez v9, :cond_6

    move-object v0, v14

    iget-boolean v0, v0, Lcom/android/inputmethod/latin/SuggestedWords;->mTypedWordValid:Z

    move/from16 v19, v0

    if-eqz v19, :cond_6

    .line 200
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/inputmethod/latin/CandidateView;->mConfigCandidateHighlightFontColorEnabled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_5

    .line 201
    sget-object v12, Lcom/android/inputmethod/latin/CandidateView;->BOLD_SPAN:Landroid/text/style/CharacterStyle;

    .line 202
    .local v12, style:Landroid/text/style/CharacterStyle;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/CandidateView;->mColorRecommended:I

    move/from16 v19, v0

    move-object v0, v15

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 206
    :goto_2
    new-instance v11, Landroid/text/SpannableString;

    move-object v0, v11

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 207
    .local v11, spannedWord:Landroid/text/Spannable;
    const/16 v19, 0x0

    const/16 v20, 0x11

    move-object v0, v11

    move-object v1, v12

    move/from16 v2, v19

    move/from16 v3, v18

    move/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 208
    move-object/from16 v17, v11

    .line 217
    .end local v11           #spannedWord:Landroid/text/Spannable;
    .end local v12           #style:Landroid/text/style/CharacterStyle;
    :cond_3
    :goto_3
    move-object v0, v15

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    const/16 v19, 0x1

    move-object v0, v15

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 220
    if-eqz v13, :cond_a

    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    if-eqz v19, :cond_a

    .line 221
    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;

    .line 222
    .local v10, info:Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;
    invoke-virtual {v10}, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;->isPreviousSuggestedWord()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 223
    invoke-virtual {v15}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v5

    .line 224
    .local v5, color:I
    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x3f00

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v20

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v21

    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v22

    invoke-static/range {v19 .. v22}, Landroid/graphics/Color;->argb(IIII)I

    move-result v19

    move-object v0, v15

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 227
    .end local v5           #color:I
    :cond_4
    invoke-virtual {v10}, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;->getDebugString()Ljava/lang/String;

    move-result-object v7

    .line 228
    .local v7, debugString:Ljava/lang/String;
    sget-boolean v19, Lcom/android/inputmethod/latin/CandidateView;->DBG:Z

    if-eqz v19, :cond_9

    .line 229
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 230
    const/16 v19, 0x8

    move-object v0, v8

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 241
    .end local v7           #debugString:Ljava/lang/String;
    .end local v10           #info:Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/CandidateView;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 204
    :cond_5
    sget-object v12, Lcom/android/inputmethod/latin/CandidateView;->UNDERLINE_SPAN:Landroid/text/style/CharacterStyle;

    .restart local v12       #style:Landroid/text/style/CharacterStyle;
    goto/16 :goto_2

    .line 209
    .end local v12           #style:Landroid/text/style/CharacterStyle;
    :cond_6
    if-nez v9, :cond_7

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    const/16 v19, 0x1

    move v0, v6

    move/from16 v1, v19

    if-le v0, v1, :cond_3

    .line 214
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/inputmethod/latin/CandidateView;->mConfigCandidateHighlightFontColorEnabled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3

    .line 215
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/CandidateView;->mColorOther:I

    move/from16 v19, v0

    move-object v0, v15

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3

    .line 232
    .restart local v7       #debugString:Ljava/lang/String;
    .restart local v10       #info:Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;
    :cond_8
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    const/16 v19, 0x0

    move-object v0, v8

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 236
    :cond_9
    const/16 v19, 0x8

    move-object v0, v8

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 239
    .end local v7           #debugString:Ljava/lang/String;
    .end local v10           #info:Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;
    :cond_a
    const/16 v19, 0x8

    move-object v0, v8

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 244
    .end local v8           #dv:Landroid/widget/TextView;
    .end local v13           #suggestedWordInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;>;"
    .end local v15           #tv:Landroid/widget/TextView;
    .end local v16           #v:Landroid/view/View;
    .end local v17           #word:Ljava/lang/CharSequence;
    .end local v18           #wordLength:I
    :cond_b
    const/16 v19, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/CandidateView;->getScrollY()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/inputmethod/latin/CandidateView;->scrollTo(II)V

    .line 245
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/CandidateView;->requestLayout()V

    .line 246
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 294
    iput-boolean v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mShowingAddToDictionary:Z

    .line 295
    iput-boolean v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mShowingAutoCorrectionInverted:Z

    .line 296
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CandidateView;->removeAllViews()V

    .line 297
    return-void
.end method

.method public dismissAddToDictionaryHint()Z
    .locals 1

    .prologue
    .line 284
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mShowingAddToDictionary:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 286
    :goto_0
    return v0

    .line 285
    :cond_0
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CandidateView;->clear()V

    .line 286
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getSuggestions()Lcom/android/inputmethod/latin/SuggestedWords;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mSuggestions:Lcom/android/inputmethod/latin/SuggestedWords;

    return-object v0
.end method

.method public isConfigCandidateHighlightFontColorEnabled()Z
    .locals 1

    .prologue
    .line 265
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mConfigCandidateHighlightFontColorEnabled:Z

    return v0
.end method

.method public isShowingAddToDictionaryHint()Z
    .locals 1

    .prologue
    .line 269
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mShowingAddToDictionary:Z

    return v0
.end method

.method public onAutoCorrectionInverted(Ljava/lang/CharSequence;)V
    .locals 8
    .parameter "autoCorrectedWord"

    .prologue
    const/16 v7, 0x11

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 251
    iget-boolean v3, p0, Lcom/android/inputmethod/latin/CandidateView;->mConfigCandidateHighlightFontColorEnabled:Z

    if-eqz v3, :cond_0

    .line 262
    :goto_0
    return-void

    .line 253
    :cond_0
    iget-object v3, p0, Lcom/android/inputmethod/latin/CandidateView;->mWords:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    const v4, 0x7f070021

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 254
    .local v0, tv:Landroid/widget/TextView;
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 255
    .local v1, word:Landroid/text/Spannable;
    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v2

    .line 256
    .local v2, wordLength:I
    iget-object v3, p0, Lcom/android/inputmethod/latin/CandidateView;->mInvertedBackgroundColorSpan:Landroid/text/style/CharacterStyle;

    invoke-interface {v1, v3, v5, v2, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 258
    iget-object v3, p0, Lcom/android/inputmethod/latin/CandidateView;->mInvertedForegroundColorSpan:Landroid/text/style/CharacterStyle;

    invoke-interface {v1, v3, v5, v2, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 260
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    iput-boolean v6, p0, Lcom/android/inputmethod/latin/CandidateView;->mShowingAutoCorrectionInverted:Z

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 347
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 348
    .local v0, index:I
    iget-object v2, p0, Lcom/android/inputmethod/latin/CandidateView;->mSuggestions:Lcom/android/inputmethod/latin/SuggestedWords;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/SuggestedWords;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 356
    :goto_0
    return-void

    .line 350
    :cond_0
    iget-object v2, p0, Lcom/android/inputmethod/latin/CandidateView;->mSuggestions:Lcom/android/inputmethod/latin/SuggestedWords;

    invoke-virtual {v2, v0}, Lcom/android/inputmethod/latin/SuggestedWords;->getWord(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 351
    .local v1, word:Ljava/lang/CharSequence;
    iget-boolean v2, p0, Lcom/android/inputmethod/latin/CandidateView;->mShowingAddToDictionary:Z

    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    .line 352
    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/CandidateView;->addToDictionary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 354
    :cond_1
    iget-object v2, p0, Lcom/android/inputmethod/latin/CandidateView;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v2, v0, v1}, Lcom/android/inputmethod/latin/LatinIME;->pickSuggestionManually(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 360
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 361
    iget-object v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mHandler:Lcom/android/inputmethod/latin/CandidateView$UiHandler;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/CandidateView$UiHandler;->cancelAllMessages()V

    .line 362
    invoke-direct {p0}, Lcom/android/inputmethod/latin/CandidateView;->hidePreview()V

    .line 363
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .parameter "view"

    .prologue
    const/4 v4, 0x1

    .line 335
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 336
    .local v0, index:I
    iget-object v2, p0, Lcom/android/inputmethod/latin/CandidateView;->mSuggestions:Lcom/android/inputmethod/latin/SuggestedWords;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/SuggestedWords;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    move v2, v4

    .line 342
    :goto_0
    return v2

    .line 338
    :cond_0
    iget-object v2, p0, Lcom/android/inputmethod/latin/CandidateView;->mSuggestions:Lcom/android/inputmethod/latin/SuggestedWords;

    invoke-virtual {v2, v0}, Lcom/android/inputmethod/latin/SuggestedWords;->getWord(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 339
    .local v1, word:Ljava/lang/CharSequence;
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 340
    const/4 v2, 0x0

    goto :goto_0

    .line 341
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/CandidateView;->addToDictionary(Ljava/lang/CharSequence;)V

    move v2, v4

    .line 342
    goto :goto_0
.end method

.method public setService(Lcom/android/inputmethod/latin/LatinIME;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/inputmethod/latin/CandidateView;->mService:Lcom/android/inputmethod/latin/LatinIME;

    .line 167
    return-void
.end method

.method public setSuggestions(Lcom/android/inputmethod/latin/SuggestedWords;)V
    .locals 1
    .parameter "suggestions"

    .prologue
    .line 170
    if-nez p1, :cond_0

    .line 178
    :goto_0
    return-void

    .line 172
    :cond_0
    iput-object p1, p0, Lcom/android/inputmethod/latin/CandidateView;->mSuggestions:Lcom/android/inputmethod/latin/SuggestedWords;

    .line 173
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mShowingAutoCorrectionInverted:Z

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mHandler:Lcom/android/inputmethod/latin/CandidateView$UiHandler;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/CandidateView$UiHandler;->postUpdateSuggestions()V

    goto :goto_0

    .line 176
    :cond_1
    invoke-direct {p0}, Lcom/android/inputmethod/latin/CandidateView;->updateSuggestions()V

    goto :goto_0
.end method

.method public showAddToDictionaryHint(Ljava/lang/CharSequence;)V
    .locals 6
    .parameter "word"

    .prologue
    const/4 v5, 0x1

    .line 273
    new-instance v2, Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    invoke-direct {v2}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;-><init>()V

    invoke-virtual {v2, p1}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->addWord(Ljava/lang/CharSequence;)Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CandidateView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c008e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->addWord(Ljava/lang/CharSequence;)Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    move-result-object v0

    .line 276
    .local v0, builder:Lcom/android/inputmethod/latin/SuggestedWords$Builder;
    invoke-virtual {v0}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->build()Lcom/android/inputmethod/latin/SuggestedWords;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/CandidateView;->setSuggestions(Lcom/android/inputmethod/latin/SuggestedWords;)V

    .line 277
    iput-boolean v5, p0, Lcom/android/inputmethod/latin/CandidateView;->mShowingAddToDictionary:Z

    .line 279
    invoke-virtual {p0, v5}, Lcom/android/inputmethod/latin/CandidateView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f070021

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 280
    .local v1, tv:Landroid/widget/TextView;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 281
    return-void
.end method
