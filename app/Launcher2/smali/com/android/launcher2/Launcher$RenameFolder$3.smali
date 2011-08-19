.class Lcom/android/launcher2/Launcher$RenameFolder$3;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher$RenameFolder;->createDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/Launcher$RenameFolder;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher$RenameFolder;)V
    .locals 0
    .parameter

    .prologue
    .line 2555
    iput-object p1, p0, Lcom/android/launcher2/Launcher$RenameFolder$3;->this$1:Lcom/android/launcher2/Launcher$RenameFolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2557
    iget-object v0, p0, Lcom/android/launcher2/Launcher$RenameFolder$3;->this$1:Lcom/android/launcher2/Launcher$RenameFolder;

    invoke-static {v0}, Lcom/android/launcher2/Launcher$RenameFolder;->access$1700(Lcom/android/launcher2/Launcher$RenameFolder;)V

    .line 2558
    return-void
.end method
