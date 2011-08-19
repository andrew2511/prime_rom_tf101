.class Lcom/android/videoeditor/widgets/MediaLinearLayout$8;
.super Ljava/lang/Object;
.source "MediaLinearLayout.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/videoeditor/widgets/MediaLinearLayout;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/android/videoeditor/widgets/MediaLinearLayout;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1614
    iput-object p1, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$8;->this$0:Lcom/android/videoeditor/widgets/MediaLinearLayout;

    iput-object p2, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$8;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1619
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaLinearLayout$8;->val$activity:Landroid/app/Activity;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    .line 1620
    return-void
.end method
