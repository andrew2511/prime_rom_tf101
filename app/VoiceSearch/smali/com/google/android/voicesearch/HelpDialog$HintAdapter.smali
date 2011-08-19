.class Lcom/google/android/voicesearch/HelpDialog$HintAdapter;
.super Landroid/widget/BaseAdapter;
.source "HelpDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/HelpDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HintAdapter"
.end annotation


# instance fields
.field mActionTitles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field mHintIcons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field mHintTexts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/voicesearch/HelpDialog;


# direct methods
.method public constructor <init>(Lcom/google/android/voicesearch/HelpDialog;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/Hints$HintData;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 567
    iput-object p1, p0, Lcom/google/android/voicesearch/HelpDialog$HintAdapter;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 563
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/HelpDialog$HintAdapter;->mHintIcons:Ljava/util/ArrayList;

    .line 564
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/HelpDialog$HintAdapter;->mHintTexts:Ljava/util/ArrayList;

    .line 565
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/HelpDialog$HintAdapter;->mActionTitles:Ljava/util/ArrayList;

    .line 570
    invoke-static {p1}, Lcom/google/android/voicesearch/HelpDialog;->access$2000(Lcom/google/android/voicesearch/HelpDialog;)Lcom/google/android/voicesearch/Hints$HintData;

    move-result-object v0

    invoke-virtual {p3, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 571
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {p1}, Lcom/google/android/voicesearch/HelpDialog;->access$2100(Lcom/google/android/voicesearch/HelpDialog;)Lcom/google/android/voicesearch/Hints$HintData;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v1, v4

    .line 573
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 574
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/Hints$HintData;

    .line 575
    iget-object v2, p0, Lcom/google/android/voicesearch/HelpDialog$HintAdapter;->mHintTexts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/Hints$HintData;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/google/android/voicesearch/HelpDialog;->access$2200(Lcom/google/android/voicesearch/HelpDialog;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    iget-object v2, p0, Lcom/google/android/voicesearch/HelpDialog$HintAdapter;->mHintIcons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/Hints$HintData;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    invoke-virtual {v0}, Lcom/google/android/voicesearch/Hints$HintData;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 579
    iget-object v2, p0, Lcom/google/android/voicesearch/HelpDialog$HintAdapter;->mActionTitles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/Hints$HintData;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 573
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 582
    :cond_0
    iget-object v2, p0, Lcom/google/android/voicesearch/HelpDialog$HintAdapter;->mActionTitles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/Hints$HintData;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    :goto_2
    invoke-static {p1, v0, v3}, Lcom/google/android/voicesearch/HelpDialog;->access$2300(Lcom/google/android/voicesearch/HelpDialog;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move v3, v4

    goto :goto_2

    .line 585
    :cond_2
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog$HintAdapter;->mHintTexts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 592
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog$HintAdapter;->mHintTexts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 596
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 602
    if-nez p2, :cond_0

    .line 603
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog$HintAdapter;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    invoke-static {v0}, Lcom/google/android/voicesearch/HelpDialog;->access$2400(Lcom/google/android/voicesearch/HelpDialog;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    move-object v2, v0

    .line 609
    :goto_0
    const v0, 0x7f0d0017

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/voicesearch/HelpDialog$HintAdapter;->mActionTitles:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 612
    const v0, 0x7f0d0016

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/voicesearch/HelpDialog$HintAdapter;->mHintIcons:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 615
    return-object v2

    .line 606
    :cond_0
    check-cast p2, Landroid/widget/LinearLayout;

    move-object v2, p2

    goto :goto_0
.end method
