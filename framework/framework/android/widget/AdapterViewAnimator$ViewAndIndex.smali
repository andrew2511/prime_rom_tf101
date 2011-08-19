.class Landroid/widget/AdapterViewAnimator$ViewAndIndex;
.super Ljava/lang/Object;
.source "AdapterViewAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AdapterViewAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewAndIndex"
.end annotation


# instance fields
.field index:I

.field final synthetic this$0:Landroid/widget/AdapterViewAnimator;

.field view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/widget/AdapterViewAnimator;Landroid/view/View;I)V
    .registers 4
    .parameter
    .parameter "v"
    .parameter "i"

    .prologue
    .line 211
    iput-object p1, p0, Landroid/widget/AdapterViewAnimator$ViewAndIndex;->this$0:Landroid/widget/AdapterViewAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iput-object p2, p0, Landroid/widget/AdapterViewAnimator$ViewAndIndex;->view:Landroid/view/View;

    .line 213
    iput p3, p0, Landroid/widget/AdapterViewAnimator$ViewAndIndex;->index:I

    .line 214
    return-void
.end method
