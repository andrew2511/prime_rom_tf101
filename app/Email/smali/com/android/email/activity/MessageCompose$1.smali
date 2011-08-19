.class Lcom/android/email/activity/MessageCompose$1;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose;->setFocusShifter(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;

.field final synthetic val$targetViewId:I


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 464
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$1;->this$0:Lcom/android/email/activity/MessageCompose;

    iput p2, p0, Lcom/android/email/activity/MessageCompose$1;->val$targetViewId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 467
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$1;->this$0:Lcom/android/email/activity/MessageCompose;

    iget v1, p0, Lcom/android/email/activity/MessageCompose$1;->val$targetViewId:I

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 468
    return-void
.end method
