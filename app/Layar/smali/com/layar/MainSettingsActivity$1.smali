.class Lcom/layar/MainSettingsActivity$1;
.super Ljava/lang/Object;
.source "MainSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/MainSettingsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/MainSettingsActivity;


# direct methods
.method constructor <init>(Lcom/layar/MainSettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/MainSettingsActivity$1;->this$0:Lcom/layar/MainSettingsActivity;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 89
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 90
    return-void
.end method
