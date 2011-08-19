.class Lcom/android/deskclock/DeskClock$12;
.super Ljava/lang/Object;
.source "DeskClock.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/DeskClock;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/DeskClock;

.field final synthetic val$alarmView:Landroid/view/View;

.field final synthetic val$nightmodeButton:Landroid/widget/ImageButton;


# direct methods
.method constructor <init>(Lcom/android/deskclock/DeskClock;Landroid/widget/ImageButton;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 801
    iput-object p1, p0, Lcom/android/deskclock/DeskClock$12;->this$0:Lcom/android/deskclock/DeskClock;

    iput-object p2, p0, Lcom/android/deskclock/DeskClock$12;->val$nightmodeButton:Landroid/widget/ImageButton;

    iput-object p3, p0, Lcom/android/deskclock/DeskClock$12;->val$alarmView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "oldFocus"
    .parameter "newFocus"

    .prologue
    .line 803
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/deskclock/DeskClock$12;->val$nightmodeButton:Landroid/widget/ImageButton;

    if-ne p2, v0, :cond_0

    .line 804
    iget-object v0, p0, Lcom/android/deskclock/DeskClock$12;->val$alarmView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 806
    :cond_0
    return-void
.end method
