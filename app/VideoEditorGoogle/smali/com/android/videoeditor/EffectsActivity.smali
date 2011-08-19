.class public Lcom/android/videoeditor/EffectsActivity;
.super Landroid/app/ListActivity;
.source "EffectsActivity.java"


# static fields
.field public static final PARAM_CATEGORY:Ljava/lang/String; = "category"

.field public static final PARAM_EFFECT_TYPE:Ljava/lang/String; = "effect"

.field public static final PARAM_END_RECT:Ljava/lang/String; = "end_rect"

.field public static final PARAM_FILENAME:Ljava/lang/String; = "filename"

.field public static final PARAM_HEIGHT:Ljava/lang/String; = "height"

.field public static final PARAM_MEDIA_ITEM_ID:Ljava/lang/String; = "media_item_id"

.field public static final PARAM_START_RECT:Ljava/lang/String; = "start_rect"

.field public static final PARAM_WIDTH:Ljava/lang/String; = "width"

.field public static final REQUEST_CODE_KEN_BURNS:I = 0xb


# instance fields
.field private mAdapter:Lcom/android/videoeditor/EffectsAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "extras"

    .prologue
    const/4 v4, 0x0

    .line 147
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 148
    if-nez p2, :cond_0

    .line 173
    :goto_0
    return-void

    .line 152
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 154
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 155
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "effect"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 156
    const-string v1, "media_item_id"

    invoke-virtual {p0}, Lcom/android/videoeditor/EffectsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "media_item_id"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    const-string v1, "effect"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 159
    const-string v1, "start_rect"

    const-string v2, "start_rect"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 161
    const-string v1, "end_rect"

    const-string v2, "end_rect"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 164
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/videoeditor/EffectsActivity;->setResult(ILandroid/content/Intent;)V

    .line 165
    invoke-virtual {p0}, Lcom/android/videoeditor/EffectsActivity;->finish()V

    goto :goto_0

    .line 152
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x1

    .line 51
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v3, 0x7f04000d

    invoke-virtual {p0, v3}, Lcom/android/videoeditor/EffectsActivity;->setContentView(I)V

    .line 53
    invoke-virtual {p0, v7}, Lcom/android/videoeditor/EffectsActivity;->setFinishOnTouchOutside(Z)V

    .line 56
    new-instance v3, Lcom/android/videoeditor/EffectsAdapter;

    invoke-virtual {p0}, Lcom/android/videoeditor/EffectsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/videoeditor/EffectsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "category"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-direct {v3, p0, v4, v5}, Lcom/android/videoeditor/EffectsAdapter;-><init>(Landroid/content/Context;Landroid/widget/AbsListView;I)V

    iput-object v3, p0, Lcom/android/videoeditor/EffectsActivity;->mAdapter:Lcom/android/videoeditor/EffectsAdapter;

    .line 58
    iget-object v3, p0, Lcom/android/videoeditor/EffectsActivity;->mAdapter:Lcom/android/videoeditor/EffectsAdapter;

    invoke-virtual {p0, v3}, Lcom/android/videoeditor/EffectsActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 60
    invoke-virtual {p0}, Lcom/android/videoeditor/EffectsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "effect"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 61
    .local v0, effectType:I
    if-ltz v0, :cond_0

    .line 63
    iget-object v3, p0, Lcom/android/videoeditor/EffectsActivity;->mAdapter:Lcom/android/videoeditor/EffectsAdapter;

    invoke-virtual {v3}, Lcom/android/videoeditor/EffectsAdapter;->getEffects()[Lcom/android/videoeditor/EffectType;

    move-result-object v1

    .line 64
    .local v1, effects:[Lcom/android/videoeditor/EffectType;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 65
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lcom/android/videoeditor/EffectType;->getType()I

    move-result v3

    if-ne v3, v0, :cond_1

    .line 66
    invoke-virtual {p0, v2}, Lcom/android/videoeditor/EffectsActivity;->setSelection(I)V

    .line 71
    .end local v1           #effects:[Lcom/android/videoeditor/EffectType;
    .end local v2           #i:I
    :cond_0
    return-void

    .line 64
    .restart local v1       #effects:[Lcom/android/videoeditor/EffectType;
    .restart local v2       #i:I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 100
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 102
    iget-object v0, p0, Lcom/android/videoeditor/EffectsActivity;->mAdapter:Lcom/android/videoeditor/EffectsAdapter;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/videoeditor/EffectsActivity;->mAdapter:Lcom/android/videoeditor/EffectsAdapter;

    invoke-virtual {v0}, Lcom/android/videoeditor/EffectsAdapter;->onDestroy()V

    .line 105
    :cond_0
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 7
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v6, 0x0

    .line 112
    iget-object v3, p0, Lcom/android/videoeditor/EffectsActivity;->mAdapter:Lcom/android/videoeditor/EffectsAdapter;

    invoke-virtual {v3, p3}, Lcom/android/videoeditor/EffectsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/videoeditor/EffectType;

    invoke-virtual {v3}, Lcom/android/videoeditor/EffectType;->getType()I

    move-result v0

    .line 113
    .local v0, effectType:I
    if-nez v0, :cond_0

    .line 114
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/videoeditor/KenBurnsActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 115
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "media_item_id"

    invoke-virtual {p0}, Lcom/android/videoeditor/EffectsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "media_item_id"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    const-string v3, "filename"

    invoke-virtual {p0}, Lcom/android/videoeditor/EffectsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "filename"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    const-string v3, "width"

    invoke-virtual {p0}, Lcom/android/videoeditor/EffectsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "width"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 120
    const-string v3, "height"

    invoke-virtual {p0}, Lcom/android/videoeditor/EffectsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "height"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 122
    const-string v3, "start_rect"

    invoke-virtual {p0}, Lcom/android/videoeditor/EffectsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "start_rect"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 124
    const-string v3, "end_rect"

    invoke-virtual {p0}, Lcom/android/videoeditor/EffectsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "end_rect"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 127
    const/16 v3, 0xb

    invoke-virtual {p0, v2, v3}, Lcom/android/videoeditor/EffectsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 140
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 129
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 130
    .local v1, extras:Landroid/content/Intent;
    const-string v4, "effect"

    iget-object v3, p0, Lcom/android/videoeditor/EffectsActivity;->mAdapter:Lcom/android/videoeditor/EffectsAdapter;

    invoke-virtual {v3, p3}, Lcom/android/videoeditor/EffectsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/videoeditor/EffectType;

    invoke-virtual {v3}, Lcom/android/videoeditor/EffectType;->getType()I

    move-result v3

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 131
    const-string v3, "media_item_id"

    invoke-virtual {p0}, Lcom/android/videoeditor/EffectsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "media_item_id"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    iget-object v3, p0, Lcom/android/videoeditor/EffectsActivity;->mAdapter:Lcom/android/videoeditor/EffectsAdapter;

    invoke-virtual {v3}, Lcom/android/videoeditor/EffectsAdapter;->onDestroy()V

    .line 135
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/videoeditor/EffectsActivity;->mAdapter:Lcom/android/videoeditor/EffectsAdapter;

    .line 137
    const/4 v3, -0x1

    invoke-virtual {p0, v3, v1}, Lcom/android/videoeditor/EffectsActivity;->setResult(ILandroid/content/Intent;)V

    .line 138
    invoke-virtual {p0}, Lcom/android/videoeditor/EffectsActivity;->finish()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 88
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 90
    iget-object v0, p0, Lcom/android/videoeditor/EffectsActivity;->mAdapter:Lcom/android/videoeditor/EffectsAdapter;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/videoeditor/EffectsActivity;->mAdapter:Lcom/android/videoeditor/EffectsAdapter;

    invoke-virtual {v0}, Lcom/android/videoeditor/EffectsAdapter;->onPause()V

    .line 93
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 78
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 80
    iget-object v0, p0, Lcom/android/videoeditor/EffectsActivity;->mAdapter:Lcom/android/videoeditor/EffectsAdapter;

    invoke-virtual {v0}, Lcom/android/videoeditor/EffectsAdapter;->onResume()V

    .line 81
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    return v0
.end method
