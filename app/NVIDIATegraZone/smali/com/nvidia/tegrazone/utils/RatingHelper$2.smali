.class final Lcom/nvidia/tegrazone/utils/RatingHelper$2;
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

.field private final synthetic val$finalCommentText:Landroid/widget/EditText;

.field private final synthetic val$ratingDialog:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/nvidia/tegrazone/utils/RatingHelper;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nvidia/tegrazone/utils/RatingHelper$2;->this$0:Lcom/nvidia/tegrazone/utils/RatingHelper;

    iput-object p2, p0, Lcom/nvidia/tegrazone/utils/RatingHelper$2;->val$finalCommentText:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/nvidia/tegrazone/utils/RatingHelper$2;->val$ratingDialog:Landroid/view/View;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 88
    packed-switch p2, :pswitch_data_0

    .line 97
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 91
    :pswitch_0
    iget-object v0, p0, Lcom/nvidia/tegrazone/utils/RatingHelper$2;->val$finalCommentText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 94
    :pswitch_1
    iget-object v0, p0, Lcom/nvidia/tegrazone/utils/RatingHelper$2;->this$0:Lcom/nvidia/tegrazone/utils/RatingHelper;

    iget-object v1, p0, Lcom/nvidia/tegrazone/utils/RatingHelper$2;->val$ratingDialog:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/nvidia/tegrazone/utils/RatingHelper;->handleSubmitClick(Landroid/view/View;)V

    goto :goto_0

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
