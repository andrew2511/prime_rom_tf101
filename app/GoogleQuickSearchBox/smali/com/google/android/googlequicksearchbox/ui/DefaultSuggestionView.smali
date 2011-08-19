.class public Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;
.super Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;
.source "DefaultSuggestionView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$1;,
        Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$Factory;,
        Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;
    }
.end annotation


# instance fields
.field private mAsyncIcon1:Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;

.field private mAsyncIcon2:Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;-><init>(Landroid/content/Context;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method static synthetic access$200(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 42
    invoke-static {p0, p1, p2}, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;->setViewDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method

.method private formatUrl(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5
    .parameter "url"

    .prologue
    .line 141
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 142
    .local v0, text:Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d0007

    invoke-direct {v1, v2, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 145
    return-object v0
.end method

.method private static parseInt(Ljava/lang/String;)I
    .locals 5
    .parameter "s"

    .prologue
    const/4 v4, 0x0

    .line 75
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    .line 80
    :goto_0
    return v1

    .line 77
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v1, "QSB.DefaultSuggestionView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid resource ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 80
    goto :goto_0
.end method

.method private static setViewDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Z)V
    .locals 2
    .parameter "v"
    .parameter "drawable"
    .parameter "reserveSpace"

    .prologue
    const/4 v1, 0x0

    .line 160
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 162
    if-nez p1, :cond_1

    .line 163
    if-eqz p2, :cond_0

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 175
    :goto_1
    return-void

    .line 163
    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    .line 165
    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 172
    invoke-virtual {p1, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 173
    const/4 v0, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    goto :goto_1
.end method


# virtual methods
.method public bindAsSuggestion(Lcom/google/android/googlequicksearchbox/Suggestion;Ljava/lang/String;)V
    .locals 6
    .parameter "suggestion"
    .parameter "userQuery"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 86
    invoke-super {p0, p1, p2}, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->bindAsSuggestion(Lcom/google/android/googlequicksearchbox/Suggestion;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionText1()Ljava/lang/CharSequence;

    move-result-object v1

    .line 89
    .local v1, text1:Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .line 90
    .local v2, text2:Ljava/lang/CharSequence;
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionSource()Lcom/google/android/googlequicksearchbox/Source;

    move-result-object v0

    .line 92
    .local v0, src:Lcom/google/android/googlequicksearchbox/Source;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/Source;->isShowSingleLine()Z

    move-result v3

    if-nez v3, :cond_1

    .line 93
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionText2Url()Ljava/lang/String;

    move-result-object v2

    .line 94
    if-eqz v2, :cond_2

    .line 95
    invoke-direct {p0, v2}, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;->formatUrl(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 102
    :cond_1
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 103
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;->mText1:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 104
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;->mText1:Landroid/widget/TextView;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 105
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;->mText1:Landroid/widget/TextView;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 111
    :goto_1
    invoke-virtual {p0, v1}, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;->setText1(Ljava/lang/CharSequence;)V

    .line 112
    invoke-virtual {p0, v2}, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;->setText2(Ljava/lang/CharSequence;)V

    .line 113
    if-nez v0, :cond_4

    .line 115
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;->mAsyncIcon1:Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;

    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionIcon1()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->set(I)V

    .line 116
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;->mAsyncIcon2:Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;

    invoke-virtual {v3, v5, v5}, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->set(Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;)V

    .line 138
    :goto_2
    return-void

    .line 97
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionText2()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    .line 107
    :cond_3
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;->mText1:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 108
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;->mText1:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 109
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;->mText1:Landroid/widget/TextView;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_1

    .line 118
    :cond_4
    sget-object v3, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$1;->$SwitchMap$com$google$android$googlequicksearchbox$ui$ListEntry$Grouping:[I

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;->getGrouping()Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/googlequicksearchbox/ui/ListEntry$Grouping;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_2

    .line 120
    :pswitch_0
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;->mAsyncIcon1:Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;

    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionIcon1()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->set(Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;)V

    .line 121
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;->mAsyncIcon2:Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;

    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionIcon2()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->set(Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;)V

    goto :goto_2

    .line 124
    :pswitch_1
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;->mAsyncIcon1:Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;

    invoke-virtual {v3, v0, v5}, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->set(Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;)V

    .line 125
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;->mAsyncIcon2:Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;

    invoke-virtual {v3, v5, v5}, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->set(Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;)V

    goto :goto_2

    .line 128
    :pswitch_2
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;->mAsyncIcon1:Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;

    invoke-virtual {v3, v5, v5}, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->set(Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;)V

    .line 129
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;->mAsyncIcon2:Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;

    invoke-virtual {v3, v5, v5}, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->set(Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;)V

    goto :goto_2

    .line 118
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 67
    invoke-super {p0}, Lcom/google/android/googlequicksearchbox/ui/BaseSuggestionView;->onFinishInflate()V

    .line 68
    const v0, 0x7f0f0007

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;->mText1:Landroid/widget/TextView;

    .line 69
    const v0, 0x7f0f0005

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;->mText2:Landroid/widget/TextView;

    .line 70
    new-instance v0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;->mIcon1:Landroid/widget/ImageView;

    invoke-direct {v0, p0, v1, v3, v3}, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;-><init>(Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;Landroid/widget/ImageView;ZZ)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;->mAsyncIcon1:Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;

    .line 71
    new-instance v0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;->mIcon2:Landroid/widget/ImageView;

    invoke-direct {v0, p0, v1, v2, v2}, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;-><init>(Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;Landroid/widget/ImageView;ZZ)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;->mAsyncIcon2:Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;

    .line 72
    return-void
.end method
