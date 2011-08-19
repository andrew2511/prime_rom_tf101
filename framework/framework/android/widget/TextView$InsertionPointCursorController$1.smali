.class Landroid/widget/TextView$InsertionPointCursorController$1;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TextView$InsertionPointCursorController;->show(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/TextView$InsertionPointCursorController;


# direct methods
.method constructor <init>(Landroid/widget/TextView$InsertionPointCursorController;)V
    .registers 2
    .parameter

    .prologue
    .line 9050
    iput-object p1, p0, Landroid/widget/TextView$InsertionPointCursorController$1;->this$1:Landroid/widget/TextView$InsertionPointCursorController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 9052
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController$1;->this$1:Landroid/widget/TextView$InsertionPointCursorController;

    #calls: Landroid/widget/TextView$InsertionPointCursorController;->getHandle()Landroid/widget/TextView$HandleView;
    invoke-static {v0}, Landroid/widget/TextView$InsertionPointCursorController;->access$5200(Landroid/widget/TextView$InsertionPointCursorController;)Landroid/widget/TextView$HandleView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView$HandleView;->showPastePopupWindow()V

    .line 9053
    return-void
.end method
