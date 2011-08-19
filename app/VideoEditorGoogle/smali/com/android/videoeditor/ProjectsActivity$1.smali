.class Lcom/android/videoeditor/ProjectsActivity$1;
.super Ljava/lang/Object;
.source "ProjectsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/videoeditor/ProjectsActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/videoeditor/ProjectsActivity;


# direct methods
.method constructor <init>(Lcom/android/videoeditor/ProjectsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/videoeditor/ProjectsActivity$1;->this$0:Lcom/android/videoeditor/ProjectsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 176
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1
    const v2, 0x7f08000c

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 178
    .local v1, tv:Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, projectName:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/videoeditor/ProjectsActivity$1;->this$0:Lcom/android/videoeditor/ProjectsActivity;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/videoeditor/ProjectsActivity;->removeDialog(I)V

    .line 181
    iget-object v2, p0, Lcom/android/videoeditor/ProjectsActivity$1;->this$0:Lcom/android/videoeditor/ProjectsActivity;

    invoke-static {v2, v0}, Lcom/android/videoeditor/ProjectsActivity;->access$200(Lcom/android/videoeditor/ProjectsActivity;Ljava/lang/String;)V

    .line 182
    return-void
.end method
