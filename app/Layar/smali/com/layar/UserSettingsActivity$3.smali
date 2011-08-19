.class Lcom/layar/UserSettingsActivity$3;
.super Ljava/lang/Object;
.source "UserSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/UserSettingsActivity;->showDialogVerificationLinkSent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/UserSettingsActivity;


# direct methods
.method constructor <init>(Lcom/layar/UserSettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/UserSettingsActivity$3;->this$0:Lcom/layar/UserSettingsActivity;

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 195
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 196
    return-void
.end method
