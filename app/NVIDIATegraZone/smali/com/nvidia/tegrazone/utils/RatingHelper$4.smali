.class final Lcom/nvidia/tegrazone/utils/RatingHelper$4;
.super Ljava/lang/Object;
.source "RatingHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field private final synthetic val$ratingDialog:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/nvidia/tegrazone/utils/RatingHelper;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nvidia/tegrazone/utils/RatingHelper$4;->this$0:Lcom/nvidia/tegrazone/utils/RatingHelper;

    iput-object p2, p0, Lcom/nvidia/tegrazone/utils/RatingHelper$4;->val$ratingDialog:Landroid/view/View;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/nvidia/tegrazone/utils/RatingHelper$4;->this$0:Lcom/nvidia/tegrazone/utils/RatingHelper;

    iget-object v1, p0, Lcom/nvidia/tegrazone/utils/RatingHelper$4;->val$ratingDialog:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/nvidia/tegrazone/utils/RatingHelper;->handleSubmitClick(Landroid/view/View;)V

    .line 123
    return-void
.end method
