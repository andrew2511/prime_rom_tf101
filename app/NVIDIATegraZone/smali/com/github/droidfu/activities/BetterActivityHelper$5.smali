.class final Lcom/github/droidfu/activities/BetterActivityHelper$5;
.super Ljava/lang/Object;
.source "BetterActivityHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/droidfu/activities/BetterActivityHelper;->newListDialog(Landroid/content/Context;Ljava/util/List;Lcom/github/droidfu/dialogs/DialogClickListener;Z)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$closeOnSelect:Z

.field final synthetic val$elements:Ljava/util/List;

.field final synthetic val$listener:Lcom/github/droidfu/dialogs/DialogClickListener;


# direct methods
.method constructor <init>(ZLcom/github/droidfu/dialogs/DialogClickListener;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 183
    iput-boolean p1, p0, Lcom/github/droidfu/activities/BetterActivityHelper$5;->val$closeOnSelect:Z

    iput-object p2, p0, Lcom/github/droidfu/activities/BetterActivityHelper$5;->val$listener:Lcom/github/droidfu/dialogs/DialogClickListener;

    iput-object p3, p0, Lcom/github/droidfu/activities/BetterActivityHelper$5;->val$elements:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/github/droidfu/activities/BetterActivityHelper$5;->val$closeOnSelect:Z

    if-eqz v0, :cond_0

    .line 187
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/github/droidfu/activities/BetterActivityHelper$5;->val$listener:Lcom/github/droidfu/dialogs/DialogClickListener;

    iget-object v1, p0, Lcom/github/droidfu/activities/BetterActivityHelper$5;->val$elements:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lcom/github/droidfu/dialogs/DialogClickListener;->onClick(ILjava/lang/Object;)V

    .line 189
    return-void
.end method
