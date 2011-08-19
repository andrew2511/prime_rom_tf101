.class Lcom/android/launcher2/Launcher$11;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher;->showPreviews(Landroid/view/View;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Launcher;

.field final synthetic val$anchor:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2425
    iput-object p1, p0, Lcom/android/launcher2/Launcher$11;->this$0:Lcom/android/launcher2/Launcher;

    iput-object p2, p0, Lcom/android/launcher2/Launcher$11;->val$anchor:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 2427
    iget-object v0, p0, Lcom/android/launcher2/Launcher$11;->this$0:Lcom/android/launcher2/Launcher;

    iget-object v1, p0, Lcom/android/launcher2/Launcher$11;->val$anchor:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/android/launcher2/Launcher;->access$1200(Lcom/android/launcher2/Launcher;Landroid/view/View;)V

    .line 2428
    return-void
.end method
