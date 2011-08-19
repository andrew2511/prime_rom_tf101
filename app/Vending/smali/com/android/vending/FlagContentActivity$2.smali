.class Lcom/android/vending/FlagContentActivity$2;
.super Ljava/lang/Object;
.source "FlagContentActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/FlagContentActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/FlagContentActivity;

.field final synthetic val$submitButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/android/vending/FlagContentActivity;Landroid/widget/Button;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/vending/FlagContentActivity$2;->this$0:Lcom/android/vending/FlagContentActivity;

    iput-object p2, p0, Lcom/android/vending/FlagContentActivity$2;->val$submitButton:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .parameter "group"
    .parameter "checkedId"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/vending/FlagContentActivity$2;->val$submitButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/vending/FlagContentActivity$2;->val$submitButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 103
    :cond_0
    return-void
.end method
