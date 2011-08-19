.class public Lcom/layar/ui/ResolverDialog;
.super Landroid/app/Dialog;
.source "ResolverDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/ui/ResolverDialog$ResolveListAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Dialog;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/layar/ui/ResolverDialog$ResolveListAdapter;

.field private mContext:Landroid/content/Context;

.field private mLayout:Lcom/layar/ui/RotateLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 4
    .parameter "context"
    .parameter "intent"
    .parameter "titleId"

    .prologue
    .line 37
    const v2, 0x7f0b0011

    invoke-direct {p0, p1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 38
    const v2, 0x7f03004a

    invoke-virtual {p0, v2}, Lcom/layar/ui/ResolverDialog;->setContentView(I)V

    .line 40
    const v2, 0x7f07001d

    invoke-virtual {p0, v2}, Lcom/layar/ui/ResolverDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/layar/ui/RotateLayout;

    iput-object v2, p0, Lcom/layar/ui/ResolverDialog;->mLayout:Lcom/layar/ui/RotateLayout;

    .line 41
    iput-object p1, p0, Lcom/layar/ui/ResolverDialog;->mContext:Landroid/content/Context;

    .line 43
    const v2, 0x7f0700b8

    invoke-virtual {p0, v2}, Lcom/layar/ui/ResolverDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 45
    const v2, 0x7f0700ba

    invoke-virtual {p0, v2}, Lcom/layar/ui/ResolverDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 46
    .local v0, list:Landroid/widget/ListView;
    new-instance v2, Lcom/layar/ui/ResolverDialog$ResolveListAdapter;

    invoke-direct {v2, p0, p1, p2}, Lcom/layar/ui/ResolverDialog$ResolveListAdapter;-><init>(Lcom/layar/ui/ResolverDialog;Landroid/content/Context;Landroid/content/Intent;)V

    iput-object v2, p0, Lcom/layar/ui/ResolverDialog;->mAdapter:Lcom/layar/ui/ResolverDialog$ResolveListAdapter;

    .line 47
    iget-object v2, p0, Lcom/layar/ui/ResolverDialog;->mAdapter:Lcom/layar/ui/ResolverDialog$ResolveListAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 48
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 50
    invoke-static {p1}, Lcom/layar/util/SensorHelper;->getInstance(Landroid/content/Context;)Lcom/layar/util/SensorHelper;

    move-result-object v1

    .line 51
    .local v1, rotationObserver:Lcom/layar/util/SensorHelper;
    iget-object v2, p0, Lcom/layar/ui/ResolverDialog;->mLayout:Lcom/layar/ui/RotateLayout;

    invoke-virtual {v1}, Lcom/layar/util/SensorHelper;->getLayoutRotation()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/layar/ui/RotateLayout;->setRotation(I)V

    .line 52
    iget-object v2, p0, Lcom/layar/ui/ResolverDialog;->mLayout:Lcom/layar/ui/RotateLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/layar/ui/RotateLayout;->useNewImplementation(Z)V

    .line 53
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "which"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, adapter:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/layar/ui/ResolverDialog;->mAdapter:Lcom/layar/ui/ResolverDialog$ResolveListAdapter;

    invoke-virtual {v1, p3}, Lcom/layar/ui/ResolverDialog$ResolveListAdapter;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v0

    .line 74
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/layar/ui/ResolverDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/layar/ui/ResolverDialog;->dismiss()V

    .line 78
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 82
    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    .line 83
    const/16 v0, 0x18

    if-ne p1, v0, :cond_1

    .line 84
    :cond_0
    const/4 v0, 0x1

    .line 86
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v4, 0x19

    const/4 v3, 0x1

    .line 91
    if-eq p1, v4, :cond_0

    .line 92
    const/16 v1, 0x18

    if-ne p1, v1, :cond_2

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/layar/ui/ResolverDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 95
    .local v0, audioManager:Landroid/media/AudioManager;
    if-ne p1, v4, :cond_1

    .line 96
    const/4 v1, -0x1

    .line 98
    :goto_0
    const/16 v2, 0x14

    .line 95
    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->adjustVolume(II)V

    move v1, v3

    .line 101
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :goto_1
    return v1

    .restart local v0       #audioManager:Landroid/media/AudioManager;
    :cond_1
    move v1, v3

    .line 97
    goto :goto_0

    .line 101
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1
.end method

.method public show()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 57
    iget-object v0, p0, Lcom/layar/ui/ResolverDialog;->mAdapter:Lcom/layar/ui/ResolverDialog$ResolveListAdapter;

    invoke-virtual {v0}, Lcom/layar/ui/ResolverDialog$ResolveListAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/layar/ui/ResolverDialog;->dismiss()V

    .line 59
    iget-object v0, p0, Lcom/layar/ui/ResolverDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 60
    const v1, 0x7f090100

    .line 59
    invoke-static {v0, v1, v2}, Lcom/layar/ui/SmartToast;->makeText(Landroid/content/Context;II)Lcom/layar/ui/SmartToast;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcom/layar/ui/SmartToast;->show()V

    .line 70
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/layar/ui/ResolverDialog;->mAdapter:Lcom/layar/ui/ResolverDialog$ResolveListAdapter;

    invoke-virtual {v0}, Lcom/layar/ui/ResolverDialog$ResolveListAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 64
    invoke-virtual {p0}, Lcom/layar/ui/ResolverDialog;->dismiss()V

    .line 65
    invoke-virtual {p0}, Lcom/layar/ui/ResolverDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/layar/ui/ResolverDialog;->mAdapter:Lcom/layar/ui/ResolverDialog$ResolveListAdapter;

    invoke-virtual {v1, v2}, Lcom/layar/ui/ResolverDialog$ResolveListAdapter;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 68
    :cond_1
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method
