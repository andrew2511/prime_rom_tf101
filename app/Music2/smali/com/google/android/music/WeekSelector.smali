.class public Lcom/google/android/music/WeekSelector;
.super Landroid/app/Activity;
.source "WeekSelector.java"


# instance fields
.field private mListener:Landroid/view/View$OnClickListener;

.field mWeeks:Lcom/google/android/music/VerticalTextSpinner;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 59
    new-instance v0, Lcom/google/android/music/WeekSelector$2;

    invoke-direct {v0, p0}, Lcom/google/android/music/WeekSelector$2;-><init>(Lcom/google/android/music/WeekSelector;)V

    iput-object v0, p0, Lcom/google/android/music/WeekSelector;->mListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v5, 0x1

    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/google/android/music/WeekSelector;->setVolumeControlStream(I)V

    .line 25
    invoke-virtual {p0, v5}, Lcom/google/android/music/WeekSelector;->requestWindowFeature(I)Z

    .line 26
    const v2, 0x7f04003b

    invoke-virtual {p0, v2}, Lcom/google/android/music/WeekSelector;->setContentView(I)V

    .line 27
    invoke-virtual {p0}, Lcom/google/android/music/WeekSelector;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-virtual {v2, v3, v4}, Landroid/view/Window;->setLayout(II)V

    .line 30
    const v2, 0x7f0f00ab

    invoke-virtual {p0, v2}, Lcom/google/android/music/WeekSelector;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/VerticalTextSpinner;

    iput-object v2, p0, Lcom/google/android/music/WeekSelector;->mWeeks:Lcom/google/android/music/VerticalTextSpinner;

    .line 31
    iget-object v2, p0, Lcom/google/android/music/WeekSelector;->mWeeks:Lcom/google/android/music/VerticalTextSpinner;

    invoke-virtual {p0}, Lcom/google/android/music/WeekSelector;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f0d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/music/VerticalTextSpinner;->setItems([Ljava/lang/String;)V

    .line 32
    iget-object v2, p0, Lcom/google/android/music/WeekSelector;->mWeeks:Lcom/google/android/music/VerticalTextSpinner;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/music/VerticalTextSpinner;->setWrapAround(Z)V

    .line 33
    iget-object v2, p0, Lcom/google/android/music/WeekSelector;->mWeeks:Lcom/google/android/music/VerticalTextSpinner;

    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v3, v4}, Lcom/google/android/music/VerticalTextSpinner;->setScrollInterval(J)V

    .line 35
    const-string v2, "numweeks"

    const/4 v3, 0x2

    invoke-static {p0, v2, v3}, Lcom/google/android/music/MusicUtils;->getIntPref(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 36
    .local v0, def:I
    if-eqz p1, :cond_0

    const-string v2, "numweeks"

    sub-int v3, v0, v5

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    move v1, v2

    .line 37
    .local v1, pos:I
    :goto_0
    iget-object v2, p0, Lcom/google/android/music/WeekSelector;->mWeeks:Lcom/google/android/music/VerticalTextSpinner;

    invoke-virtual {v2, v1}, Lcom/google/android/music/VerticalTextSpinner;->setSelectedPos(I)V

    .line 39
    const v2, 0x7f0f00ac

    invoke-virtual {p0, v2}, Lcom/google/android/music/WeekSelector;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iget-object v3, p0, Lcom/google/android/music/WeekSelector;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    const v2, 0x7f0f0036

    invoke-virtual {p0, v2}, Lcom/google/android/music/WeekSelector;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    new-instance v3, Lcom/google/android/music/WeekSelector$1;

    invoke-direct {v3, p0}, Lcom/google/android/music/WeekSelector$1;-><init>(Lcom/google/android/music/WeekSelector;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    return-void

    .line 36
    .end local v1           #pos:I
    :cond_0
    sub-int v2, v0, v5

    move v1, v2

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 56
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 57
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outcicle"

    .prologue
    .line 51
    const-string v0, "numweeks"

    iget-object v1, p0, Lcom/google/android/music/WeekSelector;->mWeeks:Lcom/google/android/music/VerticalTextSpinner;

    invoke-virtual {v1}, Lcom/google/android/music/VerticalTextSpinner;->getCurrentSelectedPos()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 52
    return-void
.end method
