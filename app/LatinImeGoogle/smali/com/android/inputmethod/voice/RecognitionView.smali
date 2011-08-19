.class public Lcom/android/inputmethod/voice/RecognitionView;
.super Ljava/lang/Object;
.source "RecognitionView.java"


# instance fields
.field private mButton:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mError:Landroid/graphics/drawable/Drawable;

.field private final mErrorBorder:Landroid/graphics/drawable/Drawable;

.field private mImage:Landroid/widget/ImageView;

.field private mInitializing:Landroid/graphics/drawable/Drawable;

.field private mLanguage:Landroid/widget/TextView;

.field private final mListeningBorder:Landroid/graphics/drawable/Drawable;

.field private final mPopupLayout:Landroid/view/View;

.field private mProgress:Landroid/view/View;

.field private mSoundIndicator:Lcom/android/inputmethod/voice/SoundIndicator;

.field private mState:I

.field private mText:Landroid/widget/TextView;

.field private mUiHandler:Landroid/os/Handler;

.field private mView:Landroid/view/View;

.field private final mWorkingBorder:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V
    .locals 4
    .parameter "context"
    .parameter "clickListener"

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/inputmethod/voice/RecognitionView;->mState:I

    .line 84
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/inputmethod/voice/RecognitionView;->mUiHandler:Landroid/os/Handler;

    .line 86
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 89
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f03000e

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/inputmethod/voice/RecognitionView;->mView:Landroid/view/View;

    .line 91
    iget-object v2, p0, Lcom/android/inputmethod/voice/RecognitionView;->mView:Landroid/view/View;

    const v3, 0x7f070027

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/inputmethod/voice/RecognitionView;->mPopupLayout:Landroid/view/View;

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 96
    .local v1, r:Landroid/content/res/Resources;
    const v2, 0x7f0200c3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/inputmethod/voice/RecognitionView;->mListeningBorder:Landroid/graphics/drawable/Drawable;

    .line 97
    const v2, 0x7f0200c2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/inputmethod/voice/RecognitionView;->mWorkingBorder:Landroid/graphics/drawable/Drawable;

    .line 98
    const v2, 0x7f0200c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/inputmethod/voice/RecognitionView;->mErrorBorder:Landroid/graphics/drawable/Drawable;

    .line 100
    const v2, 0x7f02006d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/inputmethod/voice/RecognitionView;->mInitializing:Landroid/graphics/drawable/Drawable;

    .line 101
    const v2, 0x7f02002f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/inputmethod/voice/RecognitionView;->mError:Landroid/graphics/drawable/Drawable;

    .line 103
    iget-object v2, p0, Lcom/android/inputmethod/voice/RecognitionView;->mView:Landroid/view/View;

    const v3, 0x7f070029

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/inputmethod/voice/RecognitionView;->mImage:Landroid/widget/ImageView;

    .line 104
    iget-object v2, p0, Lcom/android/inputmethod/voice/RecognitionView;->mView:Landroid/view/View;

    const v3, 0x7f07002a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/inputmethod/voice/RecognitionView;->mProgress:Landroid/view/View;

    .line 105
    iget-object v2, p0, Lcom/android/inputmethod/voice/RecognitionView;->mView:Landroid/view/View;

    const v3, 0x7f070028

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/inputmethod/voice/SoundIndicator;

    iput-object v2, p0, Lcom/android/inputmethod/voice/RecognitionView;->mSoundIndicator:Lcom/android/inputmethod/voice/SoundIndicator;

    .line 107
    iget-object v2, p0, Lcom/android/inputmethod/voice/RecognitionView;->mView:Landroid/view/View;

    const v3, 0x7f07002c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/inputmethod/voice/RecognitionView;->mButton:Landroid/widget/Button;

    .line 108
    iget-object v2, p0, Lcom/android/inputmethod/voice/RecognitionView;->mButton:Landroid/widget/Button;

    invoke-virtual {v2, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v2, p0, Lcom/android/inputmethod/voice/RecognitionView;->mView:Landroid/view/View;

    const v3, 0x7f07000e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/inputmethod/voice/RecognitionView;->mText:Landroid/widget/TextView;

    .line 110
    iget-object v2, p0, Lcom/android/inputmethod/voice/RecognitionView;->mView:Landroid/view/View;

    const v3, 0x7f07002b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/inputmethod/voice/RecognitionView;->mLanguage:Landroid/widget/TextView;

    .line 112
    iput-object p1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mContext:Landroid/content/Context;

    .line 113
    return-void
.end method

.method static synthetic access$000(Lcom/android/inputmethod/voice/RecognitionView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mState:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/inputmethod/voice/RecognitionView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput p1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mState:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/inputmethod/voice/RecognitionView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mProgress:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/inputmethod/voice/RecognitionView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/inputmethod/voice/RecognitionView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mInitializing:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/inputmethod/voice/RecognitionView;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/android/inputmethod/voice/RecognitionView;->prepareDialog(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/inputmethod/voice/RecognitionView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mError:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/inputmethod/voice/RecognitionView;Ljava/nio/ShortBuffer;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/android/inputmethod/voice/RecognitionView;->showWave(Ljava/nio/ShortBuffer;II)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/inputmethod/voice/RecognitionView;)Lcom/android/inputmethod/voice/SoundIndicator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mSoundIndicator:Lcom/android/inputmethod/voice/SoundIndicator;

    return-object v0
.end method

.method private static getAverageAbs(Ljava/nio/ShortBuffer;III)I
    .locals 5
    .parameter "buffer"
    .parameter "start"
    .parameter "i"
    .parameter "npw"

    .prologue
    .line 272
    mul-int v4, p2, p3

    add-int v1, p1, v4

    .line 273
    .local v1, from:I
    add-int v0, v1, p3

    .line 274
    .local v0, end:I
    const/4 v2, 0x0

    .line 275
    .local v2, total:I
    move v3, v1

    .local v3, x:I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 276
    invoke-virtual {p0, v3}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/2addr v2, v4

    .line 275
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 278
    :cond_0
    div-int v4, v2, p3

    return v4
.end method

.method private prepareDialog(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 5
    .parameter "text"
    .parameter "image"
    .parameter "btnTxt"

    .prologue
    const/4 v4, 0x4

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 195
    iget v1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 262
    const-string v1, "RecognitionView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/inputmethod/voice/RecognitionView;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :goto_0
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mPopupLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 265
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mButton:Landroid/widget/Button;

    invoke-virtual {v1, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 266
    return-void

    .line 197
    :pswitch_0
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 199
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mProgress:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 201
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 202
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mImage:Landroid/widget/ImageView;

    const v2, 0x7f02006d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 204
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mSoundIndicator:Lcom/android/inputmethod/voice/SoundIndicator;

    invoke-virtual {v1, v3}, Lcom/android/inputmethod/voice/SoundIndicator;->setVisibility(I)V

    .line 205
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mSoundIndicator:Lcom/android/inputmethod/voice/SoundIndicator;

    invoke-virtual {v1}, Lcom/android/inputmethod/voice/SoundIndicator;->stop()V

    .line 207
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mLanguage:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 209
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mPopupLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/android/inputmethod/voice/RecognitionView;->mListeningBorder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 212
    :pswitch_1
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mText:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mProgress:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 217
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 219
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mSoundIndicator:Lcom/android/inputmethod/voice/SoundIndicator;

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/voice/SoundIndicator;->setVisibility(I)V

    .line 220
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mSoundIndicator:Lcom/android/inputmethod/voice/SoundIndicator;

    invoke-virtual {v1}, Lcom/android/inputmethod/voice/SoundIndicator;->start()V

    .line 222
    invoke-static {}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInstance()Lcom/android/inputmethod/latin/SubtypeSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInputLocale()Ljava/util/Locale;

    move-result-object v0

    .line 224
    .local v0, locale:Ljava/util/Locale;
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mLanguage:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 225
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mLanguage:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getFullDisplayName(Ljava/util/Locale;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mPopupLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/android/inputmethod/voice/RecognitionView;->mListeningBorder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 231
    .end local v0           #locale:Ljava/util/Locale;
    :pswitch_2
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 232
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mText:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mProgress:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 236
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 238
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mSoundIndicator:Lcom/android/inputmethod/voice/SoundIndicator;

    invoke-virtual {v1, v3}, Lcom/android/inputmethod/voice/SoundIndicator;->setVisibility(I)V

    .line 239
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mSoundIndicator:Lcom/android/inputmethod/voice/SoundIndicator;

    invoke-virtual {v1}, Lcom/android/inputmethod/voice/SoundIndicator;->stop()V

    .line 241
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mLanguage:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 243
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mPopupLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/android/inputmethod/voice/RecognitionView;->mWorkingBorder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 246
    :pswitch_3
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 247
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mText:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mProgress:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 251
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 252
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mImage:Landroid/widget/ImageView;

    const v2, 0x7f02002f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 254
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mSoundIndicator:Lcom/android/inputmethod/voice/SoundIndicator;

    invoke-virtual {v1, v3}, Lcom/android/inputmethod/voice/SoundIndicator;->setVisibility(I)V

    .line 255
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mSoundIndicator:Lcom/android/inputmethod/voice/SoundIndicator;

    invoke-virtual {v1}, Lcom/android/inputmethod/voice/SoundIndicator;->stop()V

    .line 257
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mLanguage:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 259
    iget-object v1, p0, Lcom/android/inputmethod/voice/RecognitionView;->mPopupLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/android/inputmethod/voice/RecognitionView;->mErrorBorder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 195
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showWave(Ljava/nio/ShortBuffer;II)V
    .locals 29
    .parameter "waveBuffer"
    .parameter "startPosition"
    .parameter "endPosition"

    .prologue
    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/voice/RecognitionView;->mImage:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v20

    .line 292
    .local v20, w:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/voice/RecognitionView;->mImage:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v11

    .line 293
    .local v11, h:I
    if-lez v20, :cond_0

    if-gtz v11, :cond_1

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    sget-object v24, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v20

    move v1, v11

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 298
    .local v5, b:Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 299
    .local v6, c:Landroid/graphics/Canvas;
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    .line 300
    .local v15, paint:Landroid/graphics/Paint;
    const/16 v24, -0x1

    move-object v0, v15

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 301
    const/16 v24, 0x1

    move-object v0, v15

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 302
    sget-object v24, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object v0, v15

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 303
    const/16 v24, 0x50

    move-object v0, v15

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 305
    new-instance v9, Landroid/graphics/CornerPathEffect;

    const/high16 v24, 0x4040

    move-object v0, v9

    move/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    .line 306
    .local v9, effect:Landroid/graphics/PathEffect;
    invoke-virtual {v15, v9}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 308
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v14

    .line 310
    .local v14, numSamples:I
    if-nez p3, :cond_3

    .line 311
    move v10, v14

    .line 316
    .local v10, endIndex:I
    :goto_1
    const/16 v24, 0x7d0

    sub-int v19, p2, v24

    .line 317
    .local v19, startIndex:I
    if-gez v19, :cond_2

    .line 318
    const/16 v19, 0x0

    .line 320
    :cond_2
    const/16 v13, 0xc8

    .line 321
    .local v13, numSamplePerWave:I
    const/high16 v17, 0x3920

    .line 323
    .local v17, scale:F
    sub-int v24, v10, v19

    move/from16 v0, v24

    div-int/lit16 v0, v0, 0xc8

    move v7, v0

    .line 324
    .local v7, count:I
    const/high16 v24, 0x3f80

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v24, v24, v25

    move v0, v7

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v8, v24, v25

    .line 325
    .local v8, deltaX:F
    div-int/lit8 v23, v11, 0x2

    .line 326
    .local v23, yMax:I
    new-instance v16, Landroid/graphics/Path;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Path;-><init>()V

    .line 327
    .local v16, path:Landroid/graphics/Path;
    const/16 v24, 0x0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v25, v0

    move-object v0, v6

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 328
    const/16 v21, 0x0

    .line 329
    .local v21, x:F
    const/16 v24, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v21

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 330
    const/4 v12, 0x0

    .local v12, i:I
    :goto_2
    if-ge v12, v7, :cond_5

    .line 331
    const/16 v24, 0xc8

    move-object/from16 v0, p1

    move/from16 v1, v19

    move v2, v12

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/android/inputmethod/voice/RecognitionView;->getAverageAbs(Ljava/nio/ShortBuffer;III)I

    move-result v4

    .line 332
    .local v4, avabs:I
    and-int/lit8 v24, v12, 0x1

    if-nez v24, :cond_4

    const/16 v24, -0x1

    move/from16 v18, v24

    .line 333
    .local v18, sign:I
    :goto_3
    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v24, v0

    mul-int v25, v4, v11

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    const/high16 v26, 0x3920

    mul-float v25, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->min(FF)F

    move-result v24

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v22, v24, v25

    .line 334
    .local v22, y:F
    move-object/from16 v0, v16

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 335
    add-float v21, v21, v8

    .line 336
    move-object/from16 v0, v16

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 330
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 313
    .end local v4           #avabs:I
    .end local v7           #count:I
    .end local v8           #deltaX:F
    .end local v10           #endIndex:I
    .end local v12           #i:I
    .end local v13           #numSamplePerWave:I
    .end local v16           #path:Landroid/graphics/Path;
    .end local v17           #scale:F
    .end local v18           #sign:I
    .end local v19           #startIndex:I
    .end local v21           #x:F
    .end local v22           #y:F
    .end local v23           #yMax:I
    :cond_3
    move/from16 v0, p3

    move v1, v14

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v10

    .restart local v10       #endIndex:I
    goto/16 :goto_1

    .line 332
    .restart local v4       #avabs:I
    .restart local v7       #count:I
    .restart local v8       #deltaX:F
    .restart local v12       #i:I
    .restart local v13       #numSamplePerWave:I
    .restart local v16       #path:Landroid/graphics/Path;
    .restart local v17       #scale:F
    .restart local v19       #startIndex:I
    .restart local v21       #x:F
    .restart local v23       #yMax:I
    :cond_4
    const/16 v24, 0x1

    move/from16 v18, v24

    goto :goto_3

    .line 338
    .end local v4           #avabs:I
    :cond_5
    const/high16 v24, 0x4080

    cmpl-float v24, v8, v24

    if-lez v24, :cond_6

    .line 339
    const/high16 v24, 0x4000

    move-object v0, v15

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 343
    :goto_4
    move-object v0, v6

    move-object/from16 v1, v16

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/voice/RecognitionView;->mImage:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 341
    :cond_6
    const/16 v24, 0x0

    move v0, v8

    float-to-double v0, v0

    move-wide/from16 v25, v0

    const-wide v27, 0x3fa999999999999aL

    sub-double v25, v25, v27

    move-wide/from16 v0, v25

    double-to-int v0, v0

    move/from16 v25, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->max(II)I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object v0, v15

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_4
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/inputmethod/voice/RecognitionView$6;

    invoke-direct {v1, p0}, Lcom/android/inputmethod/voice/RecognitionView$6;-><init>(Lcom/android/inputmethod/voice/RecognitionView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 354
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mView:Landroid/view/View;

    return-object v0
.end method

.method public restoreState()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/inputmethod/voice/RecognitionView$1;

    invoke-direct {v1, p0}, Lcom/android/inputmethod/voice/RecognitionView$1;-><init>(Lcom/android/inputmethod/voice/RecognitionView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 130
    return-void
.end method

.method public showError(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/inputmethod/voice/RecognitionView$4;

    invoke-direct {v1, p0, p1}, Lcom/android/inputmethod/voice/RecognitionView$4;-><init>(Lcom/android/inputmethod/voice/RecognitionView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 167
    return-void
.end method

.method public showInitializing()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/inputmethod/voice/RecognitionView$2;

    invoke-direct {v1, p0}, Lcom/android/inputmethod/voice/RecognitionView$2;-><init>(Lcom/android/inputmethod/voice/RecognitionView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 141
    return-void
.end method

.method public showListening()V
    .locals 2

    .prologue
    .line 144
    const-string v0, "RecognitionView"

    const-string v1, "#showListening"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/inputmethod/voice/RecognitionView$3;

    invoke-direct {v1, p0}, Lcom/android/inputmethod/voice/RecognitionView$3;-><init>(Lcom/android/inputmethod/voice/RecognitionView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 153
    return-void
.end method

.method public showWorking(Ljava/io/ByteArrayOutputStream;II)V
    .locals 2
    .parameter "waveBuffer"
    .parameter "speechStartPosition"
    .parameter "speechEndPosition"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/inputmethod/voice/RecognitionView$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/inputmethod/voice/RecognitionView$5;-><init>(Lcom/android/inputmethod/voice/RecognitionView;Ljava/io/ByteArrayOutputStream;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 186
    return-void
.end method

.method public updateVoiceMeter(F)V
    .locals 1
    .parameter "rmsdB"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView;->mSoundIndicator:Lcom/android/inputmethod/voice/SoundIndicator;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/voice/SoundIndicator;->setRmsdB(F)V

    .line 157
    return-void
.end method
