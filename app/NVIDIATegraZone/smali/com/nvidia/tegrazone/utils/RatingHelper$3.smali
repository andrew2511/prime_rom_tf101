.class final Lcom/nvidia/tegrazone/utils/RatingHelper$3;
.super Ljava/lang/Object;
.source "RatingHelper.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nvidia/tegrazone/utils/RatingHelper;->handleRateThis(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nvidia/tegrazone/utils/RatingHelper;

.field private final synthetic val$focusHelper:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/nvidia/tegrazone/utils/RatingHelper;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nvidia/tegrazone/utils/RatingHelper$3;->this$0:Lcom/nvidia/tegrazone/utils/RatingHelper;

    iput-object p2, p0, Lcom/nvidia/tegrazone/utils/RatingHelper$3;->val$focusHelper:Landroid/view/View;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 103
    packed-switch p2, :pswitch_data_0

    .line 111
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 106
    :pswitch_0
    iget-object v1, p0, Lcom/nvidia/tegrazone/utils/RatingHelper$3;->this$0:Lcom/nvidia/tegrazone/utils/RatingHelper;

    invoke-static {v1}, Lcom/nvidia/tegrazone/utils/RatingHelper;->access$0(Lcom/nvidia/tegrazone/utils/RatingHelper;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 107
    .local v0, inputManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/nvidia/tegrazone/utils/RatingHelper$3;->val$focusHelper:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 108
    iget-object v1, p0, Lcom/nvidia/tegrazone/utils/RatingHelper$3;->val$focusHelper:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method
