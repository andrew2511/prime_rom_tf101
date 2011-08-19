.class public Lcom/android/videoeditor/OverlaysActivity;
.super Landroid/app/ListActivity;
.source "OverlaysActivity.java"


# static fields
.field public static final PARAM_MEDIA_ITEM_ID:Ljava/lang/String; = "media_item_id"

.field public static final PARAM_OVERLAY_ATTRIBUTES:Ljava/lang/String; = "attributes"

.field public static final PARAM_OVERLAY_ID:Ljava/lang/String; = "overlay_id"

.field private static final REQUEST_CODE_SET_TITLE:I = 0x1


# instance fields
.field private mAdapter:Lcom/android/videoeditor/OverlaysAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "extras"

    .prologue
    .line 123
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 124
    if-nez p2, :cond_0

    .line 143
    :goto_0
    return-void

    .line 128
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 131
    :pswitch_0
    iget-object v0, p0, Lcom/android/videoeditor/OverlaysActivity;->mAdapter:Lcom/android/videoeditor/OverlaysAdapter;

    invoke-virtual {v0}, Lcom/android/videoeditor/OverlaysAdapter;->onDestroy()V

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/videoeditor/OverlaysActivity;->mAdapter:Lcom/android/videoeditor/OverlaysAdapter;

    .line 134
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p3}, Lcom/android/videoeditor/OverlaysActivity;->setResult(ILandroid/content/Intent;)V

    .line 135
    invoke-virtual {p0}, Lcom/android/videoeditor/OverlaysActivity;->finish()V

    goto :goto_0

    .line 128
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v0, 0x7f04000d

    invoke-virtual {p0, v0}, Lcom/android/videoeditor/OverlaysActivity;->setContentView(I)V

    .line 49
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/videoeditor/OverlaysActivity;->setFinishOnTouchOutside(Z)V

    .line 52
    new-instance v0, Lcom/android/videoeditor/OverlaysAdapter;

    invoke-virtual {p0}, Lcom/android/videoeditor/OverlaysActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/videoeditor/OverlaysAdapter;-><init>(Landroid/content/Context;Landroid/widget/AbsListView;)V

    iput-object v0, p0, Lcom/android/videoeditor/OverlaysActivity;->mAdapter:Lcom/android/videoeditor/OverlaysAdapter;

    .line 53
    iget-object v0, p0, Lcom/android/videoeditor/OverlaysActivity;->mAdapter:Lcom/android/videoeditor/OverlaysAdapter;

    invoke-virtual {p0, v0}, Lcom/android/videoeditor/OverlaysActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 54
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 83
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 85
    iget-object v0, p0, Lcom/android/videoeditor/OverlaysActivity;->mAdapter:Lcom/android/videoeditor/OverlaysAdapter;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/videoeditor/OverlaysActivity;->mAdapter:Lcom/android/videoeditor/OverlaysAdapter;

    invoke-virtual {v0}, Lcom/android/videoeditor/OverlaysAdapter;->onDestroy()V

    .line 88
    :cond_0
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 8
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v7, 0x0

    .line 95
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/android/videoeditor/OverlayTitleActivity;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "media_item_id"

    invoke-virtual {p0}, Lcom/android/videoeditor/OverlaysActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "media_item_id"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    iget-object v4, p0, Lcom/android/videoeditor/OverlaysActivity;->mAdapter:Lcom/android/videoeditor/OverlaysAdapter;

    invoke-virtual {v4, p3}, Lcom/android/videoeditor/OverlaysAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/videoeditor/OverlayType;

    invoke-virtual {v4}, Lcom/android/videoeditor/OverlayType;->getType()I

    move-result v3

    .line 100
    .local v3, type:I
    invoke-virtual {p0}, Lcom/android/videoeditor/OverlaysActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "attributes"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 101
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 102
    const-string v4, "attributes"

    invoke-static {v0}, Lcom/android/videoeditor/service/MovieOverlay;->getTitle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Lcom/android/videoeditor/service/MovieOverlay;->getSubtitle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/android/videoeditor/service/MovieOverlay;->buildUserAttributes(ILjava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 110
    :goto_0
    invoke-virtual {p0}, Lcom/android/videoeditor/OverlaysActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "overlay_id"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, overlayId:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 112
    const-string v4, "overlay_id"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    :cond_0
    const/4 v4, 0x1

    invoke-virtual {p0, v1, v4}, Lcom/android/videoeditor/OverlaysActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 116
    return-void

    .line 106
    .end local v2           #overlayId:Ljava/lang/String;
    :cond_1
    const-string v4, "attributes"

    invoke-static {v3, v7, v7}, Lcom/android/videoeditor/service/MovieOverlay;->buildUserAttributes(ILjava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 73
    iget-object v0, p0, Lcom/android/videoeditor/OverlaysActivity;->mAdapter:Lcom/android/videoeditor/OverlaysAdapter;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/videoeditor/OverlaysActivity;->mAdapter:Lcom/android/videoeditor/OverlaysAdapter;

    invoke-virtual {v0}, Lcom/android/videoeditor/OverlaysAdapter;->onPause()V

    .line 76
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 63
    iget-object v0, p0, Lcom/android/videoeditor/OverlaysActivity;->mAdapter:Lcom/android/videoeditor/OverlaysAdapter;

    invoke-virtual {v0}, Lcom/android/videoeditor/OverlaysAdapter;->onResume()V

    .line 64
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    return v0
.end method
