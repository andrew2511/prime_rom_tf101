.class public Lcom/android/videoeditor/TransitionsActivity;
.super Landroid/app/ListActivity;
.source "TransitionsActivity.java"


# static fields
.field private static final INCREMENT_TRANSITION:J = 0x64L

.field public static final PARAM_AFTER_MEDIA_ITEM_ID:Ljava/lang/String; = "media_item_id"

.field public static final PARAM_DEFAULT_DURATION:Ljava/lang/String; = "default_duration"

.field public static final PARAM_MAXIMUM_DURATION:Ljava/lang/String; = "max_duration"

.field public static final PARAM_MINIMUM_DURATION:Ljava/lang/String; = "min_duration"

.field public static final PARAM_TRANSITION_DURATION:Ljava/lang/String; = "duration"

.field public static final PARAM_TRANSITION_ID:Ljava/lang/String; = "transition_id"

.field public static final PARAM_TRANSITION_TYPE:Ljava/lang/String; = "transition"

.field private static final STATE_KEY_TRANSITION_DURATION:Ljava/lang/String; = "duration"


# instance fields
.field private mAdapter:Lcom/android/videoeditor/TransitionsAdapter;

.field private mMaxTransitionDurationMs:J

.field private mMinTransitionDurationMs:J

.field private mTransitionDurationMs:J

.field private mTransitionDurationView:Landroid/widget/TextView;

.field private mTransitionLeftBtn:Landroid/view/View;

.field private mTransitionRightBtn:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method private updateTransitionDuration()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 206
    iget-object v0, p0, Lcom/android/videoeditor/TransitionsActivity;->mTransitionDurationView:Landroid/widget/TextView;

    const v1, 0x7f09007a

    new-array v2, v6, [Ljava/lang/Object;

    iget-wide v3, p0, Lcom/android/videoeditor/TransitionsActivity;->mTransitionDurationMs:J

    long-to-float v3, v3

    const/high16 v4, 0x447a

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/android/videoeditor/TransitionsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v0, p0, Lcom/android/videoeditor/TransitionsActivity;->mTransitionLeftBtn:Landroid/view/View;

    iget-wide v1, p0, Lcom/android/videoeditor/TransitionsActivity;->mTransitionDurationMs:J

    iget-wide v3, p0, Lcom/android/videoeditor/TransitionsActivity;->mMinTransitionDurationMs:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    move v1, v6

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 210
    iget-object v0, p0, Lcom/android/videoeditor/TransitionsActivity;->mTransitionRightBtn:Landroid/view/View;

    iget-wide v1, p0, Lcom/android/videoeditor/TransitionsActivity;->mTransitionDurationMs:J

    iget-wide v3, p0, Lcom/android/videoeditor/TransitionsActivity;->mMaxTransitionDurationMs:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    move v1, v6

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 211
    return-void

    :cond_0
    move v1, v5

    .line 209
    goto :goto_0

    :cond_1
    move v1, v5

    .line 210
    goto :goto_1
.end method


# virtual methods
.method public onClickHandler(Landroid/view/View;)V
    .locals 6
    .parameter "target"

    .prologue
    const-wide/16 v4, 0x64

    .line 171
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 192
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 173
    :pswitch_1
    iget-wide v0, p0, Lcom/android/videoeditor/TransitionsActivity;->mTransitionDurationMs:J

    iget-wide v2, p0, Lcom/android/videoeditor/TransitionsActivity;->mMinTransitionDurationMs:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 174
    iget-wide v0, p0, Lcom/android/videoeditor/TransitionsActivity;->mTransitionDurationMs:J

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/videoeditor/TransitionsActivity;->mTransitionDurationMs:J

    .line 175
    invoke-direct {p0}, Lcom/android/videoeditor/TransitionsActivity;->updateTransitionDuration()V

    goto :goto_0

    .line 181
    :pswitch_2
    iget-wide v0, p0, Lcom/android/videoeditor/TransitionsActivity;->mTransitionDurationMs:J

    iget-wide v2, p0, Lcom/android/videoeditor/TransitionsActivity;->mMaxTransitionDurationMs:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 182
    iget-wide v0, p0, Lcom/android/videoeditor/TransitionsActivity;->mTransitionDurationMs:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/videoeditor/TransitionsActivity;->mTransitionDurationMs:J

    .line 183
    invoke-direct {p0}, Lcom/android/videoeditor/TransitionsActivity;->updateTransitionDuration()V

    goto :goto_0

    .line 171
    :pswitch_data_0
    .packed-switch 0x7f080037
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const-wide/16 v7, 0x0

    const-wide/16 v5, 0x64

    .line 58
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v3, 0x7f040015

    invoke-virtual {p0, v3}, Lcom/android/videoeditor/TransitionsActivity;->setContentView(I)V

    .line 60
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/videoeditor/TransitionsActivity;->setFinishOnTouchOutside(Z)V

    .line 62
    const v3, 0x7f080038

    invoke-virtual {p0, v3}, Lcom/android/videoeditor/TransitionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/videoeditor/TransitionsActivity;->mTransitionDurationView:Landroid/widget/TextView;

    .line 63
    const v3, 0x7f080037

    invoke-virtual {p0, v3}, Lcom/android/videoeditor/TransitionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/videoeditor/TransitionsActivity;->mTransitionLeftBtn:Landroid/view/View;

    .line 64
    const v3, 0x7f080039

    invoke-virtual {p0, v3}, Lcom/android/videoeditor/TransitionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/videoeditor/TransitionsActivity;->mTransitionRightBtn:Landroid/view/View;

    .line 66
    invoke-virtual {p0}, Lcom/android/videoeditor/TransitionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "min_duration"

    invoke-virtual {v3, v4, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/videoeditor/TransitionsActivity;->mMinTransitionDurationMs:J

    .line 67
    iget-wide v3, p0, Lcom/android/videoeditor/TransitionsActivity;->mMinTransitionDurationMs:J

    div-long/2addr v3, v5

    mul-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/videoeditor/TransitionsActivity;->mMinTransitionDurationMs:J

    .line 70
    invoke-virtual {p0}, Lcom/android/videoeditor/TransitionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "max_duration"

    invoke-virtual {v3, v4, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/videoeditor/TransitionsActivity;->mMaxTransitionDurationMs:J

    .line 71
    iget-wide v3, p0, Lcom/android/videoeditor/TransitionsActivity;->mMaxTransitionDurationMs:J

    div-long/2addr v3, v5

    mul-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/videoeditor/TransitionsActivity;->mMaxTransitionDurationMs:J

    .line 74
    if-nez p1, :cond_1

    .line 75
    invoke-virtual {p0}, Lcom/android/videoeditor/TransitionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "default_duration"

    invoke-virtual {v3, v4, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/videoeditor/TransitionsActivity;->mTransitionDurationMs:J

    .line 79
    :goto_0
    iget-wide v3, p0, Lcom/android/videoeditor/TransitionsActivity;->mTransitionDurationMs:J

    div-long/2addr v3, v5

    mul-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/videoeditor/TransitionsActivity;->mTransitionDurationMs:J

    .line 82
    invoke-direct {p0}, Lcom/android/videoeditor/TransitionsActivity;->updateTransitionDuration()V

    .line 85
    new-instance v3, Lcom/android/videoeditor/TransitionsAdapter;

    invoke-virtual {p0}, Lcom/android/videoeditor/TransitionsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/videoeditor/TransitionsAdapter;-><init>(Landroid/content/Context;Landroid/widget/AbsListView;)V

    iput-object v3, p0, Lcom/android/videoeditor/TransitionsActivity;->mAdapter:Lcom/android/videoeditor/TransitionsAdapter;

    .line 86
    iget-object v3, p0, Lcom/android/videoeditor/TransitionsActivity;->mAdapter:Lcom/android/videoeditor/TransitionsAdapter;

    invoke-virtual {p0, v3}, Lcom/android/videoeditor/TransitionsActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 88
    invoke-virtual {p0}, Lcom/android/videoeditor/TransitionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "transition"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 89
    .local v1, transitionType:I
    if-ltz v1, :cond_0

    .line 91
    iget-object v3, p0, Lcom/android/videoeditor/TransitionsActivity;->mAdapter:Lcom/android/videoeditor/TransitionsAdapter;

    invoke-virtual {v3}, Lcom/android/videoeditor/TransitionsAdapter;->getTransitions()[Lcom/android/videoeditor/TransitionType;

    move-result-object v2

    .line 92
    .local v2, transitions:[Lcom/android/videoeditor/TransitionType;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 93
    aget-object v3, v2, v0

    invoke-virtual {v3}, Lcom/android/videoeditor/TransitionType;->getType()I

    move-result v3

    if-ne v3, v1, :cond_2

    .line 94
    invoke-virtual {p0, v0}, Lcom/android/videoeditor/TransitionsActivity;->setSelection(I)V

    .line 99
    .end local v0           #i:I
    .end local v2           #transitions:[Lcom/android/videoeditor/TransitionType;
    :cond_0
    return-void

    .line 77
    .end local v1           #transitionType:I
    :cond_1
    const-string v3, "duration"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/videoeditor/TransitionsActivity;->mTransitionDurationMs:J

    goto :goto_0

    .line 92
    .restart local v0       #i:I
    .restart local v1       #transitionType:I
    .restart local v2       #transitions:[Lcom/android/videoeditor/TransitionType;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 128
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 130
    iget-object v0, p0, Lcom/android/videoeditor/TransitionsActivity;->mAdapter:Lcom/android/videoeditor/TransitionsAdapter;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/videoeditor/TransitionsActivity;->mAdapter:Lcom/android/videoeditor/TransitionsAdapter;

    invoke-virtual {v0}, Lcom/android/videoeditor/TransitionsAdapter;->onDestroy()V

    .line 133
    :cond_0
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 150
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 151
    .local v0, extras:Landroid/content/Intent;
    const-string v2, "transition"

    iget-object v1, p0, Lcom/android/videoeditor/TransitionsActivity;->mAdapter:Lcom/android/videoeditor/TransitionsAdapter;

    invoke-virtual {v1, p3}, Lcom/android/videoeditor/TransitionsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/videoeditor/TransitionType;

    invoke-virtual {v1}, Lcom/android/videoeditor/TransitionType;->getType()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 153
    const-string v1, "media_item_id"

    invoke-virtual {p0}, Lcom/android/videoeditor/TransitionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "media_item_id"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    const-string v1, "transition_id"

    invoke-virtual {p0}, Lcom/android/videoeditor/TransitionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "transition_id"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    const-string v1, "duration"

    iget-wide v2, p0, Lcom/android/videoeditor/TransitionsActivity;->mTransitionDurationMs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 160
    iget-object v1, p0, Lcom/android/videoeditor/TransitionsActivity;->mAdapter:Lcom/android/videoeditor/TransitionsAdapter;

    invoke-virtual {v1}, Lcom/android/videoeditor/TransitionsAdapter;->onDestroy()V

    .line 161
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/videoeditor/TransitionsActivity;->mAdapter:Lcom/android/videoeditor/TransitionsAdapter;

    .line 163
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/videoeditor/TransitionsActivity;->setResult(ILandroid/content/Intent;)V

    .line 164
    invoke-virtual {p0}, Lcom/android/videoeditor/TransitionsActivity;->finish()V

    .line 165
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 116
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 118
    iget-object v0, p0, Lcom/android/videoeditor/TransitionsActivity;->mAdapter:Lcom/android/videoeditor/TransitionsAdapter;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/videoeditor/TransitionsActivity;->mAdapter:Lcom/android/videoeditor/TransitionsAdapter;

    invoke-virtual {v0}, Lcom/android/videoeditor/TransitionsAdapter;->onPause()V

    .line 121
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 108
    iget-object v0, p0, Lcom/android/videoeditor/TransitionsActivity;->mAdapter:Lcom/android/videoeditor/TransitionsAdapter;

    invoke-virtual {v0}, Lcom/android/videoeditor/TransitionsAdapter;->onResume()V

    .line 109
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 140
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 142
    const-string v0, "duration"

    iget-wide v1, p0, Lcom/android/videoeditor/TransitionsActivity;->mTransitionDurationMs:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 143
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x0

    return v0
.end method
