.class public Lcom/google/android/talk/SetStatusActivity;
.super Landroid/app/Activity;
.source "SetStatusActivity.java"

# interfaces
.implements Lcom/google/android/talk/fragments/SetStatusFragment$Host;


# instance fields
.field mController:Lcom/google/android/talk/fragments/SetStatusFragment$Controller;

.field private mSetStatusActivityFragment:Lcom/google/android/talk/fragments/SetStatusFragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 67
    new-instance v0, Lcom/google/android/talk/SetStatusActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/talk/SetStatusActivity$1;-><init>(Lcom/google/android/talk/SetStatusActivity;)V

    iput-object v0, p0, Lcom/google/android/talk/SetStatusActivity;->mController:Lcom/google/android/talk/fragments/SetStatusFragment$Controller;

    return-void
.end method


# virtual methods
.method public getSetStatusController()Lcom/google/android/talk/fragments/SetStatusFragment$Controller;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/talk/SetStatusActivity;->mController:Lcom/google/android/talk/fragments/SetStatusFragment$Controller;

    return-object v0
.end method

.method protected final onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 63
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 64
    iget-object v0, p0, Lcom/google/android/talk/SetStatusActivity;->mSetStatusActivityFragment:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/talk/fragments/SetStatusFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 65
    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    const v2, 0x7f10002a

    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v1, 0x7f040030

    invoke-virtual {p0, v1}, Lcom/google/android/talk/SetStatusActivity;->setContentView(I)V

    .line 45
    invoke-virtual {p0, v2}, Lcom/google/android/talk/SetStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 46
    new-instance v1, Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-direct {v1}, Lcom/google/android/talk/fragments/SetStatusFragment;-><init>()V

    iput-object v1, p0, Lcom/google/android/talk/SetStatusActivity;->mSetStatusActivityFragment:Lcom/google/android/talk/fragments/SetStatusFragment;

    .line 47
    invoke-virtual {p0}, Lcom/google/android/talk/SetStatusActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 48
    .local v0, transaction:Landroid/app/FragmentTransaction;
    iget-object v1, p0, Lcom/google/android/talk/SetStatusActivity;->mSetStatusActivityFragment:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 49
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 51
    .end local v0           #transaction:Landroid/app/FragmentTransaction;
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "m"

    .prologue
    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, retval:Z
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 57
    iget-object v1, p0, Lcom/google/android/talk/SetStatusActivity;->mSetStatusActivityFragment:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-virtual {v1, p1}, Lcom/google/android/talk/fragments/SetStatusFragment;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 58
    return v0
.end method
