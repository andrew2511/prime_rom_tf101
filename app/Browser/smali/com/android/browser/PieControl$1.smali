.class Lcom/android/browser/PieControl$1;
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
    .line 97
    iput-object p1, p0, Lcom/android/browser/PieControl$1;->this$0:Lcom/android/browser/PieControl;

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
    .line 100
    iget-object v0, p0, Lcom/android/browser/PieControl$1;->this$0:Lcom/android/browser/PieControl;

    invoke-static {v0}, Lcom/android/browser/PieControl;->access$000(Lcom/android/browser/PieControl;)V

    .line 101
    return-void
.end method
