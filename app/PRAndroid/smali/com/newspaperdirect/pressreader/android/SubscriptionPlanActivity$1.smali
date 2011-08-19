.class Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$1;
.super Ljava/lang/Object;
.source "SubscriptionPlanActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$1;->this$0:Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$1;->this$0:Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity;->finish()V

    .line 53
    return-void
.end method
