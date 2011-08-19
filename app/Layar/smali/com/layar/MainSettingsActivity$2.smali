.class Lcom/layar/MainSettingsActivity$2;
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
    iput-object p1, p0, Lcom/layar/MainSettingsActivity$2;->this$0:Lcom/layar/MainSettingsActivity;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 95
    invoke-static {}, Lcom/layar/data/ImageCache;->clearWorldCache()V

    .line 96
    iget-object v0, p0, Lcom/layar/MainSettingsActivity$2;->this$0:Lcom/layar/MainSettingsActivity;

    const-string v1, "Cache cleared!"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 97
    return-void
.end method
