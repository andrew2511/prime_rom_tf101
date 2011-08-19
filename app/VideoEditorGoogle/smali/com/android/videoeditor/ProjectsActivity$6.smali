.class Lcom/android/videoeditor/ProjectsActivity$6;
.super Ljava/lang/Object;
.source "ProjectsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 224
    iput-object p1, p0, Lcom/android/videoeditor/ProjectsActivity$6;->this$0:Lcom/android/videoeditor/ProjectsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/videoeditor/ProjectsActivity$6;->this$0:Lcom/android/videoeditor/ProjectsActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/ProjectsActivity;->removeDialog(I)V

    .line 230
    return-void
.end method
