.class Lcom/android/videoeditor/widgets/MediaLinearLayout$TransitionActionModeCallback;
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
    name = "TransitionActionModeCallback"
.end annotation


# instance fields
.field private final mTransition:Lcom/android/videoeditor/service/MovieTransition;

.field final synthetic this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;


# direct methods
.method public constructor <init>(Lcom/android/videoeditor/widgets/MediaLinearLayout;Lcom/android/videoeditor/service/MovieTransition;)V
    .locals 0
    .parameter
    .parameter "transition"

    .prologue
    .line 332
    iput-object p1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$TransitionActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    iput-object p2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$TransitionActionModeCallback;->mTransition:Lcom/android/videoeditor/service/MovieTransition;

    .line 334
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "mode"
    .parameter "item"

    .prologue
    .line 370
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 389
    .end local p0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 372
    .restart local p0
    :pswitch_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 373
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "transition_id"

    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$TransitionActionModeCallback;->mTransition:Lcom/android/videoeditor/service/MovieTransition;

    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieTransition;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$TransitionActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-virtual {v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/Activity;

    const/16 v1, 0xb

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 380
    .end local v0           #bundle:Landroid/os/Bundle;
    .restart local p0
    :pswitch_1
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$TransitionActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$TransitionActionModeCallback;->mTransition:Lcom/android/videoeditor/service/MovieTransition;

    invoke-static {v1, v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$1400(Lcom/android/videoeditor/widgets/MediaLinearLayout;Lcom/android/videoeditor/service/MovieTransition;)V

    goto :goto_0

    .line 370
    nop

    :pswitch_data_0
    .packed-switch 0x7f080045
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 340
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$TransitionActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v1, p1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$1302(Lcom/android/videoeditor/widgets/MediaLinearLayout;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 342
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$TransitionActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-virtual {v1}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 343
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f0b0003

    invoke-virtual {v1, v2, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 345
    const v1, 0x7f090022

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 347
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 396
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$TransitionActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$TransitionActionModeCallback;->mTransition:Lcom/android/videoeditor/service/MovieTransition;

    invoke-virtual {v2}, Lcom/android/videoeditor/service/MovieTransition;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$1500(Lcom/android/videoeditor/widgets/MediaLinearLayout;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 397
    .local v0, transitionView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 398
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$TransitionActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$1100(Lcom/android/videoeditor/widgets/MediaLinearLayout;Landroid/view/View;Z)V

    .line 401
    :cond_0
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$TransitionActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$1302(Lcom/android/videoeditor/widgets/MediaLinearLayout;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 403
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$TransitionActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$1200(Lcom/android/videoeditor/widgets/MediaLinearLayout;Z)V

    .line 404
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 5
    .parameter "mode"
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    .line 354
    iget-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$TransitionActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v3}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$100(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Lcom/android/videoeditor/service/VideoEditorProject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/videoeditor/service/VideoEditorProject;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/videoeditor/service/ApiService;->isProjectEdited(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$TransitionActionModeCallback;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    invoke-static {v3}, Lcom/android/videoeditor/widgets/MediaLinearLayout;->access$200(Lcom/android/videoeditor/widgets/MediaLinearLayout;)Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v4

    .line 357
    .local v0, enable:Z
    :goto_0
    const v3, 0x7f080045

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 358
    .local v1, etmi:Landroid/view/MenuItem;
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 360
    const v3, 0x7f080046

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 361
    .local v2, rtmi:Landroid/view/MenuItem;
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 363
    return v4

    .line 354
    .end local v0           #enable:Z
    .end local v1           #etmi:Landroid/view/MenuItem;
    .end local v2           #rtmi:Landroid/view/MenuItem;
    :cond_0
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method
