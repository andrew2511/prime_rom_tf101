.class Lcom/android/browser/PieControl$2;
.super Ljava/lang/Object;
.source "PieControl.java"

# interfaces
.implements Lcom/android/browser/view/PieMenu$PieView$OnLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/PieControl;->attachToContainer(Landroid/widget/FrameLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/PieControl;


# direct methods
.method constructor <init>(Lcom/android/browser/PieControl;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/browser/PieControl$2;->this$0:Lcom/android/browser/PieControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayout(IIZ)V
    .locals 1
    .parameter "ax"
    .parameter "ay"
    .parameter "left"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/browser/PieControl$2;->this$0:Lcom/android/browser/PieControl;

    invoke-static {v0}, Lcom/android/browser/PieControl;->access$100(Lcom/android/browser/PieControl;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->openOptionsMenu()V

    .line 111
    return-void
.end method
