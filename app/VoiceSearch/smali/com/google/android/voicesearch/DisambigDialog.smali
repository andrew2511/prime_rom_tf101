.class public Lcom/google/android/voicesearch/DisambigDialog;
.super Landroid/app/Dialog;
.source "DisambigDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/DisambigDialog$Listener;,
        Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter;
    }
.end annotation


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mHelpButton:Landroid/widget/Button;

.field private mList:Landroid/widget/ListView;

.field private mListener:Lcom/google/android/voicesearch/DisambigDialog$Listener;

.field private mMainView:Landroid/widget/LinearLayout;

.field private mMicButton:Landroid/widget/ImageButton;

.field private mResultsAdapter:Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter;

.field private mShowHelpButton:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 65
    const v0, 0x7f0b0003

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/voicesearch/DisambigDialog;->mShowHelpButton:Z

    .line 67
    new-instance v0, Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter;

    invoke-direct {v0, p1}, Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/DisambigDialog;->mResultsAdapter:Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/voicesearch/DisambigDialog;)Lcom/google/android/voicesearch/DisambigDialog$Listener;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/voicesearch/DisambigDialog;->mListener:Lcom/google/android/voicesearch/DisambigDialog$Listener;

    return-object v0
.end method

.method private filterResults(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/voicesearch/actions/VoiceAction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 140
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 141
    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 142
    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 143
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 145
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 147
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 149
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/voicesearch/actions/VoiceAction;

    .line 150
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actions/VoiceAction;->getType()I

    move-result v4

    .line 151
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 152
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 153
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 155
    :cond_1
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 161
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/voicesearch/actions/VoiceAction;

    .line 162
    invoke-interface {p1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 164
    :cond_3
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 72
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/DisambigDialog;->setContentView(I)V

    .line 73
    const v0, 0x7f0d000d

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/DisambigDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/voicesearch/DisambigDialog;->mMainView:Landroid/widget/LinearLayout;

    .line 75
    const v0, 0x7f0d000e

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/DisambigDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/android/voicesearch/DisambigDialog;->mMicButton:Landroid/widget/ImageButton;

    .line 76
    iget-object v0, p0, Lcom/google/android/voicesearch/DisambigDialog;->mMicButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/google/android/voicesearch/DisambigDialog$1;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/DisambigDialog$1;-><init>(Lcom/google/android/voicesearch/DisambigDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    const v0, 0x7f0d0010

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/DisambigDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/voicesearch/DisambigDialog;->mHelpButton:Landroid/widget/Button;

    .line 85
    iget-object v0, p0, Lcom/google/android/voicesearch/DisambigDialog;->mHelpButton:Landroid/widget/Button;

    new-instance v1, Lcom/google/android/voicesearch/DisambigDialog$2;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/DisambigDialog$2;-><init>(Lcom/google/android/voicesearch/DisambigDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    const v0, 0x7f0d0011

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/DisambigDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/voicesearch/DisambigDialog;->mCancelButton:Landroid/widget/Button;

    .line 94
    iget-object v0, p0, Lcom/google/android/voicesearch/DisambigDialog;->mCancelButton:Landroid/widget/Button;

    new-instance v1, Lcom/google/android/voicesearch/DisambigDialog$3;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/DisambigDialog$3;-><init>(Lcom/google/android/voicesearch/DisambigDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    const v0, 0x7f0d000f

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/DisambigDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/google/android/voicesearch/DisambigDialog;->mList:Landroid/widget/ListView;

    .line 103
    iget-object v0, p0, Lcom/google/android/voicesearch/DisambigDialog;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/voicesearch/DisambigDialog;->mResultsAdapter:Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 104
    iget-object v0, p0, Lcom/google/android/voicesearch/DisambigDialog;->mList:Landroid/widget/ListView;

    new-instance v1, Lcom/google/android/voicesearch/DisambigDialog$4;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/DisambigDialog$4;-><init>(Lcom/google/android/voicesearch/DisambigDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 111
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 183
    const v0, 0x7f090766

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080049

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/google/android/voicesearch/DisambigDialog$5;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/DisambigDialog$5;-><init>(Lcom/google/android/voicesearch/DisambigDialog;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 191
    const/4 v0, 0x1

    return v0
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 328
    const/4 v0, 0x0

    return v0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/google/android/voicesearch/DisambigDialog;->mShowHelpButton:Z

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/google/android/voicesearch/DisambigDialog;->mHelpButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/google/android/voicesearch/DisambigDialog;->mCancelButton:Landroid/widget/Button;

    const v1, 0x7f020045

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 122
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/DisambigDialog;->mHelpButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/google/android/voicesearch/DisambigDialog;->mCancelButton:Landroid/widget/Button;

    const v1, 0x7f020026

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setDisambigListener(Lcom/google/android/voicesearch/DisambigDialog$Listener;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/google/android/voicesearch/DisambigDialog;->mListener:Lcom/google/android/voicesearch/DisambigDialog$Listener;

    .line 130
    return-void
.end method

.method public setOnDisambigCancelListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/voicesearch/DisambigDialog;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    return-void
.end method

.method public setShowHelpButton(Z)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/google/android/voicesearch/DisambigDialog;->mShowHelpButton:Z

    .line 126
    return-void
.end method

.method public update(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/actions/VoiceAction;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/android/voicesearch/DisambigDialog;->mList:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 169
    new-instance v0, Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter;

    invoke-direct {v0, p2}, Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/DisambigDialog;->mResultsAdapter:Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter;

    .line 170
    iget-object v0, p0, Lcom/google/android/voicesearch/DisambigDialog;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/voicesearch/DisambigDialog;->mResultsAdapter:Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 175
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 176
    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/DisambigDialog;->filterResults(Ljava/util/List;)V

    .line 177
    iget-object v1, p0, Lcom/google/android/voicesearch/DisambigDialog;->mResultsAdapter:Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter;

    invoke-virtual {v1, v0}, Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter;->setResults(Ljava/util/ArrayList;)V

    .line 178
    return-void
.end method

.method public updateLayout()V
    .locals 3

    .prologue
    .line 310
    iget-object v0, p0, Lcom/google/android/voicesearch/DisambigDialog;->mMainView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {p0}, Lcom/google/android/voicesearch/DisambigDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 312
    iget-object v0, p0, Lcom/google/android/voicesearch/DisambigDialog;->mMainView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 314
    const v2, 0x7f080001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 315
    iget-object v1, p0, Lcom/google/android/voicesearch/DisambigDialog;->mMainView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 317
    :cond_0
    return-void
.end method
