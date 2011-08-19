.class Landroid/widget/TextView$InsertionPointCursorController$2;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TextView$InsertionPointCursorController;->hideDelayed()V
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
    .line 9083
    iput-object p1, p0, Landroid/widget/TextView$InsertionPointCursorController$2;->this$1:Landroid/widget/TextView$InsertionPointCursorController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 9085
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController$2;->this$1:Landroid/widget/TextView$InsertionPointCursorController;

    invoke-virtual {v0}, Landroid/widget/TextView$InsertionPointCursorController;->hide()V

    .line 9086
    return-void
.end method
