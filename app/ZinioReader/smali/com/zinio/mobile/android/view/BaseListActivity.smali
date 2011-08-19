.class public Lcom/zinio/mobile/android/view/BaseListActivity;
.super Landroid/app/ListActivity;
.source "SourceFile"

# interfaces
.implements Lcom/zinio/mobile/android/view/cf;


# instance fields
.field private a:Z

.field b:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/BaseListActivity;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lcom/zinio/mobile/android/view/dialogs/m;)V
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/zinio/mobile/android/view/BaseListActivity;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    new-instance v0, Lcom/zinio/mobile/android/view/x;

    invoke-direct {v0, p0, p1}, Lcom/zinio/mobile/android/view/x;-><init>(Lcom/zinio/mobile/android/view/BaseListActivity;Lcom/zinio/mobile/android/view/dialogs/m;)V

    invoke-virtual {p1, v0}, Lcom/zinio/mobile/android/view/dialogs/m;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 38
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/zinio/mobile/android/view/BaseListActivity;->a:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 44
    iget-object v0, p0, Lcom/zinio/mobile/android/view/BaseListActivity;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zinio/mobile/android/view/dialogs/m;

    .line 45
    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/dialogs/m;->a()V

    goto :goto_0

    .line 47
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 79
    invoke-static {}, Lcom/zinio/mobile/android/App;->e()V

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zinio/mobile/android/view/BaseListActivity;->a:Z

    .line 81
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 61
    invoke-static {}, Lcom/zinio/mobile/android/App;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-static {v1}, Lcom/zinio/mobile/android/App;->a(Z)V

    .line 65
    const v0, 0x7f080067

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/BaseListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 66
    const v1, 0x7f080068

    invoke-virtual {p0, v1}, Lcom/zinio/mobile/android/view/BaseListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-static {v0, v1}, Lcom/zinio/mobile/android/a;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/BaseListActivity;->startActivity(Landroid/content/Intent;)V

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-static {}, Lcom/zinio/mobile/android/App;->d()V

    .line 72
    iput-boolean v1, p0, Lcom/zinio/mobile/android/view/BaseListActivity;->a:Z

    goto :goto_0
.end method
