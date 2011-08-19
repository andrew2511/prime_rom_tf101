.class Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;
.super Ljava/lang/Object;
.source "MediaLinearLayout.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/videoeditor/widgets/MediaLinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaItemActionModeCallback"
.end annotation


# instance fields
.field private final mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

.field final synthetic this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;


# direct methods
.method public constructor <init>(Lcom/android/videoeditor/widgets/MediaLinearLayout;Lcom/android/videoeditor/service/MovieMediaItem;)V
    .locals 0
    .parameter
    .parameter "mediaItem"

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-object p2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    .line 173
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "mode"
    .parameter "item"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 230
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 297
    .end local p0
    :goto_0
    return v5

    .line 232
    .restart local p0
    :pswitch_0
    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieMediaItem;->isImage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 233
    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    iget-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-static {v2, v6, v3}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$300(Lcom/android/videoeditor/widgets/MediaLinearLayout;ILcom/android/videoeditor/service/MovieMediaItem;)V

    goto :goto_0

    .line 235
    :cond_0
    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    iget-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-static {v2, v5, v3}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$300(Lcom/android/videoeditor/widgets/MediaLinearLayout;ILcom/android/videoeditor/service/MovieMediaItem;)V

    goto :goto_0

    .line 241
    :pswitch_1
    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieMediaItem;->isImage()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 242
    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    iget-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieMediaItem;->getEffect()Lcom/android/videoeditor/service/MovieEffect;

    move-result-object v4

    invoke-static {v2, v6, v3, v4}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$400(Lcom/android/videoeditor/widgets/MediaLinearLayout;ILcom/android/videoeditor/service/MovieMediaItem;Lcom/android/videoeditor/service/MovieEffect;)V

    goto :goto_0

    .line 244
    :cond_1
    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    iget-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    iget-object v4, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieMediaItem;->getEffect()Lcom/android/videoeditor/service/MovieEffect;

    move-result-object v4

    invoke-static {v2, v5, v3, v4}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$400(Lcom/android/videoeditor/widgets/MediaLinearLayout;ILcom/android/videoeditor/service/MovieMediaItem;Lcom/android/videoeditor/service/MovieEffect;)V

    goto :goto_0

    .line 250
    :pswitch_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 251
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "media_item_id"

    iget-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-virtual {v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/Activity;

    const/16 v2, 0xe

    invoke-virtual {p0, v2, v0}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 258
    .end local v0           #bundle:Landroid/os/Bundle;
    .restart local p0
    :pswitch_3
    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    iget-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$500(Lcom/android/videoeditor/widgets/MediaLinearLayout;Ljava/lang/String;)V

    goto :goto_0

    .line 263
    :pswitch_4
    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$100(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v2

    iget-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/videoeditor/service/VideoEditorProject;->getPreviousMediaItem(Ljava/lang/String;)Lcom/android/videoeditor/service/MovieMediaItem;

    move-result-object v1

    .line 265
    .local v1, prevMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v2, v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$600(Lcom/android/videoeditor/widgets/MediaLinearLayout;Lcom/android/videoeditor/service/MovieMediaItem;)Z

    goto :goto_0

    .line 270
    .end local v1           #prevMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    :pswitch_5
    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    iget-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-static {v2, v3}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$600(Lcom/android/videoeditor/widgets/MediaLinearLayout;Lcom/android/videoeditor/service/MovieMediaItem;)Z

    goto/16 :goto_0

    .line 275
    :pswitch_6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 276
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v2, "media_item_id"

    iget-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v2, "rendering_mode"

    iget-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppRenderingMode()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 279
    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-virtual {v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/Activity;

    const/16 v2, 0xc

    invoke-virtual {p0, v2, v0}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    goto/16 :goto_0

    .line 285
    .end local v0           #bundle:Landroid/os/Bundle;
    .restart local p0
    :pswitch_7
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 286
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v2, "media_item_id"

    iget-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v3}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-virtual {v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/Activity;

    const/16 v2, 0xa

    invoke-virtual {p0, v2, v0}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    goto/16 :goto_0

    .line 230
    :pswitch_data_0
    .packed-switch 0x7f08003a
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 179
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v1, p1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$002(Lcom/android/videoeditor/widgets/MediaLinearLayout;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 181
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-virtual {v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 182
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const/high16 v2, 0x7f0b

    invoke-virtual {v1, v2, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 183
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v1}, Lcom/android/videoeditor/service/MovieMediaItem;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/videoeditor/util/FileUtils;->getSimpleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 185
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 304
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$700(Lcom/android/videoeditor/widgets/MediaLinearLayout;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 305
    .local v0, mediaItemView:Landroid/view/View;
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$800(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 306
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$900(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/widgets/HandleView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/videoeditor/widgets/HandleView;->endMove()V

    .line 307
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$1000(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/widgets/HandleView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/videoeditor/widgets/HandleView;->endMove()V

    .line 310
    :cond_0
    if-eqz v0, :cond_1

    .line 311
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$1100(Lcom/android/videoeditor/widgets/MediaLinearLayout;Landroid/view/View;Z)V

    .line 314
    :cond_1
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$002(Lcom/android/videoeditor/widgets/MediaLinearLayout;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 316
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$1200(Lcom/android/videoeditor/widgets/MediaLinearLayout;Z)V

    .line 317
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 11
    .parameter "mode"
    .parameter "menu"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 192
    iget-object v8, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v8}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$100(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/videoeditor/service/ApiService;->isProjectEdited(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v8}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$200(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Z

    move-result v8

    if-nez v8, :cond_0

    move v4, v9

    .line 195
    .local v4, enable:Z
    :goto_0
    const v8, 0x7f08003a

    invoke-interface {p2, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 196
    .local v0, aemi:Landroid/view/MenuItem;
    iget-object v8, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v8}, Lcom/android/videoeditor/service/MovieMediaItem;->getEffect()Lcom/android/videoeditor/service/MovieEffect;

    move-result-object v8

    if-nez v8, :cond_1

    move v8, v9

    :goto_1
    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 197
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 199
    const v8, 0x7f08003b

    invoke-interface {p2, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 200
    .local v3, eemi:Landroid/view/MenuItem;
    iget-object v8, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v8}, Lcom/android/videoeditor/service/MovieMediaItem;->getEffect()Lcom/android/videoeditor/service/MovieEffect;

    move-result-object v8

    if-eqz v8, :cond_2

    move v8, v9

    :goto_2
    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 201
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 203
    const v8, 0x7f08003c

    invoke-interface {p2, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 204
    .local v6, remi:Landroid/view/MenuItem;
    iget-object v8, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v8}, Lcom/android/videoeditor/service/MovieMediaItem;->getEffect()Lcom/android/videoeditor/service/MovieEffect;

    move-result-object v8

    if-eqz v8, :cond_3

    move v8, v9

    :goto_3
    invoke-interface {v6, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 205
    invoke-interface {v6, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 207
    const v8, 0x7f08003d

    invoke-interface {p2, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 208
    .local v1, aomi:Landroid/view/MenuItem;
    iget-object v8, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v8}, Lcom/android/videoeditor/service/MovieMediaItem;->getOverlay()Lcom/android/videoeditor/service/MovieOverlay;

    move-result-object v8

    if-nez v8, :cond_4

    move v8, v9

    :goto_4
    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 209
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 211
    const v8, 0x7f08003e

    invoke-interface {p2, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 212
    .local v2, btmi:Landroid/view/MenuItem;
    iget-object v8, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v8}, Lcom/android/videoeditor/service/MovieMediaItem;->getBeginTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v8

    if-nez v8, :cond_5

    move v8, v9

    :goto_5
    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 213
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 215
    const v8, 0x7f08003f

    invoke-interface {p2, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 216
    .local v5, etmi:Landroid/view/MenuItem;
    iget-object v8, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->mMediaItem:Lcom/android/videoeditor/service/MovieMediaItem;

    invoke-virtual {v8}, Lcom/android/videoeditor/service/MovieMediaItem;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v8

    if-nez v8, :cond_6

    move v8, v9

    :goto_6
    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 217
    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 219
    const v8, 0x7f080040

    invoke-interface {p2, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 220
    .local v7, rmmi:Landroid/view/MenuItem;
    iget-object v8, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$MediaItemActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v8}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$100(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/videoeditor/service/VideoEditorProject;->hasMultipleAspectRatios()Z

    move-result v8

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 221
    invoke-interface {v7, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 223
    return v9

    .end local v0           #aemi:Landroid/view/MenuItem;
    .end local v1           #aomi:Landroid/view/MenuItem;
    .end local v2           #btmi:Landroid/view/MenuItem;
    .end local v3           #eemi:Landroid/view/MenuItem;
    .end local v4           #enable:Z
    .end local v5           #etmi:Landroid/view/MenuItem;
    .end local v6           #remi:Landroid/view/MenuItem;
    .end local v7           #rmmi:Landroid/view/MenuItem;
    :cond_0
    move v4, v10

    .line 192
    goto/16 :goto_0

    .restart local v0       #aemi:Landroid/view/MenuItem;
    .restart local v4       #enable:Z
    :cond_1
    move v8, v10

    .line 196
    goto/16 :goto_1

    .restart local v3       #eemi:Landroid/view/MenuItem;
    :cond_2
    move v8, v10

    .line 200
    goto :goto_2

    .restart local v6       #remi:Landroid/view/MenuItem;
    :cond_3
    move v8, v10

    .line 204
    goto :goto_3

    .restart local v1       #aomi:Landroid/view/MenuItem;
    :cond_4
    move v8, v10

    .line 208
    goto :goto_4

    .restart local v2       #btmi:Landroid/view/MenuItem;
    :cond_5
    move v8, v10

    .line 212
    goto :goto_5

    .restart local v5       #etmi:Landroid/view/MenuItem;
    :cond_6
    move v8, v10

    .line 216
    goto :goto_6
.end method
