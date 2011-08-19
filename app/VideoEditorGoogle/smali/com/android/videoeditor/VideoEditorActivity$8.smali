.class Lcom/android/videoeditor/VideoEditorActivity$8;
.super Ljava/lang/Object;
.source "VideoEditorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/videoeditor/VideoEditorActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/videoeditor/VideoEditorActivity;

.field final synthetic val$aspectRatios:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/videoeditor/VideoEditorActivity;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 802
    iput-object p1, p0, Lcom/android/videoeditor/VideoEditorActivity$8;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    iput-object p2, p0, Lcom/android/videoeditor/VideoEditorActivity$8;->val$aspectRatios:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 807
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity$8;->val$aspectRatios:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 808
    .local v0, aspectRatio:I
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity$8;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    iget-object v2, p0, Lcom/android/videoeditor/VideoEditorActivity$8;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    iget-object v2, v2, Lcom/android/videoeditor/VideoEditorActivity;->mProjectPath:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/android/videoeditor/service/ApiService;->setAspectRatio(Landroid/content/Context;Ljava/lang/String;I)V

    .line 811
    iget-object v1, p0, Lcom/android/videoeditor/VideoEditorActivity$8;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/videoeditor/VideoEditorActivity;->removeDialog(I)V

    .line 812
    return-void
.end method
