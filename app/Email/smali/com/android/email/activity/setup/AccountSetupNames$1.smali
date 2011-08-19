.class Lcom/android/email/activity/setup/AccountSetupNames$1;
.super Ljava/lang/Object;
.source "AccountSetupNames.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupNames;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupNames;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupNames;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupNames$1;->this$0:Lcom/android/email/activity/setup/AccountSetupNames;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupNames$1;->this$0:Lcom/android/email/activity/setup/AccountSetupNames;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSetupNames;->access$000(Lcom/android/email/activity/setup/AccountSetupNames;)V

    .line 71
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 74
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 77
    return-void
.end method
