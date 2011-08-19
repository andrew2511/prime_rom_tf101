.class Lcom/android/setupwizard/BaseActivity$2;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/setupwizard/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/setupwizard/BaseActivity;


# direct methods
.method constructor <init>(Lcom/android/setupwizard/BaseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 361
    iput-object p1, p0, Lcom/android/setupwizard/BaseActivity$2;->this$0:Lcom/android/setupwizard/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/setupwizard/BaseActivity$2;->this$0:Lcom/android/setupwizard/BaseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/setupwizard/BaseActivity;->setResult(I)V

    .line 365
    iget-object v0, p0, Lcom/android/setupwizard/BaseActivity$2;->this$0:Lcom/android/setupwizard/BaseActivity;

    invoke-virtual {v0}, Lcom/android/setupwizard/BaseActivity;->finish()V

    .line 366
    return-void
.end method
