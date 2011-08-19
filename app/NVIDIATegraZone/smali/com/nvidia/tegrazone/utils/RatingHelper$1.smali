.class final Lcom/nvidia/tegrazone/utils/RatingHelper$1;
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

.field private final synthetic val$finalTitleText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/nvidia/tegrazone/utils/RatingHelper;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nvidia/tegrazone/utils/RatingHelper$1;->this$0:Lcom/nvidia/tegrazone/utils/RatingHelper;

    iput-object p2, p0, Lcom/nvidia/tegrazone/utils/RatingHelper$1;->val$finalTitleText:Landroid/widget/EditText;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 76
    packed-switch p2, :pswitch_data_0

    .line 82
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 79
    :pswitch_0
    iget-object v0, p0, Lcom/nvidia/tegrazone/utils/RatingHelper$1;->val$finalTitleText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
