.class Lcom/google/android/partnersetup/RlzDebugActivity$4;
.super Ljava/lang/Object;
.source "RlzDebugActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/partnersetup/RlzDebugActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/partnersetup/RlzDebugActivity;


# direct methods
.method constructor <init>(Lcom/google/android/partnersetup/RlzDebugActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/google/android/partnersetup/RlzDebugActivity$4;->this$0:Lcom/google/android/partnersetup/RlzDebugActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 111
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 112
    iget-object v1, p0, Lcom/google/android/partnersetup/RlzDebugActivity$4;->this$0:Lcom/google/android/partnersetup/RlzDebugActivity;

    const-class v2, Lcom/google/android/partnersetup/RlzDebugViewListActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 113
    const-string v1, "com.google.android.partnersetup.intents.EXTRA_VIEW_TYPE"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 115
    iget-object v1, p0, Lcom/google/android/partnersetup/RlzDebugActivity$4;->this$0:Lcom/google/android/partnersetup/RlzDebugActivity;

    invoke-virtual {v1, v0}, Lcom/google/android/partnersetup/RlzDebugActivity;->startActivity(Landroid/content/Intent;)V

    .line 116
    return-void
.end method
