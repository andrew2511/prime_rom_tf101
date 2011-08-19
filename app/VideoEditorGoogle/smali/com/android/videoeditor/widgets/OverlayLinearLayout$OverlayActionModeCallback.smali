.class Lcom/android/videoeditor/widgets/OverlayLinearLayout$OverlayActionModeCallback;
.super Ljava/lang/Object;
.source "OverlayLinearLayout.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/videoeditor/widgets/OverlayLinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverlayActionModeCallback"
.end annotation


# instance fields
.field private final mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

.field final synthetic this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;


# direct methods
.method public constructor <init>(Lcom/android/videoeditor/widgets/OverlayLinearLayout;Lcom/android/videoeditor/service/MovieMediaItem;)V
    .locals 0
    .parameter
    .parameter "mediaItem"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$OverlayActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p2, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$OverlayActionModeCallback;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    .line 100
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "mode"
    .parameter "item"

    .prologue
    const/16 v6, 0xd

    .line 134
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 162
    .end local p0
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 136
    .restart local p0
    :pswitch_0
    iget-object v4, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$OverlayActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-virtual {v4}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 137
    .local v0, activity:Landroid/app/Activity;
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/android/videoeditor/OverlaysActivity;

    invoke-direct {v2, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 138
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "media_item_id"

    iget-object v5, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$OverlayActionModeCallback;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v5}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    iget-object v4, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$OverlayActionModeCallback;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieMediaItem;->getOverlay()Lcom/android/videoeditor/service/MovieOverlay;

    move-result-object v3

    .line 141
    .local v3, overlay:Lcom/android/videoeditor/service/MovieOverlay;
    const-string v4, "overlay_id"

    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieOverlay;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    const-string v4, "attributes"

    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieOverlay;->buildUserAttributes()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 144
    invoke-virtual {v0, v2, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 150
    .end local v0           #activity:Landroid/app/Activity;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #overlay:Lcom/android/videoeditor/service/MovieOverlay;
    :pswitch_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 151
    .local v1, bundle:Landroid/os/Bundle;
    const-string v4, "media_item_id"

    iget-object v5, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$OverlayActionModeCallback;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v5}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v4, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$OverlayActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-virtual {v4}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0, v6, v1}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 134
    nop

    :pswitch_data_0
    .packed-switch 0x7f080042
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 106
    iget-object v1, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$OverlayActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-static {v1, p1}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->access$002(Lcom/android/videoeditor/widgets/OverlayLinearLayout;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 108
    iget-object v1, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$OverlayActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-virtual {v1}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 109
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f0b0001

    invoke-virtual {v1, v2, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 110
    iget-object v1, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$OverlayActionModeCallback;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v1}, Lcom/android/videoeditor/service/MovieMediaItem;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/videoeditor/util/FileUtils;->getSimpleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 111
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 169
    iget-object v1, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$OverlayActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    iget-object v2, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$OverlayActionModeCallback;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->access$300(Lcom/android/videoeditor/widgets/OverlayLinearLayout;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 170
    .local v0, overlayView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 171
    iget-object v1, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$OverlayActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->access$400(Lcom/android/videoeditor/widgets/OverlayLinearLayout;Landroid/view/View;Z)V

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$OverlayActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->access$002(Lcom/android/videoeditor/widgets/OverlayLinearLayout;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 175
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 5
    .parameter "mode"
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    .line 118
    iget-object v3, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$OverlayActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-static {v3}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->access$100(Lcom/android/videoeditor/widgets/OverlayLinearLayout;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/videoeditor/service/ApiService;->isProjectEdited(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$OverlayActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    invoke-static {v3}, Lcom/android/videoeditor/widgets/OverlayLinearLayout;->access$200(Lcom/android/videoeditor/widgets/OverlayLinearLayout;)Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v4

    .line 121
    .local v0, enable:Z
    :goto_0
    const v3, 0x7f080042

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 122
    .local v1, eomi:Landroid/view/MenuItem;
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 124
    const v3, 0x7f080043

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 125
    .local v2, romi:Landroid/view/MenuItem;
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 127
    return v4

    .line 118
    .end local v0           #enable:Z
    .end local v1           #eomi:Landroid/view/MenuItem;
    .end local v2           #romi:Landroid/view/MenuItem;
    :cond_0
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method
