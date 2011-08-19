.class Lcom/android/contacts/quickcontact/QuickContactWindow$4;
.super Ljava/lang/Object;
.source "QuickContactWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/quickcontact/QuickContactWindow;->animateExpand(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/quickcontact/QuickContactWindow;

.field final synthetic val$oldBottom:I


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/QuickContactWindow;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 983
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow$4;->this$0:Lcom/android/contacts/quickcontact/QuickContactWindow;

    iput p2, p0, Lcom/android/contacts/quickcontact/QuickContactWindow$4;->val$oldBottom:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const-wide/16 v8, 0x64

    .line 986
    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactWindow$4;->this$0:Lcom/android/contacts/quickcontact/QuickContactWindow;

    invoke-static {v3}, Lcom/android/contacts/quickcontact/QuickContactWindow;->access$400(Lcom/android/contacts/quickcontact/QuickContactWindow;)Lcom/android/contacts/quickcontact/QuickContactBackgroundDrawable;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/quickcontact/QuickContactBackgroundDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v2, v3, Landroid/graphics/Rect;->bottom:I

    .line 987
    .local v2, newBottom:I
    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactWindow$4;->this$0:Lcom/android/contacts/quickcontact/QuickContactWindow;

    invoke-static {v3}, Lcom/android/contacts/quickcontact/QuickContactWindow;->access$400(Lcom/android/contacts/quickcontact/QuickContactWindow;)Lcom/android/contacts/quickcontact/QuickContactBackgroundDrawable;

    move-result-object v3

    const-string v4, "bottomOverride"

    new-array v5, v10, [I

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/contacts/quickcontact/QuickContactWindow$4;->val$oldBottom:I

    aput v7, v5, v6

    const/4 v6, 0x1

    aput v2, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 989
    .local v0, expandAnimator:Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 990
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 992
    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactWindow$4;->this$0:Lcom/android/contacts/quickcontact/QuickContactWindow;

    invoke-static {v3}, Lcom/android/contacts/quickcontact/QuickContactWindow;->access$300(Lcom/android/contacts/quickcontact/QuickContactWindow;)Landroid/widget/FrameLayout;

    move-result-object v3

    const-string v4, "alpha"

    new-array v5, v10, [F

    fill-array-data v5, :array_0

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 994
    .local v1, fadeInAnimator:Landroid/animation/ObjectAnimator;
    invoke-virtual {v1, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 995
    invoke-virtual {v1, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 996
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 997
    return-void

    .line 992
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method
