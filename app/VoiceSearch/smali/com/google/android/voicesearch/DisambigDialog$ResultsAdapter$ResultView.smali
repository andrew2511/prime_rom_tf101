.class Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter$ResultView;
.super Landroid/widget/LinearLayout;
.source "DisambigDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResultView"
.end annotation


# instance fields
.field private mIcon:Landroid/widget/ImageView;

.field private mSubtitle:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/voicesearch/actions/VoiceAction;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 283
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 284
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 286
    const v1, 0x7f03000b

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 287
    const v0, 0x7f0d002c

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter$ResultView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter$ResultView;->mIcon:Landroid/widget/ImageView;

    .line 288
    const v0, 0x7f0d002d

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter$ResultView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter$ResultView;->mTitle:Landroid/widget/TextView;

    .line 289
    const v0, 0x7f0d002e

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter$ResultView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter$ResultView;->mSubtitle:Landroid/widget/TextView;

    .line 290
    invoke-virtual {p0, p1, p2}, Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter$ResultView;->setAction(Landroid/content/Context;Lcom/google/android/voicesearch/actions/VoiceAction;)V

    .line 291
    return-void
.end method


# virtual methods
.method public setAction(Landroid/content/Context;Lcom/google/android/voicesearch/actions/VoiceAction;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 294
    invoke-virtual {p2}, Lcom/google/android/voicesearch/actions/VoiceAction;->getListIcon()I

    move-result v0

    .line 295
    iget-object v1, p0, Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter$ResultView;->mIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 296
    iget-object v1, p0, Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter$ResultView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 298
    invoke-virtual {p2, p1}, Lcom/google/android/voicesearch/actions/VoiceAction;->getListTitle(Landroid/content/Context;)Landroid/text/Spanned;

    move-result-object v0

    .line 299
    iget-object v1, p0, Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter$ResultView;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 300
    iget-object v1, p0, Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter$ResultView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    invoke-virtual {p2}, Lcom/google/android/voicesearch/actions/VoiceAction;->getListSubtitle()Landroid/text/Spanned;

    move-result-object v0

    .line 303
    iget-object v1, p0, Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter$ResultView;->mSubtitle:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    move v2, v3

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 304
    iget-object v1, p0, Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter$ResultView;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    return-void

    :cond_0
    move v2, v4

    .line 295
    goto :goto_0

    :cond_1
    move v2, v4

    .line 299
    goto :goto_1

    :cond_2
    move v2, v4

    .line 303
    goto :goto_2
.end method
