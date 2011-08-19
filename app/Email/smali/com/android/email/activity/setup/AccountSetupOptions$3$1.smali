.class Lcom/android/email/activity/setup/AccountSetupOptions$3$1;
.super Ljava/lang/Object;
.source "AccountSetupOptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupOptions$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/setup/AccountSetupOptions$3;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupOptions$3;)V
    .locals 0
    .parameter

    .prologue
    .line 304
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupOptions$3$1;->this$1:Lcom/android/email/activity/setup/AccountSetupOptions$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOptions$3$1;->this$1:Lcom/android/email/activity/setup/AccountSetupOptions$3;

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions$3;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSetupOptions;->finish()V

    .line 307
    return-void
.end method
