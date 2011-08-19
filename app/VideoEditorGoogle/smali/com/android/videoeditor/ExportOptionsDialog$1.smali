.class final Lcom/android/videoeditor/ExportOptionsDialog$1;
.super Ljava/lang/Object;
.source "ExportOptionsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/videoeditor/ExportOptionsDialog;->create(Landroid/content/Context;Lcom/android/videoeditor/ExportOptionsDialog$ExportOptionsListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$aspectRatio:I

.field final synthetic val$myView:Landroid/view/View;

.field final synthetic val$positiveListener:Lcom/android/videoeditor/ExportOptionsDialog$ExportOptionsListener;


# direct methods
.method constructor <init>(Landroid/view/View;ILcom/android/videoeditor/ExportOptionsDialog$ExportOptionsListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/videoeditor/ExportOptionsDialog$1;->val$myView:Landroid/view/View;

    iput p2, p0, Lcom/android/videoeditor/ExportOptionsDialog$1;->val$aspectRatio:I

    iput-object p3, p0, Lcom/android/videoeditor/ExportOptionsDialog$1;->val$positiveListener:Lcom/android/videoeditor/ExportOptionsDialog$ExportOptionsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 81
    iget-object v4, p0, Lcom/android/videoeditor/ExportOptionsDialog$1;->val$myView:Landroid/view/View;

    const v5, 0x7f080012

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 83
    .local v3, sizeSpinner:Landroid/widget/Spinner;
    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    iget v5, p0, Lcom/android/videoeditor/ExportOptionsDialog$1;->val$aspectRatio:I

    invoke-static {v4, v5}, Lcom/android/videoeditor/ExportOptionsDialog;->access$000(II)I

    move-result v1

    .line 85
    .local v1, movieHeight:I
    iget-object v4, p0, Lcom/android/videoeditor/ExportOptionsDialog$1;->val$myView:Landroid/view/View;

    const v5, 0x7f080013

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 87
    .local v2, qualitySpinner:Landroid/widget/Spinner;
    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    invoke-static {v4}, Lcom/android/videoeditor/ExportOptionsDialog;->access$100(I)I

    move-result v0

    .line 89
    .local v0, movieBitrate:I
    iget-object v4, p0, Lcom/android/videoeditor/ExportOptionsDialog$1;->val$positiveListener:Lcom/android/videoeditor/ExportOptionsDialog$ExportOptionsListener;

    invoke-interface {v4, v1, v0}, Lcom/android/videoeditor/ExportOptionsDialog$ExportOptionsListener;->onExportOptions(II)V

    .line 90
    return-void
.end method
