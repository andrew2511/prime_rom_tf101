.class Lcom/android/videoeditor/widgets/OverlayLinearLayout$5;
.super Ljava/lang/Object;
.source "OverlayLinearLayout.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/videoeditor/widgets/OverlayLinearLayout;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/android/videoeditor/widgets/OverlayLinearLayout;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 762
    iput-object p1, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$5;->this$0:Lcom/android/videoeditor/widgets/OverlayLinearLayout;

    iput-object p2, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$5;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 767
    iget-object v0, p0, Lcom/android/videoeditor/widgets/OverlayLinearLayout$5;->val$activity:Landroid/app/Activity;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    .line 768
    return-void
.end method
