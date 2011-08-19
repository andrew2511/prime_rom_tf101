.class public Lcom/zinio/mobile/android/view/BaseActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lcom/zinio/mobile/android/view/cf;


# instance fields
.field private a:Z

.field m:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/BaseActivity;->m:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lcom/zinio/mobile/android/view/dialogs/m;)V
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/zinio/mobile/android/view/BaseActivity;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    new-instance v0, Lcom/zinio/mobile/android/view/bw;

    invoke-direct {v0, p0, p1}, Lcom/zinio/mobile/android/view/bw;-><init>(Lcom/zinio/mobile/android/view/BaseActivity;Lcom/zinio/mobile/android/view/dialogs/m;)V

    invoke-virtual {p1, v0}, Lcom/zinio/mobile/android/view/dialogs/m;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 55
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/zinio/mobile/android/view/BaseActivity;->a:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 61
    iget-object v0, p0, Lcom/zinio/mobile/android/view/BaseActivity;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zinio/mobile/android/view/dialogs/m;

    .line 62
    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/dialogs/m;->a()V

    goto :goto_0

    .line 64
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 106
    invoke-static {}, Lcom/zinio/mobile/android/view/cq;->a()Lcom/zinio/mobile/android/view/cq;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zinio/mobile/android/view/cq;->a(Landroid/content/Context;)V

    .line 107
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 111
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 113
    invoke-static {}, Lcom/zinio/mobile/android/App;->e()V

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zinio/mobile/android/view/BaseActivity;->a:Z

    .line 115
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 87
    invoke-static {}, Lcom/zinio/mobile/android/view/cq;->a()Lcom/zinio/mobile/android/view/cq;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zinio/mobile/android/view/cq;->a(Landroid/content/Context;)V

    .line 89
    invoke-static {}, Lcom/zinio/mobile/android/App;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-static {v1}, Lcom/zinio/mobile/android/App;->a(Z)V

    .line 93
    const v0, 0x7f080067

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 94
    const v1, 0x7f080068

    invoke-virtual {p0, v1}, Lcom/zinio/mobile/android/view/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-static {v0, v1}, Lcom/zinio/mobile/android/a;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 101
    :goto_0
    return-void

    .line 99
    :cond_0
    invoke-static {}, Lcom/zinio/mobile/android/App;->d()V

    .line 100
    iput-boolean v1, p0, Lcom/zinio/mobile/android/view/BaseActivity;->a:Z

    goto :goto_0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 77
    invoke-static {}, Lcom/zinio/mobile/android/view/cq;->a()Lcom/zinio/mobile/android/view/cq;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zinio/mobile/android/view/cq;->a(Landroid/content/Context;)V

    .line 78
    return-void
.end method
