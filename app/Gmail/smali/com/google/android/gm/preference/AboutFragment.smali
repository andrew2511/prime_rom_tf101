.class public final Lcom/google/android/gm/preference/AboutFragment;
.super Landroid/app/Fragment;
.source "AboutFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 28
    const/high16 v7, 0x7f04

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 31
    .local v6, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/google/android/gm/preference/AboutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gm/Utils;->haveGoogleMailActivitiesBeenEnabled(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 32
    const v7, 0x7f0e0007

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 33
    .local v5, logoView:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/google/android/gm/preference/AboutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020086

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 35
    const v7, 0x7f0e000c

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 36
    .local v0, descriptionView:Landroid/widget/TextView;
    const v7, 0x7f0d0016

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    .line 39
    .end local v0           #descriptionView:Landroid/widget/TextView;
    .end local v5           #logoView:Landroid/widget/ImageView;
    :cond_0
    const v7, 0x7f0e000b

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 41
    .local v1, feebackLinkView:Landroid/widget/TextView;
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 43
    new-instance v4, Lcom/google/android/gm/preference/AboutFragment$1;

    const-string v7, ""

    invoke-direct {v4, p0, v7}, Lcom/google/android/gm/preference/AboutFragment$1;-><init>(Lcom/google/android/gm/preference/AboutFragment;Ljava/lang/String;)V

    .line 49
    .local v4, linkSpan:Landroid/text/style/URLSpan;
    const v7, 0x7f0d0013

    invoke-virtual {p0, v7}, Lcom/google/android/gm/preference/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, feedbackString:Ljava/lang/String;
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 53
    .local v2, feedback:Landroid/text/Spannable;
    const/4 v7, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x22

    invoke-interface {v2, v4, v7, v8, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 54
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    return-object v6
.end method
